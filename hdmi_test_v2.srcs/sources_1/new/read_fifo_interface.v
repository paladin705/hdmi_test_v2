`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2022 18:04:56
// Design Name: 
// Module Name: read_fifo_interface
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module read_fifo_interface #(
    parameter H = 640,
    parameter W = 480,
    
    parameter MAX_ADDR = H*W - 1,
    parameter ADDR_WIDTH = $clog2(MAX_ADDR)
)
(
    // camera data
    output reg                      sof_o,              // Start of Frame
    output reg                      eof_o,              // End of Frame
    
    output reg [ADDR_WIDTH-1:0]     gray_addr_o,
    output reg                      gray_data_rdy_o,
    output wire [7:0]               gray8_o,
    
    // fifo
    input wire                      fifo_empty_i,
    output reg                      fifo_ren_o,
    input wire [7:0]                fifo_rdata_o,
    
    //
    input wire                      clk,
    input wire                      rst_n
);
    //
    reg sof;
    reg eof;
    
    reg inc_addr;
    
    //
    localparam state_size = 1;
    
    localparam IDLE = 1'd0;
    localparam SET_DATA = 1'd1;
    
    reg [(state_size-1):0] state, next_state;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            state <= IDLE;
        end
        else begin
            state <= next_state;
        end
    end
    
    always @(*) begin
        sof = 1'b0;
        eof = 1'b0;
        
        fifo_ren_o = 1'b0;
        
        inc_addr = 1'b0;
        
        gray_data_rdy_o = 1'b0;
        
        case(state)
            IDLE: begin
                if(!fifo_empty_i) begin
                    if(gray_addr_o == {ADDR_WIDTH{1'b0}}) begin
                        sof = 1'b1;
                    end
                    
                    fifo_ren_o = 1'b1;
                    
                    next_state = SET_DATA;
                end
                else begin
                    next_state = IDLE;
                end
            end
            
            SET_DATA: begin
                inc_addr = 1'b1;
                
                gray_data_rdy_o = 1'b1;
                
                if(gray_addr_o == MAX_ADDR) begin
                    eof = 1'b1;
                    
                    next_state = IDLE;
                end
                else begin
                    if(!fifo_empty_i) begin
                        fifo_ren_o = 1'b1;
                        
                        next_state = SET_DATA;
                    end
                    else begin
                        next_state = IDLE;
                    end
                end
            end
            
            default: begin
                next_state = IDLE;
            end
        endcase
    end
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            sof_o <= 1'b0;
            eof_o <= 1'b0;
        end
        else begin
            sof_o <= sof;
            eof_o <= eof;
        end
    end
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            gray_addr_o <= {ADDR_WIDTH{1'b0}};
        end
        else begin
            if(inc_addr) begin
                gray_addr_o <= (gray_addr_o == MAX_ADDR)? {ADDR_WIDTH{1'b0}} : (gray_addr_o + { {(ADDR_WIDTH-1){1'b0}} , 1'b1} );
            end
        end
    end
    
    assign gray8_o = fifo_rdata_o;
    
endmodule
