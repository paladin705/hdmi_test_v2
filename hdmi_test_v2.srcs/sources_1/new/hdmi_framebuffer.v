`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2022 20:21:41
// Design Name: 
// Module Name: hdmi_framebuffer
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


module hdmi_framebuffer #(
    parameter H = 640,
    parameter W = 480,
    
    parameter MAX_ADDR = H*W - 1,
    parameter ADDR_WIDTH = $clog2(MAX_ADDR)
)
(
    //
    input wire                  sof_i,
    
    input wire                  wen_i,
    input wire [ADDR_WIDTH-1:0] waddr_i,
    input wire [7:0]            wdata_i,
    
    //
    input wire                  ren_i,
    //output reg [7:0]            rdata_i,
    output wire [7:0]           rdata_i,
    
    output reg                  de_dly_o,
    
    //
    output reg                  hdmi_tx_en_o,
    
    //
    input wire                  clk,
    input wire                  rst_n
);
    //
    reg read_next_data;
    
    reg [ADDR_WIDTH-1:0] raddr;
    wire [7:0] rdata;
    
    blk_mem_gen_0 framebuffer_ram (
        .clka           (clk),
        .wea            (wen_i),
        .addra          (waddr_i),
        .dina           (wdata_i),
        
        .clkb           (clk),
        .addrb          (raddr),
        .doutb          (rdata)
    );
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            raddr <= {ADDR_WIDTH{1'b0}};
        end
        else begin
            if(read_next_data) begin
                raddr <= (raddr == MAX_ADDR)? {ADDR_WIDTH{1'b0}} : (raddr + { {(ADDR_WIDTH-1){1'b0}} , 1'b1} );
            end
        end
    end
    
    //
    reg hdmi_tx_en;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            hdmi_tx_en_o <= 1'b0;
        end
        else begin
            hdmi_tx_en_o <= hdmi_tx_en;
        end
    end
    
    //
    reg de_buf_reg;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            de_buf_reg <= 1'b0;
            de_dly_o <= 1'b0;
        end
        else begin
            de_buf_reg <= ren_i;
            de_dly_o <= de_buf_reg;
        end
    end
    
    //
    reg [7:0] rdata_buf_reg;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            rdata_buf_reg <= 8'b0;
        end
        else begin
            rdata_buf_reg <= rdata;
        end
    end
    
    assign rdata_i = rdata_buf_reg;
    
    //
    localparam state_size = 2;
    
    localparam IDLE = 2'd0;
    localparam WAIT_WDATA = 2'd1;
    localparam SET_DATA = 2'd2;
    
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
        read_next_data = 1'b0;
        
        hdmi_tx_en = 1'b0;
        
        case(state)
            IDLE: begin
                if(sof_i) begin
                    next_state = WAIT_WDATA;
                end
                else begin
                    next_state = IDLE;
                end
            end
            
            WAIT_WDATA: begin
                if(waddr_i >= (MAX_ADDR/2)) begin
                    next_state = SET_DATA;
                end
                else begin
                    next_state = WAIT_WDATA;
                end
            end
            
            SET_DATA: begin
                if(ren_i) begin
                    read_next_data = 1'b1;
                end
                
                hdmi_tx_en = 1'b1;
                
                next_state = SET_DATA;
            end
            
            default: begin
                next_state = IDLE;
            end
        endcase
    end
    
endmodule
