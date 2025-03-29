// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Aug 19 16:14:11 2022
// Host        : DESKTOP-SDG9QHK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [4:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "5" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "29" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "28" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(almost_full),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[4:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 97168)
`pragma protect data_block
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
`pragma protect end_protected
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
