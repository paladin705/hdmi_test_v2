`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2022 14:16:56
// Design Name: 
// Module Name: uart_rx
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


module uart_rx(
    input wire          rx_msb_first_i,
    
    input wire          baud_16x_tick_i,
    
    output reg [7:0]    rx_data_o,
    
    input wire          rx_i,
    
    output reg          rx_sot_o,
    output reg          rx_eot_o,
    
    output reg          rx_error_o,
    
    output reg          rx_busy_o,
    output reg          rx_rdy_o,
    
    input wire          clk,
    input wire          rst_n
);
    //
    wire rx_sync;
    reg [1:0] rx_sync_buf;
    
    always @(posedge clk) begin
        rx_sync_buf <= {rx_sync_buf[0], rx_i};
    end

    assign rx_sync = rx_sync_buf[1];

    // filter
    reg rx;
    reg [2:0] filter_count;

    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            filter_count <= 3'b111;
        end
        else if(baud_16x_tick_i) begin
            if(rx_sync == 1'b1 && filter_count != 3'b111) begin
                filter_count <= filter_count + 3'b1;
            end
            else if (rx_sync == 1'b0 && filter_count != 3'b000) begin
                filter_count <= filter_count - 3'b1;
            end
        end
    end

    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            rx <= 1'b1;
        end
        else begin
            if(filter_count == 3'b000) begin
                rx <= 1'b0;
            end
            else if(filter_count == 3'b111) begin
                rx <= 1'b1;
            end
        end
    end

    //
    reg clear_counter;
    
    reg [3:0] baud_counter;
    reg [3:0] data_counter;
    
    always @(posedge clk) begin
        if(clear_counter) begin
            baud_counter <= 4'b0;
            data_counter <= 4'b0;
        end
        else begin
            if(baud_16x_tick_i) begin
                baud_counter <= baud_counter + 4'b1;
            end
    
            if(baud_16x_tick_i && baud_counter == 4'b1111) begin
                data_counter <= data_counter + 4'b1;
            end
        end
    end

    //
    reg save_rx_data;
    
    reg [7:0] rx_buf;
    
    always @(posedge clk) begin
        if(save_rx_data) begin
            rx_buf <= {rx_buf[6:0], rx};
        end
    end

    //
    reg save_rx_buf;
    
    wire [7:0] rev_rx_buf;
    assign rev_rx_buf = {rx_buf[0], rx_buf[1], rx_buf[2], rx_buf[3], rx_buf[4], rx_buf[5], rx_buf[6], rx_buf[7]};
    
    always @(posedge clk) begin
        if(save_rx_buf) begin
            rx_data_o <= rx_msb_first_i? rx_buf : rev_rx_buf;
        end
    end


    //
    localparam state_size = 3;
    
    localparam IDLE = 3'd0;
    localparam START_BIT = 3'd1;
    localparam DATA = 3'd2;
    localparam STOP_BIT = 3'd3;
    localparam SAVE_DATA = 3'd4;
    
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
    clear_counter = 1'b0;
    save_rx_data = 1'b0;
    
    save_rx_buf = 1'b0;
    
    rx_sot_o = 1'b0;
    rx_eot_o = 1'b0;
    
    rx_error_o = 1'b0;
    
    rx_busy_o = 1'b0;
    rx_rdy_o = 1'b0;
    
        case(state)
            IDLE: begin
                if(rx == 1'b0) begin
                    clear_counter = 1'b1;
                    
                    rx_busy_o = 1'b1;
                    
                    rx_sot_o = 1'b1;
                    
                    next_state = START_BIT;
                end
                else begin
                    next_state = IDLE;
                end
            end
            
            START_BIT: begin
                rx_busy_o = 1'b1;
                
                if(baud_counter == 4'b1111) begin
                    next_state = DATA;
                end
                else begin
                    next_state = START_BIT;
                end
            end
            
            DATA: begin
                rx_busy_o = 1'b1;
                
                if(baud_16x_tick_i && baud_counter == 4'b0000) begin
                    save_rx_data = 1'b1;
                end
                
                if(baud_16x_tick_i &&  baud_counter == 4'b1111 && data_counter == 4'b1000) begin
                    next_state = STOP_BIT;
                end
                else begin
                    next_state = DATA;
                end
            end
            
            STOP_BIT: begin
                if(baud_16x_tick_i && baud_counter == 4'b0000) begin
                    rx_eot_o = 1'b1;
                    
                    if(rx == 1'b1) begin
                        rx_busy_o = 1'b1;
                        
                        save_rx_buf = 1'b1;
                        
                        next_state = SAVE_DATA;
                    end
                    else begin
                        rx_error_o = 1'b1;
                    
                        next_state = IDLE;
                    end
                end
                else begin
                    rx_busy_o = 1'b1;
                    
                    next_state = STOP_BIT;
                end
            end
            
            SAVE_DATA: begin
                rx_rdy_o = 1'b1;
                
                next_state = IDLE;
            end
            
            default: begin
                next_state = IDLE;
            end
        endcase
    end
    
endmodule
