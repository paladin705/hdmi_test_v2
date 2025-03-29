`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2022 13:50:03
// Design Name: 
// Module Name: camera_capture
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


module camera_capture(
    // Camera
    input wire          vsync_i,
    input wire          href_i,
    input wire          pclk_i,
    input wire [7:0]    d_i,
    
    //
    output wire         sof_o,              // Start of Frame
    output wire         eof_o,              // End of Frame
    
    output wire         sor_o,              // Start of Row
    output wire         eor_o,              // End of Row
    
    output reg          cam_data_rdy_o,
    output wire [15:0]  cam_data_o,
    
    //
    input wire          rst_n
);
    // sof and eof
    reg prev_vsync;
    
    always @(posedge pclk_i, negedge rst_n) begin
        if(!rst_n) begin
            prev_vsync <= 1'b0;
        end
        else begin
            prev_vsync <= vsync_i;
        end
    end
    
    assign sof_o = prev_vsync & !vsync_i;
    assign eof_o = !prev_vsync & vsync_i;
    
    // sor and eor
    reg prev_href;
    
    always @(posedge pclk_i, negedge rst_n) begin
        if(!rst_n) begin
            prev_href <= 1'b0;
        end
        else begin
            prev_href <= href_i;
        end
    end
    
    assign sor_o = !prev_href & href_i;
    assign eor_o = prev_href & !href_i;
    
    //
    reg data_part;
    reg [15:0] data_buf;
    
    always @(posedge pclk_i, negedge rst_n) begin
        if(!rst_n) begin
            data_part <= 1'b0;
        end
        else begin
            if(sof_o) begin
                data_part <= 1'b0;
            end
            else if(href_i) begin
                data_part <= ~data_part;
            end
        end
    end
    
    always @(posedge pclk_i) begin
        if(href_i) begin
            if(data_part == 1'b0) begin
                data_buf[7:0] <= d_i;
            end
            else begin
                data_buf[15:8] <= d_i;
            end
        end
    end
    
    //
    always @(posedge pclk_i, negedge rst_n) begin
        if(!rst_n) begin
            cam_data_rdy_o <= 1'b0;
        end
        else begin
            cam_data_rdy_o <= (href_i && data_part)? 1'b1 : 1'b0;
        end
    end
    
    assign cam_data_o = data_buf;
    
endmodule
