`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2022 15:42:12
// Design Name: 
// Module Name: test_window
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


module test_window();
    reg rst_n;
    reg clk;
    
    reg [7:0] gray8;
    reg  wen;
        
    wire [7:0] w1;
    wire [7:0] w2;
    wire [7:0] w3;
    wire [7:0] w4;
    wire [7:0] w5;
    wire [7:0] w6;
    wire [7:0] w7;
    wire [7:0] w8;
    wire [7:0] w9;
        
    wire ren;
    
    integer H;
    integer W;
    
    wire data_rdy;
    wire is_edge;
    
    window #(
        .H          (640),
        .W          (480)
    ) window (
        .gray8_i    (gray8),
        .wen_i      (wen),
        
        .w1_o       (w1),
        .w2_o       (w2),
        .w3_o       (w3),
        .w4_o       (w4),
        .w5_o       (w5),
        .w6_o       (w6),
        .w7_o       (w7),
        .w8_o       (w8),
        .w9_o       (w9),
        
        .ren_o      (ren),
        
        .clk        (clk),
        .rst_n      (rst_n)
    );
    
    sobel_edge_detector sobel_edge_detector(
        .w1_i           (w1),
        .w2_i           (w2),
        .w3_i           (w3),
        
        .w4_i           (w4),
        .w5_i           (w5),
        .w6_i           (w6),
        
        .w7_i           (w7),
        .w8_i           (w8),
        .w9_i           (w9),
        
        .threshold_i    (8'd100),
        
        .data_rdy_i     (ren),
        
        .is_edge_o      (is_edge),
        
        .data_rdy_o     (data_rdy),
        
        .clk            (clk),
        .rst_n          (rst_n)
    );
    
    wire edge_fifo_empty;
    wire edge_fifo_ren;
    wire edge_fifo_rdata;
    
    edge_detector_fifo edge_detector_fifo(
        .rst                (!rst_n),
        
        .wr_clk             (clk),
        .rd_clk             (clk),
        
        .din                (is_edge),
        .wr_en              (data_rdy),
        
        .rd_en              (edge_fifo_ren),
        .dout               (edge_fifo_rdata),
        
        //.full               (),
        .empty              (edge_fifo_empty)
    );
    
    //
    wire edge_sof;
    
    wire is_edge_rdata;
    
    wire [18:0] edge_addr;
    wire edge_data_rdy;
        
    read_edge_fifo_interface #(
        .H                  (638),
        .W                  (478),
        
        .RESIZE_H           (640),
        .RESIZE_W           (480)
    ) read_edge_fifo_interface(
        // camera data
        .sof_o              (edge_sof),
        //.eof_o              (),
        
        .edge_addr_o        (edge_addr),
        .edge_data_rdy_o    (edge_data_rdy),
        .is_edge_o          (is_edge_rdata),
        
        // fifo
        .fifo_empty_i       (edge_fifo_empty),
        .fifo_ren_o         (edge_fifo_ren),
        .fifo_rdata_o       (edge_fifo_rdata),
        
        //
        .clk                (clk),
        .rst_n              (rst_n)
    );
    
    integer counter;
    
    always @(posedge data_rdy, negedge rst_n) begin
        if(!rst_n) begin
            counter = 0;
        end
        else begin
            counter <= counter + 1;
        end
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
        wen = 1'b0;
        gray8 = 8'b0;
        
        H = 0;
        W = 0;
        
        @(posedge rst_n);
        
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        
        for(W = 0; W < 480; W = W + 1) begin
            for(H = 0; H < 640; H = H + 1) begin
                @(posedge clk); #1;
                wen = 1'b1;
                
                case(H)
                    /*0:          gray8 = W % 255;
                    1:          gray8 = W % 255;
                    2:          gray8 = W % 255;
                    
                    637:        gray8 = W % 255;
                    638:        gray8 = W % 255;
                    639:        gray8 = W % 255;
                    
                    default:    gray8 = 8'b0;*/
                    default:    gray8 = W % 255;
                endcase
                
                @(posedge clk); #1;
                wen = 1'b0; 
            end
        end
    end
endmodule
