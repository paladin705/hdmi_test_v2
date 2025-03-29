`timescale 1ns / 1ps
`default_nettype none

// Project F: Display Controller DVI Demo
// (C)2020 Will Green, Open source hardware released under the MIT License
// Learn more at https://projectf.io

// This demo requires the following Verilog modules:
//  * display_clocks
//  * display_timings
//  * dvi_generator
//  * serializer_10to1
//  * async_reset
//  * tmds_encoder_dvi
//  * test_card_simple or another test card

module display_demo_dvi(
    input  wire         RST_BTN,            // reset button
    
    input wire          mode_async_i,
    
    input wire          pix_clk,            // pixel clock
    input wire          pix_clk_5x,         // 5x clock for 10:1 DDR SerDes
    input wire          clk_lock,           // clock locked?
    
    // HDMI
    inout  wire         hdmi_tx_cec,        // CE control bidirectional
    input  wire         hdmi_tx_hpd,        // hot-plug detect
    inout  wire         hdmi_tx_rscl,       // DDC bidirectional
    inout  wire         hdmi_tx_rsda,       // DDC bidirectional
    output wire         hdmi_tx_clk_n,      // HDMI clock differential negative
    output wire         hdmi_tx_clk_p,      // HDMI clock differential positive
    output wire [2:0]   hdmi_tx_n,          // Three HDMI channels differential negative
    output wire [2:0]   hdmi_tx_p,          // Three HDMI channels differential positive
    
    // fifo
    input wire          fifo_empty_i,
    output wire         fifo_ren_o,
    input wire [7:0]    fifo_rdata_o,
    output wire         fifo_r_clk_o,
    
    // edge fifo
    input wire          edge_fifo_empty_i,
    output wire         edge_fifo_ren_o,
    input wire          edge_fifo_rdata_o,
    output wire         edge_fifo_r_clk_o
);

    // Display Clocks
    /*
    wire pix_clk;                   // pixel clock
    wire pix_clk_5x;                // 5x clock for 10:1 DDR SerDes
    wire clk_lock;                  // clock locked?

    
    display_clocks #(               // 640x480  800x600 1280x720 1920x1080
        .MULT_MASTER(31.5),         //    31.5     10.0   37.125    37.125
        .DIV_MASTER(5),             //       5        1        5         5
        .DIV_5X(5.0),               //     5.0      5.0      2.0       1.0
        .DIV_1X(25),                //      25       25       10         5
        .IN_PERIOD(10.0)            // 100 MHz = 10 ns
    )
    display_clocks_inst
    (
       .i_clk(sys_clk),
       .i_rst(~RST_BTN),            // reset is active low on Arty & Nexys Video
       .o_clk_1x(pix_clk),
       .o_clk_5x(pix_clk_5x),
       .o_locked(clk_lock)
    );
    */
    
    assign fifo_r_clk_o = pix_clk;
    
    assign edge_fifo_r_clk_o = pix_clk;
    
    //
    wire rst_n;
    
    wire async_rst_n;
    
    assign async_rst_n = RST_BTN & clk_lock;
    
    reg [1:0] sync_rst_n_buf;
    
    always @(posedge pix_clk, negedge async_rst_n) begin
        if(!async_rst_n) begin
            sync_rst_n_buf <= 2'b0;
        end
        else begin
            sync_rst_n_buf <= {sync_rst_n_buf[0], 1'b1};
        end
    end
    
    assign rst_n = sync_rst_n_buf[1];
    
    //
    wire mode;
    
    reg [1:0] sync_mode_buf;
    
    always @(posedge pix_clk, negedge rst_n) begin
        if(!rst_n) begin
            sync_mode_buf <= 2'b0;
        end
        else begin
            sync_mode_buf <= {sync_mode_buf[0], mode_async_i};
        end
    end
    
    assign mode = sync_mode_buf[1];
    
    //
    wire sof;
    
    wire [18:0] gray_addr;
    wire gray_data_rdy;
    wire [7:0] gray8;
    
    read_fifo_interface #(
        .H                  (640),
        .W                  (480)
    ) read_fifo_interface(
        // camera data
        .sof_o              (sof),
        //.eof_o              (),
        
        .gray_addr_o        (gray_addr),
        .gray_data_rdy_o    (gray_data_rdy),
        .gray8_o            (gray8),
        
        // fifo
        .fifo_empty_i       (fifo_empty_i),
        .fifo_ren_o         (fifo_ren_o),
        .fifo_rdata_o       (fifo_rdata_o),
        
        //
        .clk                (pix_clk),
        .rst_n              (rst_n)
    );
    
    //
    wire edge_sof;
    
    wire [18:0] edge_addr;
    wire edge_data_rdy;
    wire is_edge;
        
    read_edge_fifo_interface #(
        .H                  (636),
        .W                  (476),
        
        .RESIZE_H           (640),
        .RESIZE_W           (480)
    ) read_edge_fifo_interface(
        // camera data
        .sof_o              (edge_sof),
        //.eof_o              (),
        
        .edge_addr_o        (edge_addr),
        .edge_data_rdy_o    (edge_data_rdy),
        .is_edge_o          (is_edge),
        
        // fifo
        .fifo_empty_i       (edge_fifo_empty_i),
        .fifo_ren_o         (edge_fifo_ren_o),
        .fifo_rdata_o       (edge_fifo_rdata_o),
        
        //
        .clk                (pix_clk),
        .rst_n              (rst_n)
    );
    
    // Display Timings
    wire signed [15:0] sx;          // horizontal screen position (signed)
    wire signed [15:0] sy;          // vertical screen position (signed)
    wire h_sync;                    // horizontal sync
    wire v_sync;                    // vertical sync
    wire de;                        // display enable
    wire frame;                     // frame start
    
    //
    wire de_dly;                    // display enable (1 clk delay)
    
    wire hdmi_tx_en;
    
    //
    wire gray_de_dly;               // display enable (1 clk delay)
    
    wire gray_hdmi_tx_en;
    
    wire [7:0] gray8_rdata;
    
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
        .ren_i              (de),
        .rdata_i            (gray8_rdata),
        
        .de_dly_o           (gray_de_dly),
        
        //
        .hdmi_tx_en_o       (gray_hdmi_tx_en),
        
        //
        .clk                (pix_clk),
        .rst_n              (rst_n)
    );
    
    //
    wire edge_de_dly;               // display enable (1 clk delay)
    
    wire edge_hdmi_tx_en;
    
    wire is_edge_rdata;
    
    hdmi_edge_framebuffer #(
        .H                  (640),
        .W                  (480)
    ) hdmi_edge_framebuffer(
        //
        .sof_i              (edge_sof),
        
        .wen_i              (edge_data_rdy),
        .waddr_i            (edge_addr),
        .wdata_i            (is_edge),
        
        //
        .ren_i              (de),
        .rdata_i            (is_edge_rdata),
        
        .de_dly_o           (edge_de_dly),
        
        //
        .hdmi_tx_en_o       (edge_hdmi_tx_en),
        
        //
        .clk                (pix_clk),
        .rst_n              (rst_n)
    );
    
    //
    assign de_dly = gray_de_dly & edge_de_dly;
    
    assign hdmi_tx_en = gray_hdmi_tx_en & edge_hdmi_tx_en;
    
    // Display Timings
    display_timings #(              // 640x480  800x600 1280x720 1920x1080
        .H_RES(640),                //     640      800     1280      1920
        .V_RES(480),                //     480      600      720      1080
        .H_FP(16),                  //      16       40      110        88
        .H_SYNC(96),                //      96      128       40        44
        .H_BP(48),                  //      48       88      220       148
        .V_FP(10),                  //      10        1        5         4
        .V_SYNC(2),                 //       2        4        5         5
        .V_BP(33),                  //      33       23       20        36
        .H_POL(0),                  //       0        1        1         1
        .V_POL(0)                   //       0        1        1         1
    )
    display_timings_inst (
        .i_pix_clk(pix_clk),
        .i_rst(!hdmi_tx_en),
        .o_hs(h_sync),
        .o_vs(v_sync),
        .o_de(de),
        .o_frame(frame),
        .o_sx(sx),
        .o_sy(sy)
    );

    // test card colour output
    reg [7:0] red;
    reg [7:0] green;
    reg [7:0] blue;
   
    always @(mode, red, green, blue) begin
        if(mode) begin
            red = gray8_rdata;
            green = gray8_rdata;
            blue = gray8_rdata;
        end
        else begin
            red = {8 {~is_edge_rdata}};
            green = {8 {~is_edge_rdata}};
            blue = {8 {~is_edge_rdata}};
        end
    end
    /*
    wire [7:0] red;
    wire [7:0] green;
    wire [7:0] blue;
    
    assign red = gray8_rdata;
    assign green = gray8_rdata;
    assign blue = gray8_rdata;
    
    //assign red = {8 {is_edge_rdata}};
    //assign green = {8 {is_edge_rdata}};
    //assign blue = {8 {is_edge_rdata}};
    */

    // Test Card: Simple - ENABLE ONE TEST CARD INSTANCE ONLY
    //test_card_simple #(
    //    .H_RES(640)    // horizontal resolution
    //) test_card_inst (
    //    .i_x(sx),
    //    .o_red(red),
    //    .o_green(green),
    //    .o_blue(blue)
    //);

    // // Test Card: Squares - ENABLE ONE TEST CARD INSTANCE ONLY
    // test_card_squares #(
    //     .H_RES(1280),   // horizontal resolution
    //     .V_RES(720)     // vertical resolution
    // )
    // test_card_inst (
    //     .i_x(sx),
    //     .i_y(sy),
    //     .o_red(red),
    //     .o_green(green),
    //     .o_blue(blue)
    // );

    // // Test Card: Gradient - ENABLE ONE TEST CARD INSTANCE ONLY
    // localparam GRAD_STEP = 2;  // step right shift: 480=2, 720=2, 1080=3
    // test_card_gradient test_card_inst (
    //     .i_y(sy[GRAD_STEP+7:GRAD_STEP]),
    //     .i_x(sx[5:0]),
    //     .o_red(red),
    //     .o_green(green),
    //     .o_blue(blue)
    // );

    // TMDS Encoding and Serialization
    wire tmds_ch0_serial, tmds_ch1_serial, tmds_ch2_serial, tmds_chc_serial;
    dvi_generator dvi_out (
        .i_pix_clk(pix_clk),
        .i_pix_clk_5x(pix_clk_5x),
        .i_rst(!clk_lock),
        //.i_de(de),
        .i_de(de_dly),
        .i_data_ch0(blue),
        .i_data_ch1(green),
        .i_data_ch2(red),
        .i_ctrl_ch0({v_sync, h_sync}),
        .i_ctrl_ch1(2'b00),
        .i_ctrl_ch2(2'b00),
        .o_tmds_ch0_serial(tmds_ch0_serial),
        .o_tmds_ch1_serial(tmds_ch1_serial),
        .o_tmds_ch2_serial(tmds_ch2_serial),
        .o_tmds_chc_serial(tmds_chc_serial)  // encode pixel clock via same path
    );

    // TMDS Buffered Output
    OBUFDS #(.IOSTANDARD("TMDS_33"))
        tmds_buf_ch0 (.I(tmds_ch0_serial), .O(hdmi_tx_p[0]), .OB(hdmi_tx_n[0]));
    OBUFDS #(.IOSTANDARD("TMDS_33"))
        tmds_buf_ch1 (.I(tmds_ch1_serial), .O(hdmi_tx_p[1]), .OB(hdmi_tx_n[1]));
    OBUFDS #(.IOSTANDARD("TMDS_33"))
        tmds_buf_ch2 (.I(tmds_ch2_serial), .O(hdmi_tx_p[2]), .OB(hdmi_tx_n[2]));
    OBUFDS #(.IOSTANDARD("TMDS_33"))
        tmds_buf_chc (.I(tmds_chc_serial), .O(hdmi_tx_clk_p), .OB(hdmi_tx_clk_n));

    assign hdmi_tx_cec   = 1'bz;
    assign hdmi_tx_rsda  = 1'bz;
    assign hdmi_tx_rscl  = 1'b1;
endmodule