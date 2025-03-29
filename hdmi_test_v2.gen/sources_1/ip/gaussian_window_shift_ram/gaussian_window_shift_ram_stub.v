// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Sep  2 18:20:32 2022
// Host        : DESKTOP-SDG9QHK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top gaussian_window_shift_ram -prefix
//               gaussian_window_shift_ram_ window_shift_ram_stub.v
// Design      : window_shift_ram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_shift_ram_v12_0_14,Vivado 2020.2" *)
module gaussian_window_shift_ram(D, CLK, CE, Q)
/* synthesis syn_black_box black_box_pad_pin="D[7:0],CLK,CE,Q[7:0]" */;
  input [7:0]D;
  input CLK;
  input CE;
  output [7:0]Q;
endmodule
