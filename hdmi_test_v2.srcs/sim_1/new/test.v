`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2022 15:39:24
// Design Name: 
// Module Name: test
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


module test();
    reg rst_n;
    reg clk;
    
    reg mode;
    
    wire hdmi_tx_cec;
    wire hdmi_tx_hpd;
    wire hdmi_tx_rscl;
    wire hdmi_tx_rsda;
    wire hdmi_tx_clk_n;
    wire hdmi_tx_clk_p;
    wire [2:0] hdmi_tx_n;
    wire [2:0] hdmi_tx_p;
    
    wire uart_rx;
    wire uart_tx;
    
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
    
    top top(
        .clk            (clk),              // board clock: 50 MHz
        .RST_BTN        (rst_n),            // reset button
        
        .mode_async_i   (mode),
        
        // HDMI
        .hdmi_tx_cec    (hdmi_tx_cec),      // CE control bidirectional
        .hdmi_tx_hpd    (hdmi_tx_hpd),      // hot-plug detect
        .hdmi_tx_rscl   (hdmi_tx_rscl),     // DDC bidirectional
        .hdmi_tx_rsda   (hdmi_tx_rsda),     // DDC bidirectional
        .hdmi_tx_clk_n  (hdmi_tx_clk_n),    // HDMI clock differential negative
        .hdmi_tx_clk_p  (hdmi_tx_clk_p),    // HDMI clock differential positive
        .hdmi_tx_n      (hdmi_tx_n),        // Three HDMI channels differential negative
        .hdmi_tx_p      (hdmi_tx_p),        // Three HDMI channels differential positive
        
        // UART
        .uart_rx_i      (uart_rx),
        .uart_tx_o      (uart_tx),
        
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
        .reset_o        (reset)
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
    
    //
    reg tx_start;
    reg [7:0] tx_data;
        
    wire tx_busy;
    wire tx_rdy;
    
    // RX
    wire [7:0] rx_data;
        
    wire rx_busy;
    wire rx_rdy;
        
    uart #(
        .CLK_FREQ       (50_000_000),
        .UART_BAUD      (9_600),
        .MSB_FIRST      (0)
    ) uart(
        // UART
        .uart_rx_i      (uart_tx),
        .uart_tx_o      (uart_rx),
        
        // TX
        .tx_start_i     (tx_start),
        .tx_data_i      (tx_data),
        
        .tx_busy_o      (tx_busy),
        .tx_rdy_o       (tx_rdy),
        
        // RX
        .rx_data_o      (rx_data),
        
        .rx_busy_o      (rx_busy),
        .rx_rdy_o       (rx_rdy),
        
        //
        .clk            (clk),
        .rst_n          (rst_n)  
    );
    
    initial begin
        tx_start = 1'b0;
        tx_data = 8'd0;
        
        #24_000_000;
        
        @(posedge clk);
        
        // CMD 1
        @(posedge clk); #1;
        tx_start = 1'b1;
        tx_data = 8'd1;
        @(posedge clk); #1;
        tx_start = 1'b0;
        
        @(posedge tx_rdy); #1;
        
        @(posedge clk); #1;
        tx_start = 1'b1;
        tx_data = 8'd0;
        @(posedge clk); #1;
        tx_start = 1'b0;
        
        @(posedge tx_rdy); #1;
        
        @(posedge clk); #1;
        tx_start = 1'b1;
        tx_data = 8'd50;
        @(posedge clk); #1;
        tx_start = 1'b0;
        
        @(posedge tx_rdy); #1;
        
        #3_000_000;
        
        // CMD 2
        @(posedge clk); #1;
        tx_start = 1'b1;
        tx_data = 8'd1;
        @(posedge clk); #1;
        tx_start = 1'b0;
        
        @(posedge tx_rdy); #1;
        
        @(posedge clk); #1;
        tx_start = 1'b1;
        tx_data = 8'd0;
        @(posedge clk); #1;
        tx_start = 1'b0;
        
        @(posedge tx_rdy); #1;
        
        @(posedge clk); #1;
        tx_start = 1'b1;
        tx_data = 8'd50;
        @(posedge clk); #1;
        tx_start = 1'b0;
        
        @(posedge tx_rdy); #1;
        
        #3_000_000;
        
        // CMD 3
        @(posedge clk); #1;
        tx_start = 1'b1;
        tx_data = 8'd1;
        @(posedge clk); #1;
        tx_start = 1'b0;
        
        @(posedge tx_rdy); #1;
        
        @(posedge clk); #1;
        tx_start = 1'b1;
        tx_data = 8'd0;
        @(posedge clk); #1;
        tx_start = 1'b0;
        
        @(posedge tx_rdy); #1;
        
        @(posedge clk); #1;
        tx_start = 1'b1;
        tx_data = 8'd50;
        @(posedge clk); #1;
        tx_start = 1'b0;
        
        @(posedge tx_rdy); #1;
        
        #3_000_000;
    end
    
    initial begin
        rst_n = 1'b0;
        #50;
        rst_n = 1'b1;
    end
    
    always begin
        clk = 1'b0;
        #10;
        clk = 1'b1;
        #10;
    end
    
    initial begin
        mode = 1'b0;
    end
    
endmodule
