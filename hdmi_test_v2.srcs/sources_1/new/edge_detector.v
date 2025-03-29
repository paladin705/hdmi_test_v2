`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2022 20:26:39
// Design Name: 
// Module Name: edge_detector
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


module edge_detector #(
    parameter H = 640,
    parameter W = 480,
    
    parameter DEFAULT_THRESHOLD = 8'd100
)
(
    input wire          gray_data_rdy_i,
    input wire [7:0]    gray8_i,
    
    input wire          data_rdy_o,
    input wire          is_edge_o,
    
    input wire          sobel_threshold_wen_i,
    input wire [7:0]    sobel_threshold_i,
    
    input wire          clk,
    input wire          rst_n
);
    //
    reg [7:0] sobel_threshold_reg;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            sobel_threshold_reg <= DEFAULT_THRESHOLD;
        end
        else begin
            sobel_threshold_reg <= sobel_threshold_wen_i? sobel_threshold_i : sobel_threshold_reg;
        end
    end
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
        
    window #(
        .H              (H),
        .W              (W)
    ) window (
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
    
    sobel_edge_detector sobel_edge_detector(
        .w1_i           (w1),
        .w2_i           (w2),
        .w3_i           (w3),
        
        .w4_i           (w4),
        .w5_i           (w5),
        .w6_i           (w6),
        
        .w7_i           (w7),
        .w8_i           (w8),
        .w9_i           (w9),
        
        .threshold_i    (sobel_threshold_reg),
        
        .data_rdy_i     (window_data_rdy),
        
        .is_edge_o      (is_edge_o),
        
        .data_rdy_o     (data_rdy_o),
        
        .clk            (clk),
        .rst_n          (rst_n)
    );

endmodule
