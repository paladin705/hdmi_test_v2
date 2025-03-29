`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2022 15:26:58
// Design Name: 
// Module Name: video_processing
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


module video_processing(
    // UART
    input wire          uart_rx_i,
    output wire         uart_tx_o,
    
    // Video mode
    output wire         video_mode_o,
        
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
    output wire         reset_o,
    
    // fifo
    input wire          fifo_full_i,
    output wire         fifo_wen_o,
    output wire [7:0]   fifo_wdata_o,
    output wire         fifo_clr_o,
    
    // edge detector_fifo
    input wire          edge_data_rdy_o,
    input wire          is_edge_o,
    
    //
    input wire          xclk_i,
    input wire          pll_locked,
    input wire          rst_n
);
    //
    wire cmd_sccb_start;
    wire cmd_sccb_done;
    
    wire cmd_sccb_error;
    
    wire cmd_sccb_rd;
    wire cmd_sccb_wr;
    
    wire [7:0] cmd_sccb_subaddr;
    wire [7:0] cmd_sccb_wdata;
    wire [1:0] cmd_sccb_tphases;
    
    wire cmd_uart_en;
    
    wire sobel_threshold_wen_xclk;
    wire [7:0] sobel_threshold_xclk;
    
    cmd_controller #(
        .CLK_FREQ               (24_000_000),
        .UART_BAUD              (9_600),
        .MSB_FIRST              (0),
        
        .DEFAULT_SOBEL_THRESHOLD(8'd100)
    ) cmd_controller(
        // UART
        .uart_rx_i              (uart_rx_i),
        .uart_tx_o              (uart_tx_o),
        
        .uart_en_i              (cmd_uart_en),
        
        // SCCB
        .sccb_start_o           (cmd_sccb_start),
        .sccb_done_i            (cmd_sccb_done),
        
        .sccb_error_i           (cmd_sccb_error),
        
        .sccb_rd_o              (cmd_sccb_rd),
        .sccb_wr_o              (cmd_sccb_wr),
        
        .sccb_subaddr_o         (cmd_sccb_subaddr),
        .sccb_wdata_o           (cmd_sccb_wdata),
        .sccb_tphases_o         (cmd_sccb_tphases),
        
        // Sobel
        .sobel_threshold_wen_o  (sobel_threshold_wen_xclk),
        .sobel_threshold_o      (sobel_threshold_xclk),
        
        // video_mode
        .video_mode_o           (video_mode_o),
        
        //
        .clk                    (xclk_i),
        .rst_n                  (reset_o)
    );

    //
    wire sof;
    wire eof;
    
    wire cam_data_rdy;
    
    wire [4:0] r5;
    wire [5:0] g6;
    wire [4:0] b5;
    
    wire rst_n_pclk;
    
    camera_controller camera_controller(
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
        
        //
        .sof_o              (sof),
        .eof_o              (eof),
        
        //.sor_o              (),
        //.eor_o              (),
        
        .cam_data_rdy_o     (cam_data_rdy),
        
        .r5_o               (r5),
        .g6_o               (g6),
        .b5_o               (b5),
        
        // cmd controller
        .cmd_sccb_start_i   (cmd_sccb_start),
        .cmd_sccb_done_o    (cmd_sccb_done),
        
        .cmd_sccb_error_o   (cmd_sccb_error),
        
        .cmd_sccb_rd_i      (cmd_sccb_rd),
        .cmd_sccb_wr_i      (cmd_sccb_wr),
        
        .cmd_sccb_subaddr_i (cmd_sccb_subaddr),
        .cmd_sccb_wdata_i   (cmd_sccb_wdata),
        .cmd_sccb_tphases_i (cmd_sccb_tphases),
        
        .cmd_uart_en_o      (cmd_uart_en),
        
        //
        .rst_n_pclk_o       (rst_n_pclk),
        
        //
        .xclk_i             (xclk_i),
        .pll_locked         (pll_locked),
        .rst_n              (rst_n)
    );
    
    //
    wire gray_sof;
    wire gray_eof;
    
    wire gray_data_rdy;
    
    reg [5:0] delay_sof;
    reg [5:0] delay_eof;
    
    reg [5:0] delay_rdy;
    
    always @(posedge pclk_i, negedge rst_n_pclk) begin
        if(!rst_n_pclk) begin
            delay_sof <= 6'b0;
            delay_eof <= 6'b0;
            
            delay_rdy <= 6'b0;
        end
        else begin
            delay_sof <= {delay_sof[4:0], sof};
            delay_eof <= {delay_eof[4:0], eof};
            
            delay_rdy <= {delay_rdy[4:0], cam_data_rdy}; 
        end
    end
    
    assign gray_sof = delay_sof[5];
    assign gray_eof = delay_eof[5];
    
    assign gray_data_rdy = delay_rdy[5];
    
    //
    wire [7:0] r8;
    wire [7:0] g8;
    wire [7:0] b8;
    
    rgb565_to_rgb888 rgb565_to_rgb888(
        .r5_i               (r5),
        .g6_i               (g6),
        .b5_i               (b5),
        
        .r8_o               (r8),
        .g8_o               (g8),
        .b8_o               (b8),
        
        .clk                (pclk_i)
    );
    
    //
    wire [7:0] gray8;
    
    rgb888_to_gray rgb888_to_gray(
        .r8_i               (r8),
        .g8_i               (g8),
        .b8_i               (b8),
        
        .gray8_o            (gray8),
        
        .clk                (pclk_i)
    );
    
    write_fifo_interface write_fifo_interface(
        // camera data
        .sof_i              (gray_sof),
        .eof_i              (gray_eof),
        
        .gray_data_rdy_i    (gray_data_rdy),
        .gray8_i            (gray8),
        
        // fifo
        .fifo_full_i        (fifo_full_i),
        .fifo_wen_o         (fifo_wen_o),
        .fifo_wdata_o       (fifo_wdata_o),
        .fifo_clr_o         (fifo_clr_o),
        
        //
        .clk                (pclk_i),
        .rst_n              (rst_n_pclk)
    );
    
    //
    wire gaussian_data_rdy_o;
    wire [7:0] gaussian_data;
    
    image_gaussian_filter #(
        .H                  (640),
        .W                  (480)
    ) image_gaussian_filter(
        .gray_data_rdy_i    (fifo_wen_o),
        .gray8_i            (fifo_wdata_o),
        
        .gray_data_rdy_o    (gaussian_data_rdy_o),
        .gray8_o            (gaussian_data),
        
        .clk                (pclk_i),
        .rst_n              (rst_n_pclk)
    );
    
    //
    wire sobel_fifo_rst;
    
    wire sobel_fifo_ren;
    wire [7:0] sobel_fifo_rdata;
    wire sobel_fifo_empty;
    
    assign sobel_fifo_rst = !reset_o;
    
    assign sobel_fifo_ren = !sobel_fifo_empty;
    
    sobel_threshold_fifo sobel_threshold_fifo (
        .rst                (sobel_fifo_rst),
        .wr_clk             (xclk_o),
        .rd_clk             (pclk_i),
        
        .din                (sobel_threshold_xclk),
        .wr_en              (sobel_threshold_wen_xclk),
        
        .rd_en              (sobel_fifo_ren),
        .dout               (sobel_fifo_rdata),
        
        //.full               (),
        .empty              (sobel_fifo_empty)
    );
    
    //
    reg sobel_threshold_wen;
    
    wire edge_data_rdy;
    wire is_edge;
    
    always @(posedge pclk_i, negedge rst_n_pclk) begin
        if(!rst_n_pclk) begin
            sobel_threshold_wen <= 1'b0;
        end
        else begin
            sobel_threshold_wen <= sobel_fifo_ren;
        end
    end
    
    edge_detector #(
        .H                      (638),
        .W                      (478),
        
        .DEFAULT_THRESHOLD      (8'd37)
    ) edge_detector(
        .gray_data_rdy_i        (gaussian_data_rdy_o),
        .gray8_i                (gaussian_data),
        
        .data_rdy_o             (edge_data_rdy),
        .is_edge_o              (is_edge),
        
        .sobel_threshold_wen_i  (sobel_threshold_wen),
        .sobel_threshold_i      (sobel_fifo_rdata),
        
        .clk                    (pclk_i),
        .rst_n                  (rst_n_pclk)
    );
    
    assign edge_data_rdy_o = edge_data_rdy;
    assign is_edge_o = is_edge;
    
endmodule
