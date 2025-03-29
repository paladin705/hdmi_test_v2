`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2022 01:40:58
// Design Name: 
// Module Name: gaussian_filter
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


module gaussian_filter(
    input wire [7:0]    w1_i,
    input wire [7:0]    w2_i,
    input wire [7:0]    w3_i,
    input wire [7:0]    w4_i,
    input wire [7:0]    w5_i,
    input wire [7:0]    w6_i,
    input wire [7:0]    w7_i,
    input wire [7:0]    w8_i,
    input wire [7:0]    w9_i,
    
    input wire          data_rdy_i,
    
    output reg [7:0]    gray8_o,
    
    output wire         data_rdy_o,
    
    input wire          clk,
    input wire          rst_n
);
    //
    reg [11:0] G_row_1;
    reg [12:0] G_row_2;
    reg [11:0] G_row_3;
    
    reg [14:0] G;
    
    always @(posedge clk) begin
        // row 1
        G_row_1 <= w1_i + (w2_i << 1) + w3_i; // W1 + 2*W2 + W3
        
        // row 2
        G_row_2 <= (w4_i << 1) + (w5_i << 2) + (w6_i << 1); // 2*W4 + 4*W5 + 2*W6
        
        // row 3
        G_row_3 <= w7_i + (w8_i << 1) + w9_i; // W7 + 2*W8 + W9
        
        // G
        G <= G_row_1 + G_row_2 + G_row_3;
        
        // output
        if(G > 16*255) begin    // if G*(1/16) > 255 then output = 255
            gray8_o <= 255;
        end
        else begin
            gray8_o <= G >> 4;  // G * (1/16)
        end
    end
    
    //
    reg [2:0] delay_rdy;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            delay_rdy <= 3'b0;
        end
        else begin
            delay_rdy <= {delay_rdy[1:0], data_rdy_i};
        end
    end
    
    assign data_rdy_o = delay_rdy[2];
    
endmodule
