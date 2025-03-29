`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2022 20:01:36
// Design Name: 
// Module Name: timer
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


module timer #(
    parameter CLK_FREQ = 24_000_000,
    parameter PAUSE_MS = 1_000
)
(
    input wire  clr_i,
    
    output reg  irq_o,
    
    input wire  clk,
    input wire  rst_n
);
    //
    localparam TIMER_VAL = PAUSE_MS * (CLK_FREQ / 1000);
    localparam TIMER_WIDTH = $clog2(TIMER_VAL);
    
    reg [TIMER_WIDTH-1:0] timer;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            timer <= {TIMER_WIDTH{1'b0}};
        end
        else begin
            if(clr_i) begin
                timer <= {TIMER_WIDTH{1'b0}};
            end
            else begin
                timer <= timer + { {(TIMER_WIDTH - 1){1'b0}}, 1'b1 };
            end
        end
    end
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            irq_o <= 1'b0;
        end
        else begin
            irq_o <= (timer == TIMER_VAL)? 1'b1 : 1'b0;
        end
    end
    
endmodule
