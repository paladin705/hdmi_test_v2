`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2022 17:05:04
// Design Name: 
// Module Name: rgb888_to_gray
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


module rgb888_to_gray(
    input wire [7:0]    r8_i,
    input wire [7:0]    g8_i,
    input wire [7:0]    b8_i,
    
    output wire [7:0]   gray8_o,
    
    input wire          clk
);
    //
    wire [7:0] r_coef;
    wire [7:0] g_coef;
    wire [7:0] b_coef;
    
    assign r_coef = 8'd76;          // 0.3 * 255
    assign g_coef = 8'd150;         // 0.59 * 255
    assign b_coef = 8'd28;          // 0.11 * 255
    
    //
    reg [7:0] r_buf;
    reg [7:0] g_buf;
    reg [7:0] b_buf;
    
    reg [15:0] gray_r_part;
    reg [15:0] gray_g_part;
    reg [15:0] gray_b_part;
    
    reg [15:0] gray;
    
    always @(posedge clk) begin
        r_buf <= r8_i;
        g_buf <= g8_i;
        b_buf <= b8_i;
        
        gray_r_part <= r_coef * r_buf;
        gray_g_part <= g_coef * g_buf;
        gray_b_part <= b_coef * b_buf;
        
        gray <= gray_r_part + gray_g_part + gray_b_part;
    end
    
    assign gray8_o = gray >> 8;
    
endmodule
