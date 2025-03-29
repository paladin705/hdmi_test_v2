`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2022 19:24:11
// Design Name: 
// Module Name: sobel_edge_detector
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


module sobel_edge_detector(
    input wire [7:0]    w1_i,
    input wire [7:0]    w2_i,
    input wire [7:0]    w3_i,
    input wire [7:0]    w4_i,
    input wire [7:0]    w5_i,
    input wire [7:0]    w6_i,
    input wire [7:0]    w7_i,
    input wire [7:0]    w8_i,
    input wire [7:0]    w9_i,
    
    input wire [7:0]    threshold_i,
    
    input wire          data_rdy_i,
    
    output reg          is_edge_o,
    
    output wire         data_rdy_o,
    
    input wire          clk,
    input wire          rst_n
);
    // Gx
    reg [10:0] Gx_lcol;
    reg [10:0] Gx_rcol;
    
    reg [10:0] Gx;
    
    // Gy
    reg [10:0] Gy_urow;
    reg [10:0] Gy_drow;
    
    reg [10:0] Gy;
    
    // G
    reg [10:0] G;
    
    //
    // 1. Gx_lcol and Gx_rcol, Gy_urow and Gy_drow
    // 2. Gx and Gy
    // 3. G
    // 4. output
    
    // 1. Gx_lcol and Gx_rcol, Gy_urow and Gy_drow
    // 2. Gx and Gy
    // 3. Gx*Gx and Gy*Gy
    // 4. Gx*Gx + Gy*Gy
    // 5. sqrt
    // 6. output
    
    // Gx_pow2
    reg [21:0] Gx_pow2;
    
    // Gy_pow2
    reg [21:0] Gy_pow2;
    
    // G_pow2
    reg [21:0] G_pow2;
    
    //
    wire [10:0] sqrt_res;
    
    always @(posedge clk) begin
        // Gx
        Gx_lcol <= (w1_i + w7_i) + (w4_i << 1);     // W1 + 2*W4 + W7
        Gx_rcol <= (w3_i + w9_i) + (w6_i << 1);     // W3 + 2*W6 + W9
        
        // abs( (W3 + 2*W6 + W9) - (W1 + 2*W4 + W7) )
        if(Gx_rcol < Gx_lcol) begin
            Gx <= Gx_lcol - Gx_rcol;
        end
        else begin
            Gx <= Gx_rcol - Gx_lcol;
        end
        
        // Gy
        Gy_urow <= (w1_i + w3_i) + (w2_i << 1);     // W1 + 2*W2 + W3
        Gy_drow <= (w7_i + w9_i) + (w8_i << 1);     // W7 + 2*W8 + W9
        
        // abs( (W1 + 2*W2 + W3) - (W7 + 2*W8 + W9) )
        if(Gy_urow < Gy_drow) begin
            Gy <= Gy_drow - Gy_urow;
        end
        else begin
            Gy <= Gy_urow - Gy_drow;
        end
        /*
        // G
        if(Gx < Gy) begin
            G <= Gy;
        end
        else begin
            G <= Gx;
        end
        
        // output data
        if(G < threshold_i) begin
            is_edge_o <= 1'b0;
        end
        else begin
            is_edge_o <= 1'b1;
        end*/
        Gx_pow2 <= Gx*Gx;
        Gy_pow2 <= Gy*Gy;
        
        G_pow2 <= Gx_pow2 + Gy_pow2;
        
        G <= sqrt_res;
        
        if(G < threshold_i) begin
            is_edge_o <= 1'b0;
        end
        else begin
            is_edge_o <= 1'b1;
        end
    end
    
    SqrtBinary #(
        .SIZE       (22),
        .HALF_SIZE  (11)
    ) SqrtBinary(
        .p          (G_pow2),
        .u          (sqrt_res)
    );
    
    /*
    //
    reg [3:0] delay_rdy;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            delay_rdy <= 4'b0;
        end
        else begin
            delay_rdy <= {delay_rdy[2:0], data_rdy_i};
        end
    end
    
    assign data_rdy_o = delay_rdy[3];
    */
    reg [5:0] delay_rdy;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            delay_rdy <= 6'b0;
        end
        else begin
            delay_rdy <= {delay_rdy[4:0], data_rdy_i};
        end
    end
    
    assign data_rdy_o = delay_rdy[5];
    
endmodule
