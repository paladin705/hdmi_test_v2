`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2022 21:52:38
// Design Name: 
// Module Name: read_edge_fifo_interface
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


module read_edge_fifo_interface #(
    parameter H = 638,
    parameter W = 478,
    
    parameter RESIZE_H = 640,
    parameter RESIZE_W = 480,
    
    parameter MAX_ADDR = RESIZE_H*RESIZE_W - 1,
    parameter ADDR_WIDTH = $clog2(MAX_ADDR)
)
(
    // camera data
    output reg                      sof_o,              // Start of Frame
    output reg                      eof_o,              // End of Frame
    
    output reg [ADDR_WIDTH-1:0]     edge_addr_o,
    output reg                      edge_data_rdy_o,
    output wire                     is_edge_o,
    
    // fifo
    input wire                      fifo_empty_i,
    output reg                      fifo_ren_o,
    input wire                      fifo_rdata_o,
    
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
        
        edge_data_rdy_o = 1'b0;
        
        case(state)
            IDLE: begin
                if(!fifo_empty_i) begin
                    if(edge_addr_o == {ADDR_WIDTH{1'b0}}) begin
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
                
                edge_data_rdy_o = 1'b1;
                
                if(edge_addr_o == MAX_ADDR) begin
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
    
    //
    localparam MAX_H = H-1;
    localparam MAX_W = W-1;
    
    localparam H_COUNTER_WIDTH = $clog2(MAX_H);
    localparam W_COUNTER_WIDTH = $clog2(MAX_W);
    
    localparam END_ROW_INC = RESIZE_H - H + 1;
    
    reg [H_COUNTER_WIDTH-1:0] h_pos;
    reg [W_COUNTER_WIDTH-1:0] w_pos;
    
    wire max_h;
    wire max_w;
    
    assign max_h = (h_pos == MAX_H)? 1'b1 : 1'b0;
    assign max_w = (w_pos == MAX_W)? 1'b1 : 1'b0;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            h_pos <= {H_COUNTER_WIDTH{1'b0}};
        end
        else begin
            if(inc_addr) begin
                h_pos <= max_h? {H_COUNTER_WIDTH{1'b0}} : (h_pos + { {(H_COUNTER_WIDTH-1){1'b0}} , 1'b1});
            end
        end
    end
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            w_pos <= {W_COUNTER_WIDTH{1'b0}};
        end
        else begin
            if(inc_addr) begin
                if(max_w) begin
                    w_pos <= max_h? {W_COUNTER_WIDTH{1'b0}} : w_pos;
                end
                else begin
                    w_pos <= max_h? (w_pos + { {(W_COUNTER_WIDTH-1){1'b0}} , 1'b1}) : w_pos;
                end
            end
        end
    end
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            edge_addr_o <= {ADDR_WIDTH{1'b0}};
        end
        else begin
            if(inc_addr) begin
                if(max_h && max_w) begin
                    edge_addr_o <= {ADDR_WIDTH{1'b0}} ;
                end
                else begin
                    edge_addr_o <= max_h? (edge_addr_o + END_ROW_INC ) : (edge_addr_o + { {(ADDR_WIDTH-1){1'b0}} , 1'b1} );
                end
            end
        end
    end
    
    assign is_edge_o = fifo_rdata_o;
    
endmodule
