`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2022 14:44:33
// Design Name: 
// Module Name: uart
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


module uart #(
    parameter CLK_FREQ = 24_000_000,
    parameter UART_BAUD = 9_600,
    parameter MSB_FIRST = 1
)
(
    // UART
    input wire          uart_rx_i,
    output wire         uart_tx_o,
    
    // TX
    input wire          tx_start_i,
    input wire [7:0]    tx_data_i,
    
    output wire         tx_busy_o,
    output wire         tx_rdy_o,
    
    // RX
    output wire [7:0]   rx_data_o,
    
    output wire         rx_busy_o,
    output wire         rx_rdy_o,
    
    //
    input wire          clk,
    input wire          rst_n   
);
    //
    wire baud_tick;
    wire baud_tick_16x;
    
    baud_generator #(
        .clk_freq           (CLK_FREQ),
        .baud               (UART_BAUD),
        .acc_width          (16)
    ) baud_generator (
        .clk                (clk),
        .rst_n              (rst_n),
        
        .baud_tick_o        (baud_tick)
    );
    
    baud_generator #(
        .clk_freq           (CLK_FREQ),
        .baud               (16*UART_BAUD),
        .acc_width          (16)
    ) baud_generator_16x (
        .clk                (clk),
        .rst_n              (rst_n),
        
        .baud_tick_o        (baud_tick_16x)
    );
    
    //
    uart_tx uart_tx(
        .tx_start_i         (tx_start_i),
        .tx_msb_first_i     (MSB_FIRST),
        
        .baud_tick_i        (baud_tick),
        
        .tx_data_i          (tx_data_i),
        
        .tx_o               (uart_tx_o),
        
        .tx_busy_o          (tx_busy_o),
        .tx_rdy_o           (tx_rdy_o),
        
        .clk                (clk),
        .rst_n              (rst_n)
    );
    
    //
    uart_rx uart_rx(
        .rx_msb_first_i     (MSB_FIRST),
        
        .baud_16x_tick_i    (baud_tick_16x),
        
        .rx_data_o          (rx_data_o),
        
        .rx_i               (uart_rx_i),
        
        //.rx_sot_o           (),
        //.rx_eot_o           (),
        
        //.rx_error_o         (),
        
        .rx_busy_o          (rx_busy_o),
        .rx_rdy_o           (rx_rdy_o),
        
        .clk                (clk),
        .rst_n              (rst_n)
    );
    
endmodule
