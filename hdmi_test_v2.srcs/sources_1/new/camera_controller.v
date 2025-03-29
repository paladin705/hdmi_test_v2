`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2022 20:25:24
// Design Name: 
// Module Name: camera_controller
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


module camera_controller(
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
    
    //
    output reg          sof_o,              // Start of Frame
    output reg          eof_o,              // End of Frame
    
    output reg          sor_o,              // Start of Row
    output reg          eor_o,              // End of Row
    
    output reg          cam_data_rdy_o,
    
    output reg [4:0]    r5_o,
    output reg [5:0]    g6_o,
    output reg [4:0]    b5_o,
    
    // cmd controller
    input wire          cmd_sccb_start_i,
    output wire         cmd_sccb_done_o,
    
    output wire         cmd_sccb_error_o,
    
    input wire          cmd_sccb_rd_i,
    input wire          cmd_sccb_wr_i,
    
    input wire [7:0]    cmd_sccb_subaddr_i,
    input wire [7:0]    cmd_sccb_wdata_i,
    input wire [1:0]    cmd_sccb_tphases_i,
    
    output wire         cmd_uart_en_o,
    
    //
    output wire         rst_n_pclk_o,
    
    //
    input wire          xclk_i,
    input wire          pll_locked,
    input wire          rst_n
);
    //
    assign xclk_o = xclk_i;
    
    // rst
    wire async_rst_n;
    wire sync_rst_n_pclk;
    wire sync_rst_n_xclk;
    
    assign async_rst_n = rst_n & pll_locked;
    
    reg [1:0] sync_rst_pclk_buf;
    reg [1:0] sync_rst_xclk_buf;
    
    always @(posedge pclk_i, negedge async_rst_n) begin
        if(!async_rst_n) begin
            sync_rst_pclk_buf <= 2'b0;
        end
        else begin
            sync_rst_pclk_buf <= {sync_rst_pclk_buf[0], 1'b1};
        end
    end
    
    always @(posedge xclk_o, negedge async_rst_n) begin
        if(!async_rst_n) begin
            sync_rst_xclk_buf <= 2'b0;
        end
        else begin
            sync_rst_xclk_buf <= {sync_rst_xclk_buf[0], 1'b1};
        end
    end
    
    assign sync_rst_n_pclk = sync_rst_pclk_buf[1];
    assign rst_n_pclk_o = sync_rst_n_pclk;
    
    assign sync_rst_n_xclk = sync_rst_xclk_buf[1];
    assign reset_o = sync_rst_n_xclk;
    
    // =====================================================================
    // xclk
    // =====================================================================
    //
    reg sccb_start;
    wire sccb_done;
    
    wire sccb_error;
    
    reg sccb_rd;
    reg sccb_wr;
    
    reg [1:0] sccb_tphases;
    
    wire [6:0] sccb_addr;
    reg [7:0] sccb_subaddr;
    reg [7:0] sccb_wdata;
    
    sccb_master #(
        .SYS_CLK_FREQ       (24_000_000),
        .SCCB_CLK_FREQ      (10_000),
        
        .SCCB_CLK_GEN_ACC_WIDTH (16)
    ) sccb_master(
        .sio_c              (sio_c),
        .sio_d              (sio_d),
        .pwdn               (pwdn),
        
        .start_i            (sccb_start),
        //.busy_o             (),
        .done_o             (sccb_done),
        
        .error_o            (sccb_error),
        
        .rd_i               (sccb_rd),
        .wr_i               (sccb_wr),
        
        .tphases_i          (sccb_tphases),
        
        .addr_i             (sccb_addr),
        .subaddr_i          (sccb_subaddr),
        .wdata_i            (sccb_wdata),
        
        //.rdata_o            (),
        
        .sys_clk            (xclk_o),
        .rst_n              (sync_rst_n_xclk)
    );
    
    //
    wire start;
    wire done;
    
    wire rd;
    wire wr;
    
    wire [1:0] tphases;
    
    wire [6:0] addr;
    wire [7:0] subaddr;
    wire [7:0] wdata;
    
    wire [7:0] message_addr;
    wire [15:0] message_data;
    
    wire camera_init_done_xclk;
    
    camera_init #(
        //.CAMERA_INIT_MESSAGES_LENGTH    (78),
        .CAMERA_INIT_MESSAGES_LENGTH    (80),
        //.CAMERA_INIT_MESSAGES_LENGTH    (1),
        
        .CLK_FREQ                       (24_000_000),
        
        .START_PAUSE_MS                 (1_000),
        //.START_PAUSE_MS                 (10),
        .TX_PAUSE_MS                    (1)
    ) camera_init(
        // sccb master
        .start_o            (start),
        .done_i             (done),
        
        .rd_o               (rd),
        .wr_o               (wr),
        
        .tphases_o          (tphases),
        
        .addr_o             (addr),
        .subaddr_o          (subaddr),
        .wdata_o            (wdata),
        
        // ROM
        .message_addr_o     (message_addr),
        .message_data_i     (message_data),
        
        // camera capture
        .camera_init_done_o (camera_init_done_xclk),
        
        //
        .clk                (xclk_o),
        .rst_n              (sync_rst_n_xclk)
    );
    
    //
    camera_init_messages_rom camera_init_messages_rom(
        .message_addr_i     (message_addr),
        .message_data_o     (message_data),
        
        .clk                (xclk_o)
    );
    
    //
    always @(*) begin
        if(camera_init_done_xclk) begin
            sccb_start = cmd_sccb_start_i;
            
            sccb_rd = cmd_sccb_rd_i;
            sccb_wr = cmd_sccb_wr_i;
            
            sccb_tphases = cmd_sccb_tphases_i;
            
            sccb_subaddr = cmd_sccb_subaddr_i;
            sccb_wdata = cmd_sccb_wdata_i;
        end
        else begin
            sccb_start = start;
            
            sccb_rd = rd;
            sccb_wr = wr;
            
            sccb_tphases = tphases;
            
            sccb_subaddr = subaddr;
            sccb_wdata = wdata;
        end
    end
    
    assign sccb_addr = addr;
    
    assign cmd_sccb_done_o = sccb_done;
    assign cmd_sccb_error_o = sccb_error;
    
    assign done = sccb_done;
    
    assign cmd_uart_en_o = camera_init_done_xclk;
    
    // =====================================================================
    // xclk -> pclk
    // =====================================================================
    //
    wire camera_init_done_pclk;
    
    reg [1:0] sync_camera_init_done_buf;
    
    always @(posedge pclk_i, negedge sync_rst_n_pclk) begin
        if(!sync_rst_n_pclk) begin
            sync_camera_init_done_buf <= 2'b0;
        end
        else begin
            sync_camera_init_done_buf <= {sync_camera_init_done_buf[0], camera_init_done_xclk};
        end
    end
    
    assign camera_init_done_pclk = sync_camera_init_done_buf[1];
    
    // =====================================================================
    // pclk
    // =====================================================================
    //
    wire sof;
    wire eof;
    
    wire sor;
    wire eor;
    
    wire cam_data_rdy;
    wire [15:0] cam_data;
    
    camera_capture camera_capture(
        // Camera
        .vsync_i            (vsync_i),
        .href_i             (href_i),
        .pclk_i             (pclk_i),
        .d_i                (d_i),
        
        //
        .sof_o              (sof),
        .eof_o              (eof),
        
        .sor_o              (sor),
        .eor_o              (eor),
        
        .cam_data_rdy_o     (cam_data_rdy),
        .cam_data_o         (cam_data),
        
        //
        .rst_n              (sync_rst_n_pclk)
    );
    
    //
    always @(posedge pclk_i, negedge sync_rst_n_pclk) begin
        if(!sync_rst_n_pclk) begin
            sof_o <= 1'b0;
            eof_o <= 1'b0;
            
            sor_o <= 1'b0;
            eor_o <= 1'b0;
            
            cam_data_rdy_o <= 1'b0;
            
            r5_o <= 5'b0;
            g6_o <= 6'b0;
            b5_o <= 5'b0;
        end
        else begin
            sof_o <= sof & camera_init_done_pclk;
            eof_o <= eof & camera_init_done_pclk;
            
            sor_o <= sor & camera_init_done_pclk;
            eor_o <= eor & camera_init_done_pclk;
            
            cam_data_rdy_o <= cam_data_rdy & camera_init_done_pclk;
            
            r5_o <= cam_data[7:3];
            g6_o <= {cam_data[2:0], cam_data[15:13]};
            b5_o <= cam_data[12:8];
        end
    end
    
endmodule
