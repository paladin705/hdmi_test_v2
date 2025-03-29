`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2022 15:43:47
// Design Name: 
// Module Name: rgb565_to_rgb888
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


module rgb565_to_rgb888(
    input wire [4:0]    r5_i,
    input wire [5:0]    g6_i,
    input wire [4:0]    b5_i,
    
    output wire [7:0]   r8_o,
    output wire [7:0]   g8_o,
    output wire [7:0]   b8_o,
    
    input wire          clk
);
    //
    wire [9:0] r_mul_coef;
    wire [8:0] g_mul_coef;
    wire [9:0] b_mul_coef;
    
    assign r_mul_coef = 10'd527;
    assign g_mul_coef = 9'd259;
    assign b_mul_coef = 10'd527;
    
    //
    wire [4:0] r_add_coef;
    wire [5:0] g_add_coef;
    wire [4:0] b_add_coef;
    
    assign r_add_coef = 5'd23;
    assign g_add_coef = 6'd33;
    assign b_add_coef = 5'd22;
    
    //
    reg [4:0] r_5_reg;
    reg [5:0] g_6_reg;
    reg [4:0] b_5_reg;
    
    reg [14:0] r_buf;
    reg [14:0] g_buf;
    reg [14:0] b_buf;
    
    reg [15:0] r_res;
    reg [15:0] g_res;
    reg [15:0] b_res;
    
    always @(posedge clk) begin
        r_5_reg <= r5_i;
        g_6_reg <= g6_i;
        b_5_reg <= b5_i;
        
        r_buf <= r_mul_coef * r_5_reg;
        g_buf <= g_mul_coef * g_6_reg;
        b_buf <= b_mul_coef * b_5_reg;
        
        r_res <= r_buf + r_add_coef;
        g_res <= g_buf + g_add_coef;
        b_res <= b_buf + b_add_coef;
    end
    
    //
    assign r8_o = r_res >> 6;
    assign g8_o = g_res >> 6;
    assign b8_o = b_res >> 6;
    
endmodule
