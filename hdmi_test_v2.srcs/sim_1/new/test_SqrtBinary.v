`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2022 01:47:25
// Design Name: 
// Module Name: test_SqrtBinary
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


module test_SqrtBinary();
    reg [21:0] p;
    wire [10:0] u;
    integer ref;
    integer dif;

    SqrtBinary #(
        .SIZE       (22),
        .HALF_SIZE  (11)
    ) SqrtBinary(
        .p          (p),
        .u          (u)
    );
    
    initial begin
        dif = 0;
        for(p = 0; p < 22'b11_11_11_11_11_11_11_11_11_11_11; p = p + 1) begin
            #1;
            ref = $sqrt(p);
            #1;
            if(dif < (ref - u)) begin
                dif = ref - u;
            end
            #100;
        end
    end
endmodule
