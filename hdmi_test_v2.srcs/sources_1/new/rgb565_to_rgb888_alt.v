`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2022 02:34:04
// Design Name: 
// Module Name: rgb565_to_rgb888_alt
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


module rgb565_to_rgb888_alt(
    input wire [4:0]    r5_i,
    input wire [5:0]    g6_i,
    input wire [4:0]    b5_i,
    
    output wire [7:0]   r8_o,
    output wire [7:0]   g8_o,
    output wire [7:0]   b8_o,
    
    input wire          clk
);
    //
    reg [4:0] r5_buf_1;
    reg [5:0] g6_buf_1;
    reg [4:0] b5_buf_1;
    
    reg [4:0] r5_buf_2;
    reg [5:0] g6_buf_2;
    reg [4:0] b5_buf_2;
    
    reg [4:0] r5_buf_3;
    reg [5:0] g6_buf_3;
    reg [4:0] b5_buf_3;
    
    
    always @(posedge clk) begin
        r5_buf_1 <= r5_i;
        g6_buf_1 <= g6_i;
        b5_buf_1 <= b5_i;
        
        r5_buf_2 <= r5_buf_1;
        g6_buf_2 <= g6_buf_1;
        b5_buf_2 <= b5_buf_1;
        
        r5_buf_3 <= r5_buf_2;
        g6_buf_3 <= g6_buf_2;
        b5_buf_3 <= b5_buf_2;
    end
    
    //
    assign r8_o = {r5_buf_3, 3'b0};
    assign g8_o = {g6_buf_3, 2'b0};
    assign b8_o = {b5_buf_3, 3'b0};
    
endmodule
