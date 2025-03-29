`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2022 15:06:02
// Design Name: 
// Module Name: cmd_controller
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


module cmd_controller #(
    parameter CLK_FREQ = 24_000_000,
    parameter UART_BAUD = 9_600,
    parameter MSB_FIRST = 1,
    
    parameter DEFAULT_SOBEL_THRESHOLD = 8'd100
)
(
    // UART
    input wire          uart_rx_i,
    output wire         uart_tx_o,
    
    input wire          uart_en_i,
    
    // SCCB
    output reg          sccb_start_o,
    input wire          sccb_done_i,
    
    input wire          sccb_error_i,
    
    output wire         sccb_rd_o,
    output wire         sccb_wr_o,
    
    output reg [7:0]    sccb_subaddr_o,
    output reg [7:0]    sccb_wdata_o,
    output wire [1:0]   sccb_tphases_o,
    
    // Sobel
    output reg          sobel_threshold_wen_o,
    output reg [7:0]    sobel_threshold_o,
    
    // video_mode
    output reg          video_mode_o,
    
    //
    input wire          clk,
    input wire          rst_n
);
    //
    wire uart_rx;
    
    reg tx_start;
    reg [7:0] tx_data;
        
    wire tx_busy;
    wire tx_rdy;
    
    wire [7:0] rx_data;
        
    wire rx_busy;
    wire rx_rdy;
    
    assign uart_rx = uart_rx_i | (~uart_en_i);
        
    uart #(
        .CLK_FREQ       (CLK_FREQ),
        .UART_BAUD      (UART_BAUD),
        .MSB_FIRST      (MSB_FIRST)
    ) uart(
        // UART
        .uart_rx_i      (uart_rx),
        .uart_tx_o      (uart_tx_o),
        
        // TX
        .tx_start_i     (tx_start),
        .tx_data_i      (tx_data),
        
        .tx_busy_o      (tx_busy),
        .tx_rdy_o       (tx_rdy),
        
        // RX
        .rx_data_o      (rx_data),
        
        .rx_busy_o      (rx_busy),
        .rx_rdy_o       (rx_rdy),
        
        //
        .clk            (clk),
        .rst_n          (rst_n)
    );
    
    //
    reg tx_counter_clr;
    reg tx_counter_inc;
    
    reg [1:0] tx_counter;
    
    always @(posedge clk) begin
        if(tx_counter_clr) begin
            tx_counter <= 2'b0;
        end
        else begin
            tx_counter <= tx_counter_inc? (tx_counter + 2'b1) : tx_counter;
        end
    end
    
    //
    reg write_header;
    reg write_addr;
    reg write_data;
    
    reg [7:0] cmd_header;
    reg [7:0] cmd_addr;
    reg [7:0] cmd_data;
    
    always @(posedge clk) begin
        cmd_header <= write_header? rx_data : cmd_header;
        cmd_addr <= write_addr? rx_data : cmd_addr;
        cmd_data <= write_data? rx_data : cmd_data;
    end
    
    // SCCB
    reg send_sccb_cmd;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            sccb_start_o <= 1'b0;
        end
        else begin
            if(send_sccb_cmd) begin
                sccb_start_o <= 1'b1;
                
                sccb_subaddr_o <= cmd_addr;
                sccb_wdata_o <= cmd_data;
            end
            else begin
                sccb_start_o <= 1'b0;
            end
        end
    end
    
    assign sccb_rd_o = 1'b0;
    assign sccb_wr_o = 1'b1;
    
    assign sccb_tphases_o = 2'd3;
    
    // Sobel
    reg write_sobel_threshold;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            sobel_threshold_wen_o <= 1'b0;
            sobel_threshold_o <= DEFAULT_SOBEL_THRESHOLD;
        end
        else begin
            if(write_sobel_threshold) begin
                sobel_threshold_wen_o <= 1'b1;
                sobel_threshold_o <= cmd_data;
            end
            else begin
                sobel_threshold_wen_o <= 1'b0;
            end
        end
    end
    
    // video mode
    reg set_video_mode;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            video_mode_o <= 1'b0;
        end
        else begin
            if(set_video_mode) begin
                video_mode_o <= cmd_data[0];
            end
        end
    end
    
    //
    localparam ERROR_MSG_TYPE = 1'b0;
    localparam OK_MSG_TYPE = 1'b1;
    
    reg set_msg_type;
    reg msg_type;
    
    reg msg_type_reg;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            msg_type_reg <= 1'b0;
        end
        else begin
            if(set_msg_type) begin
                msg_type_reg <= msg_type;
            end
        end
    end
    
    //
    reg [7:0] error_msg [3:0];
    
    initial begin
        error_msg[0] = "E";
        error_msg[1] = "R";
        error_msg[2] = "\n";
    end
    
    //
    reg [7:0] ok_msg [3:0];
    
    initial begin
        ok_msg[0] = "O";
        ok_msg[1] = "K";
        ok_msg[2] = "\n";
    end
    
    //
    reg [7:0]  error_msg_rdata;
    reg [7:0]  ok_msg_rdata;
    
    always @(posedge clk) begin
        error_msg_rdata <= error_msg[tx_counter];
        ok_msg_rdata <= ok_msg[tx_counter];
    end
    
    //
    always @(*) begin
        case(msg_type_reg)
            ERROR_MSG_TYPE: begin
                tx_data = error_msg_rdata;
            end
            
            OK_MSG_TYPE: begin
                tx_data = ok_msg_rdata;
            end
            
            default: begin
                tx_data = ok_msg_rdata;
            end
        endcase
    end
    //
    localparam CMD_TYPE_SCCB = 8'd0;
    localparam CMD_TYPE_SOBEL = 8'd1;
    localparam CMD_TYPE_VIDEO_MODE = 8'd2;
    
    //
    localparam state_size = 3;
    
    localparam IDLE = 3'd0;
    
    localparam READ_HEADER = 3'd1;
    localparam READ_ADDR = 3'd2;
    localparam READ_DATA = 3'd3;
    
    localparam CHECK = 3'd4;
    localparam SCCB_WAIT = 3'd5;
    
    localparam SEND_DATA = 3'd6;
    localparam TX_WAIT = 3'd7;
    
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
        //
        tx_start = 1'b0;
        
        //
        write_header = 1'b0;
        write_addr = 1'b0;
        write_data = 1'b0;
        
        //
        send_sccb_cmd = 1'b0;
        
        //
        write_sobel_threshold = 1'b0;
        
        //
        set_video_mode = 1'b0;
        
        //
        set_msg_type = 1'b0;
        msg_type = OK_MSG_TYPE;
        
        //
        tx_counter_clr = 1'b1;
        tx_counter_inc = 1'b0;
        
        case(state)
            IDLE: begin
                next_state = READ_HEADER;
            end
            
            READ_HEADER: begin
                if(rx_rdy) begin
                    write_header = 1'b1;
                    
                    next_state = READ_ADDR;
                end
                else begin
                    next_state = READ_HEADER;
                end
            end
            
            READ_ADDR: begin
                if(rx_rdy) begin
                    write_addr = 1'b1;
                    
                    next_state = READ_DATA;
                end
                else begin
                    next_state = READ_ADDR;
                end
            end
            
            READ_DATA: begin
                if(rx_rdy) begin
                    write_data = 1'b1;
                    
                    next_state = CHECK;
                end
                else begin
                    next_state = READ_DATA;
                end
            end
            
            CHECK: begin
                case(cmd_header)
                    CMD_TYPE_SCCB: begin
                        send_sccb_cmd = 1'b1;
                        
                        next_state = SCCB_WAIT;
                    end
                    
                    CMD_TYPE_SOBEL: begin
                        write_sobel_threshold = 1'b1;
                        
                        set_msg_type = 1'b1;
                        msg_type = OK_MSG_TYPE;
                        
                        next_state = SEND_DATA;
                    end
                    
                    CMD_TYPE_VIDEO_MODE: begin
                        set_video_mode = 1'b1;
                        
                        set_msg_type = 1'b1;
                        msg_type = OK_MSG_TYPE;
                        
                        next_state = SEND_DATA;
                    end
                    
                    default: begin
                        set_msg_type = 1'b1;
                        msg_type = ERROR_MSG_TYPE;
                        
                        next_state = SEND_DATA;
                    end
                endcase
            end
            
            SCCB_WAIT: begin
                if(sccb_done_i) begin
                    set_msg_type = 1'b1;
                    
                    if(sccb_error_i) begin
                        msg_type = ERROR_MSG_TYPE;
                    end
                    else begin
                        msg_type = OK_MSG_TYPE;
                    end
                    
                    next_state = SEND_DATA;
                end
                else begin
                    next_state = SCCB_WAIT;
                end
            end
            
            SEND_DATA: begin
                if(tx_counter == 2'd3) begin
                    next_state = READ_HEADER;
                end
                else begin
                    tx_start = 1'b1;
                    
                    tx_counter_clr = 1'b0;
                    tx_counter_inc = 1'b1;
                    
                    next_state = TX_WAIT;
                end
            end
            
            TX_WAIT: begin
                tx_counter_clr = 1'b0;
                
                if(tx_rdy) begin
                    next_state = SEND_DATA;
                end
                else begin
                    next_state = TX_WAIT;
                end
            end
            
            default: begin
                next_state = IDLE;
            end
        endcase
    end
    
    
endmodule
