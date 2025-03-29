`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2022 21:11:58
// Design Name: 
// Module Name: test_camera_controller
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


module test_camera_controller();
    reg rst_n;
    reg sys_clk;
    
    wire xclk;
    wire reset;
    
    wire sio_c;
    wire sio_d;
    wire pwdn;
    
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
    
    wire [4:0] r5;
    wire [6:0] g6;
    wire [4:0] b5;
    
    camera_controller camera_controller(
        // SCCB Master
        .sio_c          (sio_c),
        .sio_d          (sio_d),
        .pwdn           (pwdn),
        
        // Camera capture
        .vsync_i        (vsync),
        .href_i         (href),
        .pclk_i         (pclk),
        .d_i            (d),
        
        //
        .xclk_o         (xclk),
        .reset_o        (reset),
        
        //
        .sof_o          (sof),
        .eof_o          (eof),
        
        .sor_o          (sor),
        .eor_o          (eor),
        
        .cam_data_rdy_o (cam_data_rdy),
        
        .r5_o           (r5),
        .g6_o           (g6),
        .b5_o           (b5),
        
        //
        .sys_clk        (sys_clk),
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
        .reset_i        (reset)
    );
    
    always begin
        sys_clk = 1'b0;
        #10;
        sys_clk = 1'b1;
        #10;
    end
    
    initial begin
        rst_n = 1'b0;
        
        #50;
        @(posedge sys_clk) #1;
        
        rst_n = 1'b1;
    end
    
endmodule
