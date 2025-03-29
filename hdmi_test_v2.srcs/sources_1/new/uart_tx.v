`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2022 14:05:05
// Design Name: 
// Module Name: uart_tx
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


module uart_tx(
    input wire          tx_start_i,
    input wire          tx_msb_first_i,
    
    input wire          baud_tick_i,
    
    input wire [7:0]    tx_data_i,
    
    output reg          tx_o,
    
    output wire         tx_busy_o,
    output wire         tx_rdy_o,
    
    input wire          clk,
    input wire          rst_n
);
    reg load_data;
    reg shift_data;
    
    reg tx_busy;
    reg tx_rdy;
    
    assign tx_busy_o = tx_busy;
    assign tx_rdy_o = tx_rdy;
    
    reg [10:0] tx_buf;
    
    wire start_bit;
    wire stop_bit;
    
    assign start_bit = 1'b0;
    assign stop_bit = 1'b1;
    
    wire [7:0] rev_tx_data;
    assign rev_tx_data = {tx_data_i[0], tx_data_i[1], tx_data_i[2], tx_data_i[3], tx_data_i[4], tx_data_i[5], tx_data_i[6], tx_data_i[7]};
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            tx_o <= 1'b1;
        end
        else if(load_data) begin
            tx_buf <= tx_msb_first_i? {start_bit, tx_data_i, stop_bit, stop_bit} : {start_bit, rev_tx_data, stop_bit, stop_bit};
        end
        else if(shift_data) begin
            {tx_o, tx_buf} <= {tx_buf, 1'b1};
        end
    end
    
    
    //
    reg [3:0] counter;
    
    
    always @(posedge clk) begin
        if(load_data) begin
            counter <= 4'b0;
        end
        else if(shift_data) begin
            counter <= counter + 4'b1;
        end
    end
    
    //
    localparam state_size = 1;
    
    localparam IDLE = 1'd0;
    localparam TRANSMIT_DATA = 1'd1;
    
    reg [(state_size-1):0] state, next_state;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            state <= IDLE;
        end
        else begin
            state <= next_state;
        end
    end
    
    always @(*) begin
        load_data = 1'b0;
        shift_data = 1'b0;
        
        tx_busy = 1'b0;
        tx_rdy = 1'b0;
    
        case(state)
            IDLE: begin
                if(tx_start_i) begin
                    load_data = 1'b1;
                    
                    tx_busy = 1'b1;
                    
                    next_state = TRANSMIT_DATA;
                end
                else begin
                    next_state = IDLE;
                end
            end
        
            TRANSMIT_DATA: begin
                if(baud_tick_i) begin
                    shift_data = 1'b1;
                end
                
                if(counter >= 4'd12) begin
                    tx_rdy = 1'b1;
                    
                    next_state = IDLE;
                end
                else begin
                    tx_busy = 1'b1;
                    
                    next_state = TRANSMIT_DATA;
                end
            end
        
            default: next_state = IDLE;
        endcase
    end
    
endmodule
