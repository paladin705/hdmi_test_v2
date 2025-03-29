`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2022 14:57:25
// Design Name: 
// Module Name: top
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


module top (
    input  wire         clk,                // board clock: 50 MHz
    input  wire         RST_BTN,            // reset button
    
    input wire          mode_async_i,
    
    // HDMI
    inout  wire         hdmi_tx_cec,        // CE control bidirectional
    input  wire         hdmi_tx_hpd,        // hot-plug detect
    inout  wire         hdmi_tx_rscl,       // DDC bidirectional
    inout  wire         hdmi_tx_rsda,       // DDC bidirectional
    output wire         hdmi_tx_clk_n,      // HDMI clock differential negative
    output wire         hdmi_tx_clk_p,      // HDMI clock differential positive
    output wire [2:0]   hdmi_tx_n,          // Three HDMI channels differential negative
    output wire [2:0]   hdmi_tx_p,          // Three HDMI channels differential positive
    
    // UART
    input wire          uart_rx_i,
    output wire         uart_tx_o,
    
    output wire         debug_rx_o,
    output wire         debug_tx_o,
    
    output wire         led_rx_o,
    output wire         led_tx_o,
    
    // SCCB Master
    output wire         sio_c,
    inout wire          sio_d,
    output wire         pwdn,
    
    // Camera capture
    input wire          vsync_i,
    input wire          href_i,
    input wire          pclk_i,
    input wire [7:0]    d_i,
    
    //
    output wire         xclk_o,
    output wire         reset_o
);
    //
    wire pix_clk;
    wire pix_clk_5x;
    wire xclk_i;
    
    wire pll_reset;
    wire pll_locked;
    
    assign pll_reset = !RST_BTN;
    
    sys_pll sys_pll(
        // Clock out ports
        .clk_out1           (pix_clk),
        .clk_out2           (pix_clk_5x),
        .clk_out3           (xclk_i),
        // Status and control signals
        .reset              (pll_reset),
        .locked             (pll_locked),
        // Clock in ports
        .clk_in1            (clk)
    );
    
    //
    assign debug_rx_o = uart_rx_i;
    assign debug_tx_o = uart_tx_o;
    
    assign led_rx_o = uart_rx_i;
    assign led_tx_o = uart_tx_o;
    
    //
    wire video_mode;
    
    wire fifo_full;
    wire fifo_wen;
    wire [7:0] fifo_wdata;
    wire fifo_clr;
    
    wire edge_data_rdy;
    wire is_edge;
    
    video_processing video_processing(
        // UART
        .uart_rx_i          (uart_rx_i),
        .uart_tx_o          (uart_tx_o),
        
        // Video mode
        .video_mode_o       (video_mode),
        
        // SCCB Master
        .sio_c              (sio_c),
        .sio_d              (sio_d),
        .pwdn               (pwdn),
        
        // Camera capture
        .vsync_i            (vsync_i),
        .href_i             (href_i),
        .pclk_i             (pclk_i),
        .d_i                (d_i),
        
        //
        .xclk_o             (xclk_o),
        .reset_o            (reset_o),
        
        // fifo
        .fifo_full_i        (fifo_full),
        .fifo_wen_o         (fifo_wen),
        .fifo_wdata_o       (fifo_wdata),
        .fifo_clr_o         (fifo_clr),
        
        // edge detector_fifo
        .edge_data_rdy_o    (edge_data_rdy),
        .is_edge_o          (is_edge),
        
        //
        .xclk_i             (xclk_i),
        .pll_locked         (pll_locked),
        .rst_n              (RST_BTN)
    );
    
    //
    wire mode;
    
    assign mode = video_mode & mode_async_i;
    
    wire fifo_empty;
    wire fifo_ren;
    wire [7:0] fifo_rdata;
    wire fifo_r_clk;
    
    wire edge_fifo_empty;
    wire edge_fifo_ren;
    wire edge_fifo_rdata;
    wire edge_fifo_r_clk;
    
    display_demo_dvi display_demo_dvi(
        .RST_BTN            (RST_BTN),              // reset button
        
        .mode_async_i       (mode),
        
        .pix_clk            (pix_clk),              // pixel clock
        .pix_clk_5x         (pix_clk_5x),           // 5x clock for 10:1 DDR SerDes
        .clk_lock           (pll_locked),           // clock locked?
        
        // HDMI
        .hdmi_tx_cec        (hdmi_tx_cec),          // CE control bidirectional
        .hdmi_tx_hpd        (hdmi_tx_hpd),          // hot-plug detect
        
        .hdmi_tx_rscl       (hdmi_tx_rscl),         // DDC bidirectional
        .hdmi_tx_rsda       (hdmi_tx_rsda),         // DDC bidirectional
        
        .hdmi_tx_clk_n      (hdmi_tx_clk_n),        // HDMI clock differential negative
        .hdmi_tx_clk_p      (hdmi_tx_clk_p),        // HDMI clock differential positive
        .hdmi_tx_n          (hdmi_tx_n),            // Three HDMI channels differential negative
        .hdmi_tx_p          (hdmi_tx_p),            // Three HDMI channels differential positive
        
        // fifo
        .fifo_empty_i       (fifo_empty),
        .fifo_ren_o         (fifo_ren),
        .fifo_rdata_o       (fifo_rdata),
        
        .fifo_r_clk_o       (fifo_r_clk),
        
        // edge fifo
        .edge_fifo_empty_i  (edge_fifo_empty),
        .edge_fifo_ren_o    (edge_fifo_ren),
        .edge_fifo_rdata_o  (edge_fifo_rdata),
        .edge_fifo_r_clk_o  (edge_fifo_r_clk)
    );
    
    //
    fifo_generator_0 fifo_generator_0(
        .rst                (fifo_clr),
        
        .wr_clk             (pclk_i),
        .rd_clk             (fifo_r_clk),
        
        .din                (fifo_wdata),
        .wr_en              (fifo_wen),
        
        .rd_en              (fifo_ren),
        .dout               (fifo_rdata),
        
        .full               (fifo_full),
        .empty              (fifo_empty)
    );
    
    edge_detector_fifo edge_detector_fifo(
        .rst                (fifo_clr),
        
        .wr_clk             (pclk_i),
        .rd_clk             (edge_fifo_r_clk),
        
        .din                (is_edge),
        .wr_en              (edge_data_rdy),
        
        .rd_en              (edge_fifo_ren),
        .dout               (edge_fifo_rdata),
        
        //.full               (),
        .empty              (edge_fifo_empty)
    );
    
endmodule
