`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2022 15:31:37
// Design Name: 
// Module Name: write_fifo_interface
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


module write_fifo_interface(
    // camera data
    input wire          sof_i,              // Start of Frame
    input wire          eof_i,              // End of Frame
    
    input wire          gray_data_rdy_i,
    input wire [7:0]    gray8_i,
    
    // fifo
    input wire          fifo_full_i,
    output reg          fifo_wen_o,
    output reg [7:0]    fifo_wdata_o,
    output wire         fifo_clr_o,
    
    //
    input wire          clk,
    input wire          rst_n
);
    //
    localparam state_size = 1;
    
    localparam IDLE = 1'd0;
    localparam WRITE_DATA = 1'd1;
    
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
        case(state)
            IDLE: begin
                if(sof_i && !fifo_full_i) begin
                    next_state = WRITE_DATA;
                end
                else begin
                    next_state = IDLE;
                end
            end
            
            WRITE_DATA: begin
                if(eof_i) begin
                    next_state = IDLE;
                end
                else begin
                    next_state = WRITE_DATA;
                end
            end
            
            default: begin
                next_state = IDLE;
            end
        endcase
    end
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            fifo_wen_o <= 1'b0;
        end
        else begin
            if(state == WRITE_DATA) begin
                fifo_wen_o <= fifo_full_i? 1'b0 : gray_data_rdy_i;
            end
            else begin
                fifo_wen_o <= 1'b0;
            end
        end
    end
    
    always @(posedge clk) begin
        fifo_wdata_o <= gray8_i;
    end
    
    assign fifo_clr_o = !rst_n;
    
endmodule
