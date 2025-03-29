`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2022 14:18:07
// Design Name: 
// Module Name: baud_generator
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


module baud_generator #(
    parameter clk_freq = 10_000_000,
    parameter baud = 115_200,
    parameter acc_width = 16
)
(
    input wire      clk,
    input wire      rst_n,
    output wire     baud_tick_o
);
    //
    localparam baud_gen_inc = ((baud << (acc_width-4))+(clk_freq >> 5))/(clk_freq >> 4);
    
    reg [acc_width:0] baud_gen_acc;
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            baud_gen_acc <= {acc_width{1'b0}};
        end
        else begin
            baud_gen_acc <= baud_gen_acc[acc_width-1:0] + baud_gen_inc;
        end
    end
    
    assign baud_tick_o = baud_gen_acc[acc_width];
    
endmodule
