`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2022 15:18:09
// Design Name: 
// Module Name: test_camera_capture
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


module test_camera_capture();
    reg rst_n;
    reg xclk;
    
    wire vsync;
    wire href;
    wire pclk;
    wire xclk;
    wire [7:0] d;
    
    wire sof;
    wire eof;
    
    wire sor;
    wire eor;
    
    wire cam_data_rdy;
    wire [15:0] cam_data;
    
    camera_capture camera_capture(
        // Camera
        .vsync_i        (vsync),
        .href_i         (href),
        .pclk_i         (pclk),
        .d_i            (d),
        
        //
        .sof_o          (sof),
        .eof_o          (eof),
        
        .sor_o          (sor),
        .eor_o          (eor),
        
        .cam_data_rdy_o (cam_data_rdy),
        .cam_data_o     (cam_data),
        
        //
        .rst_n          (rst_n)
    );
    
    ov7670 #(
        .W(640),
        .H(480)
    ) ov7670(
        .vsync_o        (vsync),
        .href_o         (href),
        .pclk_o         (pclk),
        .xclk_i         (xclk),
        .d_o            (d),
        .reset_i        (rst_n)
    );
    
    // ===================================
    wire [4:0] r5;
    wire [6:0] g6;
    wire [4:0] b5;
    
    wire [7:0] r8;
    wire [7:0] g8;
    wire [7:0] b8;
    
    wire gray_data_rdy;
    wire [7:0] gray8;
    
    reg [5:0] delay_rdy;
    
    always @(posedge pclk, negedge rst_n) begin
        if(!rst_n) begin
            delay_rdy <= 6'b0;
        end
        else begin
            delay_rdy <= {delay_rdy[4:0], cam_data_rdy}; 
        end
    end
    
    assign gray_data_rdy = delay_rdy[5];
    
    assign r5 = cam_data[7:3];
    assign g6 = {cam_data[2:0], cam_data[15:13]};
    assign b5 = cam_data[12:8];
    
    rgb565_to_rgb888 rgb565_to_rgb888(
        .r5_i           (r5),
        .g6_i           (g6),
        .b5_i           (b5),
        
        .r8_o           (r8),
        .g8_o           (g8),
        .b8_o           (b8),
        
        .clk            (pclk)
    );
    
    rgb888_to_gray rgb888_to_gray(
        .r8_i           (r8),
        .g8_i           (g8),
        .b8_i           (b8),
        
        .gray8_o        (gray8),
        
        .clk            (pclk)
    );
    // ===================================
    
    always begin
        xclk = 1'b0;
        #20;
        xclk = 1'b1;
        #20;
    end
    
    initial begin
        rst_n = 1'b0;
        
        #50;
        @(posedge xclk) #1;
        
        rst_n = 1'b1;
    end

endmodule
