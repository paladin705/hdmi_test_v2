`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2022 18:22:21
// Design Name: 
// Module Name: camera_init
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


module camera_init #(
    parameter CAMERA_INIT_MESSAGES_LENGTH = 78,
    
    parameter CLK_FREQ = 24_000_000,
    
    parameter START_PAUSE_MS = 1_000,
    parameter TX_PAUSE_MS = 1
)
(
    // sccb master
    output reg          start_o,
    input wire          done_i,
    
    output wire         rd_o,
    output wire         wr_o,
    
    output wire [1:0]   tphases_o,
    
    output wire [6:0]   addr_o,
    output wire [7:0]   subaddr_o,
    output wire [7:0]   wdata_o,
    
    // ROM
    output reg [7:0]    message_addr_o,
    input wire [15:0]   message_data_i,
    
    // camera capture
    output reg          camera_init_done_o,
    
    //
    input wire          clk,
    input wire          rst_n
);
    //
    assign rd_o = 1'b0;
    assign wr_o = 1'b1;
    
    assign tphases_o = 2'd3;
    
    assign addr_o = 7'h21;
    assign subaddr_o = message_data_i[15:8];
    assign wdata_o = message_data_i[7:0];
    
    //
    reg start_tx;
    
    reg clr_start_pause_timer;
    wire irq_start_pause_timer;
    
    reg clr_tx_pause_timer;
    wire irq_tx_pause_timer;
    
    reg inc_message_addr;
    
    reg camera_init_done;
    
    timer #(
        .CLK_FREQ   (CLK_FREQ),
        .PAUSE_MS   (START_PAUSE_MS)
    ) start_pause_timer(
        .clr_i      (clr_start_pause_timer),
        
        .irq_o      (irq_start_pause_timer),
        
        .clk        (clk),
        .rst_n      (rst_n)
    );
    
    timer #(
        .CLK_FREQ   (CLK_FREQ),
        .PAUSE_MS   (TX_PAUSE_MS)
    ) tx_pause_timer(
        .clr_i      (clr_tx_pause_timer),
        
        .irq_o      (irq_tx_pause_timer),
        
        .clk        (clk),
        .rst_n      (rst_n)
    );
    
    //
    localparam state_size = 3;
    
    localparam IDLE = 3'd0;
    localparam START_PAUSE = 3'd1;
    localparam SEND_MESSAGE = 3'd2;
    localparam MESSAGE_TX_WAIT = 3'd3;
    localparam INC_MESSAGE_ADDR = 3'd4;
    localparam TX_PAUSE = 3'd5;
    localparam END_PAUSE = 3'd6;
    localparam CAMERA_INIT_DONE = 3'd7;
    
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
        start_tx = 1'b0;
        
        clr_start_pause_timer = 1'b1;
        clr_tx_pause_timer = 1'b1;
        
        inc_message_addr = 1'b0;
        
        camera_init_done = 1'b0;
        
        case(state)
            IDLE: begin
                next_state = START_PAUSE;
            end
            
            START_PAUSE: begin
                clr_start_pause_timer = 1'b0;
                
                if(irq_start_pause_timer) begin
                    next_state = SEND_MESSAGE;
                end
                else begin
                    next_state = START_PAUSE;
                end
            end
            
            SEND_MESSAGE: begin
                start_tx = 1'b1;
                
                next_state = MESSAGE_TX_WAIT;
            end
            
            MESSAGE_TX_WAIT: begin
                if(done_i) begin
                    next_state = INC_MESSAGE_ADDR;
                end
                else begin
                    next_state = MESSAGE_TX_WAIT;
                end
            end
            
            INC_MESSAGE_ADDR: begin
                inc_message_addr = 1'b1;
                
                next_state = TX_PAUSE;
            end
            
            TX_PAUSE: begin
                clr_tx_pause_timer = 1'b0;
                
                if(irq_tx_pause_timer) begin
                    if(message_addr_o == CAMERA_INIT_MESSAGES_LENGTH) begin
                        next_state = END_PAUSE;
                    end
                    else begin
                        next_state = SEND_MESSAGE;
                    end
                end
                else begin
                    next_state = TX_PAUSE;
                end
            end
            
            END_PAUSE: begin
                clr_start_pause_timer = 1'b0;
                
                if(irq_start_pause_timer) begin
                    next_state = CAMERA_INIT_DONE;
                end
                else begin
                    next_state = END_PAUSE;
                end
            end
            
            CAMERA_INIT_DONE: begin
                camera_init_done = 1'b1;
                
                next_state = CAMERA_INIT_DONE;
            end
            
            default: begin
                next_state = IDLE;
            end
        endcase
    end
    
    //
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            start_o <= 1'b0;
        end
        else begin
            start_o <= start_tx;
        end
    end
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            message_addr_o <= 8'b0;
        end
        else begin
            message_addr_o <= inc_message_addr? (message_addr_o + 8'b1) : message_addr_o;
        end
    end
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            camera_init_done_o <= 1'b0;
        end
        else begin
            camera_init_done_o <= camera_init_done;
        end
    end
    
endmodule
