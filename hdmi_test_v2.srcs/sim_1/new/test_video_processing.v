`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2022 16:20:08
// Design Name: 
// Module Name: test_video_processing
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


module test_video_processing();
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
    
    wire fifo_full;
    wire fifo_wen;
    wire [7:0] fifo_wdata;
    wire fifo_clr;
    
    wire fifo_ren;
    wire [7:0] fifo_rdata;
    
    wire fifo_empty;
    wire [4:0] fifo_wcount;
    wire fifo_wr_rst_busy;
    wire fifo_rd_rst_busy;
    
    wire sof;
    wire eof;
    
    wire [18:0] gray_addr;
    wire gray_data_rdy;
    wire [7:0] gray8;
    
    wire hdmi_tx_en;
    
    reg framebuffer_ren;
    wire [7:0] framebuffer_rdata;
    
    video_processing video_processing(
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
        
        // fifo
        .fifo_full_i    (fifo_full),
        .fifo_wen_o     (fifo_wen),
        .fifo_wdata_o   (fifo_wdata),
        .fifo_clr_o     (fifo_clr),
        
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
    
    fifo_generator_0 fifo_generator_0(
        .rst            (fifo_clr),
        
        .wr_clk         (pclk),
        .rd_clk         (xclk),
        
        .din            (fifo_wdata),
        .wr_en          (fifo_wen),
        
        .rd_en          (fifo_ren),
        .dout           (fifo_rdata),
        
        .full           (fifo_full),
        .empty          (fifo_empty),
        
        .wr_data_count  (fifo_wcount),
        
        .wr_rst_busy    (fifo_wr_rst_busy),
        .rd_rst_busy    (fifo_rd_rst_busy)
      );
      
    read_fifo_interface #(
        .H                  (640),
        .W                  (480)
    ) read_fifo_interface(
        // camera data
        .sof_o              (sof),
        .eof_o              (eof),
        
        .gray_addr_o        (gray_addr),
        .gray_data_rdy_o    (gray_data_rdy),
        .gray8_o            (gray8),
        
        // fifo
        .fifo_empty_i       (fifo_empty),
        .fifo_ren_o         (fifo_ren),
        .fifo_rdata_o       (fifo_rdata),
        
        //
        .clk                (xclk),
        .rst_n              (reset)
    );
    
    hdmi_framebuffer #(
        .H                  (640),
        .W                  (480)
    ) hdmi_framebuffer(
        //
        .sof_i              (sof),
        
        .wen_i              (gray_data_rdy),
        .waddr_i            (gray_addr),
        .wdata_i            (gray8),
        
        //
        .ren_i              (framebuffer_ren),
        .rdata_i            (framebuffer_rdata),
        
        //
        .hdmi_tx_en_o       (hdmi_tx_en),
        
        //
        .clk                (xclk),
        .rst_n              (reset)
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
    
    initial begin
        framebuffer_ren = 1'b0;
        
        @(posedge hdmi_tx_en);
        
        repeat(10) @(posedge xclk);
        
        @(posedge xclk); #1;
        framebuffer_ren = 1'b1;
    end
    
endmodule
