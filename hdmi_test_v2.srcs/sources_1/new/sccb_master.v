`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2022 13:52:15
// Design Name: 
// Module Name: sccb_master
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


module sccb_master #(
    parameter SYS_CLK_FREQ = 100_000_000,
    parameter SCCB_CLK_FREQ = 10_000,
    
    parameter SCCB_CLK_GEN_ACC_WIDTH = 16
)
(
    output wire         sio_c,
    inout wire          sio_d,
    output wire         pwdn,
    
    input wire          start_i,
    output reg          busy_o,
    output reg          done_o,
    
    output reg          error_o,
    
    input wire          rd_i,
    input wire          wr_i,
    
    input wire [1:0]    tphases_i,
    
    input wire [6:0]    addr_i,
    input wire [15:0]   subaddr_i,
    input wire [7:0]    wdata_i,
    
    output wire [7:0]   rdata_o,
    
    input wire          sys_clk,
    input wire          rst_n
);
    //
    wire sccb_clk_4x;
    
    localparam SCCB_CLK_GEN_INC = ( ((4*SCCB_CLK_FREQ)<<(SCCB_CLK_GEN_ACC_WIDTH-4)) + (SYS_CLK_FREQ>>5) ) / (SYS_CLK_FREQ>>4);
    
    reg [SCCB_CLK_GEN_ACC_WIDTH:0] sccb_clk_4x_gen_acc;
    
    always @(posedge sys_clk, negedge rst_n) begin
        if(!rst_n) begin
            sccb_clk_4x_gen_acc <= {(SCCB_CLK_GEN_ACC_WIDTH+1){1'b0}};
        end
        else begin
            sccb_clk_4x_gen_acc <= sccb_clk_4x_gen_acc[SCCB_CLK_GEN_ACC_WIDTH-1:0] + SCCB_CLK_GEN_INC;
        end
    end
    
    assign sccb_clk_4x = sccb_clk_4x_gen_acc[SCCB_CLK_GEN_ACC_WIDTH];
    
    //
    reg clear_phase_bit;
    
    reg set_error;
    
    reg [2:0] phase;
    reg [3:0] phase_bit;
    
    reg [1:0] sccb_clk_cycle;
    
    //
    reg scl;
    
    reg [7:0] sda_wdata;
    reg sda_wr_ack;
    
    reg [7:0] sda_rdata;
    reg sda_rd_ack;
    
    wire sda_rbit;
    
    //
    reg busy;
    reg done;
    
    always @(posedge sys_clk, negedge rst_n) begin
        if(!rst_n) begin
            busy_o <= 1'b0;
            done_o <= 1'b0;
        end
        else begin
            busy_o <= busy;
            done_o <= done;
        end
    end
    
    //
    localparam state_size = 3;
    
    localparam IDLE = 3'd0;
    localparam START = 3'd1;
    
    localparam PHASE = 3'd2;
    localparam PHASE_ACK = 3'd3;
    
    localparam STOP = 3'd4;
    
    reg [(state_size-1):0] state, next_state;
    
    always @(posedge sys_clk, negedge rst_n) begin
        if(!rst_n) begin
            state <= IDLE;
        end
        else begin
            state <= next_state;
        end
    end
    
    always @(*) begin
        busy = 1'b0;
        done = 1'b0;
        
        clear_phase_bit = 1'b0;
        
        set_error = 1'b0;
        
        case(state)
            IDLE: begin
                if(start_i && (rd_i ^ wr_i) && (tphases_i != 2'd0) && (tphases_i != 2'd1)) begin
                    if(wr_i || (rd_i && tphases_i == 2'd2)) begin
                        busy = 1'b1;
                        clear_phase_bit = 1'b1;
                        
                        next_state = START;
                    end
                    else begin
                        next_state = IDLE;
                    end
                end
                else begin
                    next_state = IDLE;
                end
            end
            
            START: begin
                busy = 1'b1;
                
                if(sccb_clk_cycle == 2'd3 && sccb_clk_4x) begin
                    clear_phase_bit = 1'b1;
                    
                    next_state = PHASE;
                end
                else begin
                    next_state = START;
                end
            end
            
            PHASE: begin
                busy = 1'b1;
                
                if(
                   (phase == (tphases_i + 1) && rd_i) ||
                   (phase == tphases_i && !rd_i)
                  ) begin
                    next_state = STOP;
                end
                else begin
                    if(phase_bit == 4'd8) begin
                        next_state = PHASE_ACK;
                    end
                    else begin
                        next_state = PHASE;
                    end
                end
            end
            
            PHASE_ACK: begin
                busy = 1'b1;
                
                if(phase_bit == 4'd9) begin
                    clear_phase_bit = 1'b1;
                    
                    // Проверка что при чтении бит ACK (sda_rd_ack) равен 0
                    if(sda_rd_ack == 1'b0) begin
                        next_state = PHASE;
                    end
                    else begin
                        set_error = 1'b1;
                        
                        next_state = STOP;
                    end
                end
                else begin
                    next_state = PHASE_ACK;
                end
            end
            
            STOP: begin
                busy = 1'b1;
                
                if(sccb_clk_cycle == 2'd3 && sccb_clk_4x) begin
                    done = 1'b1;
                    
                    next_state = IDLE;
                end
                else begin
                    next_state = STOP;
                end
            end
            
            default: begin
                next_state = IDLE;
            end
        endcase
    end
    
    //
    always @(posedge sys_clk, negedge rst_n) begin
        if(!rst_n) begin
            error_o <= 1'b0;
        end
        else begin
            if(state == IDLE) begin
                error_o <= 1'b0;
            end
            else begin
                error_o <= set_error? 1'b1 : error_o;
            end
        end
    end
    
    //
    always @(posedge sys_clk, negedge rst_n) begin
        if(!rst_n) begin
            sccb_clk_cycle <= 2'b0;
        end
        else if(state != IDLE) begin
            sccb_clk_cycle <= sccb_clk_4x? (sccb_clk_cycle + 2'b1) : sccb_clk_cycle;
        end
        else begin
            sccb_clk_cycle <= 2'b0;
        end
    end
    
    always @(posedge sys_clk) begin
        if(clear_phase_bit) begin
            phase_bit <= 4'b0;
        end
        else if(sccb_clk_4x) begin
            phase_bit <= (sccb_clk_cycle == 2'd3)? (phase_bit + 4'b1) : phase_bit;
        end
    end
    
    always @(posedge sys_clk) begin
        if(state == IDLE) begin
            phase <= 3'b0;
        end
        else begin
            phase <= (phase_bit == 4'd9)? (phase + 4'b1) : phase;
        end
    end
    
    //  
    always @(posedge sys_clk, negedge rst_n) begin
        if(!rst_n) begin
            scl <= 1'b1;
        end
        else begin
            case(state)
                START: begin
                    case(sccb_clk_cycle)
                        2'b00: scl <= 1'b1;
                        2'b01: scl <= 1'b1;
                        2'b10: scl <= 1'b1;
                        2'b11: scl <= 1'b0;
                    endcase
                end
                
                PHASE,
                PHASE_ACK: begin
                    case(sccb_clk_cycle)
                        2'b00: scl <= 1'b0;
                        2'b01: scl <= 1'b0;
                        2'b10: scl <= 1'b1;
                        2'b11: scl <= 1'b1;
                    endcase
                end
                
                STOP: begin
                    case(sccb_clk_cycle)
                        2'b00: scl <= 1'b0;
                        2'b01: scl <= 1'b1;
                        2'b10: scl <= 1'b1;
                        2'b11: scl <= 1'b1;
                    endcase
                end
                
                default: begin
                    scl <= 1'b1;
                end
            endcase
        end
    end
    
    always @(posedge sys_clk) begin
        if(sccb_clk_cycle == 2'd0 && sccb_clk_4x) begin
            case(state)
                START: begin
                    {sda_wdata, sda_wr_ack} <= 9'b1000_0000_0;
                end
                
                STOP: begin
                    {sda_wdata, sda_wr_ack} <= 9'b0011_0000_0;
                end
                
                default: begin
                    if(phase_bit == 4'd0) begin
                        case(phase)
                            3'd0: {sda_wdata, sda_wr_ack} <= {addr_i, rd_i, 1'b0};
                            3'd1: {sda_wdata, sda_wr_ack} <= {subaddr_i[15:8], 1'b0};
                            3'd2: {sda_wdata, sda_wr_ack} <= {subaddr_i[7:0], 1'b0};
                            3'd3: {sda_wdata, sda_wr_ack} <= {wdata_i, 1'b0};
                        endcase
                    end
                    else begin
                        {sda_wdata, sda_wr_ack} <= {sda_wdata[6:0], sda_wr_ack, 1'b0};
                    end
                end
            endcase
        end
        else begin
            if((state == START || state == STOP) && sccb_clk_4x) begin
                {sda_wdata, sda_wr_ack} <= {sda_wdata[6:0], sda_wr_ack, 1'b0};
            end
        end
    end
    
    always @(posedge sys_clk) begin
        if(sccb_clk_cycle == 2'd2 && sccb_clk_4x) begin
            if(state == PHASE || state == PHASE_ACK) begin
                {sda_rdata, sda_rd_ack} <= {sda_rdata[6:0], sda_rd_ack, sda_rbit};
            end
            else begin
                {sda_rdata, sda_rd_ack} <= {sda_rdata, sda_rd_ack};
            end
        end
    end
    
    //
    reg sio_d_oe_m;
    
    always @(posedge sys_clk, negedge rst_n) begin
        if(!rst_n) begin
            sio_d_oe_m <= 1'b1;
        end
        else if(sccb_clk_4x) begin
            case(state)
                IDLE: begin
                    sio_d_oe_m <= 1'b1;
                end
                
                START: begin
                    sio_d_oe_m <= 1'b0;
                end
                
                PHASE: begin
                    if(phase == 3'd1 && rd_i) begin
                        sio_d_oe_m <= 1'b1;
                    end
                    else begin
                        sio_d_oe_m <= 1'b0;
                    end
                end
                
                PHASE_ACK: begin
                    if(phase == 3'd1 && rd_i) begin
                        sio_d_oe_m <= 1'b0;
                    end
                    else begin
                        sio_d_oe_m <= 1'b1;
                    end
                end
                
                STOP: begin
                    sio_d_oe_m <= 1'b0;
                end
                
                default: begin
                    sio_d_oe_m <= 1'b1;
                end
            endcase
        end
    end
    
    //
    assign rdata_o = sda_rdata;
    
    //
    assign sio_c = scl;
    
    assign sio_d = sio_d_oe_m? 1'bz : sda_wdata[7];
    assign sda_rbit = sio_d;
    
    assign pwdn = 1'b0;
    
endmodule
