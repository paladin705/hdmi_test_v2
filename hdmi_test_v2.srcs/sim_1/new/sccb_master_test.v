`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2022 17:47:29
// Design Name: 
// Module Name: sccb_master_test
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


module sccb_master_test();
    reg rst_n;
    reg clk;
    
    wire sio_c;
    wire sio_d;
    wire pwdn;
    
    reg write_sio_d;
    reg write_sio_d_en;
    
    reg start_i;
    wire busy_o;
    wire done_o;
    
    wire error_o;
    
    reg rd_i;
    reg wr_i;
    
    reg [1:0] tphases_i;
    
    reg [6:0] addr_i;
    reg [7:0] subaddr_i;
    reg [7:0] wdata_i;
    
    wire [7:0] rdata_o;
    
    assign sio_d = write_sio_d_en? write_sio_d : 1'bz;
    
    sccb_master #(
        .SYS_CLK_FREQ           (100_000_000),
        .SCCB_CLK_FREQ          (50_000),
        .SCCB_CLK_GEN_ACC_WIDTH (16)
    ) sccb_master (
        .sio_c      (sio_c),
        .sio_d      (sio_d),
        .pwdn       (pwdn),
        
        .start_i    (start_i),
        .busy_o     (busy_o),
        .done_o     (done_o),
        
        .error_o    (error_o),
        
        .rd_i       (rd_i),
        .wr_i       (wr_i),
        
        .tphases_i  (tphases_i),
        
        .addr_i     (addr_i),
        .subaddr_i  (subaddr_i),
        .wdata_i    (wdata_i),
        
        .rdata_o    (rdata_o),
        
        .sys_clk    (clk),
        .rst_n      (rst_n)
    );
    
    initial begin
        rst_n = 1'b0;
        #50;
        rst_n = 1'b1;
    end
    
    always begin
        clk = 1'b0;
        #5;
        clk = 1'b1;
        #5;
    end
    
    initial begin
        start_i = 1'b0;
        
        rd_i = 1'b0;
        wr_i = 1'b0;
    
        tphases_i = 2'b0;
    
        addr_i = 7'b0;
        subaddr_i = 8'b0;
        wdata_i = 8'b0;
        
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
    
        @(posedge rst_n);
        
        // ------------------------------
        @(posedge clk); #1;
        start_i = 1'b1;
        
        rd_i = 1'b0;
        wr_i = 1'b1;
    
        tphases_i = 2'd3;
        
        addr_i = 7'b1_00_10_10;
        subaddr_i = 8'b00_11_00_11;
        wdata_i = 8'b10_10_10_10;
        
        @(posedge clk); #1;
        start_i = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        @(posedge done_o); #1;
        @(posedge clk); #1;
        
        // ------------------------------
        @(posedge clk); #1;
        start_i = 1'b1;
        
        rd_i = 1'b0;
        wr_i = 1'b1;
    
        tphases_i = 2'd2;
    
        addr_i = 7'b1_11_10_01;
        subaddr_i = 8'b11_11_00_11;
        wdata_i = 8'b11_10_10_11;
        
        @(posedge clk); #1;
        start_i = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        @(posedge done_o); #1;
        @(posedge clk); #1;
        
        // ------------------------------
        @(posedge clk); #1;
        start_i = 1'b1;
        
        rd_i = 1'b1;
        wr_i = 1'b0;
    
        tphases_i = 2'd2;
    
        addr_i = 7'b1_11_10_01;
        subaddr_i = 8'b11_11_00_11;
        wdata_i = 8'b11_10_10_11;
        
        @(posedge clk); #1;
        start_i = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        @(posedge done_o); #1;
        @(posedge clk); #1;
        
        // ==============================================================================
        
        // ------------------------------
        @(posedge clk); #1;
        start_i = 1'b1;
        
        rd_i = 1'b0;
        wr_i = 1'b1;
    
        tphases_i = 2'd3;
        
        addr_i = 7'b1_00_10_10;
        subaddr_i = 8'b00_11_00_11;
        wdata_i = 8'b10_10_10_10;
        
        @(posedge clk); #1;
        start_i = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b1;             // NACK
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        @(posedge done_o); #1;
        @(posedge clk); #1;
        
        // ------------------------------
        @(posedge clk); #1;
        start_i = 1'b1;
        
        rd_i = 1'b0;
        wr_i = 1'b1;
    
        tphases_i = 2'd3;
        
        addr_i = 7'b1_00_10_10;
        subaddr_i = 8'b00_11_00_11;
        wdata_i = 8'b10_10_10_10;
        
        @(posedge clk); #1;
        start_i = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b1;             // NACK
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        @(posedge done_o); #1;
        @(posedge clk); #1;
        
        // ------------------------------
        @(posedge clk); #1;
        start_i = 1'b1;
        
        rd_i = 1'b0;
        wr_i = 1'b1;
    
        tphases_i = 2'd3;
        
        addr_i = 7'b1_00_10_10;
        subaddr_i = 8'b00_11_00_11;
        wdata_i = 8'b10_10_10_10;
        
        @(posedge clk); #1;
        start_i = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b1;             // NACK
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        @(posedge done_o); #1;
        @(posedge clk); #1;
        
        // ==============================================================================
        
        // ------------------------------
        @(posedge clk); #1;
        start_i = 1'b1;
        
        rd_i = 1'b0;
        wr_i = 1'b1;
    
        tphases_i = 2'd2;
    
        addr_i = 7'b1_11_10_01;
        subaddr_i = 8'b11_11_00_11;
        wdata_i = 8'b11_10_10_11;
        
        @(posedge clk); #1;
        start_i = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b1;             // NACK
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        @(posedge done_o); #1;
        @(posedge clk); #1;
        
        // ------------------------------
        @(posedge clk); #1;
        start_i = 1'b1;
        
        rd_i = 1'b0;
        wr_i = 1'b1;
    
        tphases_i = 2'd2;
    
        addr_i = 7'b1_11_10_01;
        subaddr_i = 8'b11_11_00_11;
        wdata_i = 8'b11_10_10_11;
        
        @(posedge clk); #1;
        start_i = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b1;             // NACK
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        @(posedge done_o); #1;
        @(posedge clk); #1;
        
        // ==============================================================================
        
        // ------------------------------
        @(posedge clk); #1;
        start_i = 1'b1;
        
        rd_i = 1'b1;
        wr_i = 1'b0;
    
        tphases_i = 2'd2;
    
        addr_i = 7'b1_11_10_01;
        subaddr_i = 8'b11_11_00_11;
        wdata_i = 8'b11_10_10_11;
        
        @(posedge clk); #1;
        start_i = 1'b0;
        
        repeat(9) @(posedge sio_c);
        write_sio_d = 1'b1;             // NACK
        write_sio_d_en = 1'b1;
        @(negedge sio_c);
        write_sio_d = 1'b0;
        write_sio_d_en = 1'b0;
        
        @(posedge done_o); #1;
        @(posedge clk); #1;
        
        // ==============================================================================
        
        // ------------------------------
        @(posedge clk); #1;
        @(posedge clk); #1;
        @(posedge clk); #1;
        @(posedge clk); #1;
        @(posedge clk); #1;
        @(posedge clk); #1;
        @(posedge clk); #1;
        @(posedge clk); #1;
        @(posedge clk); #1;
        @(posedge clk); #1;
        
        $finish;
    end
    
endmodule
