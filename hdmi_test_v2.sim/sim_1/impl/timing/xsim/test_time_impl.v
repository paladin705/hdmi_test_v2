// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Aug 16 16:02:06 2022
// Host        : DESKTOP-SDG9QHK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/User/FPGA
//               Projects/hdmi_test_v2/hdmi_test_v2.sim/sim_1/impl/timing/xsim/test_time_impl.v}
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module async_reset
   (i_rst_oserdes,
    CLK,
    \rst_shf_reg[0]_0 );
  output i_rst_oserdes;
  input CLK;
  input \rst_shf_reg[0]_0 ;

  wire CLK;
  wire i_rst_oserdes;
  (* async_reg = "true" *) wire [1:0]rst_shf;
  wire \rst_shf_reg[0]_0 ;

  FDPE #(
    .INIT(1'b1)) 
    o_rst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rst_shf[1]),
        .PRE(\rst_shf_reg[0]_0 ),
        .Q(i_rst_oserdes));
  initial assign \rst_shf_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1),
    .XON("FALSE")) 
    \rst_shf_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\rst_shf_reg[0]_0 ),
        .Q(rst_shf[0]));
  initial assign \rst_shf_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1),
    .XON("FALSE")) 
    \rst_shf_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rst_shf[0]),
        .PRE(\rst_shf_reg[0]_0 ),
        .Q(rst_shf[1]));
endmodule

module clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(20.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(20.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(10.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b1),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module display_clocks
   (MMCME2_BASE_inst_0,
    o_locked,
    o_clk_1x,
    o_clk_5x,
    RST_BTN_IBUF,
    locked,
    i_clk);
  output MMCME2_BASE_inst_0;
  output o_locked;
  output o_clk_1x;
  output o_clk_5x;
  input RST_BTN_IBUF;
  input locked;
  input i_clk;

  wire MMCME2_BASE_inst_0;
  wire MMCME2_BASE_inst_i_1_n_0;
  wire RST_BTN_IBUF;
  wire clk_1x_pre;
  wire clk_5x_pre;
  wire clk_fb;
  wire i_clk;
  wire locked;
  wire o_clk_1x;
  wire o_clk_5x;
  wire o_locked;
  wire NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_MMCME2_BASE_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MMCME2_BASE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(37.125000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE_F(2.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(10),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(5),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    MMCME2_BASE_inst
       (.CLKFBIN(clk_fb),
        .CLKFBOUT(clk_fb),
        .CLKFBOUTB(NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(i_clk),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_5x_pre),
        .CLKOUT0B(NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_1x_pre),
        .CLKOUT1B(NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_MMCME2_BASE_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(o_locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(MMCME2_BASE_inst_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    MMCME2_BASE_inst_i_1
       (.I0(RST_BTN_IBUF),
        .I1(locked),
        .O(MMCME2_BASE_inst_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG bufg_clk_pix
       (.I(clk_1x_pre),
        .O(o_clk_1x));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG bufg_clk_pix_5x
       (.I(clk_5x_pre),
        .O(o_clk_5x));
  LUT1 #(
    .INIT(2'h1)) 
    \o_sx[15]_i_1 
       (.I0(o_locked),
        .O(MMCME2_BASE_inst_0));
endmodule

module display_demo_dvi
   (hdmi_tx_p,
    hdmi_tx_n,
    hdmi_tx_clk_p,
    hdmi_tx_clk_n,
    RST_BTN_IBUF,
    locked,
    i_clk);
  output [2:0]hdmi_tx_p;
  output [2:0]hdmi_tx_n;
  output hdmi_tx_clk_p;
  output hdmi_tx_clk_n;
  input RST_BTN_IBUF;
  input locked;
  input i_clk;

  wire RST_BTN_IBUF;
  wire [4:1]bias;
  wire clk_lock;
  wire display_clocks_inst_n_0;
  wire display_timings_inst_n_10;
  wire display_timings_inst_n_11;
  wire display_timings_inst_n_17;
  wire display_timings_inst_n_18;
  wire display_timings_inst_n_19;
  wire display_timings_inst_n_20;
  wire display_timings_inst_n_21;
  wire display_timings_inst_n_22;
  wire display_timings_inst_n_23;
  wire display_timings_inst_n_24;
  wire display_timings_inst_n_25;
  wire display_timings_inst_n_26;
  wire display_timings_inst_n_27;
  wire display_timings_inst_n_28;
  wire display_timings_inst_n_29;
  wire display_timings_inst_n_30;
  wire display_timings_inst_n_31;
  wire display_timings_inst_n_32;
  wire display_timings_inst_n_33;
  wire display_timings_inst_n_34;
  wire display_timings_inst_n_35;
  wire display_timings_inst_n_36;
  wire display_timings_inst_n_37;
  wire display_timings_inst_n_38;
  wire display_timings_inst_n_39;
  wire display_timings_inst_n_4;
  wire display_timings_inst_n_40;
  wire display_timings_inst_n_41;
  wire display_timings_inst_n_42;
  wire display_timings_inst_n_43;
  wire display_timings_inst_n_44;
  wire display_timings_inst_n_45;
  wire display_timings_inst_n_5;
  wire display_timings_inst_n_6;
  wire display_timings_inst_n_7;
  wire display_timings_inst_n_8;
  wire display_timings_inst_n_9;
  wire dvi_out_n_0;
  wire dvi_out_n_1;
  wire dvi_out_n_14;
  wire dvi_out_n_15;
  wire dvi_out_n_16;
  wire dvi_out_n_17;
  wire dvi_out_n_18;
  wire dvi_out_n_19;
  wire dvi_out_n_2;
  wire dvi_out_n_3;
  wire dvi_out_n_4;
  wire dvi_out_n_5;
  wire dvi_out_n_6;
  wire dvi_out_n_7;
  wire dvi_out_n_8;
  wire dvi_out_n_9;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_n;
  wire [2:0]hdmi_tx_p;
  wire i_clk;
  wire locked;
  wire [8:0]o_tmds0_in;
  wire pix_clk;
  wire pix_clk_5x;
  wire \test_card_inst/b60 ;
  wire \test_card_inst/b604_in ;
  wire \test_card_inst/b70 ;
  wire \test_card_inst/b703_in ;
  wire tmds_ch0_serial;
  wire tmds_ch1_serial;
  wire tmds_ch2_serial;
  wire tmds_chc_serial;

  display_clocks display_clocks_inst
       (.MMCME2_BASE_inst_0(display_clocks_inst_n_0),
        .RST_BTN_IBUF(RST_BTN_IBUF),
        .i_clk(i_clk),
        .locked(locked),
        .o_clk_1x(pix_clk),
        .o_clk_5x(pix_clk_5x),
        .o_locked(clk_lock));
  display_timings display_timings_inst
       (.CLK(pix_clk),
        .CO(\test_card_inst/b60 ),
        .D(display_timings_inst_n_25),
        .Q({dvi_out_n_5,dvi_out_n_6,dvi_out_n_7,dvi_out_n_8}),
        .SR(display_timings_inst_n_24),
        .\bias_reg[1] (display_timings_inst_n_5),
        .\bias_reg[1]_0 (display_timings_inst_n_28),
        .\bias_reg[1]_1 (display_timings_inst_n_29),
        .\bias_reg[1]_10 (dvi_out_n_17),
        .\bias_reg[1]_2 (display_timings_inst_n_30),
        .\bias_reg[1]_3 (display_timings_inst_n_31),
        .\bias_reg[1]_4 (display_timings_inst_n_32),
        .\bias_reg[1]_5 (display_timings_inst_n_33),
        .\bias_reg[1]_6 (display_timings_inst_n_40),
        .\bias_reg[1]_7 (display_timings_inst_n_42),
        .\bias_reg[1]_8 (display_timings_inst_n_45),
        .\bias_reg[1]_9 (dvi_out_n_18),
        .\bias_reg[2] (display_timings_inst_n_27),
        .\bias_reg[2]_0 (display_timings_inst_n_34),
        .\bias_reg[4] (display_timings_inst_n_4),
        .\bias_reg[4]_0 (display_timings_inst_n_8),
        .\bias_reg[4]_1 (display_timings_inst_n_17),
        .\bias_reg[4]_10 (display_timings_inst_n_43),
        .\bias_reg[4]_2 (display_timings_inst_n_20),
        .\bias_reg[4]_3 (display_timings_inst_n_22),
        .\bias_reg[4]_4 (display_timings_inst_n_23),
        .\bias_reg[4]_5 (display_timings_inst_n_35),
        .\bias_reg[4]_6 ({display_timings_inst_n_36,display_timings_inst_n_37}),
        .\bias_reg[4]_7 (display_timings_inst_n_38),
        .\bias_reg[4]_8 (display_timings_inst_n_39),
        .\bias_reg[4]_9 (display_timings_inst_n_41),
        .o_locked(clk_lock),
        .\o_sx_reg[11]_0 (\test_card_inst/b703_in ),
        .\o_sx_reg[11]_1 (display_timings_inst_n_10),
        .\o_sx_reg[14]_0 (\test_card_inst/b604_in ),
        .\o_sx_reg[15]_0 (\test_card_inst/b70 ),
        .\o_sx_reg[15]_1 (display_timings_inst_n_7),
        .\o_sx_reg[15]_2 (display_timings_inst_n_11),
        .\o_sx_reg[15]_3 (display_timings_inst_n_18),
        .\o_sx_reg[15]_4 (display_timings_inst_n_21),
        .\o_sx_reg[15]_5 (display_timings_inst_n_26),
        .\o_sx_reg[15]_6 (display_timings_inst_n_44),
        .\o_sx_reg[9]_0 (display_timings_inst_n_19),
        .\o_sy_reg[0]_0 (display_clocks_inst_n_0),
        .\o_sy_reg[15]_0 (display_timings_inst_n_6),
        .\o_sy_reg[15]_1 (display_timings_inst_n_9),
        .o_tmds0_in({o_tmds0_in[8:6],o_tmds0_in[2],o_tmds0_in[0]}),
        .\o_tmds_reg[0] (bias),
        .\o_tmds_reg[0]_0 (dvi_out_n_15),
        .\o_tmds_reg[2] (dvi_out_n_4),
        .\o_tmds_reg[6] (dvi_out_n_19),
        .\o_tmds_reg[6]_0 (dvi_out_n_16),
        .\o_tmds_reg[7] (dvi_out_n_14),
        .\o_tmds_reg[7]_0 ({dvi_out_n_0,dvi_out_n_1,dvi_out_n_2,dvi_out_n_3}),
        .\o_tmds_reg[7]_1 (dvi_out_n_9));
  dvi_generator dvi_out
       (.CLK(pix_clk),
        .CO(\test_card_inst/b60 ),
        .D({display_timings_inst_n_36,display_timings_inst_n_37}),
        .Q({dvi_out_n_0,dvi_out_n_1,dvi_out_n_2,dvi_out_n_3}),
        .SR(display_timings_inst_n_24),
        .\bias[3]_i_5 (\test_card_inst/b703_in ),
        .\bias[3]_i_5_0 (\test_card_inst/b70 ),
        .\bias_reg[1] (dvi_out_n_9),
        .\bias_reg[1]_0 (dvi_out_n_15),
        .\bias_reg[1]_1 (display_timings_inst_n_33),
        .\bias_reg[1]_2 (display_timings_inst_n_25),
        .\bias_reg[2] (dvi_out_n_4),
        .\bias_reg[2]_0 (dvi_out_n_17),
        .\bias_reg[2]_1 (dvi_out_n_18),
        .\bias_reg[2]_2 (dvi_out_n_19),
        .\bias_reg[2]_3 (display_timings_inst_n_27),
        .\bias_reg[2]_4 (\test_card_inst/b604_in ),
        .\bias_reg[2]_5 (display_timings_inst_n_19),
        .\bias_reg[3] (dvi_out_n_16),
        .\bias_reg[3]_0 (display_timings_inst_n_26),
        .\bias_reg[3]_1 (display_timings_inst_n_28),
        .\bias_reg[3]_2 (display_timings_inst_n_39),
        .\bias_reg[3]_3 (display_timings_inst_n_38),
        .\bias_reg[3]_4 (display_timings_inst_n_30),
        .\bias_reg[3]_5 (display_timings_inst_n_34),
        .\bias_reg[3]_6 (display_timings_inst_n_41),
        .\bias_reg[3]_7 (display_timings_inst_n_35),
        .\bias_reg[3]_8 (display_timings_inst_n_32),
        .\bias_reg[3]_9 (display_timings_inst_n_43),
        .\bias_reg[4] ({dvi_out_n_5,dvi_out_n_6,dvi_out_n_7,dvi_out_n_8}),
        .\bias_reg[4]_0 (bias),
        .\bias_reg[4]_1 (dvi_out_n_14),
        .\bias_reg[4]_2 (display_timings_inst_n_10),
        .\bias_reg[4]_3 (display_timings_inst_n_44),
        .\bias_reg[4]_4 (display_timings_inst_n_29),
        .\bias_reg[4]_5 (display_timings_inst_n_31),
        .\bias_reg[4]_6 (display_timings_inst_n_21),
        .\bias_reg[4]_7 (display_timings_inst_n_45),
        .\bias_reg[4]_8 (display_timings_inst_n_40),
        .\bias_reg[4]_9 (display_timings_inst_n_42),
        .i_clk_hs(pix_clk_5x),
        .o_data(tmds_ch0_serial),
        .o_rst_reg(tmds_chc_serial),
        .o_tmds0_in({o_tmds0_in[8:6],o_tmds0_in[2],o_tmds0_in[0]}),
        .\o_tmds_reg[0] (tmds_ch1_serial),
        .\o_tmds_reg[0]_0 (tmds_ch2_serial),
        .\o_tmds_reg[0]_1 (display_clocks_inst_n_0),
        .\o_tmds_reg[0]_2 (display_timings_inst_n_9),
        .\o_tmds_reg[2] (display_timings_inst_n_4),
        .\o_tmds_reg[6] (display_timings_inst_n_5),
        .\o_tmds_reg[6]_0 (display_timings_inst_n_7),
        .\o_tmds_reg[6]_1 (display_timings_inst_n_6),
        .\o_tmds_reg[7] (display_timings_inst_n_17),
        .\o_tmds_reg[7]_0 (display_timings_inst_n_8),
        .\o_tmds_reg[8] (display_timings_inst_n_18),
        .\o_tmds_reg[8]_0 (display_timings_inst_n_11),
        .\o_tmds_reg[9] (display_timings_inst_n_20),
        .\o_tmds_reg[9]_0 (display_timings_inst_n_22),
        .\o_tmds_reg[9]_1 (display_timings_inst_n_23));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS tmds_buf_ch0
       (.I(tmds_ch0_serial),
        .O(hdmi_tx_p[0]),
        .OB(hdmi_tx_n[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS tmds_buf_ch1
       (.I(tmds_ch1_serial),
        .O(hdmi_tx_p[1]),
        .OB(hdmi_tx_n[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS tmds_buf_ch2
       (.I(tmds_ch2_serial),
        .O(hdmi_tx_p[2]),
        .OB(hdmi_tx_n[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS tmds_buf_chc
       (.I(tmds_chc_serial),
        .O(hdmi_tx_clk_p),
        .OB(hdmi_tx_clk_n));
endmodule

module display_timings
   (CO,
    \o_sx_reg[14]_0 ,
    \o_sx_reg[15]_0 ,
    \o_sx_reg[11]_0 ,
    \bias_reg[4] ,
    \bias_reg[1] ,
    \o_sy_reg[15]_0 ,
    \o_sx_reg[15]_1 ,
    \bias_reg[4]_0 ,
    \o_sy_reg[15]_1 ,
    \o_sx_reg[11]_1 ,
    \o_sx_reg[15]_2 ,
    o_tmds0_in,
    \bias_reg[4]_1 ,
    \o_sx_reg[15]_3 ,
    \o_sx_reg[9]_0 ,
    \bias_reg[4]_2 ,
    \o_sx_reg[15]_4 ,
    \bias_reg[4]_3 ,
    \bias_reg[4]_4 ,
    SR,
    D,
    \o_sx_reg[15]_5 ,
    \bias_reg[2] ,
    \bias_reg[1]_0 ,
    \bias_reg[1]_1 ,
    \bias_reg[1]_2 ,
    \bias_reg[1]_3 ,
    \bias_reg[1]_4 ,
    \bias_reg[1]_5 ,
    \bias_reg[2]_0 ,
    \bias_reg[4]_5 ,
    \bias_reg[4]_6 ,
    \bias_reg[4]_7 ,
    \bias_reg[4]_8 ,
    \bias_reg[1]_6 ,
    \bias_reg[4]_9 ,
    \bias_reg[1]_7 ,
    \bias_reg[4]_10 ,
    \o_sx_reg[15]_6 ,
    \bias_reg[1]_8 ,
    Q,
    \o_tmds_reg[2] ,
    \o_tmds_reg[6] ,
    \o_tmds_reg[7] ,
    \o_tmds_reg[7]_0 ,
    \o_tmds_reg[7]_1 ,
    \o_tmds_reg[0] ,
    \o_tmds_reg[0]_0 ,
    \o_tmds_reg[6]_0 ,
    o_locked,
    \bias_reg[1]_9 ,
    \bias_reg[1]_10 ,
    \o_sy_reg[0]_0 ,
    CLK);
  output [0:0]CO;
  output [0:0]\o_sx_reg[14]_0 ;
  output [0:0]\o_sx_reg[15]_0 ;
  output [0:0]\o_sx_reg[11]_0 ;
  output \bias_reg[4] ;
  output \bias_reg[1] ;
  output \o_sy_reg[15]_0 ;
  output \o_sx_reg[15]_1 ;
  output \bias_reg[4]_0 ;
  output \o_sy_reg[15]_1 ;
  output \o_sx_reg[11]_1 ;
  output \o_sx_reg[15]_2 ;
  output [4:0]o_tmds0_in;
  output \bias_reg[4]_1 ;
  output \o_sx_reg[15]_3 ;
  output \o_sx_reg[9]_0 ;
  output \bias_reg[4]_2 ;
  output \o_sx_reg[15]_4 ;
  output \bias_reg[4]_3 ;
  output \bias_reg[4]_4 ;
  output [0:0]SR;
  output [0:0]D;
  output \o_sx_reg[15]_5 ;
  output \bias_reg[2] ;
  output \bias_reg[1]_0 ;
  output \bias_reg[1]_1 ;
  output \bias_reg[1]_2 ;
  output \bias_reg[1]_3 ;
  output \bias_reg[1]_4 ;
  output [0:0]\bias_reg[1]_5 ;
  output \bias_reg[2]_0 ;
  output \bias_reg[4]_5 ;
  output [1:0]\bias_reg[4]_6 ;
  output \bias_reg[4]_7 ;
  output \bias_reg[4]_8 ;
  output \bias_reg[1]_6 ;
  output \bias_reg[4]_9 ;
  output \bias_reg[1]_7 ;
  output \bias_reg[4]_10 ;
  output \o_sx_reg[15]_6 ;
  output \bias_reg[1]_8 ;
  input [3:0]Q;
  input \o_tmds_reg[2] ;
  input \o_tmds_reg[6] ;
  input \o_tmds_reg[7] ;
  input [3:0]\o_tmds_reg[7]_0 ;
  input \o_tmds_reg[7]_1 ;
  input [3:0]\o_tmds_reg[0] ;
  input \o_tmds_reg[0]_0 ;
  input \o_tmds_reg[6]_0 ;
  input o_locked;
  input \bias_reg[1]_9 ;
  input \bias_reg[1]_10 ;
  input \o_sy_reg[0]_0 ;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [0:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \bias[1]_i_10_n_0 ;
  wire \bias[1]_i_11_n_0 ;
  wire \bias[1]_i_12_n_0 ;
  wire \bias[1]_i_13_n_0 ;
  wire \bias[1]_i_14_n_0 ;
  wire \bias[1]_i_15_n_0 ;
  wire \bias[1]_i_16_n_0 ;
  wire \bias[1]_i_18_n_0 ;
  wire \bias[1]_i_20_n_0 ;
  wire \bias[1]_i_21_n_0 ;
  wire \bias[1]_i_23_n_0 ;
  wire \bias[1]_i_24_n_0 ;
  wire \bias[1]_i_25_n_0 ;
  wire \bias[1]_i_26_n_0 ;
  wire \bias[1]_i_27_n_0 ;
  wire \bias[1]_i_28_n_0 ;
  wire \bias[1]_i_29_n_0 ;
  wire \bias[1]_i_30_n_0 ;
  wire \bias[1]_i_31_n_0 ;
  wire \bias[1]_i_32_n_0 ;
  wire \bias[1]_i_33_n_0 ;
  wire \bias[1]_i_34_n_0 ;
  wire \bias[1]_i_35_n_0 ;
  wire \bias[1]_i_36_n_0 ;
  wire \bias[1]_i_37_n_0 ;
  wire \bias[1]_i_38_n_0 ;
  wire \bias[1]_i_39_n_0 ;
  wire \bias[1]_i_40_n_0 ;
  wire \bias[1]_i_41_n_0 ;
  wire \bias[1]_i_42_n_0 ;
  wire \bias[1]_i_43_n_0 ;
  wire \bias[1]_i_44_n_0 ;
  wire \bias[1]_i_45_n_0 ;
  wire \bias[1]_i_46_n_0 ;
  wire \bias[1]_i_47_n_0 ;
  wire \bias[1]_i_48_n_0 ;
  wire \bias[1]_i_49_n_0 ;
  wire \bias[1]_i_50_n_0 ;
  wire \bias[1]_i_51_n_0 ;
  wire \bias[1]_i_52_n_0 ;
  wire \bias[1]_i_53_n_0 ;
  wire \bias[1]_i_54_n_0 ;
  wire \bias[1]_i_55_n_0 ;
  wire \bias[1]_i_56_n_0 ;
  wire \bias[1]_i_57_n_0 ;
  wire \bias[1]_i_9_n_0 ;
  wire \bias[2]_i_2__1_n_0 ;
  wire \bias[2]_i_3_n_0 ;
  wire \bias[2]_i_4__0_n_0 ;
  wire \bias[3]_i_11__0_n_0 ;
  wire \bias[4]_i_14_n_0 ;
  wire \bias[4]_i_16_n_0 ;
  wire \bias[4]_i_17_n_0 ;
  wire \bias[4]_i_20_n_0 ;
  wire \bias[4]_i_22_n_0 ;
  wire \bias[4]_i_23_n_0 ;
  wire \bias[4]_i_24_n_0 ;
  wire \bias[4]_i_25_n_0 ;
  wire \bias[4]_i_26_n_0 ;
  wire \bias[4]_i_27_n_0 ;
  wire \bias[4]_i_28_n_0 ;
  wire \bias[4]_i_29_n_0 ;
  wire \bias[4]_i_30_n_0 ;
  wire \bias[4]_i_31_n_0 ;
  wire \bias[4]_i_32_n_0 ;
  wire \bias[4]_i_33_n_0 ;
  wire \bias[4]_i_34_n_0 ;
  wire \bias[4]_i_35_n_0 ;
  wire \bias[4]_i_36_n_0 ;
  wire \bias[4]_i_37_n_0 ;
  wire \bias[4]_i_38_n_0 ;
  wire \bias[4]_i_39_n_0 ;
  wire \bias[4]_i_40_n_0 ;
  wire \bias[4]_i_42_n_0 ;
  wire \bias[4]_i_43_n_0 ;
  wire \bias[4]_i_44_n_0 ;
  wire \bias[4]_i_45_n_0 ;
  wire \bias[4]_i_46_n_0 ;
  wire \bias[4]_i_47_n_0 ;
  wire \bias[4]_i_48_n_0 ;
  wire \bias[4]_i_49_n_0 ;
  wire \bias[4]_i_50_n_0 ;
  wire \bias[4]_i_51_n_0 ;
  wire \bias[4]_i_52_n_0 ;
  wire \bias[4]_i_53_n_0 ;
  wire \bias[4]_i_54_n_0 ;
  wire \bias[4]_i_55_n_0 ;
  wire \bias[4]_i_56_n_0 ;
  wire \bias[4]_i_57_n_0 ;
  wire \bias[4]_i_58_n_0 ;
  wire \bias[4]_i_59_n_0 ;
  wire \bias[4]_i_60_n_0 ;
  wire \bias[4]_i_61_n_0 ;
  wire \bias[4]_i_62_n_0 ;
  wire \bias[4]_i_63_n_0 ;
  wire \bias[4]_i_64_n_0 ;
  wire \bias[4]_i_65_n_0 ;
  wire \bias[4]_i_66_n_0 ;
  wire \bias[4]_i_67_n_0 ;
  wire \bias[4]_i_68_n_0 ;
  wire \bias[4]_i_69_n_0 ;
  wire \bias[4]_i_70_n_0 ;
  wire \bias_reg[1] ;
  wire \bias_reg[1]_0 ;
  wire \bias_reg[1]_1 ;
  wire \bias_reg[1]_10 ;
  wire \bias_reg[1]_2 ;
  wire \bias_reg[1]_3 ;
  wire \bias_reg[1]_4 ;
  wire [0:0]\bias_reg[1]_5 ;
  wire \bias_reg[1]_6 ;
  wire \bias_reg[1]_7 ;
  wire \bias_reg[1]_8 ;
  wire \bias_reg[1]_9 ;
  wire \bias_reg[1]_i_17_n_0 ;
  wire \bias_reg[1]_i_19_n_0 ;
  wire \bias_reg[1]_i_22_n_0 ;
  wire \bias_reg[1]_i_8_n_0 ;
  wire \bias_reg[2] ;
  wire \bias_reg[2]_0 ;
  wire \bias_reg[4] ;
  wire \bias_reg[4]_0 ;
  wire \bias_reg[4]_1 ;
  wire \bias_reg[4]_10 ;
  wire \bias_reg[4]_2 ;
  wire \bias_reg[4]_3 ;
  wire \bias_reg[4]_4 ;
  wire \bias_reg[4]_5 ;
  wire [1:0]\bias_reg[4]_6 ;
  wire \bias_reg[4]_7 ;
  wire \bias_reg[4]_8 ;
  wire \bias_reg[4]_9 ;
  wire \bias_reg[4]_i_10_n_7 ;
  wire \bias_reg[4]_i_13_n_0 ;
  wire \bias_reg[4]_i_15_n_0 ;
  wire \bias_reg[4]_i_19_n_0 ;
  wire \bias_reg[4]_i_21_n_0 ;
  wire \bias_reg[4]_i_41_n_0 ;
  wire [15:1]data0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire o_de0;
  wire o_hs0;
  wire o_hs03_in;
  wire o_hs0_carry__0_i_1_n_0;
  wire o_hs0_carry__0_i_2_n_0;
  wire o_hs0_carry__0_i_3_n_0;
  wire o_hs0_carry__0_i_4_n_0;
  wire o_hs0_carry__0_i_5_n_0;
  wire o_hs0_carry__0_i_6_n_0;
  wire o_hs0_carry__0_i_7_n_0;
  wire o_hs0_carry__0_i_8_n_0;
  wire o_hs0_carry_i_1_n_0;
  wire o_hs0_carry_i_2_n_0;
  wire o_hs0_carry_i_3_n_0;
  wire o_hs0_carry_i_4_n_0;
  wire o_hs0_carry_i_5_n_0;
  wire o_hs0_carry_i_6_n_0;
  wire o_hs0_carry_n_0;
  wire \o_hs0_inferred__0/i__carry_n_0 ;
  wire o_locked;
  wire \o_sx[0]_i_1_n_0 ;
  wire \o_sx[10]_i_1_n_0 ;
  wire \o_sx[11]_i_1_n_0 ;
  wire \o_sx[12]_i_1_n_0 ;
  wire \o_sx[13]_i_1_n_0 ;
  wire \o_sx[14]_i_1_n_0 ;
  wire \o_sx[15]_i_2_n_0 ;
  wire \o_sx[15]_i_5_n_0 ;
  wire \o_sx[15]_i_6_n_0 ;
  wire \o_sx[15]_i_7_n_0 ;
  wire \o_sx[1]_i_1_n_0 ;
  wire \o_sx[2]_i_1_n_0 ;
  wire \o_sx[3]_i_1_n_0 ;
  wire \o_sx[4]_i_1_n_0 ;
  wire \o_sx[5]_i_1_n_0 ;
  wire \o_sx[6]_i_1_n_0 ;
  wire \o_sx[7]_i_1_n_0 ;
  wire \o_sx[8]_i_1_n_0 ;
  wire \o_sx[9]_i_1_n_0 ;
  wire [0:0]\o_sx_reg[11]_0 ;
  wire \o_sx_reg[11]_1 ;
  wire \o_sx_reg[12]_i_2_n_0 ;
  wire [0:0]\o_sx_reg[14]_0 ;
  wire [0:0]\o_sx_reg[15]_0 ;
  wire \o_sx_reg[15]_1 ;
  wire \o_sx_reg[15]_2 ;
  wire \o_sx_reg[15]_3 ;
  wire \o_sx_reg[15]_4 ;
  wire \o_sx_reg[15]_5 ;
  wire \o_sx_reg[15]_6 ;
  wire \o_sx_reg[4]_i_2_n_0 ;
  wire \o_sx_reg[8]_i_2_n_0 ;
  wire \o_sx_reg[9]_0 ;
  wire \o_sy[0]_i_1_n_0 ;
  wire \o_sy[10]_i_1_n_0 ;
  wire \o_sy[11]_i_1_n_0 ;
  wire \o_sy[12]_i_1_n_0 ;
  wire \o_sy[13]_i_1_n_0 ;
  wire \o_sy[14]_i_1_n_0 ;
  wire \o_sy[15]_i_1_n_0 ;
  wire \o_sy[15]_i_2_n_0 ;
  wire \o_sy[15]_i_4_n_0 ;
  wire \o_sy[15]_i_5_n_0 ;
  wire \o_sy[15]_i_6_n_0 ;
  wire \o_sy[1]_i_1_n_0 ;
  wire \o_sy[2]_i_1_n_0 ;
  wire \o_sy[3]_i_1_n_0 ;
  wire \o_sy[4]_i_1_n_0 ;
  wire \o_sy[5]_i_1_n_0 ;
  wire \o_sy[6]_i_1_n_0 ;
  wire \o_sy[7]_i_1_n_0 ;
  wire \o_sy[8]_i_1_n_0 ;
  wire \o_sy[9]_i_1_n_0 ;
  wire \o_sy_reg[0]_0 ;
  wire \o_sy_reg[12]_i_2_n_0 ;
  wire \o_sy_reg[12]_i_2_n_4 ;
  wire \o_sy_reg[12]_i_2_n_5 ;
  wire \o_sy_reg[12]_i_2_n_6 ;
  wire \o_sy_reg[12]_i_2_n_7 ;
  wire \o_sy_reg[15]_0 ;
  wire \o_sy_reg[15]_1 ;
  wire \o_sy_reg[15]_i_3_n_5 ;
  wire \o_sy_reg[15]_i_3_n_6 ;
  wire \o_sy_reg[15]_i_3_n_7 ;
  wire \o_sy_reg[4]_i_2_n_0 ;
  wire \o_sy_reg[4]_i_2_n_4 ;
  wire \o_sy_reg[4]_i_2_n_5 ;
  wire \o_sy_reg[4]_i_2_n_6 ;
  wire \o_sy_reg[4]_i_2_n_7 ;
  wire \o_sy_reg[8]_i_2_n_0 ;
  wire \o_sy_reg[8]_i_2_n_4 ;
  wire \o_sy_reg[8]_i_2_n_5 ;
  wire \o_sy_reg[8]_i_2_n_6 ;
  wire \o_sy_reg[8]_i_2_n_7 ;
  wire \o_sy_reg_n_0_[0] ;
  wire \o_sy_reg_n_0_[10] ;
  wire \o_sy_reg_n_0_[11] ;
  wire \o_sy_reg_n_0_[12] ;
  wire \o_sy_reg_n_0_[13] ;
  wire \o_sy_reg_n_0_[14] ;
  wire \o_sy_reg_n_0_[15] ;
  wire \o_sy_reg_n_0_[1] ;
  wire \o_sy_reg_n_0_[2] ;
  wire \o_sy_reg_n_0_[3] ;
  wire \o_sy_reg_n_0_[4] ;
  wire \o_sy_reg_n_0_[5] ;
  wire \o_sy_reg_n_0_[6] ;
  wire \o_sy_reg_n_0_[7] ;
  wire \o_sy_reg_n_0_[8] ;
  wire \o_sy_reg_n_0_[9] ;
  wire [4:0]o_tmds0_in;
  wire \o_tmds[0]_i_10_n_0 ;
  wire \o_tmds[0]_i_11_n_0 ;
  wire \o_tmds[0]_i_12_n_0 ;
  wire \o_tmds[0]_i_2_n_0 ;
  wire \o_tmds[0]_i_5_n_0 ;
  wire \o_tmds[0]_i_6_n_0 ;
  wire \o_tmds[0]_i_7_n_0 ;
  wire \o_tmds[0]_i_8_n_0 ;
  wire \o_tmds[0]_i_9_n_0 ;
  wire \o_tmds[7]_i_11_n_0 ;
  wire \o_tmds[7]_i_12_n_0 ;
  wire \o_tmds[7]_i_13_n_0 ;
  wire \o_tmds[7]_i_14_n_0 ;
  wire \o_tmds[7]_i_15_n_0 ;
  wire \o_tmds[7]_i_16_n_0 ;
  wire \o_tmds[7]_i_17_n_0 ;
  wire \o_tmds[7]_i_18_n_0 ;
  wire \o_tmds[7]_i_19_n_0 ;
  wire \o_tmds[7]_i_20_n_0 ;
  wire \o_tmds[7]_i_21_n_0 ;
  wire \o_tmds[7]_i_22_n_0 ;
  wire \o_tmds[7]_i_23_n_0 ;
  wire \o_tmds[7]_i_24_n_0 ;
  wire \o_tmds[7]_i_4_n_0 ;
  wire \o_tmds[7]_i_5_n_0 ;
  wire \o_tmds[7]_i_6_n_0 ;
  wire \o_tmds[7]_i_7_n_0 ;
  wire \o_tmds[7]_i_8_n_0 ;
  wire \o_tmds[7]_i_9_n_0 ;
  wire \o_tmds[8]_i_10_n_0 ;
  wire \o_tmds[8]_i_11_n_0 ;
  wire \o_tmds[8]_i_13_n_0 ;
  wire \o_tmds[8]_i_14_n_0 ;
  wire \o_tmds[8]_i_15_n_0 ;
  wire \o_tmds[8]_i_16_n_0 ;
  wire \o_tmds[8]_i_17_n_0 ;
  wire \o_tmds[8]_i_18_n_0 ;
  wire \o_tmds[8]_i_19_n_0 ;
  wire \o_tmds[8]_i_20_n_0 ;
  wire \o_tmds[8]_i_21_n_0 ;
  wire \o_tmds[8]_i_22_n_0 ;
  wire \o_tmds[8]_i_23_n_0 ;
  wire \o_tmds[8]_i_24_n_0 ;
  wire \o_tmds[8]_i_25_n_0 ;
  wire \o_tmds[8]_i_26_n_0 ;
  wire \o_tmds[8]_i_27_n_0 ;
  wire \o_tmds[8]_i_28_n_0 ;
  wire \o_tmds[8]_i_2_n_0 ;
  wire \o_tmds[8]_i_5_n_0 ;
  wire \o_tmds[8]_i_6_n_0 ;
  wire \o_tmds[8]_i_7_n_0 ;
  wire \o_tmds[8]_i_8_n_0 ;
  wire \o_tmds[8]_i_9_n_0 ;
  wire \o_tmds[9]_i_2_n_0 ;
  wire \o_tmds[9]_i_3_n_0 ;
  wire \o_tmds[9]_i_4_n_0 ;
  wire [3:0]\o_tmds_reg[0] ;
  wire \o_tmds_reg[0]_0 ;
  wire \o_tmds_reg[0]_i_4_n_0 ;
  wire \o_tmds_reg[2] ;
  wire \o_tmds_reg[6] ;
  wire \o_tmds_reg[6]_0 ;
  wire \o_tmds_reg[7] ;
  wire [3:0]\o_tmds_reg[7]_0 ;
  wire \o_tmds_reg[7]_1 ;
  wire \o_tmds_reg[7]_i_10_n_0 ;
  wire \o_tmds_reg[8]_i_12_n_0 ;
  wire \o_tmds_reg[8]_i_4_n_0 ;
  wire o_vs0;
  wire o_vs02_in;
  wire o_vs0_carry__0_i_1_n_0;
  wire o_vs0_carry__0_i_2_n_0;
  wire o_vs0_carry__0_i_3_n_0;
  wire o_vs0_carry__0_i_4_n_0;
  wire o_vs0_carry__0_i_5_n_0;
  wire o_vs0_carry__0_i_6_n_0;
  wire o_vs0_carry__0_i_7_n_0;
  wire o_vs0_carry__0_i_8_n_0;
  wire o_vs0_carry_i_1_n_0;
  wire o_vs0_carry_i_2_n_0;
  wire o_vs0_carry_i_3_n_0;
  wire o_vs0_carry_i_4_n_0;
  wire o_vs0_carry_i_5_n_0;
  wire o_vs0_carry_i_6_n_0;
  wire o_vs0_carry_i_7_n_0;
  wire o_vs0_carry_n_0;
  wire \o_vs0_inferred__0/i__carry_n_0 ;
  wire [15:0]sx;
  wire \test_card_inst/b00 ;
  wire \test_card_inst/b10 ;
  wire \test_card_inst/b106_in ;
  wire \test_card_inst/b20 ;
  wire \test_card_inst/b202_in ;
  wire \test_card_inst/b30 ;
  wire \test_card_inst/b301_in ;
  wire \test_card_inst/b40 ;
  wire \test_card_inst/b400_in ;
  wire \test_card_inst/b50 ;
  wire [2:0]\NLW_bias_reg[1]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[1]_i_17_O_UNCONNECTED ;
  wire [2:0]\NLW_bias_reg[1]_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[1]_i_19_O_UNCONNECTED ;
  wire [2:0]\NLW_bias_reg[1]_i_22_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[1]_i_22_O_UNCONNECTED ;
  wire [2:0]\NLW_bias_reg[1]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[1]_i_4_O_UNCONNECTED ;
  wire [3:1]\NLW_bias_reg[1]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[1]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[1]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[1]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_bias_reg[1]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[1]_i_7_O_UNCONNECTED ;
  wire [2:0]\NLW_bias_reg[1]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[1]_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[4]_i_10_CO_UNCONNECTED ;
  wire [3:1]\NLW_bias_reg[4]_i_10_O_UNCONNECTED ;
  wire [3:1]\NLW_bias_reg[4]_i_11_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[4]_i_11_O_UNCONNECTED ;
  wire [2:0]\NLW_bias_reg[4]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[4]_i_12_O_UNCONNECTED ;
  wire [2:0]\NLW_bias_reg[4]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[4]_i_13_O_UNCONNECTED ;
  wire [2:0]\NLW_bias_reg[4]_i_15_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[4]_i_15_O_UNCONNECTED ;
  wire [2:0]\NLW_bias_reg[4]_i_18_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[4]_i_18_O_UNCONNECTED ;
  wire [2:0]\NLW_bias_reg[4]_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[4]_i_19_O_UNCONNECTED ;
  wire [2:0]\NLW_bias_reg[4]_i_21_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[4]_i_21_O_UNCONNECTED ;
  wire [2:0]\NLW_bias_reg[4]_i_41_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[4]_i_41_O_UNCONNECTED ;
  wire [3:1]\NLW_bias_reg[4]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[4]_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[4]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_bias_reg[4]_i_9_O_UNCONNECTED ;
  wire [2:0]NLW_o_hs0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_o_hs0_carry_O_UNCONNECTED;
  wire [2:0]NLW_o_hs0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_o_hs0_carry__0_O_UNCONNECTED;
  wire [2:0]\NLW_o_hs0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_hs0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [2:0]\NLW_o_hs0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_hs0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [2:0]\NLW_o_sx_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_sx_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_o_sx_reg[15]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_o_sx_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_o_sx_reg[8]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_o_sy_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_sy_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_o_sy_reg[15]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_o_sy_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_o_sy_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_tmds_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_tmds_reg[0]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_o_tmds_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_tmds_reg[0]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_o_tmds_reg[7]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_tmds_reg[7]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_o_tmds_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_tmds_reg[7]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_o_tmds_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_tmds_reg[7]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_o_tmds_reg[8]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_tmds_reg[8]_i_12_O_UNCONNECTED ;
  wire [2:0]\NLW_o_tmds_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_tmds_reg[8]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_o_tmds_reg[8]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_tmds_reg[8]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_o_tmds_reg[8]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_tmds_reg[8]_i_4_O_UNCONNECTED ;
  wire [2:0]NLW_o_vs0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_o_vs0_carry_O_UNCONNECTED;
  wire [2:0]NLW_o_vs0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_o_vs0_carry__0_O_UNCONNECTED;
  wire [2:0]\NLW_o_vs0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_vs0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_o_vs0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_vs0_inferred__0/i__carry__0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h36C9C93636C9D926)) 
    \bias[1]_i_1 
       (.I0(\o_sx_reg[15]_1 ),
        .I1(Q[0]),
        .I2(\o_sx_reg[15]_5 ),
        .I3(\o_sx_reg[11]_1 ),
        .I4(Q[3]),
        .I5(\o_tmds_reg[6] ),
        .O(D));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_10 
       (.I0(sx[13]),
        .I1(sx[12]),
        .O(\bias[1]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_11 
       (.I0(sx[10]),
        .I1(sx[11]),
        .O(\bias[1]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_12 
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(\bias[1]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_13 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[1]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_14 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\bias[1]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_15 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\bias[1]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_16 
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(\bias[1]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_18 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h5566AA99AA995666)) 
    \bias[1]_i_1__0 
       (.I0(\o_sx_reg[11]_1 ),
        .I1(\o_sx_reg[15]_1 ),
        .I2(\bias_reg[1]_9 ),
        .I3(\o_sx_reg[9]_0 ),
        .I4(\o_tmds_reg[7]_0 [0]),
        .I5(\o_tmds_reg[7]_0 [3]),
        .O(\bias_reg[1]_5 ));
  LUT6 #(
    .INIT(64'h5566AA99AA995666)) 
    \bias[1]_i_1__1 
       (.I0(\o_sx_reg[11]_1 ),
        .I1(\o_sx_reg[15]_1 ),
        .I2(\bias_reg[1]_10 ),
        .I3(\o_sx_reg[15]_4 ),
        .I4(\o_tmds_reg[0] [0]),
        .I5(\o_tmds_reg[0] [3]),
        .O(\bias_reg[4]_6 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_20 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[1]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_21 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\bias[1]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[1]_i_23 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[1]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_24 
       (.I0(sx[13]),
        .I1(sx[12]),
        .O(\bias[1]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_25 
       (.I0(sx[10]),
        .I1(sx[11]),
        .O(\bias[1]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_26 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[1]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_27 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\bias[1]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_28 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\bias[1]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[1]_i_29 
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(\bias[1]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bias[1]_i_2__1 
       (.I0(\o_sx_reg[11]_0 ),
        .I1(\o_sx_reg[15]_0 ),
        .O(\o_sx_reg[11]_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bias[1]_i_3 
       (.I0(\o_sx_reg[14]_0 ),
        .I1(CO),
        .O(\o_sx_reg[15]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bias[1]_i_30 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\bias[1]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bias[1]_i_31 
       (.I0(sx[4]),
        .I1(sx[5]),
        .O(\bias[1]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_32 
       (.I0(sx[2]),
        .I1(sx[3]),
        .O(\bias[1]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_33 
       (.I0(sx[0]),
        .I1(sx[1]),
        .O(\bias[1]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[1]_i_34 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\bias[1]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[1]_i_35 
       (.I0(sx[5]),
        .I1(sx[4]),
        .O(\bias[1]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_36 
       (.I0(sx[3]),
        .I1(sx[2]),
        .O(\bias[1]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_37 
       (.I0(sx[1]),
        .I1(sx[0]),
        .O(\bias[1]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_38 
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(\bias[1]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_39 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\bias[1]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bias[1]_i_3__0 
       (.I0(\test_card_inst/b301_in ),
        .I1(\test_card_inst/b30 ),
        .I2(\test_card_inst/b106_in ),
        .I3(\test_card_inst/b10 ),
        .I4(\test_card_inst/b20 ),
        .I5(\test_card_inst/b202_in ),
        .O(\o_sx_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_40 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\bias[1]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_41 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\bias[1]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[1]_i_42 
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(\bias[1]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[1]_i_43 
       (.I0(sx[6]),
        .I1(sx[7]),
        .O(\bias[1]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_44 
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(\bias[1]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bias[1]_i_45 
       (.I0(sx[6]),
        .I1(sx[7]),
        .O(\bias[1]_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bias[1]_i_46 
       (.I0(sx[5]),
        .O(\bias[1]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_47 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\bias[1]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[1]_i_48 
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(\bias[1]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bias[1]_i_49 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\bias[1]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[1]_i_50 
       (.I0(sx[5]),
        .I1(sx[4]),
        .O(\bias[1]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_51 
       (.I0(sx[4]),
        .I1(sx[5]),
        .O(\bias[1]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_52 
       (.I0(sx[2]),
        .I1(sx[3]),
        .O(\bias[1]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_53 
       (.I0(sx[0]),
        .I1(sx[1]),
        .O(\bias[1]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[1]_i_54 
       (.I0(sx[6]),
        .I1(sx[7]),
        .O(\bias[1]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_55 
       (.I0(sx[5]),
        .I1(sx[4]),
        .O(\bias[1]_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_56 
       (.I0(sx[3]),
        .I1(sx[2]),
        .O(\bias[1]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[1]_i_57 
       (.I0(sx[1]),
        .I1(sx[0]),
        .O(\bias[1]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[1]_i_9 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABEAEFFFFFFFF)) 
    \bias[2]_i_1__1 
       (.I0(\bias[2]_i_2__1_n_0 ),
        .I1(\o_tmds_reg[0] [3]),
        .I2(\o_tmds_reg[0] [1]),
        .I3(\bias[2]_i_3_n_0 ),
        .I4(\bias[2]_i_4__0_n_0 ),
        .I5(\o_tmds_reg[0]_0 ),
        .O(\bias_reg[4]_6 [1]));
  LUT6 #(
    .INIT(64'h8484783484841E0D)) 
    \bias[2]_i_2__1 
       (.I0(\o_sx_reg[11]_1 ),
        .I1(\o_tmds_reg[0] [0]),
        .I2(\o_tmds_reg[0] [1]),
        .I3(\o_tmds_reg[0] [3]),
        .I4(\o_sx_reg[15]_4 ),
        .I5(\o_sx_reg[15]_1 ),
        .O(\bias[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F7F0F7F0F7F)) 
    \bias[2]_i_3 
       (.I0(CO),
        .I1(\o_sx_reg[14]_0 ),
        .I2(\o_tmds_reg[0] [0]),
        .I3(\o_sx_reg[15]_4 ),
        .I4(\o_sx_reg[15]_0 ),
        .I5(\o_sx_reg[11]_0 ),
        .O(\bias[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAAAABFAABFBF)) 
    \bias[2]_i_4__0 
       (.I0(\o_tmds_reg[0] [0]),
        .I1(\test_card_inst/b301_in ),
        .I2(\test_card_inst/b30 ),
        .I3(\bias_reg[4]_i_10_n_7 ),
        .I4(\test_card_inst/b40 ),
        .I5(\test_card_inst/b50 ),
        .O(\bias[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h1400100004011401)) 
    \bias[2]_i_5 
       (.I0(\o_sx_reg[15]_5 ),
        .I1(\o_sx_reg[11]_1 ),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(\o_sx_reg[15]_1 ),
        .O(\bias_reg[2] ));
  LUT6 #(
    .INIT(64'hF0008888FFFF8888)) 
    \bias[3]_i_10 
       (.I0(CO),
        .I1(\o_sx_reg[14]_0 ),
        .I2(\o_sx_reg[15]_0 ),
        .I3(\o_sx_reg[11]_0 ),
        .I4(\o_sx_reg[15]_5 ),
        .I5(Q[0]),
        .O(\bias_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h00000055000000C0)) 
    \bias[3]_i_10__0 
       (.I0(\o_tmds_reg[7]_0 [3]),
        .I1(\o_sx_reg[15]_0 ),
        .I2(\o_sx_reg[11]_0 ),
        .I3(\o_sx_reg[15]_1 ),
        .I4(\o_sx_reg[9]_0 ),
        .I5(\o_tmds_reg[7]_0 [0]),
        .O(\bias_reg[4]_5 ));
  LUT6 #(
    .INIT(64'hF0008888FFFF8888)) 
    \bias[3]_i_11 
       (.I0(\o_sx_reg[14]_0 ),
        .I1(CO),
        .I2(\o_sx_reg[15]_0 ),
        .I3(\o_sx_reg[11]_0 ),
        .I4(\o_sx_reg[9]_0 ),
        .I5(\o_tmds_reg[7]_0 [0]),
        .O(\bias_reg[1]_4 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bias[3]_i_11__0 
       (.I0(\o_sx_reg[15]_0 ),
        .I1(\o_sx_reg[11]_0 ),
        .I2(Q[3]),
        .O(\bias[3]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004000400)) 
    \bias[3]_i_2__0 
       (.I0(\o_sx_reg[15]_1 ),
        .I1(\o_tmds_reg[7]_0 [1]),
        .I2(\o_tmds_reg[7]_0 [2]),
        .I3(\o_tmds_reg[7]_0 [3]),
        .I4(\o_sx_reg[11]_0 ),
        .I5(\o_sx_reg[15]_0 ),
        .O(\bias_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h8888000000000F00)) 
    \bias[3]_i_4 
       (.I0(\bias[3]_i_11__0_n_0 ),
        .I1(Q[0]),
        .I2(\o_sx_reg[15]_5 ),
        .I3(\o_sx_reg[15]_1 ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\bias_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h00000000CC080808)) 
    \bias[3]_i_5__0 
       (.I0(\o_sx_reg[15]_1 ),
        .I1(\o_sx_reg[11]_1 ),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(\o_sx_reg[15]_5 ),
        .I5(Q[2]),
        .O(\bias_reg[4]_8 ));
  LUT6 #(
    .INIT(64'h8F888F88FFFF8F88)) 
    \bias[3]_i_6__1 
       (.I0(\test_card_inst/b106_in ),
        .I1(\test_card_inst/b10 ),
        .I2(\test_card_inst/b40 ),
        .I3(\test_card_inst/b50 ),
        .I4(\test_card_inst/b00 ),
        .I5(sx[15]),
        .O(\o_sx_reg[15]_5 ));
  LUT6 #(
    .INIT(64'h00000000CC080808)) 
    \bias[3]_i_7__0 
       (.I0(\o_sx_reg[15]_1 ),
        .I1(\o_sx_reg[11]_1 ),
        .I2(\o_tmds_reg[7]_0 [3]),
        .I3(\o_tmds_reg[7]_0 [0]),
        .I4(\o_sx_reg[9]_0 ),
        .I5(\o_tmds_reg[7]_0 [2]),
        .O(\bias_reg[4]_9 ));
  LUT6 #(
    .INIT(64'h5A2020205A0A0A0A)) 
    \bias[3]_i_7__1 
       (.I0(\o_tmds_reg[0] [3]),
        .I1(\o_sx_reg[15]_4 ),
        .I2(\o_tmds_reg[0] [2]),
        .I3(\o_sx_reg[15]_0 ),
        .I4(\o_sx_reg[11]_0 ),
        .I5(\o_sx_reg[15]_1 ),
        .O(\bias_reg[4]_10 ));
  LUT6 #(
    .INIT(64'hCFC04F4F4F4F4F4F)) 
    \bias[3]_i_9 
       (.I0(\o_sx_reg[15]_1 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(\o_sx_reg[15]_5 ),
        .I4(\o_sx_reg[15]_0 ),
        .I5(\o_sx_reg[11]_0 ),
        .O(\bias_reg[4]_7 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \bias[4]_i_1 
       (.I0(sx[15]),
        .I1(\o_sy_reg_n_0_[15] ),
        .I2(o_locked),
        .O(SR));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_14 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[4]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_16 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[4]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_17 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\bias[4]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_20 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[4]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[4]_i_22 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[4]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[4]_i_23 
       (.I0(sx[13]),
        .I1(sx[12]),
        .O(\bias[4]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[4]_i_24 
       (.I0(sx[10]),
        .I1(sx[11]),
        .O(\bias[4]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_25 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[4]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_26 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\bias[4]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_27 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\bias[4]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[4]_i_28 
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(\bias[4]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bias[4]_i_29 
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(\bias[4]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bias[4]_i_2__1 
       (.I0(\o_sx_reg[15]_0 ),
        .I1(\o_sx_reg[11]_0 ),
        .I2(CO),
        .I3(\o_sx_reg[14]_0 ),
        .O(\o_sx_reg[15]_6 ));
  LUT6 #(
    .INIT(64'h0001000035F50000)) 
    \bias[4]_i_3 
       (.I0(\o_sx_reg[15]_1 ),
        .I1(\o_sx_reg[11]_1 ),
        .I2(\o_sx_reg[15]_5 ),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(\bias_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bias[4]_i_30 
       (.I0(sx[6]),
        .I1(sx[7]),
        .O(\bias[4]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_31 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\bias[4]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_32 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\bias[4]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bias[4]_i_33 
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(\bias[4]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bias[4]_i_34 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\bias[4]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bias[4]_i_35 
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(\bias[4]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bias[4]_i_36 
       (.I0(sx[5]),
        .O(\bias[4]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_37 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\bias[4]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bias[4]_i_38 
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(\bias[4]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_39 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\bias[4]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0001000035F50000)) 
    \bias[4]_i_4 
       (.I0(\o_sx_reg[15]_1 ),
        .I1(\o_sx_reg[11]_1 ),
        .I2(\o_sx_reg[9]_0 ),
        .I3(\o_tmds_reg[7]_0 [0]),
        .I4(\o_tmds_reg[7]_0 [3]),
        .I5(\o_tmds_reg[7]_0 [1]),
        .O(\bias_reg[1]_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[4]_i_40 
       (.I0(sx[5]),
        .I1(sx[4]),
        .O(\bias[4]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[4]_i_42 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[4]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[4]_i_43 
       (.I0(sx[13]),
        .I1(sx[12]),
        .O(\bias[4]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[4]_i_44 
       (.I0(sx[10]),
        .I1(sx[11]),
        .O(\bias[4]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bias[4]_i_45 
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(\bias[4]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_46 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\bias[4]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_47 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\bias[4]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_48 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\bias[4]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[4]_i_49 
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(\bias[4]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F00FF00000000)) 
    \bias[4]_i_4__1 
       (.I0(\o_sx_reg[11]_0 ),
        .I1(\o_sx_reg[15]_0 ),
        .I2(\o_tmds_reg[0] [0]),
        .I3(\o_sx_reg[15]_1 ),
        .I4(\o_sx_reg[15]_4 ),
        .I5(\o_tmds_reg[0] [3]),
        .O(\bias_reg[1]_8 ));
  LUT6 #(
    .INIT(64'h008F8F8F00888888)) 
    \bias[4]_i_5 
       (.I0(\o_sx_reg[15]_5 ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(\o_sx_reg[15]_0 ),
        .I4(\o_sx_reg[11]_0 ),
        .I5(\o_sx_reg[15]_1 ),
        .O(\bias_reg[1]_6 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bias[4]_i_50 
       (.I0(sx[9]),
        .O(\bias[4]_i_50_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bias[4]_i_51 
       (.I0(sx[7]),
        .O(\bias[4]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_52 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\bias[4]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_53 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\bias[4]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[4]_i_54 
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(\bias[4]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[4]_i_55 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\bias[4]_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bias[4]_i_56 
       (.I0(sx[4]),
        .I1(sx[5]),
        .O(\bias[4]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[4]_i_57 
       (.I0(sx[2]),
        .I1(sx[3]),
        .O(\bias[4]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[4]_i_58 
       (.I0(sx[0]),
        .I1(sx[1]),
        .O(\bias[4]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bias[4]_i_59 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\bias[4]_i_59_n_0 ));
  LUT5 #(
    .INIT(32'hFF2E2E2E)) 
    \bias[4]_i_5__1 
       (.I0(\test_card_inst/b50 ),
        .I1(\test_card_inst/b40 ),
        .I2(\bias_reg[4]_i_10_n_7 ),
        .I3(\test_card_inst/b30 ),
        .I4(\test_card_inst/b301_in ),
        .O(\o_sx_reg[15]_4 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[4]_i_60 
       (.I0(sx[5]),
        .I1(sx[4]),
        .O(\bias[4]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_61 
       (.I0(sx[3]),
        .I1(sx[2]),
        .O(\bias[4]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_62 
       (.I0(sx[1]),
        .I1(sx[0]),
        .O(\bias[4]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bias[4]_i_63 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\bias[4]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[4]_i_64 
       (.I0(sx[4]),
        .I1(sx[5]),
        .O(\bias[4]_i_64_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[4]_i_65 
       (.I0(sx[2]),
        .I1(sx[3]),
        .O(\bias[4]_i_65_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bias[4]_i_66 
       (.I0(sx[0]),
        .I1(sx[1]),
        .O(\bias[4]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[4]_i_67 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\bias[4]_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_68 
       (.I0(sx[5]),
        .I1(sx[4]),
        .O(\bias[4]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_69 
       (.I0(sx[3]),
        .I1(sx[2]),
        .O(\bias[4]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h008F8F8F00888888)) 
    \bias[4]_i_6__0 
       (.I0(\o_sx_reg[9]_0 ),
        .I1(\o_tmds_reg[7]_0 [0]),
        .I2(\o_tmds_reg[7]_0 [3]),
        .I3(\o_sx_reg[15]_0 ),
        .I4(\o_sx_reg[11]_0 ),
        .I5(\o_sx_reg[15]_1 ),
        .O(\bias_reg[1]_7 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bias[4]_i_70 
       (.I0(sx[1]),
        .I1(sx[0]),
        .O(\bias[4]_i_70_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[1]_i_17 
       (.CI(1'b0),
        .CO({\bias_reg[1]_i_17_n_0 ,\NLW_bias_reg[1]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\bias[1]_i_38_n_0 ,\bias[1]_i_39_n_0 }),
        .O(\NLW_bias_reg[1]_i_17_O_UNCONNECTED [3:0]),
        .S({\bias[1]_i_40_n_0 ,\bias[1]_i_41_n_0 ,\bias[1]_i_42_n_0 ,\bias[1]_i_43_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[1]_i_19 
       (.CI(1'b0),
        .CO({\bias_reg[1]_i_19_n_0 ,\NLW_bias_reg[1]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\bias[1]_i_44_n_0 ,\bias[1]_i_45_n_0 ,\bias[1]_i_46_n_0 }),
        .O(\NLW_bias_reg[1]_i_19_O_UNCONNECTED [3:0]),
        .S({\bias[1]_i_47_n_0 ,\bias[1]_i_48_n_0 ,\bias[1]_i_49_n_0 ,\bias[1]_i_50_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[1]_i_22 
       (.CI(1'b0),
        .CO({\bias_reg[1]_i_22_n_0 ,\NLW_bias_reg[1]_i_22_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({sx[7],\bias[1]_i_51_n_0 ,\bias[1]_i_52_n_0 ,\bias[1]_i_53_n_0 }),
        .O(\NLW_bias_reg[1]_i_22_O_UNCONNECTED [3:0]),
        .S({\bias[1]_i_54_n_0 ,\bias[1]_i_55_n_0 ,\bias[1]_i_56_n_0 ,\bias[1]_i_57_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[1]_i_4 
       (.CI(\bias_reg[1]_i_8_n_0 ),
        .CO({\test_card_inst/b106_in ,\NLW_bias_reg[1]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\bias[1]_i_9_n_0 ,\bias[1]_i_10_n_0 ,\bias[1]_i_11_n_0 ,\bias[1]_i_12_n_0 }),
        .O(\NLW_bias_reg[1]_i_4_O_UNCONNECTED [3:0]),
        .S({\bias[1]_i_13_n_0 ,\bias[1]_i_14_n_0 ,\bias[1]_i_15_n_0 ,\bias[1]_i_16_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bias_reg[1]_i_5 
       (.CI(\bias_reg[1]_i_17_n_0 ),
        .CO({\NLW_bias_reg[1]_i_5_CO_UNCONNECTED [3:1],\test_card_inst/b10 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sx[15]}),
        .O(\NLW_bias_reg[1]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\bias[1]_i_18_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[1]_i_6 
       (.CI(\bias_reg[1]_i_19_n_0 ),
        .CO({\NLW_bias_reg[1]_i_6_CO_UNCONNECTED [3:2],\test_card_inst/b20 ,\NLW_bias_reg[1]_i_6_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sx[15],1'b0}),
        .O(\NLW_bias_reg[1]_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\bias[1]_i_20_n_0 ,\bias[1]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[1]_i_7 
       (.CI(\bias_reg[1]_i_22_n_0 ),
        .CO({\test_card_inst/b202_in ,\NLW_bias_reg[1]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\bias[1]_i_23_n_0 ,\bias[1]_i_24_n_0 ,\bias[1]_i_25_n_0 ,sx[9]}),
        .O(\NLW_bias_reg[1]_i_7_O_UNCONNECTED [3:0]),
        .S({\bias[1]_i_26_n_0 ,\bias[1]_i_27_n_0 ,\bias[1]_i_28_n_0 ,\bias[1]_i_29_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[1]_i_8 
       (.CI(1'b0),
        .CO({\bias_reg[1]_i_8_n_0 ,\NLW_bias_reg[1]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\bias[1]_i_30_n_0 ,\bias[1]_i_31_n_0 ,\bias[1]_i_32_n_0 ,\bias[1]_i_33_n_0 }),
        .O(\NLW_bias_reg[1]_i_8_O_UNCONNECTED [3:0]),
        .S({\bias[1]_i_34_n_0 ,\bias[1]_i_35_n_0 ,\bias[1]_i_36_n_0 ,\bias[1]_i_37_n_0 }));
  CARRY4 \bias_reg[4]_i_10 
       (.CI(\test_card_inst/b400_in ),
        .CO(\NLW_bias_reg[4]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bias_reg[4]_i_10_O_UNCONNECTED [3:1],\bias_reg[4]_i_10_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bias_reg[4]_i_11 
       (.CI(\bias_reg[4]_i_19_n_0 ),
        .CO({\NLW_bias_reg[4]_i_11_CO_UNCONNECTED [3:1],\test_card_inst/b30 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sx[15]}),
        .O(\NLW_bias_reg[4]_i_11_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\bias[4]_i_20_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[4]_i_12 
       (.CI(\bias_reg[4]_i_21_n_0 ),
        .CO({\test_card_inst/b301_in ,\NLW_bias_reg[4]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\bias[4]_i_22_n_0 ,\bias[4]_i_23_n_0 ,\bias[4]_i_24_n_0 ,sx[9]}),
        .O(\NLW_bias_reg[4]_i_12_O_UNCONNECTED [3:0]),
        .S({\bias[4]_i_25_n_0 ,\bias[4]_i_26_n_0 ,\bias[4]_i_27_n_0 ,\bias[4]_i_28_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[4]_i_13 
       (.CI(1'b0),
        .CO({\bias_reg[4]_i_13_n_0 ,\NLW_bias_reg[4]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\bias[4]_i_29_n_0 ,\bias[4]_i_30_n_0 }),
        .O(\NLW_bias_reg[4]_i_13_O_UNCONNECTED [3:0]),
        .S({\bias[4]_i_31_n_0 ,\bias[4]_i_32_n_0 ,\bias[4]_i_33_n_0 ,\bias[4]_i_34_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[4]_i_15 
       (.CI(1'b0),
        .CO({\bias_reg[4]_i_15_n_0 ,\NLW_bias_reg[4]_i_15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\bias[4]_i_35_n_0 ,1'b0,\bias[4]_i_36_n_0 }),
        .O(\NLW_bias_reg[4]_i_15_O_UNCONNECTED [3:0]),
        .S({\bias[4]_i_37_n_0 ,\bias[4]_i_38_n_0 ,\bias[4]_i_39_n_0 ,\bias[4]_i_40_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[4]_i_18 
       (.CI(\bias_reg[4]_i_41_n_0 ),
        .CO({\test_card_inst/b400_in ,\NLW_bias_reg[4]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\bias[4]_i_42_n_0 ,\bias[4]_i_43_n_0 ,\bias[4]_i_44_n_0 ,\bias[4]_i_45_n_0 }),
        .O(\NLW_bias_reg[4]_i_18_O_UNCONNECTED [3:0]),
        .S({\bias[4]_i_46_n_0 ,\bias[4]_i_47_n_0 ,\bias[4]_i_48_n_0 ,\bias[4]_i_49_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[4]_i_19 
       (.CI(1'b0),
        .CO({\bias_reg[4]_i_19_n_0 ,\NLW_bias_reg[4]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\bias[4]_i_50_n_0 ,\bias[4]_i_51_n_0 }),
        .O(\NLW_bias_reg[4]_i_19_O_UNCONNECTED [3:0]),
        .S({\bias[4]_i_52_n_0 ,\bias[4]_i_53_n_0 ,\bias[4]_i_54_n_0 ,\bias[4]_i_55_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[4]_i_21 
       (.CI(1'b0),
        .CO({\bias_reg[4]_i_21_n_0 ,\NLW_bias_reg[4]_i_21_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\bias[4]_i_56_n_0 ,\bias[4]_i_57_n_0 ,\bias[4]_i_58_n_0 }),
        .O(\NLW_bias_reg[4]_i_21_O_UNCONNECTED [3:0]),
        .S({\bias[4]_i_59_n_0 ,\bias[4]_i_60_n_0 ,\bias[4]_i_61_n_0 ,\bias[4]_i_62_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[4]_i_41 
       (.CI(1'b0),
        .CO({\bias_reg[4]_i_41_n_0 ,\NLW_bias_reg[4]_i_41_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\bias[4]_i_63_n_0 ,\bias[4]_i_64_n_0 ,\bias[4]_i_65_n_0 ,\bias[4]_i_66_n_0 }),
        .O(\NLW_bias_reg[4]_i_41_O_UNCONNECTED [3:0]),
        .S({\bias[4]_i_67_n_0 ,\bias[4]_i_68_n_0 ,\bias[4]_i_69_n_0 ,\bias[4]_i_70_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bias_reg[4]_i_8 
       (.CI(\bias_reg[4]_i_13_n_0 ),
        .CO({\NLW_bias_reg[4]_i_8_CO_UNCONNECTED [3:1],\test_card_inst/b50 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sx[15]}),
        .O(\NLW_bias_reg[4]_i_8_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\bias[4]_i_14_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bias_reg[4]_i_9 
       (.CI(\bias_reg[4]_i_15_n_0 ),
        .CO({\NLW_bias_reg[4]_i_9_CO_UNCONNECTED [3:2],\test_card_inst/b40 ,\NLW_bias_reg[4]_i_9_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sx[15],1'b0}),
        .O(\NLW_bias_reg[4]_i_9_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\bias[4]_i_16_n_0 ,\bias[4]_i_17_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(\o_sy_reg_n_0_[15] ),
        .O(o_de0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(sx[15]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_2
       (.I0(\o_sy_reg_n_0_[14] ),
        .I1(\o_sy_reg_n_0_[15] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_2__0
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_3
       (.I0(\o_sy_reg_n_0_[12] ),
        .I1(\o_sy_reg_n_0_[13] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_3__0
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_4
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_4__0
       (.I0(\o_sy_reg_n_0_[10] ),
        .I1(\o_sy_reg_n_0_[11] ),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_5
       (.I0(sx[10]),
        .I1(sx[11]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_6
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1
       (.I0(\o_sy_reg_n_0_[4] ),
        .I1(\o_sy_reg_n_0_[5] ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__0
       (.I0(sx[0]),
        .I1(sx[1]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_2
       (.I0(\o_sy_reg_n_0_[8] ),
        .I1(\o_sy_reg_n_0_[9] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_2__0
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_3
       (.I0(\o_sy_reg_n_0_[7] ),
        .I1(\o_sy_reg_n_0_[6] ),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_3__0
       (.I0(sx[4]),
        .I1(sx[5]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_4
       (.I0(sx[2]),
        .I1(sx[3]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__0
       (.I0(\o_sy_reg_n_0_[5] ),
        .I1(\o_sy_reg_n_0_[4] ),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(\o_sy_reg_n_0_[2] ),
        .I1(\o_sy_reg_n_0_[3] ),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5__0
       (.I0(sx[1]),
        .I1(sx[0]),
        .O(i__carry_i_5__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 o_hs0_carry
       (.CI(1'b0),
        .CO({o_hs0_carry_n_0,NLW_o_hs0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,o_hs0_carry_i_1_n_0,o_hs0_carry_i_2_n_0,1'b0}),
        .O(NLW_o_hs0_carry_O_UNCONNECTED[3:0]),
        .S({o_hs0_carry_i_3_n_0,o_hs0_carry_i_4_n_0,o_hs0_carry_i_5_n_0,o_hs0_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 o_hs0_carry__0
       (.CI(o_hs0_carry_n_0),
        .CO({o_hs0,NLW_o_hs0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({o_hs0_carry__0_i_1_n_0,o_hs0_carry__0_i_2_n_0,o_hs0_carry__0_i_3_n_0,o_hs0_carry__0_i_4_n_0}),
        .O(NLW_o_hs0_carry__0_O_UNCONNECTED[3:0]),
        .S({o_hs0_carry__0_i_5_n_0,o_hs0_carry__0_i_6_n_0,o_hs0_carry__0_i_7_n_0,o_hs0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    o_hs0_carry__0_i_1
       (.I0(sx[15]),
        .I1(sx[14]),
        .O(o_hs0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_hs0_carry__0_i_2
       (.I0(sx[13]),
        .I1(sx[12]),
        .O(o_hs0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_hs0_carry__0_i_3
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(o_hs0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_hs0_carry__0_i_4
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(o_hs0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_hs0_carry__0_i_5
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(o_hs0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_hs0_carry__0_i_6
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(o_hs0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_hs0_carry__0_i_7
       (.I0(sx[10]),
        .I1(sx[11]),
        .O(o_hs0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_hs0_carry__0_i_8
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(o_hs0_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_hs0_carry_i_1
       (.I0(sx[5]),
        .O(o_hs0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_hs0_carry_i_2
       (.I0(sx[3]),
        .I1(sx[2]),
        .O(o_hs0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_hs0_carry_i_3
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(o_hs0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_hs0_carry_i_4
       (.I0(sx[5]),
        .I1(sx[4]),
        .O(o_hs0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_hs0_carry_i_5
       (.I0(sx[2]),
        .I1(sx[3]),
        .O(o_hs0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_hs0_carry_i_6
       (.I0(sx[1]),
        .I1(sx[0]),
        .O(o_hs0_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_hs0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\o_hs0_inferred__0/i__carry_n_0 ,\NLW_o_hs0_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry_i_1__0_n_0}),
        .O(\NLW_o_hs0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4_n_0,i__carry_i_5__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_hs0_inferred__0/i__carry__0 
       (.CI(\o_hs0_inferred__0/i__carry_n_0 ),
        .CO({o_hs03_in,\NLW_o_hs0_inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,1'b0,1'b0,i__carry__0_i_2__0_n_0}),
        .O(\NLW_o_hs0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_3__0_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \o_sx[0]_i_1 
       (.I0(sx[0]),
        .O(\o_sx[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_sx[10]_i_1 
       (.I0(data0[10]),
        .I1(\o_sy[15]_i_1_n_0 ),
        .O(\o_sx[10]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_sx[11]_i_1 
       (.I0(data0[11]),
        .I1(\o_sy[15]_i_1_n_0 ),
        .O(\o_sx[11]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_sx[12]_i_1 
       (.I0(data0[12]),
        .I1(\o_sy[15]_i_1_n_0 ),
        .O(\o_sx[12]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_sx[13]_i_1 
       (.I0(data0[13]),
        .I1(\o_sy[15]_i_1_n_0 ),
        .O(\o_sx[13]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_sx[14]_i_1 
       (.I0(data0[14]),
        .I1(\o_sy[15]_i_1_n_0 ),
        .O(\o_sx[14]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_sx[15]_i_2 
       (.I0(data0[15]),
        .I1(\o_sy[15]_i_1_n_0 ),
        .O(\o_sx[15]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \o_sx[15]_i_4 
       (.I0(\o_sx[15]_i_5_n_0 ),
        .I1(sx[10]),
        .I2(sx[5]),
        .I3(sx[2]),
        .I4(sx[11]),
        .I5(\o_sx[15]_i_6_n_0 ),
        .O(\o_sy[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \o_sx[15]_i_5 
       (.I0(sx[1]),
        .I1(sx[6]),
        .I2(sx[7]),
        .I3(sx[8]),
        .I4(sx[9]),
        .I5(\o_sx[15]_i_7_n_0 ),
        .O(\o_sx[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \o_sx[15]_i_6 
       (.I0(sx[14]),
        .I1(sx[3]),
        .I2(sx[0]),
        .I3(sx[4]),
        .I4(sx[15]),
        .O(\o_sx[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_sx[15]_i_7 
       (.I0(sx[13]),
        .I1(sx[12]),
        .O(\o_sx[15]_i_7_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_sx[1]_i_1 
       (.I0(data0[1]),
        .I1(\o_sy[15]_i_1_n_0 ),
        .O(\o_sx[1]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_sx[2]_i_1 
       (.I0(data0[2]),
        .I1(\o_sy[15]_i_1_n_0 ),
        .O(\o_sx[2]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_sx[3]_i_1 
       (.I0(data0[3]),
        .I1(\o_sy[15]_i_1_n_0 ),
        .O(\o_sx[3]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \o_sx[4]_i_1 
       (.I0(\o_sy[15]_i_1_n_0 ),
        .I1(data0[4]),
        .O(\o_sx[4]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \o_sx[5]_i_1 
       (.I0(\o_sy[15]_i_1_n_0 ),
        .I1(data0[5]),
        .O(\o_sx[5]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \o_sx[6]_i_1 
       (.I0(\o_sy[15]_i_1_n_0 ),
        .I1(data0[6]),
        .O(\o_sx[6]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_sx[7]_i_1 
       (.I0(data0[7]),
        .I1(\o_sy[15]_i_1_n_0 ),
        .O(\o_sx[7]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \o_sx[8]_i_1 
       (.I0(\o_sy[15]_i_1_n_0 ),
        .I1(data0[8]),
        .O(\o_sx[8]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_sx[9]_i_1 
       (.I0(data0[9]),
        .I1(\o_sy[15]_i_1_n_0 ),
        .O(\o_sx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_sx_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[0]_i_1_n_0 ),
        .Q(sx[0]),
        .R(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sx_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[10]_i_1_n_0 ),
        .Q(sx[10]),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sx_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[11]_i_1_n_0 ),
        .Q(sx[11]),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sx_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[12]_i_1_n_0 ),
        .Q(sx[12]),
        .S(\o_sy_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_sx_reg[12]_i_2 
       (.CI(\o_sx_reg[8]_i_2_n_0 ),
        .CO({\o_sx_reg[12]_i_2_n_0 ,\NLW_o_sx_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(sx[12:9]));
  FDSE #(
    .INIT(1'b1)) 
    \o_sx_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[13]_i_1_n_0 ),
        .Q(sx[13]),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sx_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[14]_i_1_n_0 ),
        .Q(sx[14]),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sx_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[15]_i_2_n_0 ),
        .Q(sx[15]),
        .S(\o_sy_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_sx_reg[15]_i_3 
       (.CI(\o_sx_reg[12]_i_2_n_0 ),
        .CO(\NLW_o_sx_reg[15]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_o_sx_reg[15]_i_3_O_UNCONNECTED [3],data0[15:13]}),
        .S({1'b0,sx[15:13]}));
  FDSE #(
    .INIT(1'b1)) 
    \o_sx_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[1]_i_1_n_0 ),
        .Q(sx[1]),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sx_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[2]_i_1_n_0 ),
        .Q(sx[2]),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sx_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[3]_i_1_n_0 ),
        .Q(sx[3]),
        .S(\o_sy_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_sx_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[4]_i_1_n_0 ),
        .Q(sx[4]),
        .R(\o_sy_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_sx_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\o_sx_reg[4]_i_2_n_0 ,\NLW_o_sx_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(sx[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(sx[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \o_sx_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[5]_i_1_n_0 ),
        .Q(sx[5]),
        .R(\o_sy_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_sx_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[6]_i_1_n_0 ),
        .Q(sx[6]),
        .R(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sx_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[7]_i_1_n_0 ),
        .Q(sx[7]),
        .S(\o_sy_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_sx_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[8]_i_1_n_0 ),
        .Q(sx[8]),
        .R(\o_sy_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_sx_reg[8]_i_2 
       (.CI(\o_sx_reg[4]_i_2_n_0 ),
        .CO({\o_sx_reg[8]_i_2_n_0 ,\NLW_o_sx_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(sx[8:5]));
  FDSE #(
    .INIT(1'b1)) 
    \o_sx_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_sx[9]_i_1_n_0 ),
        .Q(sx[9]),
        .S(\o_sy_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_sy[0]_i_1 
       (.I0(\o_sy_reg_n_0_[0] ),
        .O(\o_sy[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_sy[10]_i_1 
       (.I0(\o_sy_reg[12]_i_2_n_6 ),
        .I1(\o_sy[15]_i_4_n_0 ),
        .O(\o_sy[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_sy[11]_i_1 
       (.I0(\o_sy_reg[12]_i_2_n_5 ),
        .I1(\o_sy[15]_i_4_n_0 ),
        .O(\o_sy[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_sy[12]_i_1 
       (.I0(\o_sy_reg[12]_i_2_n_4 ),
        .I1(\o_sy[15]_i_4_n_0 ),
        .O(\o_sy[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_sy[13]_i_1 
       (.I0(\o_sy_reg[15]_i_3_n_7 ),
        .I1(\o_sy[15]_i_4_n_0 ),
        .O(\o_sy[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_sy[14]_i_1 
       (.I0(\o_sy_reg[15]_i_3_n_6 ),
        .I1(\o_sy[15]_i_4_n_0 ),
        .O(\o_sy[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_sy[15]_i_2 
       (.I0(\o_sy_reg[15]_i_3_n_5 ),
        .I1(\o_sy[15]_i_4_n_0 ),
        .O(\o_sy[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_sy[15]_i_4 
       (.I0(\o_sy[15]_i_5_n_0 ),
        .I1(\o_sy_reg_n_0_[13] ),
        .I2(\o_sy_reg_n_0_[12] ),
        .I3(\o_sy_reg_n_0_[11] ),
        .I4(\o_sy_reg_n_0_[10] ),
        .I5(\o_sy[15]_i_6_n_0 ),
        .O(\o_sy[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \o_sy[15]_i_5 
       (.I0(\o_sy_reg_n_0_[1] ),
        .I1(\o_sy_reg_n_0_[0] ),
        .I2(\o_sy_reg_n_0_[2] ),
        .I3(\o_sy_reg_n_0_[3] ),
        .I4(\o_sy_reg_n_0_[6] ),
        .I5(\o_sy_reg_n_0_[7] ),
        .O(\o_sy[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \o_sy[15]_i_6 
       (.I0(\o_sy_reg_n_0_[4] ),
        .I1(\o_sy_reg_n_0_[5] ),
        .I2(\o_sy_reg_n_0_[8] ),
        .I3(\o_sy_reg_n_0_[9] ),
        .I4(\o_sy_reg_n_0_[15] ),
        .I5(\o_sy_reg_n_0_[14] ),
        .O(\o_sy[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_sy[1]_i_1 
       (.I0(\o_sy_reg[4]_i_2_n_7 ),
        .I1(\o_sy[15]_i_4_n_0 ),
        .O(\o_sy[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_sy[2]_i_1 
       (.I0(\o_sy[15]_i_4_n_0 ),
        .I1(\o_sy_reg[4]_i_2_n_6 ),
        .O(\o_sy[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \o_sy[3]_i_1 
       (.I0(\o_sy[15]_i_4_n_0 ),
        .I1(\o_sy_reg[4]_i_2_n_5 ),
        .O(\o_sy[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_sy[4]_i_1 
       (.I0(\o_sy[15]_i_4_n_0 ),
        .I1(\o_sy_reg[4]_i_2_n_4 ),
        .O(\o_sy[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_sy[5]_i_1 
       (.I0(\o_sy_reg[8]_i_2_n_7 ),
        .I1(\o_sy[15]_i_4_n_0 ),
        .O(\o_sy[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_sy[6]_i_1 
       (.I0(\o_sy_reg[8]_i_2_n_6 ),
        .I1(\o_sy[15]_i_4_n_0 ),
        .O(\o_sy[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_sy[7]_i_1 
       (.I0(\o_sy_reg[8]_i_2_n_5 ),
        .I1(\o_sy[15]_i_4_n_0 ),
        .O(\o_sy[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_sy[8]_i_1 
       (.I0(\o_sy_reg[8]_i_2_n_4 ),
        .I1(\o_sy[15]_i_4_n_0 ),
        .O(\o_sy[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_sy[9]_i_1 
       (.I0(\o_sy_reg[12]_i_2_n_7 ),
        .I1(\o_sy[15]_i_4_n_0 ),
        .O(\o_sy[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_sy_reg[0] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[0]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[0] ),
        .R(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sy_reg[10] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[10]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[10] ),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sy_reg[11] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[11]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[11] ),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sy_reg[12] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[12]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[12] ),
        .S(\o_sy_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_sy_reg[12]_i_2 
       (.CI(\o_sy_reg[8]_i_2_n_0 ),
        .CO({\o_sy_reg[12]_i_2_n_0 ,\NLW_o_sy_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\o_sy_reg[12]_i_2_n_4 ,\o_sy_reg[12]_i_2_n_5 ,\o_sy_reg[12]_i_2_n_6 ,\o_sy_reg[12]_i_2_n_7 }),
        .S({\o_sy_reg_n_0_[12] ,\o_sy_reg_n_0_[11] ,\o_sy_reg_n_0_[10] ,\o_sy_reg_n_0_[9] }));
  FDSE #(
    .INIT(1'b1)) 
    \o_sy_reg[13] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[13]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[13] ),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sy_reg[14] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[14]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[14] ),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sy_reg[15] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[15]_i_2_n_0 ),
        .Q(\o_sy_reg_n_0_[15] ),
        .S(\o_sy_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_sy_reg[15]_i_3 
       (.CI(\o_sy_reg[12]_i_2_n_0 ),
        .CO(\NLW_o_sy_reg[15]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_o_sy_reg[15]_i_3_O_UNCONNECTED [3],\o_sy_reg[15]_i_3_n_5 ,\o_sy_reg[15]_i_3_n_6 ,\o_sy_reg[15]_i_3_n_7 }),
        .S({1'b0,\o_sy_reg_n_0_[15] ,\o_sy_reg_n_0_[14] ,\o_sy_reg_n_0_[13] }));
  FDSE #(
    .INIT(1'b1)) 
    \o_sy_reg[1] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[1]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[1] ),
        .S(\o_sy_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_sy_reg[2] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[2]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[2] ),
        .R(\o_sy_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_sy_reg[3] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[3]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[3] ),
        .R(\o_sy_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_sy_reg[4] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[4]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[4] ),
        .R(\o_sy_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_sy_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\o_sy_reg[4]_i_2_n_0 ,\NLW_o_sy_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\o_sy_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\o_sy_reg[4]_i_2_n_4 ,\o_sy_reg[4]_i_2_n_5 ,\o_sy_reg[4]_i_2_n_6 ,\o_sy_reg[4]_i_2_n_7 }),
        .S({\o_sy_reg_n_0_[4] ,\o_sy_reg_n_0_[3] ,\o_sy_reg_n_0_[2] ,\o_sy_reg_n_0_[1] }));
  FDSE #(
    .INIT(1'b1)) 
    \o_sy_reg[5] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[5]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[5] ),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sy_reg[6] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[6]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[6] ),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sy_reg[7] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[7]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[7] ),
        .S(\o_sy_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_sy_reg[8] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[8]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[8] ),
        .S(\o_sy_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_sy_reg[8]_i_2 
       (.CI(\o_sy_reg[4]_i_2_n_0 ),
        .CO({\o_sy_reg[8]_i_2_n_0 ,\NLW_o_sy_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\o_sy_reg[8]_i_2_n_4 ,\o_sy_reg[8]_i_2_n_5 ,\o_sy_reg[8]_i_2_n_6 ,\o_sy_reg[8]_i_2_n_7 }),
        .S({\o_sy_reg_n_0_[8] ,\o_sy_reg_n_0_[7] ,\o_sy_reg_n_0_[6] ,\o_sy_reg_n_0_[5] }));
  FDSE #(
    .INIT(1'b1)) 
    \o_sy_reg[9] 
       (.C(CLK),
        .CE(\o_sy[15]_i_1_n_0 ),
        .D(\o_sy[9]_i_1_n_0 ),
        .Q(\o_sy_reg_n_0_[9] ),
        .S(\o_sy_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h000000FF00000054)) 
    \o_tmds[0]_i_1 
       (.I0(\o_tmds_reg[2] ),
        .I1(\o_tmds[0]_i_2_n_0 ),
        .I2(\test_card_inst/b00 ),
        .I3(\o_sy_reg_n_0_[15] ),
        .I4(sx[15]),
        .I5(Q[3]),
        .O(\o_sy_reg[15]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[0]_i_10 
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(\o_tmds[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_tmds[0]_i_11 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\o_tmds[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_tmds[0]_i_12 
       (.I0(sx[5]),
        .I1(sx[4]),
        .O(\o_tmds[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h888F8880888F888F)) 
    \o_tmds[0]_i_1__1 
       (.I0(o_hs0),
        .I1(o_hs03_in),
        .I2(\o_sy_reg_n_0_[15] ),
        .I3(sx[15]),
        .I4(\o_tmds_reg[0] [3]),
        .I5(\o_tmds_reg[0]_0 ),
        .O(o_tmds0_in[0]));
  LUT4 #(
    .INIT(16'hF222)) 
    \o_tmds[0]_i_2 
       (.I0(\test_card_inst/b50 ),
        .I1(\test_card_inst/b40 ),
        .I2(\test_card_inst/b10 ),
        .I3(\test_card_inst/b106_in ),
        .O(\o_tmds[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[0]_i_5 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\o_tmds[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[0]_i_6 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\o_tmds[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_tmds[0]_i_7 
       (.I0(sx[7]),
        .O(\o_tmds[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_tmds[0]_i_8 
       (.I0(sx[5]),
        .O(\o_tmds[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[0]_i_9 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\o_tmds[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFFFE)) 
    \o_tmds[2]_i_1 
       (.I0(Q[3]),
        .I1(\o_sy_reg_n_0_[15] ),
        .I2(sx[15]),
        .I3(\o_tmds[8]_i_2_n_0 ),
        .I4(\o_tmds_reg[2] ),
        .O(\bias_reg[4] ));
  LUT6 #(
    .INIT(64'h000BFFFBFFFBFFFB)) 
    \o_tmds[2]_i_1__1 
       (.I0(\o_tmds_reg[0] [3]),
        .I1(\o_tmds_reg[0]_0 ),
        .I2(\o_sy_reg_n_0_[15] ),
        .I3(sx[15]),
        .I4(o_hs03_in),
        .I5(o_hs0),
        .O(o_tmds0_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFF00FF00FFFD)) 
    \o_tmds[6]_i_1 
       (.I0(\o_tmds[8]_i_2_n_0 ),
        .I1(\o_tmds_reg[6] ),
        .I2(Q[0]),
        .I3(\o_sy_reg[15]_0 ),
        .I4(Q[3]),
        .I5(\o_sx_reg[15]_1 ),
        .O(\bias_reg[1] ));
  LUT6 #(
    .INIT(64'h7777FF00777700F0)) 
    \o_tmds[6]_i_1__1 
       (.I0(o_hs0),
        .I1(o_hs03_in),
        .I2(\o_tmds_reg[6]_0 ),
        .I3(\o_tmds_reg[0] [3]),
        .I4(\o_sy_reg[15]_0 ),
        .I5(\o_sx_reg[15]_1 ),
        .O(o_tmds0_in[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \o_tmds[6]_i_3 
       (.I0(\o_sy_reg_n_0_[15] ),
        .I1(sx[15]),
        .O(\o_sy_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA00CF)) 
    \o_tmds[7]_i_1 
       (.I0(\o_sy_reg[15]_1 ),
        .I1(\o_tmds_reg[2] ),
        .I2(\o_tmds[8]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(\o_sx_reg[11]_1 ),
        .I5(\o_sy_reg[15]_0 ),
        .O(\bias_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_tmds[7]_i_11 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\o_tmds[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_tmds[7]_i_12 
       (.I0(sx[13]),
        .I1(sx[12]),
        .O(\o_tmds[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_tmds[7]_i_13 
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(\o_tmds[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[7]_i_14 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\o_tmds[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[7]_i_15 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\o_tmds[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_tmds[7]_i_16 
       (.I0(sx[10]),
        .I1(sx[11]),
        .O(\o_tmds[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[7]_i_17 
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(\o_tmds[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \o_tmds[7]_i_18 
       (.I0(sx[4]),
        .I1(sx[5]),
        .O(\o_tmds[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_tmds[7]_i_19 
       (.I0(sx[2]),
        .I1(sx[3]),
        .O(\o_tmds[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF000F000F0009999)) 
    \o_tmds[7]_i_1__0 
       (.I0(\o_sx_reg[11]_1 ),
        .I1(\o_tmds_reg[7] ),
        .I2(o_hs03_in),
        .I3(o_hs0),
        .I4(\o_sy_reg_n_0_[15] ),
        .I5(sx[15]),
        .O(o_tmds0_in[3]));
  LUT6 #(
    .INIT(64'h0000000000004BBB)) 
    \o_tmds[7]_i_1__1 
       (.I0(\o_tmds_reg[7]_0 [3]),
        .I1(\o_tmds_reg[7]_1 ),
        .I2(\o_sx_reg[15]_0 ),
        .I3(\o_sx_reg[11]_0 ),
        .I4(sx[15]),
        .I5(\o_sy_reg_n_0_[15] ),
        .O(\bias_reg[4]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_tmds[7]_i_20 
       (.I0(sx[0]),
        .I1(sx[1]),
        .O(\o_tmds[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_tmds[7]_i_21 
       (.I0(sx[6]),
        .I1(sx[7]),
        .O(\o_tmds[7]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_tmds[7]_i_22 
       (.I0(sx[5]),
        .I1(sx[4]),
        .O(\o_tmds[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[7]_i_23 
       (.I0(sx[3]),
        .I1(sx[2]),
        .O(\o_tmds[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[7]_i_24 
       (.I0(sx[1]),
        .I1(sx[0]),
        .O(\o_tmds[7]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[7]_i_4 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\o_tmds[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[7]_i_5 
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(\o_tmds[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[7]_i_6 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\o_tmds[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[7]_i_7 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\o_tmds[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_tmds[7]_i_8 
       (.I0(sx[10]),
        .I1(sx[11]),
        .O(\o_tmds[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_tmds[7]_i_9 
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(\o_tmds[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF15)) 
    \o_tmds[8]_i_1 
       (.I0(\o_tmds[8]_i_2_n_0 ),
        .I1(\o_sx_reg[14]_0 ),
        .I2(CO),
        .I3(sx[15]),
        .I4(\o_sy_reg_n_0_[15] ),
        .O(\o_sx_reg[15]_2 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[8]_i_10 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\o_tmds[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \o_tmds[8]_i_11 
       (.I0(sx[8]),
        .I1(sx[9]),
        .O(\o_tmds[8]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[8]_i_13 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\o_tmds[8]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[8]_i_14 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\o_tmds[8]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_tmds[8]_i_15 
       (.I0(sx[4]),
        .I1(sx[5]),
        .O(\o_tmds[8]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_tmds[8]_i_16 
       (.I0(sx[2]),
        .I1(sx[3]),
        .O(\o_tmds[8]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_tmds[8]_i_17 
       (.I0(sx[0]),
        .I1(sx[1]),
        .O(\o_tmds[8]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \o_tmds[8]_i_18 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\o_tmds[8]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[8]_i_19 
       (.I0(sx[5]),
        .I1(sx[4]),
        .O(\o_tmds[8]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF15)) 
    \o_tmds[8]_i_1__0 
       (.I0(\o_sx_reg[9]_0 ),
        .I1(\o_sx_reg[14]_0 ),
        .I2(CO),
        .I3(sx[15]),
        .I4(\o_sy_reg_n_0_[15] ),
        .O(\o_sx_reg[15]_3 ));
  LUT6 #(
    .INIT(64'h0004FFF4FFF4FFF4)) 
    \o_tmds[8]_i_1__1 
       (.I0(\o_sx_reg[15]_4 ),
        .I1(\o_sx_reg[15]_1 ),
        .I2(\o_sy_reg_n_0_[15] ),
        .I3(sx[15]),
        .I4(o_hs03_in),
        .I5(o_hs0),
        .O(o_tmds0_in[4]));
  LUT5 #(
    .INIT(32'hFFFF8F88)) 
    \o_tmds[8]_i_2 
       (.I0(\test_card_inst/b106_in ),
        .I1(\test_card_inst/b10 ),
        .I2(\test_card_inst/b40 ),
        .I3(\test_card_inst/b50 ),
        .I4(\test_card_inst/b00 ),
        .O(\o_tmds[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[8]_i_20 
       (.I0(sx[3]),
        .I1(sx[2]),
        .O(\o_tmds[8]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[8]_i_21 
       (.I0(sx[1]),
        .I1(sx[0]),
        .O(\o_tmds[8]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[8]_i_22 
       (.I0(sx[11]),
        .I1(sx[10]),
        .O(\o_tmds[8]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[8]_i_23 
       (.I0(sx[7]),
        .I1(sx[6]),
        .O(\o_tmds[8]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_tmds[8]_i_24 
       (.I0(sx[5]),
        .O(\o_tmds[8]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_tmds[8]_i_25 
       (.I0(sx[10]),
        .I1(sx[11]),
        .O(\o_tmds[8]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[8]_i_26 
       (.I0(sx[9]),
        .I1(sx[8]),
        .O(\o_tmds[8]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_tmds[8]_i_27 
       (.I0(sx[6]),
        .I1(sx[7]),
        .O(\o_tmds[8]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_tmds[8]_i_28 
       (.I0(sx[5]),
        .I1(sx[4]),
        .O(\o_tmds[8]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_tmds[8]_i_5 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\o_tmds[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_tmds[8]_i_6 
       (.I0(sx[13]),
        .I1(sx[12]),
        .O(\o_tmds[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_tmds[8]_i_7 
       (.I0(sx[10]),
        .I1(sx[11]),
        .O(\o_tmds[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[8]_i_8 
       (.I0(sx[14]),
        .I1(sx[15]),
        .O(\o_tmds[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_tmds[8]_i_9 
       (.I0(sx[12]),
        .I1(sx[13]),
        .O(\o_tmds[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEFEEEEEEEEF)) 
    \o_tmds[9]_i_1 
       (.I0(\o_tmds[9]_i_2_n_0 ),
        .I1(\o_tmds[9]_i_3_n_0 ),
        .I2(\o_sx_reg[15]_4 ),
        .I3(\o_sx_reg[15]_1 ),
        .I4(\o_sy_reg[15]_0 ),
        .I5(\o_tmds_reg[0] [3]),
        .O(\bias_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hDFFFFFDFFFDFDFFF)) 
    \o_tmds[9]_i_1__0 
       (.I0(\o_tmds_reg[7]_1 ),
        .I1(\o_sy_reg[15]_0 ),
        .I2(o_locked),
        .I3(\o_sx_reg[15]_1 ),
        .I4(\o_tmds_reg[7]_0 [3]),
        .I5(\o_sx_reg[9]_0 ),
        .O(\bias_reg[4]_3 ));
  LUT6 #(
    .INIT(64'hBFFFFFBFFFBBBBFF)) 
    \o_tmds[9]_i_1__1 
       (.I0(\o_sy_reg[15]_0 ),
        .I1(o_locked),
        .I2(\o_tmds_reg[2] ),
        .I3(Q[3]),
        .I4(\o_sx_reg[15]_1 ),
        .I5(\o_tmds[8]_i_2_n_0 ),
        .O(\bias_reg[4]_4 ));
  LUT6 #(
    .INIT(64'hABAFABABAFABABAB)) 
    \o_tmds[9]_i_2 
       (.I0(\o_tmds[9]_i_4_n_0 ),
        .I1(\o_tmds_reg[0]_0 ),
        .I2(\o_sy_reg[15]_0 ),
        .I3(\o_tmds_reg[0] [3]),
        .I4(\o_sx_reg[15]_1 ),
        .I5(\o_sx_reg[15]_4 ),
        .O(\o_tmds[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00707070FFFFFFFF)) 
    \o_tmds[9]_i_3 
       (.I0(o_hs0),
        .I1(o_hs03_in),
        .I2(\o_sy_reg[15]_0 ),
        .I3(o_vs02_in),
        .I4(o_vs0),
        .I5(o_locked),
        .O(\o_tmds[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    \o_tmds[9]_i_4 
       (.I0(o_hs03_in),
        .I1(o_hs0),
        .I2(o_vs02_in),
        .I3(o_vs0),
        .I4(sx[15]),
        .I5(\o_sy_reg_n_0_[15] ),
        .O(\o_tmds[9]_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_tmds_reg[0]_i_3 
       (.CI(\o_tmds_reg[0]_i_4_n_0 ),
        .CO({\NLW_o_tmds_reg[0]_i_3_CO_UNCONNECTED [3:2],\test_card_inst/b00 ,\NLW_o_tmds_reg[0]_i_3_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sx[15],1'b0}),
        .O(\NLW_o_tmds_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\o_tmds[0]_i_5_n_0 ,\o_tmds[0]_i_6_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_tmds_reg[0]_i_4 
       (.CI(1'b0),
        .CO({\o_tmds_reg[0]_i_4_n_0 ,\NLW_o_tmds_reg[0]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\o_tmds[0]_i_7_n_0 ,\o_tmds[0]_i_8_n_0 }),
        .O(\NLW_o_tmds_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({\o_tmds[0]_i_9_n_0 ,\o_tmds[0]_i_10_n_0 ,\o_tmds[0]_i_11_n_0 ,\o_tmds[0]_i_12_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_tmds_reg[7]_i_10 
       (.CI(1'b0),
        .CO({\o_tmds_reg[7]_i_10_n_0 ,\NLW_o_tmds_reg[7]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({sx[7],\o_tmds[7]_i_18_n_0 ,\o_tmds[7]_i_19_n_0 ,\o_tmds[7]_i_20_n_0 }),
        .O(\NLW_o_tmds_reg[7]_i_10_O_UNCONNECTED [3:0]),
        .S({\o_tmds[7]_i_21_n_0 ,\o_tmds[7]_i_22_n_0 ,\o_tmds[7]_i_23_n_0 ,\o_tmds[7]_i_24_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_tmds_reg[7]_i_2 
       (.CI(1'b0),
        .CO({\o_sx_reg[15]_0 ,\NLW_o_tmds_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({sx[15],1'b0,\o_tmds[7]_i_4_n_0 ,\o_tmds[7]_i_5_n_0 }),
        .O(\NLW_o_tmds_reg[7]_i_2_O_UNCONNECTED [3:0]),
        .S({\o_tmds[7]_i_6_n_0 ,\o_tmds[7]_i_7_n_0 ,\o_tmds[7]_i_8_n_0 ,\o_tmds[7]_i_9_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_tmds_reg[7]_i_3 
       (.CI(\o_tmds_reg[7]_i_10_n_0 ),
        .CO({\o_sx_reg[11]_0 ,\NLW_o_tmds_reg[7]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\o_tmds[7]_i_11_n_0 ,\o_tmds[7]_i_12_n_0 ,sx[11],\o_tmds[7]_i_13_n_0 }),
        .O(\NLW_o_tmds_reg[7]_i_3_O_UNCONNECTED [3:0]),
        .S({\o_tmds[7]_i_14_n_0 ,\o_tmds[7]_i_15_n_0 ,\o_tmds[7]_i_16_n_0 ,\o_tmds[7]_i_17_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_tmds_reg[8]_i_12 
       (.CI(1'b0),
        .CO({\o_tmds_reg[8]_i_12_n_0 ,\NLW_o_tmds_reg[8]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\o_tmds[8]_i_22_n_0 ,1'b0,\o_tmds[8]_i_23_n_0 ,\o_tmds[8]_i_24_n_0 }),
        .O(\NLW_o_tmds_reg[8]_i_12_O_UNCONNECTED [3:0]),
        .S({\o_tmds[8]_i_25_n_0 ,\o_tmds[8]_i_26_n_0 ,\o_tmds[8]_i_27_n_0 ,\o_tmds[8]_i_28_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_tmds_reg[8]_i_2 
       (.CI(\o_tmds_reg[8]_i_4_n_0 ),
        .CO({\o_sx_reg[14]_0 ,\NLW_o_tmds_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\o_tmds[8]_i_5_n_0 ,\o_tmds[8]_i_6_n_0 ,\o_tmds[8]_i_7_n_0 ,1'b0}),
        .O(\NLW_o_tmds_reg[8]_i_2_O_UNCONNECTED [3:0]),
        .S({\o_tmds[8]_i_8_n_0 ,\o_tmds[8]_i_9_n_0 ,\o_tmds[8]_i_10_n_0 ,\o_tmds[8]_i_11_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_tmds_reg[8]_i_3 
       (.CI(\o_tmds_reg[8]_i_12_n_0 ),
        .CO({\NLW_o_tmds_reg[8]_i_3_CO_UNCONNECTED [3:2],CO,\NLW_o_tmds_reg[8]_i_3_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sx[15],1'b0}),
        .O(\NLW_o_tmds_reg[8]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\o_tmds[8]_i_13_n_0 ,\o_tmds[8]_i_14_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_tmds_reg[8]_i_4 
       (.CI(1'b0),
        .CO({\o_tmds_reg[8]_i_4_n_0 ,\NLW_o_tmds_reg[8]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\o_tmds[8]_i_15_n_0 ,\o_tmds[8]_i_16_n_0 ,\o_tmds[8]_i_17_n_0 }),
        .O(\NLW_o_tmds_reg[8]_i_4_O_UNCONNECTED [3:0]),
        .S({\o_tmds[8]_i_18_n_0 ,\o_tmds[8]_i_19_n_0 ,\o_tmds[8]_i_20_n_0 ,\o_tmds[8]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 o_vs0_carry
       (.CI(1'b0),
        .CO({o_vs0_carry_n_0,NLW_o_vs0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({o_vs0_carry_i_1_n_0,o_vs0_carry_i_2_n_0,o_vs0_carry_i_3_n_0,1'b0}),
        .O(NLW_o_vs0_carry_O_UNCONNECTED[3:0]),
        .S({o_vs0_carry_i_4_n_0,o_vs0_carry_i_5_n_0,o_vs0_carry_i_6_n_0,o_vs0_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 o_vs0_carry__0
       (.CI(o_vs0_carry_n_0),
        .CO({o_vs0,NLW_o_vs0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({o_vs0_carry__0_i_1_n_0,o_vs0_carry__0_i_2_n_0,o_vs0_carry__0_i_3_n_0,o_vs0_carry__0_i_4_n_0}),
        .O(NLW_o_vs0_carry__0_O_UNCONNECTED[3:0]),
        .S({o_vs0_carry__0_i_5_n_0,o_vs0_carry__0_i_6_n_0,o_vs0_carry__0_i_7_n_0,o_vs0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    o_vs0_carry__0_i_1
       (.I0(\o_sy_reg_n_0_[15] ),
        .I1(\o_sy_reg_n_0_[14] ),
        .O(o_vs0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_vs0_carry__0_i_2
       (.I0(\o_sy_reg_n_0_[13] ),
        .I1(\o_sy_reg_n_0_[12] ),
        .O(o_vs0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_vs0_carry__0_i_3
       (.I0(\o_sy_reg_n_0_[11] ),
        .I1(\o_sy_reg_n_0_[10] ),
        .O(o_vs0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_vs0_carry__0_i_4
       (.I0(\o_sy_reg_n_0_[9] ),
        .I1(\o_sy_reg_n_0_[8] ),
        .O(o_vs0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_vs0_carry__0_i_5
       (.I0(\o_sy_reg_n_0_[14] ),
        .I1(\o_sy_reg_n_0_[15] ),
        .O(o_vs0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_vs0_carry__0_i_6
       (.I0(\o_sy_reg_n_0_[12] ),
        .I1(\o_sy_reg_n_0_[13] ),
        .O(o_vs0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_vs0_carry__0_i_7
       (.I0(\o_sy_reg_n_0_[10] ),
        .I1(\o_sy_reg_n_0_[11] ),
        .O(o_vs0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_vs0_carry__0_i_8
       (.I0(\o_sy_reg_n_0_[8] ),
        .I1(\o_sy_reg_n_0_[9] ),
        .O(o_vs0_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_vs0_carry_i_1
       (.I0(\o_sy_reg_n_0_[6] ),
        .I1(\o_sy_reg_n_0_[7] ),
        .O(o_vs0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_vs0_carry_i_2
       (.I0(\o_sy_reg_n_0_[5] ),
        .O(o_vs0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_vs0_carry_i_3
       (.I0(\o_sy_reg_n_0_[2] ),
        .I1(\o_sy_reg_n_0_[3] ),
        .O(o_vs0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_vs0_carry_i_4
       (.I0(\o_sy_reg_n_0_[7] ),
        .I1(\o_sy_reg_n_0_[6] ),
        .O(o_vs0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_vs0_carry_i_5
       (.I0(\o_sy_reg_n_0_[5] ),
        .I1(\o_sy_reg_n_0_[4] ),
        .O(o_vs0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_vs0_carry_i_6
       (.I0(\o_sy_reg_n_0_[3] ),
        .I1(\o_sy_reg_n_0_[2] ),
        .O(o_vs0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_vs0_carry_i_7
       (.I0(\o_sy_reg_n_0_[1] ),
        .I1(\o_sy_reg_n_0_[0] ),
        .O(o_vs0_carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_vs0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\o_vs0_inferred__0/i__carry_n_0 ,\NLW_o_vs0_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry_i_1_n_0,\o_sy_reg_n_0_[3] }),
        .O(\NLW_o_vs0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4__0_n_0,i__carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_vs0_inferred__0/i__carry__0 
       (.CI(\o_vs0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_o_vs0_inferred__0/i__carry__0_CO_UNCONNECTED [3],o_vs02_in,\NLW_o_vs0_inferred__0/i__carry__0_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,o_de0,1'b0,1'b0}),
        .O(\NLW_o_vs0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4__0_n_0}));
endmodule

module dvi_generator
   (Q,
    \bias_reg[2] ,
    \bias_reg[4] ,
    \bias_reg[1] ,
    \bias_reg[4]_0 ,
    \bias_reg[4]_1 ,
    \bias_reg[1]_0 ,
    \bias_reg[3] ,
    \bias_reg[2]_0 ,
    \bias_reg[2]_1 ,
    \bias_reg[2]_2 ,
    o_data,
    \o_tmds_reg[0] ,
    \o_tmds_reg[0]_0 ,
    o_rst_reg,
    \o_tmds_reg[0]_1 ,
    o_tmds0_in,
    CLK,
    \o_tmds_reg[8] ,
    \o_tmds_reg[7] ,
    \o_tmds_reg[8]_0 ,
    \o_tmds_reg[7]_0 ,
    \o_tmds_reg[6] ,
    \o_tmds_reg[2] ,
    \o_tmds_reg[0]_2 ,
    \o_tmds_reg[9] ,
    \o_tmds_reg[9]_0 ,
    \o_tmds_reg[9]_1 ,
    \o_tmds_reg[6]_0 ,
    \o_tmds_reg[6]_1 ,
    \bias_reg[3]_0 ,
    \bias_reg[2]_3 ,
    \bias_reg[4]_2 ,
    \bias_reg[3]_1 ,
    \bias_reg[3]_2 ,
    \bias_reg[3]_3 ,
    \bias_reg[3]_4 ,
    \bias_reg[4]_3 ,
    \bias_reg[4]_4 ,
    \bias_reg[2]_4 ,
    CO,
    \bias_reg[2]_5 ,
    \bias_reg[3]_5 ,
    \bias_reg[3]_6 ,
    \bias_reg[3]_7 ,
    \bias_reg[3]_8 ,
    \bias_reg[4]_5 ,
    \bias_reg[4]_6 ,
    \bias_reg[4]_7 ,
    \bias_reg[4]_8 ,
    \bias_reg[4]_9 ,
    \bias_reg[3]_9 ,
    \bias[3]_i_5 ,
    \bias[3]_i_5_0 ,
    i_clk_hs,
    SR,
    D,
    \bias_reg[1]_1 ,
    \bias_reg[1]_2 );
  output [3:0]Q;
  output \bias_reg[2] ;
  output [3:0]\bias_reg[4] ;
  output \bias_reg[1] ;
  output [3:0]\bias_reg[4]_0 ;
  output \bias_reg[4]_1 ;
  output \bias_reg[1]_0 ;
  output \bias_reg[3] ;
  output \bias_reg[2]_0 ;
  output \bias_reg[2]_1 ;
  output \bias_reg[2]_2 ;
  output o_data;
  output \o_tmds_reg[0] ;
  output \o_tmds_reg[0]_0 ;
  output o_rst_reg;
  input \o_tmds_reg[0]_1 ;
  input [4:0]o_tmds0_in;
  input CLK;
  input \o_tmds_reg[8] ;
  input \o_tmds_reg[7] ;
  input \o_tmds_reg[8]_0 ;
  input \o_tmds_reg[7]_0 ;
  input \o_tmds_reg[6] ;
  input \o_tmds_reg[2] ;
  input \o_tmds_reg[0]_2 ;
  input \o_tmds_reg[9] ;
  input \o_tmds_reg[9]_0 ;
  input \o_tmds_reg[9]_1 ;
  input \o_tmds_reg[6]_0 ;
  input \o_tmds_reg[6]_1 ;
  input \bias_reg[3]_0 ;
  input \bias_reg[2]_3 ;
  input \bias_reg[4]_2 ;
  input \bias_reg[3]_1 ;
  input \bias_reg[3]_2 ;
  input \bias_reg[3]_3 ;
  input \bias_reg[3]_4 ;
  input \bias_reg[4]_3 ;
  input \bias_reg[4]_4 ;
  input [0:0]\bias_reg[2]_4 ;
  input [0:0]CO;
  input \bias_reg[2]_5 ;
  input \bias_reg[3]_5 ;
  input \bias_reg[3]_6 ;
  input \bias_reg[3]_7 ;
  input \bias_reg[3]_8 ;
  input \bias_reg[4]_5 ;
  input \bias_reg[4]_6 ;
  input \bias_reg[4]_7 ;
  input \bias_reg[4]_8 ;
  input \bias_reg[4]_9 ;
  input \bias_reg[3]_9 ;
  input [0:0]\bias[3]_i_5 ;
  input [0:0]\bias[3]_i_5_0 ;
  input i_clk_hs;
  input [0:0]SR;
  input [1:0]D;
  input [0:0]\bias_reg[1]_1 ;
  input [0:0]\bias_reg[1]_2 ;

  wire CLK;
  wire [0:0]CO;
  wire [1:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [0:0]\bias[3]_i_5 ;
  wire [0:0]\bias[3]_i_5_0 ;
  wire \bias_reg[1] ;
  wire \bias_reg[1]_0 ;
  wire [0:0]\bias_reg[1]_1 ;
  wire [0:0]\bias_reg[1]_2 ;
  wire \bias_reg[2] ;
  wire \bias_reg[2]_0 ;
  wire \bias_reg[2]_1 ;
  wire \bias_reg[2]_2 ;
  wire \bias_reg[2]_3 ;
  wire [0:0]\bias_reg[2]_4 ;
  wire \bias_reg[2]_5 ;
  wire \bias_reg[3] ;
  wire \bias_reg[3]_0 ;
  wire \bias_reg[3]_1 ;
  wire \bias_reg[3]_2 ;
  wire \bias_reg[3]_3 ;
  wire \bias_reg[3]_4 ;
  wire \bias_reg[3]_5 ;
  wire \bias_reg[3]_6 ;
  wire \bias_reg[3]_7 ;
  wire \bias_reg[3]_8 ;
  wire \bias_reg[3]_9 ;
  wire [3:0]\bias_reg[4] ;
  wire [3:0]\bias_reg[4]_0 ;
  wire \bias_reg[4]_1 ;
  wire \bias_reg[4]_2 ;
  wire \bias_reg[4]_3 ;
  wire \bias_reg[4]_4 ;
  wire \bias_reg[4]_5 ;
  wire \bias_reg[4]_6 ;
  wire \bias_reg[4]_7 ;
  wire \bias_reg[4]_8 ;
  wire \bias_reg[4]_9 ;
  wire i_clk_hs;
  wire o_data;
  wire o_rst_reg;
  wire [4:0]o_tmds0_in;
  wire \o_tmds_reg[0] ;
  wire \o_tmds_reg[0]_0 ;
  wire \o_tmds_reg[0]_1 ;
  wire \o_tmds_reg[0]_2 ;
  wire \o_tmds_reg[2] ;
  wire \o_tmds_reg[6] ;
  wire \o_tmds_reg[6]_0 ;
  wire \o_tmds_reg[6]_1 ;
  wire \o_tmds_reg[7] ;
  wire \o_tmds_reg[7]_0 ;
  wire \o_tmds_reg[8] ;
  wire \o_tmds_reg[8]_0 ;
  wire \o_tmds_reg[9] ;
  wire \o_tmds_reg[9]_0 ;
  wire \o_tmds_reg[9]_1 ;
  wire rst_oserdes;
  wire [9:0]tmds_ch0;
  wire [9:0]tmds_ch1;
  wire [9:0]tmds_ch2;

  async_reset async_reset_instance
       (.CLK(CLK),
        .i_rst_oserdes(rst_oserdes),
        .\rst_shf_reg[0]_0 (\o_tmds_reg[0]_1 ));
  tmds_encoder_dvi encode_ch0
       (.CLK(CLK),
        .CO(CO),
        .D(D),
        .Q(\bias_reg[4]_0 ),
        .SR(SR),
        .\bias_reg[1]_0 (\bias_reg[1]_0 ),
        .\bias_reg[2]_0 (\bias_reg[2]_0 ),
        .\bias_reg[3]_0 (\bias_reg[3] ),
        .\bias_reg[3]_1 (\bias_reg[3]_9 ),
        .\bias_reg[4]_0 (\bias_reg[4]_1 ),
        .\bias_reg[4]_1 (\bias_reg[4]_2 ),
        .\bias_reg[4]_2 (\bias_reg[4]_6 ),
        .\bias_reg[4]_3 (\bias_reg[4]_7 ),
        .i_data({tmds_ch0[9:6],tmds_ch0[0],tmds_ch0[2]}),
        .o_tmds0_in(o_tmds0_in),
        .\o_tmds_reg[0]_0 (\o_tmds_reg[0]_1 ),
        .\o_tmds_reg[0]_1 (\bias_reg[2]_4 ),
        .\o_tmds_reg[7]_0 (\o_tmds_reg[6]_0 ),
        .\o_tmds_reg[9]_0 (\o_tmds_reg[9] ));
  tmds_encoder_dvi_0 encode_ch1
       (.CLK(CLK),
        .CO(CO),
        .Q(Q),
        .SR(SR),
        .\bias[3]_i_5_0 (\bias[3]_i_5 ),
        .\bias[3]_i_5_1 (\bias[3]_i_5_0 ),
        .\bias_reg[1]_0 (\bias_reg[1] ),
        .\bias_reg[1]_1 (\bias_reg[1]_1 ),
        .\bias_reg[2]_0 (\bias_reg[2]_1 ),
        .\bias_reg[2]_1 (\bias_reg[2]_5 ),
        .\bias_reg[2]_2 (\bias_reg[2]_4 ),
        .\bias_reg[3]_0 (\bias_reg[3]_5 ),
        .\bias_reg[3]_1 (\bias_reg[3]_6 ),
        .\bias_reg[3]_2 (\bias_reg[3]_7 ),
        .\bias_reg[3]_3 (\bias_reg[3]_8 ),
        .\bias_reg[4]_0 (\bias_reg[4]_2 ),
        .\bias_reg[4]_1 (\bias_reg[4]_3 ),
        .\bias_reg[4]_2 (\bias_reg[4]_5 ),
        .\bias_reg[4]_3 (\bias_reg[4]_9 ),
        .i_data({tmds_ch1[9:6],tmds_ch1[0],tmds_ch1[2]}),
        .\o_tmds_reg[6]_0 (\o_tmds_reg[6]_0 ),
        .\o_tmds_reg[6]_1 (\o_tmds_reg[6]_1 ),
        .\o_tmds_reg[7]_0 (\o_tmds_reg[7] ),
        .\o_tmds_reg[8]_0 (\o_tmds_reg[0]_1 ),
        .\o_tmds_reg[8]_1 (\o_tmds_reg[8] ),
        .\o_tmds_reg[9]_0 (\o_tmds_reg[9]_0 ));
  tmds_encoder_dvi_1 encode_ch2
       (.CLK(CLK),
        .CO(CO),
        .Q(\bias_reg[4] ),
        .SR(SR),
        .\bias_reg[1]_0 (\bias_reg[1]_2 ),
        .\bias_reg[2]_0 (\bias_reg[2] ),
        .\bias_reg[2]_1 (\bias_reg[2]_2 ),
        .\bias_reg[2]_2 (\bias_reg[2]_3 ),
        .\bias_reg[2]_3 (\bias_reg[2]_4 ),
        .\bias_reg[3]_0 (\bias_reg[3]_0 ),
        .\bias_reg[3]_1 (\o_tmds_reg[6]_0 ),
        .\bias_reg[3]_2 (\bias_reg[3]_1 ),
        .\bias_reg[3]_3 (\bias_reg[3]_2 ),
        .\bias_reg[3]_4 (\bias_reg[3]_3 ),
        .\bias_reg[3]_5 (\bias_reg[3]_4 ),
        .\bias_reg[4]_0 (\bias_reg[4]_2 ),
        .\bias_reg[4]_1 (\bias_reg[4]_3 ),
        .\bias_reg[4]_2 (\bias_reg[4]_4 ),
        .\bias_reg[4]_3 (\bias_reg[4]_8 ),
        .i_data({tmds_ch2[9:6],tmds_ch2[0],tmds_ch2[2]}),
        .\o_tmds_reg[0]_0 (\o_tmds_reg[0]_1 ),
        .\o_tmds_reg[0]_1 (\o_tmds_reg[0]_2 ),
        .\o_tmds_reg[2]_0 (\o_tmds_reg[2] ),
        .\o_tmds_reg[6]_0 (\o_tmds_reg[6] ),
        .\o_tmds_reg[7]_0 (\o_tmds_reg[7]_0 ),
        .\o_tmds_reg[8]_0 (\o_tmds_reg[8]_0 ),
        .\o_tmds_reg[9]_0 (\o_tmds_reg[9]_1 ));
  serializer_10to1 serialize_ch0
       (.CLK(CLK),
        .i_clk_hs(i_clk_hs),
        .i_data({tmds_ch0[9:6],tmds_ch0[0],tmds_ch0[2]}),
        .i_rst_oserdes(rst_oserdes),
        .o_data(o_data));
  serializer_10to1_2 serialize_ch1
       (.CLK(CLK),
        .i_clk_hs(i_clk_hs),
        .i_data({tmds_ch1[9:6],tmds_ch1[0],tmds_ch1[2]}),
        .i_rst_oserdes(rst_oserdes),
        .\o_tmds_reg[0] (\o_tmds_reg[0] ));
  serializer_10to1_3 serialize_ch2
       (.CLK(CLK),
        .i_clk_hs(i_clk_hs),
        .i_data({tmds_ch2[9:6],tmds_ch2[0],tmds_ch2[2]}),
        .i_rst_oserdes(rst_oserdes),
        .\o_tmds_reg[0] (\o_tmds_reg[0]_0 ));
  serializer_10to1_4 serialize_chc
       (.CLK(CLK),
        .i_clk_hs(i_clk_hs),
        .i_rst_oserdes(rst_oserdes),
        .o_rst_reg(o_rst_reg));
endmodule

module serializer_10to1
   (o_data,
    i_clk_hs,
    CLK,
    i_data,
    i_rst_oserdes);
  output o_data;
  input i_clk_hs;
  input CLK;
  input [5:0]i_data;
  input i_rst_oserdes;

  wire CLK;
  wire i_clk_hs;
  wire [5:0]i_data;
  wire i_rst_oserdes;
  wire o_data;
  wire shift1;
  wire shift2;
  wire NLW_master10_OFB_UNCONNECTED;
  wire NLW_master10_SHIFTOUT1_UNCONNECTED;
  wire NLW_master10_SHIFTOUT2_UNCONNECTED;
  wire NLW_master10_TBYTEOUT_UNCONNECTED;
  wire NLW_master10_TFB_UNCONNECTED;
  wire NLW_master10_TQ_UNCONNECTED;
  wire NLW_slave10_OFB_UNCONNECTED;
  wire NLW_slave10_OQ_UNCONNECTED;
  wire NLW_slave10_TBYTEOUT_UNCONNECTED;
  wire NLW_slave10_TFB_UNCONNECTED;
  wire NLW_slave10_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master10
       (.CLK(i_clk_hs),
        .CLKDIV(CLK),
        .D1(i_data[1]),
        .D2(i_data[1]),
        .D3(i_data[0]),
        .D4(i_data[1]),
        .D5(i_data[0]),
        .D6(i_data[1]),
        .D7(i_data[2]),
        .D8(i_data[3]),
        .OCE(1'b1),
        .OFB(NLW_master10_OFB_UNCONNECTED),
        .OQ(o_data),
        .RST(i_rst_oserdes),
        .SHIFTIN1(shift1),
        .SHIFTIN2(shift2),
        .SHIFTOUT1(NLW_master10_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master10_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master10_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master10_TFB_UNCONNECTED),
        .TQ(NLW_master10_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave10
       (.CLK(i_clk_hs),
        .CLKDIV(CLK),
        .D1(1'b0),
        .D2(1'b0),
        .D3(i_data[4]),
        .D4(i_data[5]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave10_OFB_UNCONNECTED),
        .OQ(NLW_slave10_OQ_UNCONNECTED),
        .RST(i_rst_oserdes),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(shift1),
        .SHIFTOUT2(shift2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave10_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave10_TFB_UNCONNECTED),
        .TQ(NLW_slave10_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serializer_10to1" *) 
module serializer_10to1_2
   (\o_tmds_reg[0] ,
    i_clk_hs,
    CLK,
    i_data,
    i_rst_oserdes);
  output \o_tmds_reg[0] ;
  input i_clk_hs;
  input CLK;
  input [5:0]i_data;
  input i_rst_oserdes;

  wire CLK;
  wire i_clk_hs;
  wire [5:0]i_data;
  wire i_rst_oserdes;
  wire \o_tmds_reg[0] ;
  wire shift1;
  wire shift2;
  wire NLW_master10_OFB_UNCONNECTED;
  wire NLW_master10_SHIFTOUT1_UNCONNECTED;
  wire NLW_master10_SHIFTOUT2_UNCONNECTED;
  wire NLW_master10_TBYTEOUT_UNCONNECTED;
  wire NLW_master10_TFB_UNCONNECTED;
  wire NLW_master10_TQ_UNCONNECTED;
  wire NLW_slave10_OFB_UNCONNECTED;
  wire NLW_slave10_OQ_UNCONNECTED;
  wire NLW_slave10_TBYTEOUT_UNCONNECTED;
  wire NLW_slave10_TFB_UNCONNECTED;
  wire NLW_slave10_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master10
       (.CLK(i_clk_hs),
        .CLKDIV(CLK),
        .D1(i_data[1]),
        .D2(i_data[1]),
        .D3(i_data[0]),
        .D4(i_data[1]),
        .D5(i_data[0]),
        .D6(i_data[1]),
        .D7(i_data[2]),
        .D8(i_data[3]),
        .OCE(1'b1),
        .OFB(NLW_master10_OFB_UNCONNECTED),
        .OQ(\o_tmds_reg[0] ),
        .RST(i_rst_oserdes),
        .SHIFTIN1(shift1),
        .SHIFTIN2(shift2),
        .SHIFTOUT1(NLW_master10_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master10_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master10_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master10_TFB_UNCONNECTED),
        .TQ(NLW_master10_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave10
       (.CLK(i_clk_hs),
        .CLKDIV(CLK),
        .D1(1'b0),
        .D2(1'b0),
        .D3(i_data[4]),
        .D4(i_data[5]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave10_OFB_UNCONNECTED),
        .OQ(NLW_slave10_OQ_UNCONNECTED),
        .RST(i_rst_oserdes),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(shift1),
        .SHIFTOUT2(shift2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave10_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave10_TFB_UNCONNECTED),
        .TQ(NLW_slave10_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serializer_10to1" *) 
module serializer_10to1_3
   (\o_tmds_reg[0] ,
    i_clk_hs,
    CLK,
    i_data,
    i_rst_oserdes);
  output \o_tmds_reg[0] ;
  input i_clk_hs;
  input CLK;
  input [5:0]i_data;
  input i_rst_oserdes;

  wire CLK;
  wire i_clk_hs;
  wire [5:0]i_data;
  wire i_rst_oserdes;
  wire \o_tmds_reg[0] ;
  wire shift1;
  wire shift2;
  wire NLW_master10_OFB_UNCONNECTED;
  wire NLW_master10_SHIFTOUT1_UNCONNECTED;
  wire NLW_master10_SHIFTOUT2_UNCONNECTED;
  wire NLW_master10_TBYTEOUT_UNCONNECTED;
  wire NLW_master10_TFB_UNCONNECTED;
  wire NLW_master10_TQ_UNCONNECTED;
  wire NLW_slave10_OFB_UNCONNECTED;
  wire NLW_slave10_OQ_UNCONNECTED;
  wire NLW_slave10_TBYTEOUT_UNCONNECTED;
  wire NLW_slave10_TFB_UNCONNECTED;
  wire NLW_slave10_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master10
       (.CLK(i_clk_hs),
        .CLKDIV(CLK),
        .D1(i_data[1]),
        .D2(i_data[1]),
        .D3(i_data[0]),
        .D4(i_data[1]),
        .D5(i_data[0]),
        .D6(i_data[1]),
        .D7(i_data[2]),
        .D8(i_data[3]),
        .OCE(1'b1),
        .OFB(NLW_master10_OFB_UNCONNECTED),
        .OQ(\o_tmds_reg[0] ),
        .RST(i_rst_oserdes),
        .SHIFTIN1(shift1),
        .SHIFTIN2(shift2),
        .SHIFTOUT1(NLW_master10_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master10_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master10_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master10_TFB_UNCONNECTED),
        .TQ(NLW_master10_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave10
       (.CLK(i_clk_hs),
        .CLKDIV(CLK),
        .D1(1'b0),
        .D2(1'b0),
        .D3(i_data[4]),
        .D4(i_data[5]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave10_OFB_UNCONNECTED),
        .OQ(NLW_slave10_OQ_UNCONNECTED),
        .RST(i_rst_oserdes),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(shift1),
        .SHIFTOUT2(shift2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave10_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave10_TFB_UNCONNECTED),
        .TQ(NLW_slave10_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serializer_10to1" *) 
module serializer_10to1_4
   (o_rst_reg,
    i_clk_hs,
    CLK,
    i_rst_oserdes);
  output o_rst_reg;
  input i_clk_hs;
  input CLK;
  input i_rst_oserdes;

  wire CLK;
  wire i_clk_hs;
  wire i_rst_oserdes;
  wire o_rst_reg;
  wire shift1;
  wire shift2;
  wire NLW_master10_OFB_UNCONNECTED;
  wire NLW_master10_SHIFTOUT1_UNCONNECTED;
  wire NLW_master10_SHIFTOUT2_UNCONNECTED;
  wire NLW_master10_TBYTEOUT_UNCONNECTED;
  wire NLW_master10_TFB_UNCONNECTED;
  wire NLW_master10_TQ_UNCONNECTED;
  wire NLW_slave10_OFB_UNCONNECTED;
  wire NLW_slave10_OQ_UNCONNECTED;
  wire NLW_slave10_TBYTEOUT_UNCONNECTED;
  wire NLW_slave10_TFB_UNCONNECTED;
  wire NLW_slave10_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master10
       (.CLK(i_clk_hs),
        .CLKDIV(CLK),
        .D1(1'b1),
        .D2(1'b1),
        .D3(1'b1),
        .D4(1'b1),
        .D5(1'b1),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_master10_OFB_UNCONNECTED),
        .OQ(o_rst_reg),
        .RST(i_rst_oserdes),
        .SHIFTIN1(shift1),
        .SHIFTIN2(shift2),
        .SHIFTOUT1(NLW_master10_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master10_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master10_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master10_TFB_UNCONNECTED),
        .TQ(NLW_master10_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave10
       (.CLK(i_clk_hs),
        .CLKDIV(CLK),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave10_OFB_UNCONNECTED),
        .OQ(NLW_slave10_OQ_UNCONNECTED),
        .RST(i_rst_oserdes),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(shift1),
        .SHIFTOUT2(shift2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave10_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave10_TFB_UNCONNECTED),
        .TQ(NLW_slave10_TQ_UNCONNECTED));
endmodule

module tmds_encoder_dvi
   (i_data,
    Q,
    \bias_reg[4]_0 ,
    \bias_reg[1]_0 ,
    \bias_reg[3]_0 ,
    \bias_reg[2]_0 ,
    \o_tmds_reg[0]_0 ,
    o_tmds0_in,
    CLK,
    \o_tmds_reg[9]_0 ,
    \bias_reg[4]_1 ,
    \bias_reg[4]_2 ,
    \o_tmds_reg[7]_0 ,
    \bias_reg[4]_3 ,
    \bias_reg[3]_1 ,
    \o_tmds_reg[0]_1 ,
    CO,
    SR,
    D);
  output [5:0]i_data;
  output [3:0]Q;
  output \bias_reg[4]_0 ;
  output \bias_reg[1]_0 ;
  output \bias_reg[3]_0 ;
  output \bias_reg[2]_0 ;
  input \o_tmds_reg[0]_0 ;
  input [4:0]o_tmds0_in;
  input CLK;
  input \o_tmds_reg[9]_0 ;
  input \bias_reg[4]_1 ;
  input \bias_reg[4]_2 ;
  input \o_tmds_reg[7]_0 ;
  input \bias_reg[4]_3 ;
  input \bias_reg[3]_1 ;
  input [0:0]\o_tmds_reg[0]_1 ;
  input [0:0]CO;
  input [0:0]SR;
  input [1:0]D;

  wire CLK;
  wire [0:0]CO;
  wire [1:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \bias[3]_i_1__1_n_0 ;
  wire \bias[3]_i_2__1_n_0 ;
  wire \bias[3]_i_3__0_n_0 ;
  wire \bias[3]_i_4__1_n_0 ;
  wire \bias[3]_i_5__1_n_0 ;
  wire \bias[3]_i_6__0_n_0 ;
  wire \bias[4]_i_2__0_n_0 ;
  wire \bias[4]_i_3__1_n_0 ;
  wire \bias[4]_i_6_n_0 ;
  wire \bias[4]_i_7_n_0 ;
  wire \bias_reg[1]_0 ;
  wire \bias_reg[2]_0 ;
  wire \bias_reg[3]_0 ;
  wire \bias_reg[3]_1 ;
  wire \bias_reg[4]_0 ;
  wire \bias_reg[4]_1 ;
  wire \bias_reg[4]_2 ;
  wire \bias_reg[4]_3 ;
  wire [5:0]i_data;
  wire [4:0]o_tmds0_in;
  wire \o_tmds_reg[0]_0 ;
  wire [0:0]\o_tmds_reg[0]_1 ;
  wire \o_tmds_reg[7]_0 ;
  wire \o_tmds_reg[9]_0 ;

  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\bias_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \bias[2]_i_5__1 
       (.I0(Q[0]),
        .I1(\bias_reg[4]_2 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(CO),
        .I5(\o_tmds_reg[0]_1 ),
        .O(\bias_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bias[3]_i_1__1 
       (.I0(\bias[3]_i_2__1_n_0 ),
        .I1(\bias[3]_i_3__0_n_0 ),
        .I2(\bias[3]_i_4__1_n_0 ),
        .I3(\bias[3]_i_5__1_n_0 ),
        .O(\bias[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h00050044000D004D)) 
    \bias[3]_i_2__1 
       (.I0(Q[3]),
        .I1(\o_tmds_reg[7]_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\bias_reg[4]_2 ),
        .O(\bias[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h00040004008CF08C)) 
    \bias[3]_i_3__0 
       (.I0(Q[0]),
        .I1(\bias[3]_i_6__0_n_0 ),
        .I2(\bias_reg[4]_1 ),
        .I3(\o_tmds_reg[7]_0 ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\bias[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h3000300022332220)) 
    \bias[3]_i_4__1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\bias_reg[4]_1 ),
        .I3(\bias_reg[4]_2 ),
        .I4(\o_tmds_reg[7]_0 ),
        .I5(Q[0]),
        .O(\bias[3]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'h8888F000)) 
    \bias[3]_i_5__1 
       (.I0(\bias_reg[3]_1 ),
        .I1(Q[0]),
        .I2(\bias_reg[4]_3 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\bias[3]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bias[3]_i_6__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\bias_reg[4]_2 ),
        .O(\bias[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEFEAEAE)) 
    \bias[4]_i_2__0 
       (.I0(\bias[4]_i_3__1_n_0 ),
        .I1(\bias_reg[4]_3 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\bias_reg[4]_2 ),
        .I5(Q[0]),
        .O(\bias[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEFEEEFEEEFEE)) 
    \bias[4]_i_3__1 
       (.I0(\bias[4]_i_6_n_0 ),
        .I1(\bias[4]_i_7_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\o_tmds_reg[7]_0 ),
        .I5(\bias_reg[4]_1 ),
        .O(\bias[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h000190910000F090)) 
    \bias[4]_i_6 
       (.I0(Q[0]),
        .I1(\bias_reg[4]_2 ),
        .I2(\bias_reg[4]_1 ),
        .I3(\o_tmds_reg[7]_0 ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\bias[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000F0077000F007F)) 
    \bias[4]_i_7 
       (.I0(\o_tmds_reg[0]_1 ),
        .I1(CO),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\bias_reg[4]_2 ),
        .O(\bias[4]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bias_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bias_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bias_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bias[3]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bias_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bias[4]_i_2__0_n_0 ),
        .Q(Q[3]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \o_tmds[6]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\bias_reg[4]_2 ),
        .I3(Q[0]),
        .O(\bias_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \o_tmds[7]_i_2 
       (.I0(Q[3]),
        .I1(\o_tmds_reg[7]_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\bias_reg[4]_2 ),
        .I5(Q[0]),
        .O(\bias_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_tmds_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(o_tmds0_in[0]),
        .Q(i_data[1]),
        .R(\o_tmds_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_tmds_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(o_tmds0_in[1]),
        .Q(i_data[0]),
        .S(\o_tmds_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_tmds_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(o_tmds0_in[2]),
        .Q(i_data[2]),
        .S(\o_tmds_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_tmds_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(o_tmds0_in[3]),
        .Q(i_data[3]),
        .R(\o_tmds_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_tmds_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(o_tmds0_in[4]),
        .Q(i_data[4]),
        .S(\o_tmds_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_tmds_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds_reg[9]_0 ),
        .Q(i_data[5]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tmds_encoder_dvi" *) 
module tmds_encoder_dvi_0
   (i_data,
    Q,
    \bias_reg[1]_0 ,
    \bias_reg[2]_0 ,
    \o_tmds_reg[8]_0 ,
    \o_tmds_reg[8]_1 ,
    CLK,
    \o_tmds_reg[7]_0 ,
    \o_tmds_reg[9]_0 ,
    \o_tmds_reg[6]_0 ,
    \o_tmds_reg[6]_1 ,
    \bias_reg[4]_0 ,
    \bias_reg[2]_1 ,
    \bias_reg[3]_0 ,
    \bias_reg[3]_1 ,
    \bias_reg[3]_2 ,
    \bias_reg[3]_3 ,
    \bias_reg[4]_1 ,
    \bias_reg[4]_2 ,
    \bias_reg[2]_2 ,
    CO,
    \bias_reg[4]_3 ,
    \bias[3]_i_5_0 ,
    \bias[3]_i_5_1 ,
    SR,
    \bias_reg[1]_1 );
  output [5:0]i_data;
  output [3:0]Q;
  output \bias_reg[1]_0 ;
  output \bias_reg[2]_0 ;
  input \o_tmds_reg[8]_0 ;
  input \o_tmds_reg[8]_1 ;
  input CLK;
  input \o_tmds_reg[7]_0 ;
  input \o_tmds_reg[9]_0 ;
  input \o_tmds_reg[6]_0 ;
  input \o_tmds_reg[6]_1 ;
  input \bias_reg[4]_0 ;
  input \bias_reg[2]_1 ;
  input \bias_reg[3]_0 ;
  input \bias_reg[3]_1 ;
  input \bias_reg[3]_2 ;
  input \bias_reg[3]_3 ;
  input \bias_reg[4]_1 ;
  input \bias_reg[4]_2 ;
  input [0:0]\bias_reg[2]_2 ;
  input [0:0]CO;
  input \bias_reg[4]_3 ;
  input [0:0]\bias[3]_i_5_0 ;
  input [0:0]\bias[3]_i_5_1 ;
  input [0:0]SR;
  input [0:0]\bias_reg[1]_1 ;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \bias[2]_i_1__0_n_0 ;
  wire \bias[2]_i_2__0_n_0 ;
  wire \bias[2]_i_3__1_n_0 ;
  wire \bias[2]_i_5__0_n_0 ;
  wire \bias[3]_i_1__0_n_0 ;
  wire \bias[3]_i_3__1_n_0 ;
  wire \bias[3]_i_4__0_n_0 ;
  wire [0:0]\bias[3]_i_5_0 ;
  wire [0:0]\bias[3]_i_5_1 ;
  wire \bias[3]_i_5_n_0 ;
  wire \bias[3]_i_6_n_0 ;
  wire \bias[3]_i_8__0_n_0 ;
  wire \bias[3]_i_9__0_n_0 ;
  wire \bias[4]_i_1__1_n_0 ;
  wire \bias[4]_i_3__0_n_0 ;
  wire \bias[4]_i_5__0_n_0 ;
  wire \bias_reg[1]_0 ;
  wire [0:0]\bias_reg[1]_1 ;
  wire \bias_reg[2]_0 ;
  wire \bias_reg[2]_1 ;
  wire [0:0]\bias_reg[2]_2 ;
  wire \bias_reg[3]_0 ;
  wire \bias_reg[3]_1 ;
  wire \bias_reg[3]_2 ;
  wire \bias_reg[3]_3 ;
  wire \bias_reg[4]_0 ;
  wire \bias_reg[4]_1 ;
  wire \bias_reg[4]_2 ;
  wire \bias_reg[4]_3 ;
  wire [5:0]i_data;
  wire \o_tmds[0]_i_1__0_n_0 ;
  wire \o_tmds[2]_i_1__0_n_0 ;
  wire \o_tmds[6]_i_1__0_n_0 ;
  wire \o_tmds_reg[6]_0 ;
  wire \o_tmds_reg[6]_1 ;
  wire \o_tmds_reg[7]_0 ;
  wire \o_tmds_reg[8]_0 ;
  wire \o_tmds_reg[8]_1 ;
  wire \o_tmds_reg[9]_0 ;

  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\bias_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABAFFFF)) 
    \bias[2]_i_1__0 
       (.I0(\bias[2]_i_2__0_n_0 ),
        .I1(\bias[2]_i_3__1_n_0 ),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(\bias_reg[1]_0 ),
        .I5(\bias[2]_i_5__0_n_0 ),
        .O(\bias[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h840A8446A6A4A664)) 
    \bias[2]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\bias_reg[4]_0 ),
        .I3(\bias_reg[2]_1 ),
        .I4(\o_tmds_reg[6]_0 ),
        .I5(Q[3]),
        .O(\bias[2]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bias[2]_i_3__1 
       (.I0(Q[0]),
        .I1(\bias_reg[2]_1 ),
        .O(\bias[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \bias[2]_i_4 
       (.I0(Q[0]),
        .I1(\bias_reg[2]_1 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(CO),
        .I5(\bias_reg[2]_2 ),
        .O(\bias_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h000044440000B003)) 
    \bias[2]_i_5__0 
       (.I0(Q[0]),
        .I1(\o_tmds_reg[6]_0 ),
        .I2(Q[3]),
        .I3(\bias_reg[4]_0 ),
        .I4(\bias_reg[2]_1 ),
        .I5(Q[1]),
        .O(\bias[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bias[3]_i_1__0 
       (.I0(\bias_reg[3]_0 ),
        .I1(\bias[3]_i_3__1_n_0 ),
        .I2(\bias[3]_i_4__0_n_0 ),
        .I3(\bias[3]_i_5_n_0 ),
        .I4(\bias[3]_i_6_n_0 ),
        .I5(\bias_reg[3]_1 ),
        .O(\bias[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \bias[3]_i_3__1 
       (.I0(\bias_reg[4]_1 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(\bias_reg[2]_1 ),
        .O(\bias[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h0E00FFFF0E000E00)) 
    \bias[3]_i_4__0 
       (.I0(\bias_reg[4]_0 ),
        .I1(\bias_reg[2]_1 ),
        .I2(Q[0]),
        .I3(\bias[3]_i_8__0_n_0 ),
        .I4(Q[3]),
        .I5(\bias[4]_i_3__0_n_0 ),
        .O(\bias[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCDCCCCCCCFCC)) 
    \bias[3]_i_5 
       (.I0(Q[0]),
        .I1(\bias[3]_i_9__0_n_0 ),
        .I2(\bias_reg[2]_1 ),
        .I3(\o_tmds_reg[6]_0 ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\bias[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAA00C000)) 
    \bias[3]_i_6 
       (.I0(\bias_reg[3]_2 ),
        .I1(\bias_reg[3]_3 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\bias[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[3]_i_8__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\bias[3]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000800080000000)) 
    \bias[3]_i_9__0 
       (.I0(\bias[3]_i_5_0 ),
        .I1(\bias[3]_i_5_1 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\bias[3]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF08)) 
    \bias[4]_i_1__1 
       (.I0(\bias_reg[4]_1 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\bias[4]_i_3__0_n_0 ),
        .I4(\bias_reg[4]_2 ),
        .I5(\bias[4]_i_5__0_n_0 ),
        .O(\bias[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h000F0077000F007F)) 
    \bias[4]_i_3__0 
       (.I0(\bias_reg[2]_2 ),
        .I1(CO),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\bias_reg[2]_1 ),
        .O(\bias[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000B08)) 
    \bias[4]_i_5__0 
       (.I0(Q[1]),
        .I1(\bias_reg[2]_1 ),
        .I2(Q[0]),
        .I3(\bias_reg[4]_0 ),
        .I4(Q[2]),
        .I5(\bias_reg[4]_3 ),
        .O(\bias[4]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bias_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bias_reg[1]_1 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bias_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bias[2]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bias_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bias[3]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bias_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bias[4]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FFFF0001)) 
    \o_tmds[0]_i_1__0 
       (.I0(\bias[2]_i_3__1_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\o_tmds_reg[6]_0 ),
        .I4(Q[3]),
        .I5(\o_tmds_reg[6]_1 ),
        .O(\o_tmds[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0001)) 
    \o_tmds[2]_i_1__0 
       (.I0(\bias[2]_i_3__1_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\o_tmds_reg[6]_0 ),
        .I4(Q[3]),
        .I5(\o_tmds_reg[6]_1 ),
        .O(\o_tmds[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAAAAAFFFE)) 
    \o_tmds[6]_i_1__0 
       (.I0(\o_tmds_reg[6]_1 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\bias[2]_i_3__1_n_0 ),
        .I4(\o_tmds_reg[6]_0 ),
        .I5(Q[3]),
        .O(\o_tmds[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_tmds_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds[0]_i_1__0_n_0 ),
        .Q(i_data[1]),
        .R(\o_tmds_reg[8]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_tmds_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds[2]_i_1__0_n_0 ),
        .Q(i_data[0]),
        .S(\o_tmds_reg[8]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_tmds_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds[6]_i_1__0_n_0 ),
        .Q(i_data[2]),
        .S(\o_tmds_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_tmds_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds_reg[7]_0 ),
        .Q(i_data[3]),
        .R(\o_tmds_reg[8]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_tmds_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds_reg[8]_1 ),
        .Q(i_data[4]),
        .S(\o_tmds_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_tmds_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds_reg[9]_0 ),
        .Q(i_data[5]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tmds_encoder_dvi" *) 
module tmds_encoder_dvi_1
   (i_data,
    \bias_reg[2]_0 ,
    Q,
    \bias_reg[2]_1 ,
    \o_tmds_reg[0]_0 ,
    \o_tmds_reg[8]_0 ,
    CLK,
    \o_tmds_reg[7]_0 ,
    \o_tmds_reg[6]_0 ,
    \o_tmds_reg[2]_0 ,
    \o_tmds_reg[0]_1 ,
    \o_tmds_reg[9]_0 ,
    \bias_reg[3]_0 ,
    \bias_reg[2]_2 ,
    \bias_reg[4]_0 ,
    \bias_reg[3]_1 ,
    \bias_reg[3]_2 ,
    \bias_reg[3]_3 ,
    \bias_reg[3]_4 ,
    \bias_reg[3]_5 ,
    \bias_reg[4]_1 ,
    \bias_reg[4]_2 ,
    \bias_reg[2]_3 ,
    CO,
    \bias_reg[4]_3 ,
    SR,
    \bias_reg[1]_0 );
  output [5:0]i_data;
  output \bias_reg[2]_0 ;
  output [3:0]Q;
  output \bias_reg[2]_1 ;
  input \o_tmds_reg[0]_0 ;
  input \o_tmds_reg[8]_0 ;
  input CLK;
  input \o_tmds_reg[7]_0 ;
  input \o_tmds_reg[6]_0 ;
  input \o_tmds_reg[2]_0 ;
  input \o_tmds_reg[0]_1 ;
  input \o_tmds_reg[9]_0 ;
  input \bias_reg[3]_0 ;
  input \bias_reg[2]_2 ;
  input \bias_reg[4]_0 ;
  input \bias_reg[3]_1 ;
  input \bias_reg[3]_2 ;
  input \bias_reg[3]_3 ;
  input \bias_reg[3]_4 ;
  input \bias_reg[3]_5 ;
  input \bias_reg[4]_1 ;
  input \bias_reg[4]_2 ;
  input [0:0]\bias_reg[2]_3 ;
  input [0:0]CO;
  input \bias_reg[4]_3 ;
  input [0:0]SR;
  input [0:0]\bias_reg[1]_0 ;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \bias[2]_i_1_n_0 ;
  wire \bias[2]_i_2_n_0 ;
  wire \bias[2]_i_4__1_n_0 ;
  wire \bias[3]_i_12_n_0 ;
  wire \bias[3]_i_1_n_0 ;
  wire \bias[3]_i_2_n_0 ;
  wire \bias[3]_i_3_n_0 ;
  wire \bias[3]_i_7_n_0 ;
  wire \bias[3]_i_8_n_0 ;
  wire \bias[4]_i_1__0_n_0 ;
  wire \bias[4]_i_2_n_0 ;
  wire \bias[4]_i_4__0_n_0 ;
  wire [0:0]\bias_reg[1]_0 ;
  wire \bias_reg[2]_0 ;
  wire \bias_reg[2]_1 ;
  wire \bias_reg[2]_2 ;
  wire [0:0]\bias_reg[2]_3 ;
  wire \bias_reg[3]_0 ;
  wire \bias_reg[3]_1 ;
  wire \bias_reg[3]_2 ;
  wire \bias_reg[3]_3 ;
  wire \bias_reg[3]_4 ;
  wire \bias_reg[3]_5 ;
  wire \bias_reg[4]_0 ;
  wire \bias_reg[4]_1 ;
  wire \bias_reg[4]_2 ;
  wire \bias_reg[4]_3 ;
  wire [5:0]i_data;
  wire \o_tmds_reg[0]_0 ;
  wire \o_tmds_reg[0]_1 ;
  wire \o_tmds_reg[2]_0 ;
  wire \o_tmds_reg[6]_0 ;
  wire \o_tmds_reg[7]_0 ;
  wire \o_tmds_reg[8]_0 ;
  wire \o_tmds_reg[9]_0 ;

  LUT2 #(
    .INIT(4'hE)) 
    \bias[1]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\bias_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFAABBAA)) 
    \bias[2]_i_1 
       (.I0(\bias[2]_i_2_n_0 ),
        .I1(\bias_reg[2]_0 ),
        .I2(Q[0]),
        .I3(\bias_reg[3]_0 ),
        .I4(\bias[2]_i_4__1_n_0 ),
        .I5(\bias_reg[2]_2 ),
        .O(\bias[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h84842244A6A6A664)) 
    \bias[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\bias_reg[4]_0 ),
        .I3(\bias_reg[3]_1 ),
        .I4(\bias_reg[3]_0 ),
        .I5(Q[3]),
        .O(\bias[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \bias[2]_i_3__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(CO),
        .I4(\bias_reg[2]_3 ),
        .O(\bias_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bias[2]_i_4__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .O(\bias[2]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    \bias[3]_i_1 
       (.I0(\bias[3]_i_2_n_0 ),
        .I1(\bias[3]_i_3_n_0 ),
        .I2(\bias_reg[3]_2 ),
        .I3(\bias_reg[3]_3 ),
        .I4(\bias_reg[3]_0 ),
        .I5(\bias[3]_i_7_n_0 ),
        .O(\bias[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bias[3]_i_12 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\bias[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBEAEBAAABAAABAAA)) 
    \bias[3]_i_2 
       (.I0(\bias[3]_i_8_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\bias_reg[3]_4 ),
        .I4(Q[3]),
        .I5(\bias_reg[3]_5 ),
        .O(\bias[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00050044000500CD)) 
    \bias[3]_i_3 
       (.I0(Q[3]),
        .I1(\bias_reg[3]_1 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\bias_reg[3]_0 ),
        .O(\bias[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \bias[3]_i_7 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(\bias_reg[3]_1 ),
        .I5(\bias_reg[4]_0 ),
        .O(\bias[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0010001300000000)) 
    \bias[3]_i_8 
       (.I0(Q[3]),
        .I1(\bias_reg[3]_0 ),
        .I2(Q[0]),
        .I3(\bias_reg[3]_1 ),
        .I4(\bias_reg[4]_0 ),
        .I5(\bias[3]_i_12_n_0 ),
        .O(\bias[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF08)) 
    \bias[4]_i_1__0 
       (.I0(\bias_reg[4]_1 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\bias[4]_i_2_n_0 ),
        .I4(\bias_reg[4]_2 ),
        .I5(\bias[4]_i_4__0_n_0 ),
        .O(\bias[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000F0077000F007F)) 
    \bias[4]_i_2 
       (.I0(\bias_reg[2]_3 ),
        .I1(CO),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\bias_reg[3]_0 ),
        .O(\bias[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000B08)) 
    \bias[4]_i_4__0 
       (.I0(Q[1]),
        .I1(\bias_reg[3]_0 ),
        .I2(Q[0]),
        .I3(\bias_reg[4]_0 ),
        .I4(Q[2]),
        .I5(\bias_reg[4]_3 ),
        .O(\bias[4]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bias_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bias_reg[1]_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bias_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bias[2]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bias_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bias[3]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bias_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bias[4]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_tmds_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds_reg[0]_1 ),
        .Q(i_data[1]),
        .R(\o_tmds_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_tmds_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds_reg[2]_0 ),
        .Q(i_data[0]),
        .S(\o_tmds_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_tmds_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds_reg[6]_0 ),
        .Q(i_data[2]),
        .S(\o_tmds_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_tmds_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds_reg[7]_0 ),
        .Q(i_data[3]),
        .R(\o_tmds_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_tmds_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds_reg[8]_0 ),
        .Q(i_data[4]),
        .S(\o_tmds_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_tmds_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o_tmds_reg[9]_0 ),
        .Q(i_data[5]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "45f86b69" *) 
(* NotValidForBitStream *)
module top
   (CLK,
    RST_BTN,
    hdmi_tx_cec,
    hdmi_tx_hpd,
    hdmi_tx_rscl,
    hdmi_tx_rsda,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_n,
    hdmi_tx_p);
  input CLK;
  input RST_BTN;
  inout hdmi_tx_cec;
  input hdmi_tx_hpd;
  inout hdmi_tx_rscl;
  inout hdmi_tx_rsda;
  output hdmi_tx_clk_n;
  output hdmi_tx_clk_p;
  output [2:0]hdmi_tx_n;
  output [2:0]hdmi_tx_p;

  (* IBUF_LOW_PWR *) wire CLK;
  wire RST_BTN;
  wire RST_BTN_IBUF;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_n;
  wire [2:0]hdmi_tx_p;
  wire hdmi_tx_rscl;
  wire int_clk;
  wire locked;

initial begin
 $sdf_annotate("test_time_impl.sdf",,,,"tool_control");
end
  IBUF RST_BTN_IBUF_inst
       (.I(RST_BTN),
        .O(RST_BTN_IBUF));
  (* IMPORTED_FROM = "d:/User/FPGA Projects/hdmi_test_v2/hdmi_test_v2.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 clk_wiz_0
       (.clk_in1(CLK),
        .clk_out1(int_clk),
        .locked(locked),
        .reset(RST_BTN_IBUF));
  display_demo_dvi display_demo_dvi
       (.RST_BTN_IBUF(RST_BTN_IBUF),
        .hdmi_tx_clk_n(hdmi_tx_clk_n),
        .hdmi_tx_clk_p(hdmi_tx_clk_p),
        .hdmi_tx_n(hdmi_tx_n),
        .hdmi_tx_p(hdmi_tx_p),
        .i_clk(int_clk),
        .locked(locked));
  OBUF hdmi_tx_rscl_OBUF_inst
       (.I(1'b1),
        .O(hdmi_tx_rscl));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
