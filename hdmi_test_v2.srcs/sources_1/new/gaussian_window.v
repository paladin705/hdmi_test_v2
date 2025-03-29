`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2022 01:59:45
// Design Name: 
// Module Name: gaussian_window
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


module gaussian_window #(
    parameter H = 640,
    parameter W = 480
)
(
    input wire [7:0]    gray8_i,
    input wire          wen_i,
    
    output reg [7:0]    w1_o,
    output reg [7:0]    w2_o,
    output reg [7:0]    w3_o,
    output reg [7:0]    w4_o,
    output reg [7:0]    w5_o,
    output reg [7:0]    w6_o,
    output reg [7:0]    w7_o,
    output reg [7:0]    w8_o,
    output reg [7:0]    w9_o,
    
    output reg          ren_o,
    
    input wire          clk,
    input wire          rst_n
);
    //
    wire [7:0] shift_reg_1_data;
    wire [7:0] shift_reg_2_data;
    
    reg [7:0] w1_reg;
    reg [7:0] w2_reg;
    reg [7:0] w3_reg;
    
    reg [7:0] w4_reg;
    reg [7:0] w5_reg;
    reg [7:0] w6_reg;
    
    reg [7:0] w7_reg;
    reg [7:0] w8_reg;
    reg [7:0] w9_reg;
    
    always @(posedge clk) begin
        if(wen_i) begin
            {w7_reg, w8_reg, w9_reg} <= {w8_reg, w9_reg, gray8_i};
            {w4_reg, w5_reg, w6_reg} <= {w5_reg, w6_reg, shift_reg_1_data};
            {w1_reg, w2_reg, w3_reg} <= {w2_reg, w3_reg, shift_reg_2_data};
        end
    end
    
    //
    gaussian_window_shift_ram gaussian_window_shift_ram_1(
        .D      (w7_reg),
        .Q      (shift_reg_1_data),
        .CE     (wen_i),
        .CLK    (clk)
    );
    
    gaussian_window_shift_ram gaussian_window_shift_ram_2(
        .D      (w4_reg),
        .Q      (shift_reg_2_data),
        .CE     (wen_i),
        .CLK    (clk)
    );

    //
    localparam MAX_H = H-1;
    localparam MAX_W = W-1;
    
    localparam H_COUNTER_WIDTH = $clog2(MAX_H);
    localparam W_COUNTER_WIDTH = $clog2(MAX_W);
    
    reg h_en;
    reg w_en;
    
    reg [H_COUNTER_WIDTH-1:0] h_pos;
    reg [W_COUNTER_WIDTH-1:0] w_pos;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            h_pos <= {H_COUNTER_WIDTH{1'b0}};
        end
        else begin
            if(wen_i) begin
                h_pos <= (h_pos == MAX_H)? {H_COUNTER_WIDTH{1'b0}} : (h_pos + { {(H_COUNTER_WIDTH-1){1'b0}} , 1'b1});
            end
        end
    end
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            w_pos <= {W_COUNTER_WIDTH{1'b0}};
        end
        else begin
            if(wen_i) begin
                if(w_pos == MAX_W) begin
                    w_pos <= (h_pos == MAX_H)? {W_COUNTER_WIDTH{1'b0}} : w_pos;
                end
                else begin
                    w_pos <= (h_pos == MAX_H)? (w_pos + { {(W_COUNTER_WIDTH-1){1'b0}} , 1'b1}) : w_pos;
                end
            end
        end
    end
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            h_en <= 1'b0;
            w_en <= 1'b0;
        end
        else begin
            if(wen_i) begin
                h_en <= (h_pos < 2)? 1'b0 : 1'b1;
                w_en <= (w_pos < 2)? 1'b0 : 1'b1;
            end
        end
    end
    
    //
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            ren_o <= 1'b0;
        end
        else begin
            ren_o <= wen_i & h_en & w_en;
            
            w1_o <= w1_reg;
            w2_o <= w2_reg;
            w3_o <= w3_reg;
            
            w4_o <= w4_reg;
            w5_o <= w5_reg;
            w6_o <= w6_reg;
            
            w7_o <= w7_reg;
            w8_o <= w8_reg;
            w9_o <= w9_reg;
        end
    end
    
endmodule
