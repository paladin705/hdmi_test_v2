`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2022 14:50:31
// Design Name: 
// Module Name: ov7670
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


module ov7670 #(
    parameter W = 640,
    parameter H = 480
)
(
    output reg          vsync_o,
    output reg          href_o,
    output wire         pclk_o,
    input wire          xclk_i,
    output reg [7:0]    d_o,
    input wire          reset_i
);
    //
    assign pclk_o = ~xclk_i;
    
    //
    reg [15:0] v_count;
    reg [15:0] h_count;
    
    localparam V_COUNT_MAX = H + 1;
    localparam H_COUNT_MAX = 2*W + 2;
    
    always @(negedge pclk_o, negedge reset_i) begin
        if(!reset_i) begin
            v_count <= 16'b0;
        end
        else begin
            if(v_count == V_COUNT_MAX) begin
                v_count <= (h_count == H_COUNT_MAX)? 1'b0 : v_count;
            end
            else begin
                v_count <= (h_count == H_COUNT_MAX)? (v_count +16'd1) : v_count;
            end
        end
    end
    
    always @(negedge pclk_o, negedge reset_i) begin
        if(!reset_i) begin
            h_count <= 16'b0;
        end
        else begin
            if(h_count == H_COUNT_MAX) begin
                h_count <= 16'b0;
            end
            else begin
                h_count <= h_count +16'd1;
            end
        end
    end

    always @(negedge pclk_o, negedge reset_i) begin
        if(!reset_i) begin
            vsync_o <= 1'b0;
            href_o <= 1'b0;
            
            d_o <= 8'b0;
        end
        else begin
            case(v_count)
                16'd0: begin
                    vsync_o <= (h_count == 16'b0)? 1'b1 : 1'b0;
                end
                
                V_COUNT_MAX: begin
                    vsync_o <= (h_count == H_COUNT_MAX)? 1'b1 : 1'b0;
                end
                
                default: begin
                    vsync_o <= 1'b0;
                end
            endcase
            
            case(h_count)
                16'd0: begin
                    href_o <= 1'b0;
            
                    d_o <= 8'b0;
                end
                
                16'd1: begin
                    href_o <= 1'b0;
            
                    d_o <= 8'b0;
                end
                
                H_COUNT_MAX: begin
                    href_o <= 1'b0;
            
                    d_o <= 8'b0;
                end
                
                default: begin
                    href_o <= 1'b1;
            
                    d_o <= $urandom % 256;
                end
            endcase
        end
    end
    
endmodule
