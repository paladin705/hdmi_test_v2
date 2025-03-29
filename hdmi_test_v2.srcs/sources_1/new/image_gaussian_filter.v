`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2022 02:03:43
// Design Name: 
// Module Name: image_gaussian_filter
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


module image_gaussian_filter #(
    parameter H = 640,
    parameter W = 480
)
(
    input wire          gray_data_rdy_i,
    input wire [7:0]    gray8_i,
    
    input wire          gray_data_rdy_o,
    input wire [7:0]    gray8_o,
    
    input wire          clk,
    input wire          rst_n
);
    //
    wire window_data_rdy;
    
    wire [7:0] w1;
    wire [7:0] w2;
    wire [7:0] w3;
    wire [7:0] w4;
    wire [7:0] w5;
    wire [7:0] w6;
    wire [7:0] w7;
    wire [7:0] w8;
    wire [7:0] w9;
        
    gaussian_window #(
        .H              (H),
        .W              (W)
    ) gaussian_window (
        .gray8_i        (gray8_i),
        .wen_i          (gray_data_rdy_i),
        
        .w1_o           (w1),
        .w2_o           (w2),
        .w3_o           (w3),
        
        .w4_o           (w4),
        .w5_o           (w5),
        .w6_o           (w6),
        
        .w7_o           (w7),
        .w8_o           (w8),
        .w9_o           (w9),
        
        .ren_o          (window_data_rdy),
        
        .clk            (clk),
        .rst_n          (rst_n)
    );
    
    //
    gaussian_filter gaussian_filter(
        .w1_i           (w1),
        .w2_i           (w2),
        .w3_i           (w3),
        
        .w4_i           (w4),
        .w5_i           (w5),
        .w6_i           (w6),
        
        .w7_i           (w7),
        .w8_i           (w8),
        .w9_i           (w9),
        
        .data_rdy_i     (window_data_rdy),
        
        .gray8_o        (gray8_o),
        .data_rdy_o     (gray_data_rdy_o),
        
        .clk            (clk),
        .rst_n          (rst_n)
    );
endmodule
