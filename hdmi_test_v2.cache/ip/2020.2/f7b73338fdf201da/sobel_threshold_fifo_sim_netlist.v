// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Sep  3 16:48:18 2022
// Host        : DESKTOP-SDG9QHK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sobel_threshold_fifo_sim_netlist.v
// Design      : sobel_threshold_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sobel_threshold_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

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
  wire NLW_U0_almost_full_UNCONNECTED;
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
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "4" *) 
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
  (* C_HAS_ALMOST_FULL = "0" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
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
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
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
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 99376)
`pragma protect data_block
Pnn/0+MAeDCriOx4cS/vIV/WaLIMu49BBFhqkhwASwTRQ69+pu+bKQyNAYuxXbqXBIwNx2fA9Sfq
l+Aqza8HuflEqhE91qzl7Phy+dSWOdKaR5gYMuDbcGeJastfGQSbz9Y7HO0eptwXBN79cucmBSyW
8QJYxKR3jXCHRTBzx/PkY7IWtuBgUz8SD8BVN7S2N2EqA376ZaeRrcKOch38JCFutttR4pmX4m7P
EkY7qZju0UJPnosHhF9xl4e24Am8QO++Y6MnKJ5NBJhBf4i5hPNSRnXcO46tnJ24fU85G8iAkKdJ
V7QWsseGbq3Hvl4zSROCpFUgTMqYXYMc0Vt86rykvR6gkVtrA0B/xe1tPYwnbHOYx9h9m4Zdq0KP
ILpVmlAjnmDMFDdj2fPNGsoxdVeEEiknCbdcKPMb6gxoJkVX1nQmnr8w6n+d75tJPvh+WY9DMZ+Y
ROmm/NudIn40VCFVfi6pELmIET4R2SsecSyUop5lM25CHIzIXInB8RQ8/nd93vDK49KGA6hENFS/
aRwbrLHIw1Mb5OaR6I3PmYfbDH2ls4ns7Kk9UaBFF+Cvn1jAJuXno2oe/UuMDiui4E6d8nWkrXuT
olfY9Uw80QMCgmkgGwRM6/S3qKaMilPLO5dXaR3m6V2tOXDQFR3CsEl0RTNfXUsatzSugfE67iXP
3LcBzyuyDwMJ9oWWZocig1W2x5YTNBa1MqDgQox0Ar01/Te4vn9n+4YLHFGDA6GLmor288u2IZW3
SQA2EuM1Y8pmnhh/rjdLwdgZ9fPWPrBSfKNEZHFwaTakUSQQvBNj7HbmPualpbHZIjavgEtSAZeo
wlbM7iNY5pOpfJBRFHKh5oUO2S46ILMSB+IliBZZfPKdAb6INS+uLfP3GoAb5ulAZ1BcTOEfpHCo
8T0VQJWE15c2JtSFMchFeg8ijhEoOPaQ5/xwLdJJh4knKcNfP0eqCmC8o7OCrLGhfDdfDYMG6dfq
lRk/F76CKrGdTFgVM1q/+XIVHtdiVu9cNhealxA/DR/vIIC9BStqPGN5TLW6sz+0ctNvSzUTsVC5
yLKRyc7j80NW/AYGjk8rh2iOr/2uNN9UkPu6YCxKrKJoypj0JyKC/IDoLwwyqKxaVEtlajMlnmg0
E80WZeEdutjW5PtGKNF9X1oFTMYGEzlUEZ9yGEwhcBUqdTUY3Q31a82h6G0T5CPZDTJyf/4lprqy
kq0F2Odh/yLAgkZ6U4UAzuuSBJCdfIXjQG+snbBMYHC99x/kexg6xjEvICqHoSxD+ziyJoswYuEl
KShNj1YW3ir4wiT0ZKgsaNAaqR1p3XCyM/u5hpr+uEoDsF7xhZUlqTV9GwIxtebKibOsmA91vjdb
dbpd1UHuZYHCF0TJIzM/9aHMuktXjMdkfRA6j/Brgc8RupB/hOiIh2YdbMaKSJJcrZHzM89TXoKS
lZ+vKJHQZL/UZkx4qZDgOhM+/vVvaLAQ4T6GgYYDeBbt4wkWFcKaqNb6CCPjHpBIUKJMxLAQWaRX
wnWEBeJ90kBsLA2MsYvNxpNHVQitoe2OsH1SsrBtbZFbam63TiDfulWRbHzELP3pVrKnWq8iD9oE
e1b1wnfChtqOoECSI0CkHOa1g4lJauzJ5FVqUHWzF8RN4CjAbPZK4TgpyDcK95p/pG7HV5Wnhgb0
9yOUdexoh5GqUZ4cFdi4YZ3NUiC0BwvFslPlOAO43M0mQeeFi4l7qkPtpqrvA63YL+KPa2WJFmHL
fNUjbYODsy5tDCzyjFzok8R0kuAo2EVrkX9e+GTXyjKEkNYjht3iwKiID+ge6c8JBw1hjryuGBtA
NY9vyTKkaH+pLAenoq8QWtCKFiSTVV6W543CjPCMPCi8KidfKZLsC389FM460UmQQ5JDQKFJp8eq
EjQv/+RK6RJKHsXM2EoOQzdlz8KCzq50CDsIfie6npPfF9xnW/pPf1WVvyVHQ+sg3q41baowOz/n
Rb5hnUDGHn0AzqdceNASCzt6Xwv0hAx+SLJNWN6RkHytiNNLWGfnVO91eXHl2rDo12QhxDwU1ffO
hdxc+CvAin3UCFYZEVzUrzjBvqb+NcBnzRTm34iQLrPY+/q6Ae+UQ3turWv3wQFvP6kaQwevNvmW
J5wAlfWj/35W+BSBWJ7Y05OEHOv6Y2fPU67dzXrgbnpHMEnEnHLrLQRrqs0soyWs5wOCSVL6duXz
SsT00lbwgdlrXFRwbPPLj6huyMs1cwAiRHGybUGzdKS0AFBJe5C9FbMX6rUjxCuQF3mRodrE53B2
/X/LHgs/JdPLJYij+Rnkd1rHC1vp7cQgJC1GsDuLDlIuB39WOLAk+fJp/Te97tmAmwL72aUXZ72Q
rZEronPAHlHJaYGlgQEzJ9L2ZSB4kixJGNllug4lqN57SBx7vFk3CTOj9fwR3egLpweENJ+FN/UN
BaesXAAIUjgaVU1p9F2giP+21rv4VH6ddkNhtUMDh1CuXoVBExHOxAWknLxDNzQM55OVIFxInC4h
Bico85QxpPqarkQMKdurzhafl+A7Lny8YKf8vEWhItGahG0KburbG77FPdPYaXNDCDXHYcQHQ32t
2B6WQR89iHAZhg+ahcR77Df6xWpzkpwPtsOPFITOol9seld4BvJYRuqEs3SECgHJSTs9mrMy3xNB
mmDzACukChn2f9uZTBQeIISGUq0d9fYqQOU0z5E6CCN2/wFFlDyquNHR5BMODAnbpfqcCIBrjJXG
qTmg5CfzYMKFGO3KDtmKckyUBMpRSh6t0zPWw08ojB0MiK1jvnTpbdbcl4VCQifNcusAJeoIFSUl
M1vKrFy6Kc0n7uMaAjNf3OveYSrvR8sWSwS7Bhba+rZyjElx7rlqFzfFSJ5Oyo9N/XZKjkc96zdU
yz/Ki0JL0WzaDEJtqszSER3aYD8Q8v807Sn++MVXX8gxVEPVJVuBIkIfk1TnNyrgUWM7d2q6N4fM
/8I8qM/TC2wil+vmY3/d+9+H5qKv2WMdzpyXRvQ58otTYKgqrepGrQoT0dJ6ORkqewfzTpV8AeZj
EsqeQHNN2of3A76xHKTfgoW8gPf36AG2k4BW7jgMxPIjVqeYiUPc99O8Lu25SvIACd4VdDAPnCwk
THkPZcK34PJo7zAskpss7c/Nd+XBU0uANuwYOiuN2LZwWHkKaPjgAaHaoVDaJPhGIAbf/vCYQCeo
DJXQK9IPTcoaTa9DSXJQ3aRPGU7HpOHC1aBVpp8PUdw+2ImJFQQZlyM+WDO1d7uTcR/TS4kC0ApJ
Zsltx12cssVWDTPQ6icuLhON5LUPs1FhVYzGy4DxwbRm7JD8+p9C8qwnjOotXFdtfiLBCogcUp1b
JrH4s69C6n9yLbJj1SIdlQ8S/6bVRBVNGsMpljGPT4+rr8ayPShjbAoYmhA7pde0quaZjGJkoPFv
Vo5sgtqP7dmlO+BLmChTDYncOfQhzjyS1QBwDPJkfY6snZ+BPqvnRuFbhYZiKmByCC2P4LBgyuT1
5v7NoNLEU/d7Inek5KbCDi7f2DasGZJgvKgV//Km6ZbFbrQ+vCJfEMBV2QUaMxr4ZWl0sxbmzxTW
wr2jbbEYqGirl22J+FoTokOxIDZxkhdR6Mp7ajH0x5nubn8brBDZ4U9CIMwMf7KcVpCDOdsPDIWB
CNrbGAnUipCvYAoADDOhomCchJgZxwG/cpxKrQMOfBYUy5dClIH+at5sx9aE7RoJqNjrWZ1+JtrS
BzvZanfNPznUOTtbml0kA0KcTQ8A7ophI40wtK0P5P3ITFcVczzYIhJ3kbuJBS95+IcuxWzZoFxm
EirrozXnohJCymIhbTbXQFIK4kFWbZdhdmwk7xFW5VZ0Br2RU0TXjIcspgWVzxstBsrFUHn5MXoB
pzwOpQTPlQ/1lfJlA8nUx+aTHoCZ/idtamNQczTAVyFyTmxVMFLE27H1uQfz+EdYQPQ+PLsp0aPm
XyH44iwXSCHX9rslYxXwg5vzvPl9YAe2X0Ozu9P8jFUcZtB8gsAlWaYiPpWNuFWrEkEDf+zwREyY
XWX+KCyrWnjq8yjTiPO4M4s/lLdZ6Sxu3Y59c9LGKYlmJmvoZlnk5rHIw3locpKfdAMo7yRCindC
ON/7/r1p++ud0mGwQycOI7wztI8pktvv1txmG7EqysfaI72VtnctSdmhA6cFrzWX9Bt8/hkV+W4/
PHBFnxEscC15QHLZcUT29LIU+6pnqUTfyK/sS57GCLbdJkG1FuluLbxtAzCBYm7tzI5Cgu8EUbst
N6SfiMtdtLOEH511a28e9rnasRKDCHtlGcSrgHTH4OPUZatO+0oqE8RTGvp/pfX1VjUS2QDnC79t
hWTXg11tXe2gWgkY82ffyzdqTxx4ThjMBjKG8CT+8e8NIP95xtM1wbc9dAPRtT74Y/NxOiVrSJtu
s+yelw7ve0F/o/mSq2bDTmJa1ltXBjSILdG93mF/Dm0ZyntQ/ATiV93mMJCwAThr/+3JJTKyK6lt
97E4JFUR0jUmLn7pTn4910cmix4WbrZh8PaSz9XHypEw8haFXxyEG51vRL0qoOlybSlcUeoyqa5l
gOspq3l/ChRTJB9WJhflphF/hdYNaT3fZRaqLGWynzD8g+e/qz8Jjph7WSudZU6PWRrK5qtg4fL8
yeVHlUPVbqH0Zeea8JzG2kPxr5iTd4DWa4j+2aBajxxLusSQZzk85NUzlNPBwJj5/NV41+j215bT
T3QI5MtmlvO2VP49BNrb66WWm3c0bU43pxaneFdnOJo2fawQJsSg6PcoecumcGRtZ32usgPYMzvp
Zvr7J8g38ztFNY/pebE/l6+FrQMJmmPha3INA5eYUQAXK54ReutzdF6IIJjTNOsmNoPeBdIYM1OG
oDWsksXNuq3022FAZLlwf+re8h2tFkRC4BHNJadYJlmJ2qwLVOp7YwWfuHjwgqZ7ZqOvoVU2L77L
JqeXeQPU1VZrSLlnZMCgUt1BrNlsW0ztNMtdXfmhJ20gpp2Jd2yeItxRb04sYQclbHjOgMuK5qUz
placJY6yJiCIRRIsJcuIqu6cQGNW6Lp0rw4mWXGf+mo23BUd3RKRrwsT19DDuwkA/X/wg/77VipZ
y00uo2wLdfbcWvUpFiSbERGjhPQpbKDDCTG01lFqmDfWOrN6hINh08jQJVCGjZTdb6ONNthXg8EC
COKlI3lFlfyZcF1oLLAmr2sZmmzjhSjodsTpoPLny9T1xFfkT1LoW79fBWTui39ldBrXvwLOJI7U
MNk+rW/DJxxKVBOmB7NukR2KWPlIhnuQ2SwfOPs5eOAsd1XRnFX6GLKjpC1kI1NjnDHdNQLAwRTW
qbKIaObXAl36yrs0A/gnHQMC6bGetMgwJo2uHnWKvYpbbFiqrXUYpENO7T8rHFfbC1CfdDawamDH
QkeJ6upF9xdA64SUYgvKrw/PsfCFoQldvC1OoT4SeqhD0EIJ0GU1dN6Rx6B4Y1LwNemy6xAGBwXG
ZmibzISpSuVt+WuByWCXaefiR2fniCXBXoLjsIq2ZCKjc6RwLW7ozkBb1zDd2nwDuAiLxrjJG/pU
8Lv6abHvlG+gIffghKVhBx01emSqtWBL8GlFS0pe+VlxaMMwRVo0Gu7wzXQIea4T4DNTZIpsI2kh
2uiirjcY4bIWye76A+7iibV/fQ/0b0+qoKXucbVhFEjcWdz4VZIav5N4RSVj3jWRDfV6JfjzY+6l
UtLLGOhpJwQh35svTlsmWXnECnExvpaIOlL+JXHbOb3VDtKeBKzLWofkAN7M3U9FXdOAfkNWyjS0
LaZv4brE7ygvh7UO7sCmoroOurfdMm++GJgoW96rScQpZ7TO4cUHcNE3DPLkXpfg+3MHq3z+qoSQ
zO1jXds1LpfgXgE3QsRHU9SA9x4B5lYgtw0r9Y767ztvCr5Si3pYZnBBL7Nd5kQsxOyZaeuwPiRN
gXjRtu6jSAYHAiFu2vPX12ghRomhtPQVFXzrc322BWYGXIJ2oir4d8K71r1L8uOtR5dRRX0OuboP
P+hRJv81aACBJDABffBAKcHXUgIj6kai+MlKiObRuKu2kn2+LIOjfXgs2rqq6gatUfsABURWnUbg
bpOZnOSymtJHDsKI5WxNbnhnfvH2uim06W9eBri/O5JLxMCJ8VdEQwV9NCHyVH0MqEqV2a9bssH3
n1ZeI7tSxTvQkFuxeorUytpocDg799LZFkF80j6qOZiIrC6IMDsAjlRMFC+0tx19iYrAQovCMx4f
bKef20piHGYub4mXCr+ndGlUArG6gXsT5fEw4ertKLNwhimxzeZY5QW6pQNQZ6UkkNf4YnzSyUbG
MVq+UP2HIaCb6ERA7VeD2gHQQQm+ob5/2NhGjuwFP+Vqs+YoclKNBrtH3l8F/PsusHSvhtMa4+DJ
SHYU6tqXfF2f5l7w61y6+F49qA6Xm1JDnXBznzEjXpMeBtPDMj7cjOE9WYVECQGNAWTn7oM4A+D0
7Ba/ow9Q9cgJ/Lwkw8/NbhPP2E/gZj+Q4zfT/OMeVQ8Cbv4gGGtBiuxzt/UplqsOkKUXQ0IxZvln
RQyJUq9cgunNLIsuSPkZilzZRsVZUFPNSH8ajUvhs5J4vEhlK5XYRGCcAEXN3Hu+oa2Q5duZCUH0
G1NXuPdOwH6VuOa55rIL3TV5VI0EZGiMdNabJ2twq2dtzEa9UqZmBXeCLOeerq3ZbKIkkv62tsNf
DxWA59tkGk0Q8mwTxdxEaK1k3Ac8VjZ6tLRSkAN2IrtU9ywvleyY9aiEmJsg81dKbjWb/KGIm/0d
2pyd47aWfsbPLLJUpAdNbFNPcH+XdbTOnqykUV168YKuEox5Ak1kQr6t2jf28vv45vQDHkwa910p
uysIRfeJ3FXDCQTI751AfXYgMFmtFXaAtUNrI9Cy87FdlmhTET6oINjx6m+NDRJa9U67KSOoVhWY
6oNiHb9CF0ec3MJI/mGpQWWdXTzTG/NJpxPZkVw5Hrn/NL5/37ZGvX7Txz6dMoF1tov53Aitz7DI
3VUU/uM+GF6N0MMtLPVsMyubnoM9Cfgc1+aFZZXoh71WSmkush+ACZwo6DrQm5pYrcAqUK2MEJNt
8M48jke5+wuIM/krbeBR6bFYrMXZegUgk3I3w2qttPbT3QPdNXkxWwmEhoy3HVTxjyWNcLtG1x4N
kphp1iECMYiym+GJiPAbyeC5FX033+Nj18CIOuJiUZEgVWxATFK6Pr3uoPWnACSRDGeYdq95BMp9
MZyhRzSviNcXg6rdzaHYy3REKc963xZlqf/0J1+5Rpr0s/5qv9wsAW4Y/54j3PmbOW1Hp8KCD4S/
yJQ0USNOJO097TbG1BEOAEO8WKZ6DwBGA7YeQWMmCrelG1vYpsWC6uQwCDPACssI8LpGrW3nq6sB
6he2maDBaW2o3TbFAPBSUCo75T7a9V/SyulB9gxhONI4LJBqcK+CJQGqnS675/g3ojCZjaA4sNvo
jW1RG7mzCuh2ZZJ3yjoeqT8CL0pFvEBWshuG/7YtaRQsgYICE4mGT7fkEAVZhhvpU7RG/JwYQCRo
wHyevPSXvIpI35etUlOq+dReRf2JW64Zn8JxTCRUKfmQ4SwQWD+JW/bR6Ja1CsOPdmHsJrOL8gCp
NpH0mUjUK8hdAaLIulDvAn85P0VE9y4aYON0OG589KqYHBNtUbsF95wOXEtVGPb2RWImmsnjNrRu
9Kyq4vBEPx/Towaf3ZC+cPJTwandPZ7r9U0xEfYFZI1dWrQJNsYeRei5Gcfiq/uGsWT8G/+ABkVP
itogA6EN11jC4X4vfFKkefdt8spyhpCUhQXZTvll+t7H6TeMDjotrLXUONPURUQPj2hpou5HGMBB
DIP/I4iQugFHh6nZjyiKjx/hIHVbVo8w9gC6qkWl4332Fqhq/1IuKzZMtLlJV1ONNgtQUjVT7tGY
VEsROXHpswgtr+M0YMOmAJbimkNJtvaYmmXvM8o4qM8OScKvS+ycbJng1DMhamh3r7NXNe5e0q4E
/dwgjs7jc/Auie05fNM/FsQK47GmMADgH/IqymkPGzYgVRXnJWuLdopfoZIY/lEXMqctxjfHQsIE
4ka1S+qYLkDbAZyYaRIFifFhQFmHCC/U2JbmURSUaSkpqXROOLJ6HQ675AIO0t5Oy/f1o4zf1k3f
jEgsd5EepiaWP+CAwI6DLTdOoyIfNhaNLsaktklIKu3M+XeCkI2wHFFTdwZmHNquStf7Nn2WLDoY
B52B78VLuTNTP3h3EZchjCyZ0Ki2mzIXfEHFrYrHaPhsDGyCjJRg37r5m2a3klp52gtoADbyCYgh
JX89esFwMPMnCu82iF2myjhob1ZcB4V5R0ZhWdNAZFEjqUUH2ivHU6uChHj5v1gW+b+GACCsHiYs
Se2HWkza6MnqhhCP0lNjT7MRIbN0zP4sin5dCzGxmn7/NX+u5LAqDkrS9ZAOAgIRuFTBeN85qR9N
7DaR1MdyfKmLMxCLml6BiIQJTmMonwBN00eOMU8phEs5BW8xNZm60urSCgLup8q6pPwVf6EsMJeR
RJQSI2aM9NReHydYBTNHu1lMvG82gwtyCvprUwYCU9BbmRqBoFF7FroMmwKl2jEtPZgl4N6Qrae5
Mw2bSNIafMavCH1UMtjworgGBfbI6jcfOvuQHKHjAyfDNoXyfyNsu2Vq9r0kjMscJ+nrH/Y0s5OP
/AxKqZAMOXTi5ivqF+aPAdScprPKYJ6pIWZWPiyP7WqRXQJbIrZ+tdrc/lfuQvjeuknespzMTn8p
+n5Y8iFo7g6QfI9ymhVes7kyExiKclKNhoq87LCu7xwJ4yv+6i3giuIYP0sjFUI80qY5EDB2bSns
NEEc9dOVehTwGhH15u7gAVKIzk9rjJenc2oXeLf/+7mBkvuh+KESYaJTxkbUCGLx+HoperVhT+EJ
7r6s4Pc9HTr0NsePaC1grUZAcYVeywcQTSG7gjeJDe/AkqeXXYIZ8WDrWuTj6XHi4hZS6CzU7kRF
YV9fuQ5U6OKfiq8xK1HiZnJDhX4F0yRNmVa8nnh2falu2cn3KuWGZQWOM9L6+s3a9ToqZjPnl/Rm
2tIxEoWUXU0v+d3uPdcSP4sJtdR82YSmz97n+nXt4nPZ95D/B7wDm8FFfdDEzAkgjfN31uhEdwbC
q8ugLLiPlXjIaOnQ9jdMj33fJqEaDm3OzmDSinz3GErG6wYg8AunLhuO2LqUUvSBwpismX4pwd+K
NG+nbvjzZE8FUxRGhD8h3g30EgS/JkV/tVr7iV988NIWnQfEjB4e/P+yNFpGDQlGZbP3Xz+yiNNi
A/nHR2bYIdhXhCQiIEdinfR6RqLqDxlvBh/D/0R6ucxyiMfTXrbDv3vtkKsdRzVlMdHpaQgggTX1
wIdAOGQZPLuCLzOAEwrPNXLrF6LgagMWzE666w+7Ue2RWKppBOZFdz27tjHPVvXsraM9PN9XLZv+
R2cMb+ADPWcAaJ+8UbGrkT8OkvwTgmSwKXHPkvpYbkTDq4+WA159Z0A73woBuHsj9JuxML+13wiK
A0Jj7bDjU2JkMjtJlSFIFITZjQXJqcvxxEpnoFG6fYeidIIgH0xwo8f4yYMMqwLEDlrjDDiZkndh
+fG6W8jSQL0DT9aQwfF6+jWqax7eKWt+znJ3/1VKQzqX/Lh4ZStiKNblY+398tSeKvViffWL0GgD
u1J/WVFrtw3+0Ru8VBFTj+0cr4FbhAUpRbw5PXImn3/Y7P49QxcAkAYIIUcAIeI/HWqBiyNG7S4r
PEKvnYVr3DTF7QQ45I9UqqdH53BTJJabRqrGNHzOsXaTjBWrsfTBLN+H6kfiU2Ilm9i6eTXD3Qa4
nGSo1feodvbz80BCMMpDqQvRTiPeW4PX8cbyFkx1FN1rzQl9gAUxln2eUXgIa04o4EgJGgfRqCKz
WB84c/yvR+7I/qdLZnLL5Zj9iwO7VeXcfQmkmzCirrYWJB6cbRxSXPUOScFJh2DazAoEAGWZyp1p
kOG1iuqM7aqqCDPVIHBwKAR807tdeBYun6i5RgTEKbeo1tq1o7L+Lm1rkuVDJENudOB9aBlDOqLv
GrxT2UYWn/a8BI9fJfErQHTNZvE3ek9LJ4EJg0x6TtEuBUKnqx+NulbL5ha0QyXJf7nICBQ2L14D
RnhB7+FzA9wtrLPz5y7RFSEFddZdf9v+UVlhknpB0dVuUzBATb45WW5XVhdhyM4J6E+PqtjLi0G7
F45l8/BzJBoVQJyeIM5AK7WoH3qm92zcwuEpJpBAhn9C5izhJ0us97z52Ge6CLeny6Yj+87EEe4g
mZwDtcaBCVOXpZr9vo7VzrRSgK+CAz2RcSaxDcObwgtAm3fXHIhOOT8oC5GCK9zVcMkJobMIAVlR
VCgpvfS9yW607TSbwFl2OkCDgTqBzvekutN6mnslHU3NkLM7PBcZKnUE2Y9Ye/1eYYz2FHuLTiGN
5qUeIkN5t/aBVHhsRMnkPk1EU/m5V2G+MeSTmm5io6uj2t/06g3DFJICRYaTUDEIeSejT67UuZcf
wJQpDjRY5y+FI+r0QQUkZAcl8KRnZapalESEhY3sg8yy3Q6AQbOF4zLJ4scYKhk3bRikLU51BeZd
41CllGnHLSHh8FSQTfl2iDMn4YFWFZQ5gOARYUvIxV4IAwu5u77aej46Hs9hvS5vWlNgFER020GT
lt3wLx+0FQm6CPGvL/E0XCO9pFGi6gpmxpc8H82Pkws+w8gYet03dRDeYieRMtTROjRyaTikTJt4
pu//mIFrT0TUMhXMF18kGdLaPdEPym3xlaun715xi8SLaKNbwqnCnhF9jzlU2PMvKf5OJRqVgzve
NLOXd5JkQ0P9JGzsY3f2uYj6DxZJQ3rV6tv5G+n4Msf3Wrr7ysutEje4uQcsDJWBCtE/RAZ0YxWf
PQ6eo5ddbp2N+aGM6GHXUUHgsJvpdXAFGqhjuBUts2Rxo3yeF6r46lHnCfljhjp51SUQarq6ewC0
Bw5irQ6f4M4LUNYCx7Ej4YLxa/Il8ks5Lm6P8HcVNZNovzBE3hc1Z1OwPIjQ9wW9nD9Kz0eaTsu6
KNJbY9G7tpIZSzC/KScDytPZO2Y/YlaFIQwh7Lw0DQGsseD8/ipdys1AdwMOc3iKAbBPUK4RrOcI
nuHdwD5i4+sYoU3Z8xCSoCXVGdChOQd8snD43VbsEVHgvDDXF40qvrIm4xPlKn47x97gQbAiZ1fm
2Rph5XwUoNR7ozp9+eMKU4BXsLVB9/KR958atKd5JXgACRZZAAWAf4JI6gK7PQ15PO9hI0qvc+Cd
fGTNx83p8kLH6gvSZ5oiAJl/qgPeDCKW13LhQuKD8cqKbGNIbGUVfW352k9sVf3qyiJ0+zWCIuYc
NaQLSZf/qq/KaDu0SWNK2At761l07GFjRdiNxSbEZ4zP6eMXX9zqUCp4a1EGSm/b3kbnEBo8MUN7
q3nUhjZ2ETgBmV+f9r8GcjlwPgo9s6IJ2EJG41AAC1c9J4XEfIDBgux28K0xncX0IjD0N9sEFjZW
feku3k+cRwFovsm/MLBNan9uyI79A6norv4RgHBtM1zzliX8g4VIBo9pyavzU6SYYm1WS1p+wrRt
yn4/wl/dIKkRfAfRjUuygKRfPPxd3IXj6seGpCPfdr90FQ5HKUK9OqgfWSMmVTzUtwqQjXWEE6Xe
R2ye89/6G6ljZ10395nP+E3wRcgGMop81llRxCkCClMoX7SuvRgf14XNcWauNS/JmgqAg5hKFxnL
Nm7hlSUrg0VIfk2twuuXFIOGW/1I4ZWaJ/DZbHqHdLpTWJ1az5qZyNcP8NNXzxm9hElJ4wCgpzAR
INaaGca4BLuExZNl8luVPO3zTPtvoqHvOPYRgAW0nzBFcM5Sun1FXefZUBgx0GTL63Yvxda+pvhf
TYOhjugTn59je+ZfVBZLN/r1RnKWUvQJs6zt8JoWVPLOwruy07kHIeFpn4vdPeK3HrjH7ESBmJru
i3vQc/cVAO3vIuwLla0/fTZU9qKOcIBomC2KLFHvP24D480c9ywKfSpI5rwij5+0JUcLT5MRuoV5
oiNGPKncnYzECussqj6dzBkp2WplXfsyi78eBDqABqEfn8HxHylA/I3pqft44r6YCH+T4c3wHob8
6E/w4ekhAaVydR8zZIQpmqpXoLUSQ5tWqOsE1rr2/w0ejT3l0so2EnqWpwmEFxnBXGR047Eqf0Q5
XdB7oPuPS5e1yYh3PquR65I6jB6HEV7j6i3//kR4Xp0K+3xhZvuFrWF04UXu0bDdgu3K+kL9Z8s2
OAudrIeBzSOo8JLSJDb61j5zdcjhXUJ9YsUGaRMpZelANnSY6lI0KeJN7LMndOHKevnYfUT8MuFF
bIeIPqmhywHrZsCUzz1+GyGvfDeYi040eTapJo6mUvY0zCHWPSSmd5Pc+MLo5mbOLS1G3YxcaWVC
S7bxy93grrkJrmoItqtIuupahJY/QYIpyMmde+yjgx1snxArJ/yF8mXq1g/jm9d6c7SQQA0PHpsd
Hz18Brf7Q7xh5KouyygeoqZ7fmGiwSFiNATGUhNlr3mTa1++ktskv3fiRpbahCOswaZ2bYE6r4A3
Ngak6ktijbcmqeysRcqqGFlSQREbmj5JLqUt6ZrWndhDVDz/TdhFIWV24LmERtfOM2jxdcFcX0VA
tvtlKu/mSvYC5yD9Z/YGAotq9e8d1H+DeDEwSPTtOULaGY2/1xkbQGg9H0J7Be5QvwcDgZ6aelel
hW1H6YL9kjuyX8ORGYaSOHHSxuHEh8xdeVZJhpltWRO2lYEIfxNbjbTUIoseAmeF+MScNnowG1lK
MGQnjPLaind61g8cIq4JQfyGWLrT3dXM+vFrsbfsRs4BOvc6+xg3Sh2RCSz6uVJTUqC8PgLUhO6K
YVMNss9G5y37Kh1mBAJjbeoSG4VXrzj0gvC0LrrKmi16ZUuMoLvVDVUkJJiK9ycilLx/u1qOz2t2
YaE1N1mA25ts2KdNIeC1OCJNS4pC8YAHE7MvjKFh928JcEmkPXdK36mdc93xP7jCT1COeYaD9TZ0
FkWR+wAaY/raUl/fhWTpsK6xIu/JP70vGmSFdFIOTOf7C52FBrkha/IOe/pr8PQ9gq/4Aw2CFJYy
rbMfTJA53gAIjGv1IOp++1x8hI5tE5VO+W9kSzCZUKRJrpd7rL4wM8KBl+AQTOxg7/9hxz97iMgj
mOEeLQOe/GDGJvJLGYm0ryugH9YBnWOBUFNVtQNW88ypT2+hxEFLGzogb11bkjK/ShJlGyNDJLGA
1E6WUkjF23TOdQRUQxwu7lck4XYcWnVvhErIN+dPLhDWyMe4nrT6wNhbPRGvqTc/ao/K2sAAXda1
nCtME/ryUSXj6t72ltkRPfqrrFK1du+yF974DLb4JWQf96S+NEkqlJxuq93+ur/IzetcHNJWk8mZ
Sh7BKyuAadB5v2WeU1GiTy25fug5OmbjwLfFs5/yNyV3ZXFdpM9Cdc78E9WNbUvbrMciW1DErCUp
GvpHq+anQK1XVs981yeb+0OFksHsaJw+RhfrQXILAyGt7VTOVAV0lVoD/eUPaccfv5m6P+hWu5ZN
pV63ss4EII81W1tM73ShkIiLXmbu5wp5xDQ3BRm/a3nqH48omFr15cqxMKvap+uyjAOiOTSEuhSF
bxpqQl4RegAznwSBbd3OVPodO9HbcEZEcOgODDPtYJfCnMZFlKIPe63Nc7iUvh1AT+nazHz5XEeq
0r1O4QYSzAdOCo9dDWw78eliL1j17mdI2sHk+u+JJYyDiOce3qTtvcr8PDtTae3WtOqckLuoZLpR
XqhHZMXDXv93YtGNafGCjhpUoBiKuvC3X1Gh3KBUUwEeEySNdG1V5A4ox3iCb7tWcIneW37YxnAi
XLP6vlHivlav2mHCNJ5rZEJ4C0Ht2kTyLb1XWS0Uu43WzM1j9vRtNCcOiaUO6mX7S0uhz+u0YdpX
JRhYviYfHPawDBaGoVo+LzAxS5ogzN27d1tRMIhcf0UWxCQX15Zs35SMEDocLf836//z1AGEfshk
RgqY9Nh1b7f3NjKIo0n6G1W21XgLVJiv0zN0Y5vfLx4mJ4uXzWat60SZvBVyGSwkgrrnUiPPc/+9
E8Iwifz4N4EFRCPUQK5cFc5xKb3Od8s3Dor2/PYPeroOteQzKPKAHGiy6NRD7VfmH0URUJXkmdL5
Tr/3dej00pcuQEtNSXkDQNTAIQUkKpeU5+E6jPJtFiufnlW2rVdpY/U2I2Ku6hurTWckCiq2bH15
QTi4SBwdvLC8GUBny8bDivxKl+KrNLJfca2Dk6J4QesY9ry+NzFUZuaw9ikgWjm1mkoR8kTkaGMN
dNkbt3VJAuxnByKmrxK3NQAY6CDy1J+pl/DvVe6gQx4xJ3/dPKtpIgcZGJul9+oB5q9/EXHFULnr
Q0WkeYvvqxM7qfx2wWZVzqn9hqryN55NGbMeerHO4EMqsuLCpodS22wvQtYzQbbnodthBdVVj+Zt
KMcAG5Ge4/ImWRloWAkBpBIwFvA62In3LN/IKXsL5YaKiqDgPZFw4feAKm9O2fi6dAh+1L2dH/hz
FXYJhbW8Hi0aq06jjsDMvNiVgR1wZi15JkItJAWeDbmQMZAF+X6uCj7xiNWkLLQZpqeA7rkBvk9H
2t4Z2qQIuw9JzuznbZGMN31rDeFpgZoeG+z0VQMeXSiTk6xEl56yBGUq0T3iHRr6UcO/T+SnYHCY
l6RsTKs4SoEFXc9gTv18Za4avFUU+jGmPWvshQ1lITqPcNUTtTqMAISWIa0G5kxQj0uWTu4Zy+20
M2S0aLR0mWg/bhD+LBdK1lNdn8fB3ct3VWdV1CGOm9OMdk8qxDeLYq74pLlMPzxmPy3Qs2Kc4Lkn
Db4k7XQrBpvYNAh59xhncUa3CrriPYKeTx22tL4gvd6k+CXP/FadhicfpIYzoGPp3pFy6Maje+Oc
KFjIcOETNg3zfVbZk4sxHPVd4EA4BRBKQcdAfsmM9jWsah3e2y9oXIKE4kMic9kBYj2wJx9v69Nx
6+Dnm5mR0RORSlomQYl6gz7s+UwO9pp9k6N4u7yKPRPHsiy+/fNM2Z4kDFZRA8R8FrlgyNLVIhe0
dntGfsgeXNYoznyGOd2oru0QDjBA+tUQUuaFUmGyPwaHlT0NjfJzKfKVrtCPloi7cTvMD4sN9S5g
clGOobfiZnH500Uma8rT01VmAkMhfyvKblcCQmaen2GGt32e6JVmFiiSjzZNVslWkpEqVBrh+72V
gHm+JY6sD5NG8tiyDKqPPpxQbnuY+KOryfMizAphNsUuLZiQV8oFViRotWWE9utQCDkvxxtpifa9
CGX/v8ccl5e7XaZ3H3mTlVbT+otMzQrEwVuj4mpHVdNnHOB7rvydeFrLatbU3QvwDScotur/pxnh
OJkF9Ald/e7vBCUWPJrCCjnHMMbVjlAK7qn/NhnpQ9ZFO+M+Iqn2HN7GYjMpgGRrxHTum7aYKb89
B4FqBG4EYiJPVtg5td1msBZt/Hp+x2WP7whZvJkCGqK8JyZeCZDij51von4UcVeJ8OUMWbPl3hMk
1iAaJcWo7B4dK+equdkpjifQO0jYGR8z+mGa3ZZj1eBhjxF4B2R5LKvzNbEVMNiNVwqTxSIHm3C0
RDGLAASKKFebtyouqn9iImwgYQTb7dthciF+wtkKhRmDYfzHM5LKAtMg0cK0dmLKqP27Qks7VDHL
e5rJiWl/KAY8J8jYHAomX5p1i1Kwof2kJ4+vJp3Y9lmyQCxhpIcdxLygDLPUTbE17ZQaF6+0RswK
wtL4XLgrY26j1HE6+xwgPC5BPnOtBqKNR2vxGxStJVtu9M60APIr44XgkMNO1WImkhQSrErI+Tyc
1P6o22k+c4vCJV9GtFbAwWYtZQHK67fX2hdBVtKBenFGuL2/s0gPQsMdeECfOP4DMBDitJsFoQlZ
cv2DlIcIxTUB7Yg4Ye7qd1wn//9yB0Hcy+p5gbn74VMYcYWADiINgeDXupQl0uSOocTMDGgAqgqB
CjaOHuKZBnScyS1OpuAxAJbsDwNq0nagTVvCdlUaypsTgR4al4sVIzx97OGXhjrHURVoP+ZWX2Te
215/1nocRMzSvOMPlD/zy3iadFFwnVZ92b5AJIClr+CNB89PeWoYczi50IaSe6RiBE4PU70QJ3tY
OXNOrqL2VwCyKlWPGKjCspXLvS3IbTROzqZq8zVauiKlsGbH12bovlPVha9R+CwwnAlqxaRAnuOW
SFerT8Zx89EsaJQ7CglGxec1JiRMbEInAcCakzhRSPokO3OdablX+UPcXjE5j9e+M+NWDmZx8zAp
FM0fSfsx/fc/ZLV6VJo1Z5PnL28zCt07F9tMyuyN3+Fpx3YfXPFcbdbA+OocrPPwD1zw6sxVlCnf
ZoMkb74rOgmVC2nLpL6AbropTlT3b97ZCDqjZySffGCwwgWs8Vnunhi6haRa/LHK6y3uGmAfyCYR
H+DIs9y4hUTKx0Olg8SvWZmVaOxmDLl5ZsDajz7eOTasOVbLPbNp0GXNJhTbB0HnLF77MEXq3uLQ
mt9+UTPzHGMrfQz+Kyv2gd9KIHNLjbVGZBm1QMZ/HstK6gvHPu1ZrASu/7zN91sr3k8BSFCn/vuZ
899N/lCEMJzA6EAhGpgK0OQ0h1sRisTktnuIl7A/wIxKuGOWhJrScoa1/WZkRQyvQ0P3c7d0fRP+
Q0EmNRCS+SuPhdIaa9M2zEK2izDv5ZXJJ6Gr53WM5ruZ/W/ZSB/Eq/hw6FLHbwx23cMPwUiW5Mqv
VaST+Gi41qFDdeL2bXJzRkvpGsSP8ctbtJD2V8bCxl93nShOgDZd9MTS44RFtEal4jTsk3JSMHrM
c/LC69fE6RcZU1rV+o3A4T+iCUCmI5019rqOora8zQKfy9hjpSobr8DJVYTJ/JQM9zIvTXXLWr8G
04I7WRqUSFmrMbCx3pjj58vMPXFwIZ4hMpytEpUfcfKbOdKSlJDcTrx5gtuBlqA/Lat/qwHYsBEE
0uq50aERErQUOsqmoGq0HGZNGeYY9L+ImtPC65qV8N73G8eXuvcyhRL6I+cCWDQeXtGf0cF3SyAw
DMUClc1HRlQd9AnRW+6xxST7vOnFnxlTjLhBLy29mHbad6phI9MHThel6R843WEs2cwnNMkKiE9k
x5UDOV83Afc5forDjvSzYlJ36DG1nh6pHA8k/iJZT2GLMX92MgQ5dqjVdTfIAsQ4IRzuIzjAccUP
dWJOM6F68VYMK3c1ITRF05hBLYrJn783fj9PB/ZoY8NVQkmY3p3E0BqwnNXyxh+h2sXFJm320p0N
gAvL3o/uwKoMXZUNUdbsqOHQbsx/xQtnOu4deprjp4kmY5nnk/E0Eh4f0yLh6wnQKINl6YFx9GWy
XNW2Wzgbn5dS2pnzIV8oh4Y18PKLIJa5Upn+rHftdZvCptgEXwQ5ACkarVJtgIEqQTgxLoTsFr31
ivHYDmLsenA+5PaDeUfwlyJ25HfKsv98Z/+GV0dfHsl5mfrGyYNG9fv+g54J0hkWDciRHilU+AbB
Uc4fCaQW8we4I9uS+ShKRHE7BRk0V2lEeR8tjOu/xxiwiY9FRzzT4Leqtr4XTT8VoSzVzNODYB24
K7CmfYX9lS4JQkaC2GCLQFpcV1qYRGySGY5tG2GlLYmAgdwiJ/4777BjyL1Yudya5HNckQbCFZIx
0ZumOruxOjUFmc3Vd4bDTbW2qiJSZPE0rRWRYBWEaTTp1aaaxQtHlAWxx+gP5D/P9VMaVDFGQRi4
xD6JWMogZ3pPzqZg+mpmZRKo3pwO6EdJ5PFwkxpNqfoS+VeQEN2VuMMcgdGbLe73HJWepoOSb1NO
wqznWJjlYJ2NBgO1Z6la6wzEuDfIKjk3TrQPbRPCAI2OuNjU1FGkDy8s8Q3DBTtlDyB+ygnTMUWj
A6JHBJVcLx2HYKidmlOJoplWV4MSZ+xglXdnme3QX1c2ZvAgYHcClNButZPcvhpeOnrVgkcNIglR
decyDIM/wNrvIV48kXBo8GdJJw5tNCj+eCx4IKpEKfDqv8xi7ZfOytWV326BKZhTjhrZKrVdwgKN
EaR9JJdYF5twcXmKZTEb8x1p7/6EUHAoUEZadrBHMwNDSPCwd1npT/m1CnOiQEnYUxIyuo0z9sxr
/6lNLVyVc4XuGJeJ7ONSSyLxqgYXMf6czEPSMdVtTzDEoh9rEOJearvP3hzstN8MFw5eWaDw9iBo
ILeaMXAzZvjbQVx1KkAkhrzxaA+iKz+1rbMnBhJV+DP7BeUnBtB29VGnhat+8qONOMEGjQSlZitd
wnWg/VLM2uH9Em0m+fgvVDfdkbXsdFfm4abtpHDk2FR8SrNLYXaAPSL37Y/2/vMTkVafs68Ik6Ar
dTeysgyiH8INtuLlqjQnJnMDRwzfwnU7t4g3cveSXAB3HKy0hI8u/om2aIBp+/2aazuRqMrSTL7G
pst8dQiYm6Zy9aN2RwUaIeXuDIQDWEf9NaGLK9p80ftoapWLVjPouiYdhjrgMrnH/XZAIeFck+cI
mBd39xzL16YpoaNSoJiOtumTjPdoSkACLSttUCuavsEHsVKk+NhzPLMtOBBdXv5sF9O32lj9aTSa
IS1uck2cPwaOCCgWoD+bvGGecOn/u9iYUTT6S2DPT658gn5YVPXgFQCzPGZMFETQawgIp2kglnmZ
akCNnOAWtglOexiPQTpsdFJpJyJXtwUAaVNijGx37jfdiPq+Un2uF2xpvk8h6zyWo4ryhyeJRmUi
w9NrRuOaLpmBoCpReS+ljUWGi+FC4MiOTGD7v6RpVTe7Oak95KF0mvUuYy9l/VxAN5JK7coj7w8L
/S6JF1pVlpjuNRjYGQkvzW9WjMOfWh7tykXN2GAiIBUWg0wuzwHw/xUlXJ4x0ZNiQmhRKVSCvR9W
vsxQFsVBcviUvFOuQXAujkY9wsSUyDCOIcvOoaAGNObUNmaYC2WettYStSFscHd4Zfq2GUBwKLhy
b/lyo1Yd2EVUzLj8rgW9PCh5cR0fsgppQW4vC9bOjg/PEuqq2vfFMLW3gyAaHGn783+J+7PHa7XD
C/GW124GBf9JYyGWSoMYt/tKb5aGhwm5sGQYbY2QXKuohEADZw3GE5oKouw1LxHuqVd/573lPxyL
M2vlSW9k7e8cqEY+Sgz1A7w18j/B2vtzS5mUhqkCjIYPRcb2y5k+2hRGl9C0CYykPcdnu2xulZKL
bcnEIK6POL403Bxf8CTPNuiQfeJsEP4R0CGVyVNkelgYe+ulIChWsVhjFZQppxY4f2ubXl7SCIBL
EvqOrYXnU/yWBCGUW6SDsllVr9EfmteP6RMOxyfJE5u0P9Oc+aMy3cydxaGgztE1T0ZMdKiPJ6EJ
QDopSjwEvzbj1rNrg8ZXH+4A+7BuZElrr5WHdy0DcfQY9nXdyYj+CU73sOftjN5NALg9zlCWhiKN
zhHygm6JIbTz4sE91Y4nCLhWyQ92TDEUb7VQNNaesXsqvXQBRZMBy6/HgQHLovYoGMvXOzR2jwBx
EsqJOd+SgkAezq0vgNVHnRfVIAFIAaByWmSRr1aDH0ADcH/Bp/UtSwgki9uaUphwrUz3MGZIrB2j
quulxNZ83aKab3uW5MnIXyO86AubO9q5h/gOniQ63Qf5Jieef02RoEX+lx10fSJof4xv2sqtcsMZ
ROGBSWf0c0hC5eCVNeZuTp+yLDXxXCqMapHfcmrhg0u9Pe6hHnDWjO4F36SAICpCpf7x91sdhYW0
SRl527wxn2IE9nazIjqWwyTx2B+MfvbXD0I3p+48DtUkT6dbjPQJi8hB3iEMFAuioCFj/15FZbkT
WseRKtcW6PLP7+cBL8W9DS4/t4j1DSVDXzDFPP8wnpNmy2tMaJYOwUlT2HokTTjeiiFuOhgxDAtt
ONr0wZPAMXzjxx8FHQj4/rKPuUXd7zDIgblpl8BFwkusUE4/mWhW6553U3klrjTGP6TRXCFi4VU2
iRFt3Uc85Oq+OaRTMWz7VfkkFdow95Jz5fbBmJ8KnvJSCtBUzdCY27SwIUAJWxFV2czpQFCwmh+t
6b2Dz+eNMjCrJCCzRnZ0NrJqXUrYPG1jD7+kpWmWs4etNeI322Q1BDaGVrEwWrea3WZ0oBY6XRgq
nihi1KA2YqG3yl2FrbMR2AiD0kj7EKe3BqkquSfr1LNhLW42tLfylQXn0qzeOI1zGtdqIiVuPHQ/
IGnNC3h3hmmW5yISLqT7crp8lXoAwk9aS8/qpTi/YD18B2oQxAlne84dHBKdGyt1X8pthkFlzxNz
qsqTlkahlpKJ/U5lVhRPhML/KXX7seNWvT9PT2tB3g7/mbu6dM+mkqlj0eDaDDbaYME5FshY37vz
IwgsYPLgKQohHcQ86JGLkhuP7ihKiwKtbZ74PRL5ccb5K6sJ/3sf5MO9UeV3+dQag5cjRJZ5XOLa
fPdMifq7ac3dwMeDWNsKvIZrM4T5cSyLfutN/hzdB12DZdowHaxnZbF+JiV8NT21Ab5f+r34nacv
qYvV5tEkTUD5+icJjZw/BIiF2pwJXKD8rwemkenBp8eA86sE/G4562mT7jvLaMwWTkSzYomcihEl
916EGhnXO23Fszvl1KCXDrPSAkepN4ajTlBok+hfggmymcfZrHFIISvWfyiG+UZ9wBvutrCGOU/I
bIqZDAy1pnzy7iJdgnPIhLUOEjcofyVzjJiyh2oxhvC4h5sViPJOfcIoeTv0On5WaY4g6zLFgHZM
Mzquz2UbAho8Sok76myFoIC7MI09uDvAVNS0Y7dIunK7Ornt0JL++66rJmLOVMK4e4SzgSOkuysU
4LwbHNc5MdjH5X10K7tpvuAOPbWkBdYZBwVgBvMnnKbaWQMNtq40YHpzK/P1FxhW0cgiZOk/Bo18
ofY6ZbWJgh3T+k1ZgKSVYHGlfjcDMcJX01hja+7WvpZbkEjnfeabC0apDgV6oVXF6WjFAv8ehFRR
c0BmM9jG91o8xmLgQcPOmGbWbHKDagkzBYAURmzIfSGJTBnrNMIPBYPAMZpSSleJ0rAC5OeKdzFY
U3eR21+WujH3O1SpVM2yxnGmV17LoNcDXIg8gzMrr8pPkTclKQwaoPo06stlbxLNuCFjtCtEpYnS
INpxv3R6urI9sR5/TcKaX1ogaasNu8aDevZZX+cCVeUn1i1uonhIP7XKhTsHv+fiEfzn20F26mcA
QBp2S8kd/74NZcvkmhHLo9C37GXryay7C1tcJ4P5Si8tFk5RT+H3+AzAc+T+X67IWFLn/7g+/llb
VuaV9sNUmP5cbwhrQoh4HSxcpiAy51NwgrNR0H0Xl2XoRusQA2dgDvPtApf2Nd4bKhYgkEsDoDYZ
Kg4Up18G1eRhmhgs6HP5ZW0BfHFzKyMg9hOoUou68qnH/GGCRxzWbMzJAqI5s2qq99Fc+GYeGRrp
QiIdYAajqhEEPnucXGWFyURTNwiRFEILqRcMgt68NbTpabK7UYMdTll+QkZAWBvO4H9miK8E9v3Y
+4I4RfazBd+8tzRUplrLZ04Nq33Rdocy9qR+QLS9ZVS2CH7Si0blY0p16lNrPVTGLLYyWcWiCimw
KKyh2CsMma+ZxN6NrfXc1zY9OGzn4fjbsq3gNimEs5hIt8XkwTIIZN9oHkSOwH4COaQduBaP5CcD
hHflzrTEkWv6Az9HJ9xX15D6LWce1NfhIuu/JHR3IcffWCPenKj/Q7yVY2/9pbUBruwq8oe484KY
CqYypdnWtOBQ2CruFzrn1MpnWuptHwbssqwFTZnBmR/Ov/vMvjaDb1Y8GXBueG5aQsvrKIxIAd5V
pKDXfbnQGpp6604SBvMaj6D4vKbPzFZO+5mLzQGd7YamBfFHtWn7oLr3KhFmaAPkv9fzuzKpghcn
3mD0XNmGSv8t8sa/DTSiE5yjTSpMSF2lHVom/30TKBZ+5rK4wwAg5vPj4+9AsGB0WqZip9Mez6Sk
PfMlM5Id1epvvPdHoC4EPSzO072pqw6ZIWF3BNcJTbNnpnzvhaXT3mlX3E1WQWeSVgoVyx93OiK9
I/i36Bzjb9Ll6WsgYO/FPM2af2B1C3OzqBUK1k8aJ0Rt22xawZu32MmzLuX6TDOu7VxWx4boE39w
tpYTy3JmZrYh3CRC5rk74pYy4ALp0Y4e6ZYgDTKvOkDQ6W078sx1YnaAUEGQC919DgK9zXnUgYOz
WVJGQgnjxySvoOJUt6ASneGkOObcc5mxStV2GWi1Db0GewGuX6xpbFsisBMHLm6Y5TB4HHnIPuUw
8dprFNqtr5fIhOvfccrsf38evga6cjkfJDFlsol8neAi4wYju3MaWzOzucRclEd76Ad51fndIvk1
TB396GO1U4j27kf66QmGGaAecy5D6HATRm2SMVP7qqT/rCKSHm0oTR6C3ErujMW/Dvq9HYWdt5CU
H1BWuwZQWB7tmhPZahZ7XO+Ktpo9uD1mOnUAN1KhI7ty+gGf3QNH7dGOn8gKS8G0svBh5RheS7F9
8gCTTR8aycRaEulR0F/2tonEMmmagPMx5DEw4rna5G5pEhTT1MlUsdxjLsqXjUaEI4VjPFsOuTxT
+0PaUrkylj87GYME27on6pEfCSsIerDZnHtW5fZjHahNvlKDtrsPTk9DxQLD13VoYuLTZ0EhvI82
RKA89RvEFfGsM5obuv+qUtPo1OEoNDB6R2+Xeq7p5PEg2jenwUY+KFKb6eMeSR1CZGhpSyCMQl+w
ttRlA0MQVFXEiyMMf8krUgG1oQjDps2lYd2wK5YGjEc4RqcvZiwFUTLvsRMHXGhuMKX/57JHI8fx
I8enSdeXM0JN+41uYIddKGoMk3m/sQxhA6W/Ty6XUXiyEXy9lqOSf5boOmRPIbYNgssZhZ5/Y05k
2WrQDYUO2Elyhm16wyf4TWOc7cXAyNdU6IU+fFeq2NoYkUJkBtaxXRWW5TmlgkEjuGFd4+CzRYpd
Zs1ZSgkMJb8+ctFX5pdrg1LVPA+DPrplkklAYVRViLyqlol5gXaG36288I8O20Azfl+LOy5lj8fU
vojAsKEc5WxEgAuXSrBTkYsLVLfeHvPiT9b0/Eg6q2n1tLp27+znQ6Mg8w897zjOutBU69VsWbOi
mQTURGUrwUmptZBI3cqV+moNj3EZnoVQoApq1UzyBtDpjUPSq43yxc6UDRSMQw57lvDzyInFv17M
Kv8mV6aG+nvxK6dwJOO6s2+BkcHEbR1cos6eBKB5ebd1a+g8IDvbzuw4yhGb06i0321ucFjBhZyQ
ygW1leTQyzrDC4RTVyuX8Riv3Uo8IIRckaJLh/es4UvfY66LB5iYRz/SDWs6IhoHzsw/ncQ7t78x
G30oBvjH1s6kH4ovEwouFes+WuqHzFZmzCwS4LDxPS7jXCtpa6BQblyd0yZ5r8/SGJuLztlWKAjZ
M2YHIvvUYm5TKEDlCC+tCunX0l12tgQk5SM2zE2y2D5SPaqXMiQRH5RKf9ZT7IsFJhIRiyXk5dQR
QjzXodjo44zBndR8pD6Cy94pZ+98b8H2nhxoaiePFJbhqvbmqKRxY6UeZrLF3GZLMoQHpDcYyb1v
+/xs3Ya62tVplhNHBHEhGgarvqvImyT/ofkihlRh1NQSGbakt62agpL7xZjh8Oo1BGtTJ1mKDcdV
/vt7F0cMDs2LX0GVhP0r41Aup+ixMMo1YS1iAqw09ciBwgDt+CwPDv2ZclZNlWp9la0m94WvHKje
xibt6+RvvjvlkgP4+mmcKviK5SEndShqzYpDIc1/lqVP+5lFcWuS8EPLY8DZOAFK6xwd5EZ1bbl4
N2Ti2DA00UW6U7CvpspzRHZYj+nYxPM/u8H3lb8fvKirVHm2ZuBAyN3HqT3zSWDAB7KBnhz4fvxR
hKKufgCpM426+woYHP2PhhkwNcEX8CQ4v4jbPi3NYAhhD8LJ2lnW4KDeXceJQ5bWYIo8hY6UiJAq
Fk9nikjFxpeaHRLaY16cgFSYhumhTf/DbbgaDo4bBvVVdctNX+C8kyjNknfulBE0m3oUexXcPSwY
H+0NNWVdo6isw5L/sBzyVzQWUr1fDkSbpuIPUfWXYs+1FqHWkp+SKsqEpx47uaWhYnmUAIMusxyg
kiAXlvgqxtswaFJLALpgEsHAB6AZcFhyEJA7EBJl/1fBruhBR6/mdSgMVivP1+VKLcKHj1hbyM4h
/QPjNayxi+jUSwYV8YgwmTj1yjCoR4IMki/o9E/W3kH805QNFc7TvMGQl8gZGEZLssucma8m4Fzk
LF75ywIkjECwRPmtoZ4Ff/gjxBMgurBkofxYvD26c8jKKSHncAtnrqm+IB6L/SLRoCxmQ/Swaoao
367uRZyv1mTlmL1f1qRR6QmL/429hLNsljJq/NKi0T3v8S03YMoSlOv7GBFNRwBAgI4vvJzTrNqG
tmYOIpBSnaD/+tKDkQmZuV5pW/Oi/q+s9GS5G5baczYyCajqq+Sn9Eoua2dgeMdEPpPZ03toOx2Z
+N67q0BfoYoVNMSISmiBPfselLOUCxDm2GEcM81oodgiXeZWqe/Qlpj4WY7FtV5pmr2CYmqpUdiI
e6Qypt9wmNnSOaCBJpPo1z2ppo321Xzz2UF3vsDgy8q+a80GKr4GaFR6xio+md5RKQmtKMMVCwbF
vv042ahI9tu1DWZVq3m7Bm5U17RdUll/X88uWPeKW1W6NYyjIFC3cZqrUyRM7K2n62uUFTsvVL+/
O3/FHpC5OWdmZRYC8eGg5HsAHHPGxeKrCwI5kAmH57xf83cPHWLwRKcjFrMGDSWvVw4VQeByKXkj
p3JKXxSoVkZk5mJJaZtz6YagC2zX54gCzNt+k7mOm6y3kazQ48QU+a6dtgsAZmBZLlGACWmUy0bq
Fy6psBmWTFDhP4vgybIa0gy7V6X3Z8DGMySLGp1f3P70AC+teJ1HlT5de9GX+4Ur3v5Jge+qaRU0
8NqEwfQ842N/CzbGm777b2UiwwMScsJqkLESptTUF6X0N5MIyy5Vd07ylXg7v/xeY9xaZBAFlE5k
NVhhwYbmQbDwiU7kyClq/KsMCW+KXkdKOeInB+vKqYkPksoqfHsLuB22MET/bWaL0hFkMTNeNHel
YSELf7FRxjWj64XwDDh4ESsCKZ2wZ0lklE4CjP92iBsasFiWRXeiHwKABBBMaYvut18DSgTaObJn
RxcJv7Cd0VMUDiYyh9QgYN3HUu3lluR5Nhq6oJBCd+NxL40TmasUfJHyc1tzYlshaQogPzZzil4+
QGuRQCk8Wv4VVU9mNsXpYLk4luSMx0XJjEcdI54HK0umK9+5sXb/qBuARwInOLhv1Q/82bfiD7fd
KmorX7ZycHWL7Bl6dLrIYiyYPaT1h8zLrsPeRvZCSSKohOMhBxLl7PievSvYy6gl/CqDz95wYJ4g
eUVIECiRgGzcSaXoi3zHIJ4WJTBKwHBi7/2aGSPh5/p8SLNKXLd4PreRLS0OPfmY1K1LxVG8rkG5
urKpCYNUJmzmkq+Qk2oI9JoegAzr4wjkS3muKNC3CNyztaoIJSvREtiu+DV3XpCEh85vMqDaAQnD
1TNjYR5DD46deAkbryqM+HMfOz1W+4LAv+2QiZdyA5IcQFE/Y/mEwJjpkp4aqltZiLWwBKggKAAC
iTXm3AxbRCgwpQrZ0oSKbD1etbkki9qGG6dZ/+J3NIdXF/ZfHXvLeXUpX4tDmZcb6Hrf7dmowGD9
Z2k21ITHmu5Wu8jGck+p4lfeZC4A5f6evA5iAe34E4yVS1AgR+bDvGr588etC62n37HZxrjTZ28v
WBUBl8uqofD1CmdEeVXi6awgJZ4MjajD3plAzfTPpfRchChTWf/xzXH7n8oOzEA+gCjr2wHQ68vq
0Y7kh9EqR+OZQkk7+CAaxwqHTvdtBuXj45Eq5IvuO6+zIFqcnr0Xr5KqUOKMi2CNj/okfKJQzbeN
37EcSSsrR7oLYqiOYm7O4xjm8b03UXdJ1P1zE+jBPFd+xbVFfPiFGnIIMLnnTtWVadRrDiXbKuzf
2dttvNAHnCE2enSfpdyMvKhBvEsUG1Hlal4cs1QsgS8ho3PCT3fERE4+iLte3oiras58OZgSo/NA
9ADnmpqqgkaiZMkCoMFsGtS3zPkUhM8DEhzARZWw2IrX9eQHHcPg8psrnmMslVr0Ck0bbqX6L586
cC1buyfFH7Wr3p3S2PcVi7DhZVGqBcy64V9clE+Z9hk2t3q9sNMNp3bpWgBrcRI3dWLL63KaOoJr
Tm4AClLroEBNYcO+Q9jSbsf1GyZqkDEAjRDadxTzXBBAUJRAgYXr/nsqF3nu2zgAIQC0mIJ3jU3G
UovTgQULIVM9vffGk3gc7CU3ZFPDjxQ6zftHGsqyaDc7oRNve4GkaIDAxofbqV9qVjbTK5cCT2yV
ZEsht9ipQZL812ljsbvH74m5VZZE1guKu/V4PzaW/JNsCepv9nv1uEx4KYMKmCeC3gGegE2WiwUf
9HTVl3ZfsvtJwhX7Mcpz1jdO3IQ23h3lk8iEIkkCEf0dUWR8gPIejCuygP58PdXVPESd7f0MKYut
vLDHh9ady8/t3CcQtm+hID1N4Qdmv+KEWCQO8WCn4w/KdWeqaaqlEeoWgvhHnifr+unG1FOgkiXO
DbKG/umdfBNsnbmK52qrIh1XPwVw+fuJ2qSVkmoX4C22l+gumccuzM9ryqOc3868jBQx26O6+QRw
v9VjrQyE1Xsss3Fv2fPoIcncyODMf1hnpn0UfQJp6S4oiSQ2dmkXFFV+b9z2hPiRToQUnEmwOwov
iTRFOSl8mLHWnM7HKL1A9WitaoSI/YM2yAOE9tLhRIvxLZwH5gg0mLqc+OreXFy7Tbu9SF7yseXq
gq8RvzIcm7N8Kw4QoMST7RDldGjnJ4fxikRcL+9NLzePE0HnsncKLiPtpdz/1FNe4UaigxXSdp1l
gZ6Hxv49RJKUF4m0Zxiizb/8thZnVna0Y1ggsFqDIAncTIWfIj+wgJYIPe9UFs8kEJW6iO/5odjc
jBV1EiYyFlPgWUu1c5cIorykZYQauSaRndxqTNBJLQ5IQov2CtIQBkcWdZr5Po3+djKoFSI73NKt
cWqRj615Ialc/xv4NBzTVvLQUpZiE4YXxzPKmv4tODwa3aAull4SVRfidNz2metxxZwrpxKOzc2r
dVSEbmz/LTsMUe6Cs0Sp2fP5bp4xUeyNgdMIS/E862gWuF7/kBYKdMuUCtkxrN76gvjKp5xOvDg3
dJoU2SsdjwNR/wt02ZxrpUgAgQitgzY/ayr4D4NtNjcZY9lU/JpG9dNPy0Y4KK++iHu4XJCOMZ3P
Hk1LFRivh2BbqHTBPJdC8/GCRbVphB/y4+kaDCMojsGZA9n+cg547l7WhvTnRXmCXh5MmPe3XYPK
EUz9uwKmStj1MPAzY6Y8lTHsQBMZZ5gJW/tqYX1dTOXeaPFVWKJvrcBdU8LZBDsRm0Tvg52n2hDm
LK4AMQoVXbHBSL0nK4bGTJOTpvTCYhdogWK/jeWwug4qdt5RfnLxju3imr7HQSxa9cm3hC+G6jk0
AFcQp3t+/JdGExqwsp9VSdfjd19ba/MEVU/UZi06erMix+vb26t2Nm8vYcfzt27PERr/qn6aN7C+
fWLZn0eTxOnTyM+Qn7H+Xv1iQM1kCiKARVgV9JpXejSUl6Y8OebSGCxgPw+Sv0puE+8V1xwh/xTA
1Ncmj9flSuELb1kA7PG6SIIYZAWp3E/9gEEItwi6Ra2PygJ7R4X0mcopqfCQOc/Uz6R3UFO2O1xD
gLA9Xpge64j3tOoLGS1Ib7oKFBNr02YvfxMtsgzJttrRLy3ZrfYTDMh6dOlmehYwt8iXzsHU4Twk
ojLQpIebCCyDyUPPFJbHaw0jwEdClBDBDbDovJCIJX+x6H7nnAHDPw3aOjO8XlE2QkFiW6M79kZp
Kl7yYJmtxmd9AzR7sACrHBUr9Jd0W4vYfQxrZyq8OXm87XS9AaQWc2dPcaQ6ypqhNLg7tDUBHj4X
7buc+56DVTEftvVY7ZR+7ncs6njwAKkDdndKgSkAB4RAElS8bUIwrjLXEOBJpKstZgiMZhHuioWM
3drowFTQPQwQkeBqX0BGnkuK4Gluzf+6API/vh/y015IZv6Uq3c2giR/Z7YIN9QpnUjYB3OqmKjm
NsdS3ZlcZPYkwquXb/dW3YHP8qrVsIElyK6iqj6Q2jupRUDtyh1PN+8DDJxEbqT9YzhKw2ZhNMqq
7fYAoVkvEVitedy+7Dz6nLLrKFB1Xdk27BZ/liTm8E9CHagFSSyYjQ1Z2K4kV2KXy8JwnTte9fxB
LNhmR7w/2Hxd+6pi/ykFeJfKyIY9RM+PoMbB3vEdZjlZJOecCjFKh7Ilg4HZQ5JuWXsr5pJsEZk3
TGcxEX84wEfNyfg36O7Q/jqO/+pjtjHaFyq5VqTgZdRMVNUGivmEdIW5NhHsPJGuQAoWuIKlmOye
hC5e2fZs8QMhQI/j8bPp6rru3ht/ItDMzSnI8rvG5dtaZ4vF+7FwX1FcGXvfUdayufsHX5TT+9ad
a76ABWlTWjZy7+PZFlK/3nyjLtmDd5JkGp30tgujHib2dUDxwWsp4DNktsmfLQD70RbOpnR6UzAv
wRKUDkGgJTiV7342RckIOb0c02JYEh2hntbYM2TKSpgAbh/usfG5kH+RNeuwo7pfyyCVHRmPIHxG
jBk+jbYG46Yj9UGSoNDEdC6MFTAfByHMn+NJutfK3zyhoe7fncL2z9d5yGtkvAYE9DW6gW9YPO4o
6wscBNtFJD5F2a8Po1N72BjB/CfFHJ2b0NKwW1eZvPlg7qp6PtwZGYKPbgR/lUEk2uSLXKpiS9AJ
VwCIQtXFf39RsPUnoKE2nbHwJ0m/eOh61pgKMd17wLOXFRdwMA9Bx/W4ej58q9ZDto3ALS7nsZKb
RMPYIuXmo8DRPd9Q5wEG3RyeK9P1/KdNEwcBq2T7vrq8tbfWt+UUGU0sK8wjaCqefg8whYSc/45X
nSS1RXlYb7bIj5hrKG92iwRe1pajzOFW0J/OxrXHKd/uOej8viQ3bw/lgr+4oIB9y1Z+7Vr/XXqS
CSxBIOF5FhrzxdWzdZVFyfQjEpKshBx792aIVFUYp1x+Z2lLGLVwEmdK5yOVztEVcAy7EzX5U+x/
aWGWP/Q7dgUh/qp7OzQ/ZYZH0M1DFpsa9HRbsfaIf6Kf9G2uCdSuLWaXo1zzWYJjwyt6kAG2c7IH
oqEIK3QiCXXfQjlbE/8Vg+V5QhainsfBEqgiM9Iez1M4NY8X2O/FYR1SCb7E3THIbkyVGPTDYesg
V6DX9ZRGmYsKwxPsSCOrEAyJFvc7NFl/lAz/QO62KtJrcY5EoKuHH0u64WfDz43H/XhRLlTJ/BSL
/AdOt0WvE097Q+ZVYbVRjbEoYds73t5DSDJqEna1dMW571YtDYmRGr/E2SKnzm8XoMUsemKblH0d
Jv5KQeqwOixTK/h4fVw3ZNSzmzZCMVCof/kJyTVukYU2rk//7Wo90sqw6Maqf9VFhsMKGJtADc4F
Mbjprt/N2GqJXI/zO9HLsw57rKjdpTKnhMQLLVgAkuVVcTqYZ0RKb2UftkGDqg2K6Xpl+1NE1Pw4
LfTh4HvvrQtUPCA2zRsO+OycjJgfRAhUqYUdkpVDEjKjH+adfdna2uZM47eBbT7H29J7MUIXrUlk
YLrpcwmYSbzIyLCQF4MD4lBP8zR4GRgmtyWY5GSEOz2/W5NlNKP20i6j9OSYEt3Js2wVYXDO/zbI
6v14msov+DdoX5kuMvAMLXIZpOFpdXOXN+PEMszCHJxpcuZTf+XBFb+up7ItwnAkCaDoqlif/837
nzYW9YHz4mjEA0LDYFn+4wWY6yBa6E5XqtLGbqde59CiqWtgv0LyHQ8CAOZkjuUVKow4H41mlNgY
gHRPwuxcUDZMWUJycRG8rrKU5sB2CTAxDCOu0wBBDHjwmGxaGeM0J5n/YFL99Ku4JtEWMe/x/ejJ
onBsb9EZcLIbaqAkD22wyX0yUllQ9WkRucUjctQSACzBHho8fwqNgGCrRyBtZ4aTi8G9evtAgMJJ
Rs6+wZVWxX2Veyki9/gsOTCmnHCOxyoKTJ1OmPBDBTvjk9Llloc0yWtkJF9mj7ZHImAYZQGONQiw
taX993W0l70j7nIMBXr4+V+0JkSDDqB7HZKUNhaAuZOJtQLuCoI9Ev+HmZx777nE4WTJzdWf1XGq
xFo2/9Tf7LsgZbztad8z6eiYY11AWOaYgUfK1IMk7pDoTPbVsnTPP2zRmrjBzSo4gKXVFjFpW1Vd
PXKFBhp9B1DUBSRJspCuWH+Q+U5LPh8wSfSaTbxh+4ezPtsvfvPOYRQv+WF9ERsMqItm9+YotskC
I60tKHZ+7HQvxZZRjdq45mvksYxA9KTENIHMxScttojyk1mKmXC1laf6GMP5yoJAZf94Sxe+0+CR
Bk59ctO/QqwXYuPiNZpxTcKjk3tPjq8Q8Rj7R8l+IG7+LpydRcsQlgh9fxkkVieoY+qROneUsPp/
jUZ18h8HC6nZpExOeUhDI2gb3WsDonXHX771HcOJB16+m7K1N3bp6mJu510zmfEAFi1i7dzhiNA4
iySlgiDGaaqKs4J2yxkbkMggSluZCASVSSxZfcsHsXkp5gmJDP9UOU5BTfhOHrJKmezkv8ysI89s
zQc3oz8O89L+b5HF4CS7RHDdQNtFOMugXA5isc2DLmLktd4drckm8yEVA5XGIu8irG0ObwP2y8Jv
HXqBTb0+kM0w1C0MauYMNlnRXAi/vIj2JIO+Y++xgW4SwkvqJsXJ/ZzwK5trgqyFUXs1tJQ7AVbl
lfci0yuaEfuGzsgyMwGv1V0ANw4wYA6uqY7FaP5xovhDITrazxqpO7UD1bZJE2UltT+/YD99FJdc
h2+SMiwrkeQGhXSOeoN8zb7/Rtrt78c0gbHkRxB44Jj6ag2IzXET4UCS5GLHwtbC3j/PooCgaquR
suoEfzT0lptd/ayiTW5iLys+dbdkGD4cOfitHdCy+uvy1P5z0rEWsi5FTSBkNP4liZbfTtRtyHwx
bLkDtNjQJzk3nYEVWjLQdr/rdaCOynbKSg3zBHgB8JDxd0Em8BTFvrlgUk6n69stnVkT74iexWUo
ilnHSlfKMhXAJOIYYk0Ogo76gvTwuxNz5Eh5/+4LCt7t55jexAfDHhnxXQHbqNV+gSOU/7AQBD2L
q9ou29XDNJKCBWsFh2rDcyuUnFkLnLS0lsyyBvG0zNLnN7W+7KHtdK66d5ZJUp0JaRswGdnaqT30
tEidt6wQstaVUKng1k8L/ve+/e6zkQA2l5FkriRFGGHC3W0Ir/DbdGPqXTD+do/0ep0T6d9Ubfx3
thKHKXJGhpxL1b66ZfmUe797ObfvBb/fQPan6hcLPHKZxtARHUCnELnc7h0UfTJotIxBf4N0xj0e
iUPwB9VMu5+er8bycal1IlOtYOZRc98NWPMPSYtdy/nbnUmbq+YLoUy1bqS8wqPwWgMa8BebjD3D
/FwgYiEudVnwLKAnsnOWdAAjDbIpaW0Lbn3vln9xjpDzgBg+rc1PuTRYx5+NyW0Ha/QdkMXhCzKD
RYrXsqjc4SY0UJ2LgTQQuB6l+7Ic6MX/E6i3FHrUrlM9nBrMLQEunsN+uX5Aammlre4jKKE+89lt
imgngS0cvd7JSt4C09w3MvuBeR2SjcYIk/+JhZGYoT2XgBfbVTq8Msxb0SLoICXT9gLpudmXMrmb
+4xz0DTYLrrCqTMceNM7Sx+csUcH0DhwomBbl1UMoiFDKv14aX2+pbHRTOLhB6LdhSL0Y6wubmT9
xadLD5iOWowqqZsEawFOXQgaihDG/FF1pRxtKtZ+2jbe86/IZMbU9CV/QtTBWqO9j3bQFG8rOvHR
SxzxgRpCZb2Mv30PUvqBPchsTl+vKEt+7eCFT2+7O1s0M4lZf1wTt8BUZ9DlJKSHjuh4y8oKCWN4
ai0vDKJUzXA048N66y2xV311OR1g6L6YYACe1WRya9evm2i4aURACHm7VrtTWWA1YKAvDcbMkyBn
Foawf+864Si6irqsCfamXWuic9qGckCA29YzcUKctGEQIkWfDXZy77jPdCHAPnZusXzx2c1OIkOx
gqXnynjpv4RZBfNNmWKUkLUc+0iHvUBPn7PNtJ0shyGZEUq049J633zBQrsknQXL497R1eWUs6lM
oF9JMDChELq67F7fNu3SuWsC4Fyv8w5EwqsqjNi/8levsW08jOAbBUN2abxhKDJGvCG9wasmZlnd
69e/eV7XWnn4sxbuBohkiJzja4XyWCZqHAg+tytKUpZdEWop8WaMgVVHCVoaZ4QbN1DFQa3J4WXe
osxEgAztM61RVy7I0tTXkVfVwHKkDoymcKBRfiv9PEd315KhAWvXcgWnYUy+FxrUErrhRYNLT8k1
8XEZ6p0vSAjB/TGKpaK5eQTMZ9MIhvYRQBO6rge1cbM2nssHjxyGmMT+8bJun3z3tfB1rx9f79rb
HLew22tsKghTFG4n13g1O+w08hbcfs06I8GFSnpIO+gTs0PhKbUtvaiyUQzLrMLRyKiWBbYDU7FA
eFH464WA41y/t+KkYO/SE9pjqV8KwP8cXAWv2cUoX1ndS7fmY00ge4MOeEPGRqr01ry7Ko00vTMh
ERBB6LdFi6kdIuuS3qgWSJL0sqfCRcZJcvNEDWnjknYqvS8t8FaPEmRylBoPFTZL05OnvOrRVi8t
/nqxm03xhY7cA6Zi458BhDrh3bkkVBc4Yeo+bTim97aRmzejlZYUN+WehzlwwKv6Uhxjdx1oJSpg
0C5wYVQFifpFKDcNKerrS/uZ4w8YXY8oQottsf7cbUj9JwGvKLQRsl2lO3UQwI09WCtW8C0PCczb
0nHowfnQB+Tm5xi7Y7nWfyHCk5wQHNqX0OeITqhFofpBdPGBF/PcWArJ80Lpi6rCFpRh9y2SnCMM
d9wVSCYPYgssq3Ayw/SAFm+9y4DBcVSHyRIieDyT2LGgi6LKMYrrUrvC6tXQYqa+6FSSzfVa4/nE
xRZhKdS5RFv9HnY8yn9kUA01NKXckJtnSwxhhMwE1rDhFMIKSP6hyPGOvkZZ0eyIRxRG5j+mnE0E
NEKaqVi9g+mio/bYULhkVkd+yXO951tcKq/bOb0s0Qh+SibkfYMpI5mIKi9JlV7GkFlT8G3M/Fah
FGmQ7hr+GpZqXl+zegsR3yIJ22oxWJ7aoynR9hTeWWxR4GvVDTsVkkPYTffcFv63zftNZxb8PCar
a4NzZS8IGs7KnL/uqa2DmED7xFNQ1Wj1g+Xr3kBNk1SwPJyzlAM7BNt41o0P4DfMBYpkvrVikRZX
6TQSxSd7bFzqzBhjiCEK0KCELyauFSh/GWQTknB53JVAsH764+4xdHq5hHJ4Qacmatc5icVOjR4L
RowVP0FDWW+AXOuKg2ZbQnq70+fauPpTm79M//V/jxhC6U3LgrEhQR9wbZTNAm+tXPCnFvQzZoV7
vG2VfHEDy47UZbxJ+NMYSSISshCoKYfgIjJgOLYA0HjYeSdEvCfNpGdGPVEiHSREZmwDwq0PFzjg
pnSQ5bmQ5wLlKPvKCl2rNKgApoLHgo/p3nLb3DIFZ/6ZRHrpxVmGOt4TbhliyXQd5YhGmmdyzsju
y/Jclv2lS7PEtCoIQU5iZfY5Vk0M1qNttAePYs2qdFVCRTR3s6AJkmd+XJVO76hzVtX88kCw5FAX
0TzF1YNIDGwvC81ffGu9j4KUHw8cl+HcNW/2tyHzxDVX5NaOcRcqtJVn9LBD4V3+fmM4ZeYFQKSy
IpCPraVUdBn2JCSyzZCppmFEd7nz8GcODb4/BsMEahrfQXAOe5F5Iv9rjRNnaY++Liooy6k/DVEC
9Li3YkQxalxb+wPs+KlZDwEikVmgCI3TBngqJCOlGR27JnI1gFm3ws96p2Fsa6LpJ9ZhH1acNE4X
Lk5f9RgVCk8QXgFff8f2byY1I5iymaAc3cb4taJNdCEblqvxOx3jvlfTztn5Nkdgk6I6GEGBXDVH
vz30/XaTMIvdNaa1IHyl7lEUR9UTJw/3d2yE3zMc9xEJMxiFXjYa2EdHXq1AxPVwxUbWQildnTEd
MEGLBRIb3LAJ9CqZu85SD1kOk/SUoRjStjxBbEYX2eBzGv4q5Km7NlBuQkIMD5Zm+dl4lYbqdjA5
iOoVcGWcZ1XASkAFSzzMhdK2P5iH6/fUZyrFBRobdsd/fWRGbyrnBniV0zUw0TwaLCTf9d4oAi5s
XEqcphZs8x8DJuBdaCq91fU45u+ymQpWDeKvzcmbrP6+5t+5Qfp5muub2SCslLWPThTDZWk+ztmR
S4NfhNEJ2Nh4wa8ZTMCpCVs8qZo4sI4EWaa2DH4u2cFAlfofUWnqLnge8x49hHe2kPmeDOrkzoC1
JFfgMisvWZ+XNrf3wRSjhf2umeuMT0hcLc0RSCwf0DBNVj7PMzpObQa1KZHGmRaUNL6CCPkLgWXS
UutHqL4MIHzqekW+iKQWLAYL8Aqiuc+d8zxly3YCrB8ZKN3h+itSsLVpogS6hJu5UKqYiQrI4U4v
+l2PAUb1anJBWrT/lMw5s0Y7FTUgh8tL1aYQl7aXbLUdldsf4t2LE3yYdf4pUO2I1UpKZRqYllMo
BoT452rg0CrgKonGQbzdVUcanYhfw3EDg7+PYbmwBn8EnL6nWkdRbxkpt2BYxXLCEdcrf/B3JMoz
+N9YpEDL3YmH/k7lWQmxSio2dLTCuajo39HLS/V2MQeZ67ZgQA+p+S6OP5xV0ojqLgRFn8UqD0/j
teVaKC/EuDjQlz7P5A9nGQ/1Hid8kfD5sQqFguUGsHOV0yzhSXxVxTaQP8a8ZKCM/j+Oekzl0oF1
ZM5VXs++p3xY+z0lhmEqQ1gKKMDFP0spH7eTO3YSf3FiA50J4GWSlAAwylrD50s0WyY4orisW2E1
XYKfIRcYRVEJHWYrIKoHe4LKwHDaMrR3MemzZrvA4W/pihIXAbnXweG6ZUe/qKQ1juXI8BoW4hpn
Aj9hLCOAkRHceTGQ/73xuUSlZBDZoHaxuJc6NNzGBva6TJg/jhRiuwZyuoHX77+xEu7sfOYnCLwL
3fRdnqTA15zuOPMYQ/M/871DNtm87CgNjT6eOdiFSXq+HjETynV1hNWAdjR3T+9d7RKOZHSYLCqy
ahuR8RJ2c4PgaXKXN6+EOIaDkkotGjFgyqXFO1g1xoQhQNjeQlM8OWH56egyBa5SA7zdFBuOnNaU
1F+ihTmA03Opc5D1GMEjYhyz94h3L8uxGA2CaTkPf3CEVq+B3X/JNtSGmY/Mn+JrBSka05UwudR9
8BWjh8+TtX6O1Q/vEF45xNUyvmQdm6SGRNnxSm1PhpbQVJYN65N/oLBkTzZaxltbKC7o0AtdvSCh
RMDnLPDHlVyltyAuZtD7sOSFVIR+pjY3tP5WyYghcq6KQRWJaJvyz2WC3RyFL2QIlaCXGTjQvZOD
vmRJlBIIrkdc2ynk6LHpGkQOdtPAii4cR/UHLKgtxEy44/VesDeMbKhFJ6NQFsc+DLTx+dsq1DcX
rjS0MMjxbM+nPav82JXJB2fIj+Y1SIG8JNcAIYQHLzo5mE8trf9qISeljm/JD2tKUPMjZip6sLbs
In8OBbR+GgR1Ey4tYRhjnDL7NeD6zbXCU7BoFGNFJd8LCoDWyBoMwV4+/4/p/v+2Mjct8dfw9gxb
LBr7W3UZdcCWhv0xXZ0AtaZS4TAkaa0gViXsbWnBp8HtAthAVH4Y6lAqvGceXu6+Wvy8X7h15Tqb
Lc3nUUZdvSuaj7KpVpAfTju0zD8WuJcgptaqdx5s6lEQOCMpPTieUpCONKHfbXXGBLHjdPpRxwmQ
TkDeNsazTPh2imSZOT3ru3u2xj9LP2YnSknduTFVWnmtfotpVPo5/+PGCRXLfWcyvuKe99HYWocb
w0FEOwFRb2XodPazjBXs0kRSeuHDBUqOiOpKQ2LFCgicaIOJ4OPvKvmu9Nv1WjTU0kU3VDEX4bA9
pqw29DwfU9cb1NH2+ZYwm+nxe7Wa24f9velz0+HbMORRrL7UQr1MkKRQl0db2Fwp3dcdHUiDz1Nc
qMtM3M8THLYp0i3dA7RG8m5AhFot1v1mh8FJtqxAf9TllaSSJy6KzZSnRE/0JfHF47wVVg0mco+c
IMIVggRlNNwe9ZZfkify2Exk7hlIqhb8AMRqyp2pr07b+3mjQ9QmNKm4bNhtdlwuI2PzBcvZUoOQ
jEybfOMDTFI9we/GGktvIO/fWjod2/P2xHbfHqWuSVqCysFUNZeGsdL+tpPW9e4sk231f8WBg9dd
C7rPqHHwNiLZPJ941fdgVNh11bBAYrAHQxwl2fGF6lOHGwTYG1otPjXaot8i1c6JUPq7sW4z2S9b
0+rCeP0z4Y/21gb8Dfn7e4v3XXucWFzwfWIucEEB19e3gUTWFH+hIaPEYRSbi7ydpco6r072TQw8
3KD327l3rNGYvAWNhTFVPnLu1HY0j8STnyB/MZJvIbOd84bi1dxAW/hagoKTIswNy7cAYD95kzJr
KVvyRya7h46D1fSF4nL7WPHcalFZhxjPLvPzRHpXcpcxH2mDR04Az9X6olxrJUsffqjvy+BM1rAI
TnhY+MnH4lMfo8+Z9FJ/eg9ZkdJmAgAfQqug+O92a+SGTx55UClJSTpPptTpzjeP+LM9auSQH7qC
WBDmnieDuBvZKv9j3bblkED4tb2krDztCT5+COFqqp86TKBhP6XrpxFwxwMULNjgjsUyq+D0FYqb
IiRJKJ231zck1oegzxaSjdFAdty4mWEMfYa06F+TK1GSR39zDwS9aDD4e7BDdV/hJegM8i5AqDId
hou+MRPbK9IdiuN96P7e9XJQYb+w8aD7sxXF3YLAYD6SjTmU5Pfy1+am0aeJSISnGLb/FZchpkRv
LYP5wmGxRwsdwVxwGwNCBmlCTeCIUHB2hgkjCmk2QBOR3bX4SWlseXcXA59ETOHj0Q5xvt1Z7h6+
gzTq9H7rOLGUxz4xZbay+nBybNTq2yai0j1BX1tyDmIBzNFslWaaw1d82OpySLudadAHCBXugZB3
N0zBoXPX+To8+WAkORV8bHFGCg0JOjVaDs+COhyoOWRh/hO6XKpj1iZsYc5L+ZbVc+EErMezpAXu
JDqa6Qxx75JW73MAExbj4+vRdnd6U9vc7PtzI6oEPD2yptUV+C1ybtYE+wE91WdD8g7KuOBEQgBu
Q+L5mRr9D9XAjgXjxYOQ5Zua7Ofwg+N+ipIF/+iyftsX0pkTBqeEzSH85kcj0ZRx7McIfOkEQG8y
5UuO3hEX+kJ0uPyY/nU2BQpzHsph3XB2FAk2K3tIA3Jsdk/gk7PF9v5v6raCH6Zok6Ganzs170lK
SaZjhpaQuJKCdvKVsflBcKdtT2UXXgOCOpYdBYZTZ151PQlUnrPmnkWeQwtuE3+NUEXtoN89ZbVr
tkIj4fsaSsO7ZOCTEC6tmiR6VcV42klOR+i7SVyjR5EokB4lT5WCskjGykf4qQinKk6kZOUShb/6
fFwYQTAKoXTakDasdYYCZ30a11qPnt9j0zadbqjwYKszXmYgbGvLkJnO7XZck0RfDAeYvL5r0Eam
iinmQl3A2tGp8cl6l3Zu/OjDxFOEVSKdi9tUQoZQdcmY3t2kdgahlxKViDDbIdgcUryGGdWh3yLr
Z6pIDvjX995Wy+FNVx+naxuwNycX9w2De3hhTf5E0MW7EDbYIaSL6oB+t2tA29fS5OJKh/xdhIae
q6JcE/T4WMyxt3NWQJsiWCY0chuVCD/6XiS6z8K7AsPOyAlSmZxq8467iqOLM6VrMRb5cIgjejJE
XW99rmDQJSkYlVrBPJZuOj0rtf2iXu/7Oi7IKYj+C+LnUmim6o7YNE0R1C/6iuEr7tX5ZTdXMO2Y
PBvP1MItmFIgXFiAVNAqopbrloi7yXnJvNVuyD1QEdhd2EnYI8wXLeH1BvZ8muiJso5v0QOK2tLe
5XT//l7rQnajXJEWfc4GlV36YLvrym4K0RF4+wq43oFmnzv7+MC2Dh/2YUgGoNHn7Hal2IPYUK3g
4K9ATeKezVYC7gLYoPH582mF4DFGdCUKfp5quOBXhsxYlPMoqywlr0KahDb2/7UNrHgQxI/fMzGl
0pBv7zvVBJDSLvdLyVn8fqBWmVICWKS60JtqQIBnYp1zlf7mExZuGVgPYl816qoccN94BQ6ufjqb
SWWV7SPRElGoHkBB6qdE0f7dr0HnftVMCMcAAwA2eeHpSWsCGQOyftgFa+D+L4GyTUnGyRAFSk3y
HW99aLWNU4NQZSEW4ubziUwdjiasgAQpFQNAQs+iFPiXxyV/4dOJ6CVe5yO7hNdfU3iKjdQLaINW
HC0cSsd3oXSRf3sGUaAAirDMGPfTOzA0GhKnYwzRWF6UVFRNqGkN1Nq3K9EKqQIVTCURpBqbyQzs
yqU7nPDbhc77sNoXzr0Fi96a2na7KBT32JKzI3TssN7m2Hdfh3sfohjgN7Bj9ys1Jg75+qY8oFMy
DVmMmBsd91zOnSSFElvcNZfOdn/WyY2bQefrxLLj8eZSsRAilYKKDfUtIaIRPEZ5Vs+AcPfplT2H
VnbwEqGrOCCDeus0QW3ogB7X3e80R49GIAVPdYyJgN1IcHA/uVIbUGwZ0yErOIWLLsn34chagjSX
UNX/VXDCC5FuNwjjssJNZUk/Sr09VWkhLxl5xQmvJ+FnuLeqqVF3JD/+NQ2IGQb7PvJV8lzV4DXj
4O/0L2hGUUuxVl4HDKrSgqzS8Rz1uXKc+yNyBNJDVwaxQDphrquAy6O/Ekfe2U4oNcfqzzpWHokP
Anm+xx3LEx+9zZApgl7PWBetRoKYzAZszWXo6kxCK9DIqdMRp8BjGdh6BLoS+36jS7BdBzLwdxXW
ApZMhv6Yh2Nc+eFv3Yd/ixjQnRHQDGkp1DsSBLAuo1LNn4RjZMf2Sdg6YK+IIgM5B+5KJ2QrxZZy
LgOWM/O6ZU6miwJT+VsYoEq8eowanqi/si5KaKtQv2GYWTI/TtJYILTNviA1sQvDlrUX6ugIsoAT
jOv+iZ+ktZ92YEoFAm1tdmUvWTr6kUMR+7NOp/WrVYnE/i14icXwwAPeBDtcdFVX2mERaXr86BbR
u+e3lB95C8geTvhirZ8FY8Mx28aasb8ycGOHiDyJzfxFKTx7cF1OpkJ0JPz4USOyxbPDvFHnP4At
bhaAPJciK3haqblEfFXRI/0lp1ym7HA9dGXwMjLUJ/zDWcH8II4RuCPPMGDHD7XsQf35nNfJUV7m
dLBkAOLinjKRP0zZrhwOq7yobqiNgCHrthqoy9WjS7/iJIawUCGHLGLWIXWa8srHNqSaFQKBC0oM
/uQt8+26myfLdqKc6ihGIllubEZwUTihYT0amLlNrnBJuAQUHaMd378jPuPtmPJdxeftIGIoWDTR
8guPLcrZoKM2AONfuN6fT2rXs3dWZhQ1iUBGSrmYEv+Kjf3h39lTZHMHusmz2rD6jO+P/caAdhLc
e2HmC87Hqa71toYofxweM2rY/VZ7OVUyye9v3HiuJTRHH8Tx230klyF1zis+IevJt0LGuZc41mtH
HxoKN2XQbqUD9f/yeK5/zUzy3OWZcH76NyIVCMeot5U8eVsqzTx4+hDju7/bjkbKRb7Pt8VeewoY
DCkrJJbTfuUS6O/dLbb29YfOqfUfBQ8yn8Q/9Q3ChxrHfbq4tQ40B9fj5ZOwAlKvet3UFgUefpPs
fTiTjuINWNUd5bxh9M0B9e2vZwVaYVawnfsWZGOaNZeTe/vv3w0yViFAW0ioMWZhT9YTrlTS0ZMJ
0nbi3U5+Z75p46H5L8Yq+Up8PZUL4vCXw6APue35BUAZvQQ/MNkDfAIOxkeCLqGDWi0lEFVpU0Sm
CevKnPvsOa68vlBR941HHPbBAafKaazT3XRjNrc8dpol8CxtIVAro6Yhzs6Pqor73ZNKVqKOwQ39
zWrznV6Ap6Cea4sAqoE6lVkFjPRaWy6LyMRXOk4fEJlPiweUvpsRbroWlPFZmGMQcbsDRihSgF6H
UwaTdp3vUVGriGpmu3+QowBnCj0vl84yrJym0aMyX17ILuMal08DCyPiOcZ94jf5FZTeE5mqk5K5
aZPGY7Iqd71szW51WknhiPfN5DsjhSlmguKT21e1CGBQS2eLRnQPbfK3XTIdeXC66kCflU7mY7zN
B1p7vCanMXRQ0mtbl7EiDF+amiz0Wafndsdy+5aCLZk6jDsC8iUiYsXk6iIXLuUWwrRqy9lyjjUD
MoOuSbwTPRRPzYzoUwla4PmxMVRemZozpLL39dNreNAE2YYrJT6q1dsO0CsyAUbPVa/BsfTxJ3dy
2AAu+nd7LhEgFYvwh+BHGN732S04Y2QTZWYhgTw5wQHXjq1FNZMOsyZRAPBXauE7Png5Ey++YfDG
IT1sPV+TH0DQ959AUmQXHBlZXzkwgeM7DQl19HecCctjsToMxyYcOeGIbrOv5iUYNULIbdL0a22n
/2OBGwmS2vfsV87uWyvySaM6hjjFXw0H/wftGt6y0bU3hwftMSxksrsSynsjO3ILcpZuqQ3ppGhc
ZkSgnE+MahVz/Qahy3PRn1X7Pi9eRyJi4oCi8edDSizTI85/O8bfOa7rSFV7P0HTSiVq5I9+To8E
BvPfbvYvqko0e3HX0ewIOhRAlqR4i1VOVph3BUoRQRx4t9hoxITMBUxfyzLChYRCz1RCz76zOgmX
vjIj/hy6SMRjkXhjDGAKvxwWP+CMhPwNLr3g3qSWrn5ATuUJqK/lz02VOP62ZsvvHGgmsubQsG1G
HM14btbtRTXA1GqJPvhV5C1IKgQvmnNaBcWpmBnKbvN99ykhzcCqQ01Ak2zq+nza029KBo7eUKlQ
XWmI0Hl4y5ISdUJ0wLLyf0UBLiSU4h9PZrzfYBE+97HDA8dn4x/Ew1IANpp3J6PvmJMXYB+Hx4NC
zcL7B9nlad507Ls0kaViVKYlJh9y0aPLOvuvOnHiejVkLflAIERuHedzn9QGC+uD3M9OT8KCzNYq
2HOy1bCEzt42jbhXnGXH/DPGpAF9pCYCzQ1ZQZBfOQWl6WyP6rbld75n9J8wEZS/6yC55Hb6bFzw
2tmoM5FCIb+Be/Lq/VM3WflrtrLD7RKKvVNEWYItZt+xOQv6ne1GFzw+2u0NLCLz89aWifq4Du8N
G9bPjzY87NsUZq9a+co/Zlq5LFC/OzwOurk3PfCF5KCGC6x5QdcfxzMVW1qoVjc8pl1+uShVqXKX
Wh6ucm6LO7NyswTMWlSed3fc9vH4P5/8dDt498M+x7Mx+HW1ITWZJ4VnnGw7OBlHT5eyilnMqWFb
lmR2+RJpw3qMQ56xa2+l1y6SHHy4qoap4P/UEiLB1TyD7s2MsflF1TClkgKg79aR0LtkSsR1JQYA
V/2+6ecrVbTkbVA7km4v7KvUyT5UhLRFQImx7sF0xGbkcJwf9Yb+7j9IRVh1b6LZW/nPC5f6BXOa
iEYLRFA5s41zfCXl2M3WrRtKaTEKrboLLhpOYqDxTVqPV7pYX0f9hhmQ06Qm2bnMoRXcN4k+5uGK
CvyZPJqiMLJTGa3F+lnF8OhXk0iztftp/DVJvzKy3F6Ttfb6vVPTfObTbUp+gL23lniaSIG1WxI0
5EEe9FA8Yk4t1jH7mC9JMOMkvt30IAybxq6BXi4uoHolnaRG9ovaqlUUgUsgdzECOGmm8gdB8KU+
ceDpVvY1Fflf9/u6SaL31tLmzOb0Hl6p2otmizeRyE0ggk18m+16AtBJLFY0jVF55OQMRNeGSpEX
vu44bNHCzJX9ol4CPDRwPaJSNAXrXkm1Dnfh4UMJ3DYQpV69Fph9teoXPstp8vrqeeMV3a0PDkOs
+fGqXIHzBGQp2ii9ucpCWcQCClrwbr3BCLErjkN5REilK/EH70krDzFfQczjzHIyDOT1sbKx5MqH
VVDpXBlA/cKfmTq3HztL4mUKgO75Qy6rq5u/G2tg9wUcb5tASC4up00okkDgEGfM8wDzwFRAid1S
ym4kFBymso/EcEVmoSC1uFaYnNRj/DBavocfQJOJfB1HQ4Sm9VqR4v9GXXS4bytAVEtcmoHdPTA7
a47onlNH4pwEzeM70uPLG0MpRFO5Ci4Nf1Glg1ncc11d8dwQzpmjhQ4PiiqvgLONiAqJfjBn3EnN
avrxunzgPU8oySPJcoBjZW1BZcgE5puKonHQGN0Qk65B84VZQP8gHpGbPsGzTR2miNfBOtEaqqPt
LWuG5IVXjdEo/pmlqZv1nvWdEGDTOIn8yLBjgqotnKrP4LvLdafU91MAoZcpET21WrcTqkbIAt45
oeMREkQAF1U1RQHmjOrTGf9ZM7H5T25mSEfdjjKPTf/KUexw6EqGaNzJ6RWWP1bmnYLc9KLbTba5
G4O+r37rst64WgiUC+0QH4VsEmzK3a5+8/m034Oxd0/6j+muOt7IYAUzst+Zf/uu9sCRB4fpC2mQ
V0L/kHCJpx80gIFE0bcaHrQMossAp8w+4FyWaUTM9F0dQ5xLoMwvH+0tqBWgjNjewnIytcrx3EEx
q5AH/1tn88XGqWLE2vXBQ4ewV34ktHnYKzVYAIR/mOtbvPhs4Ir8it59XMmtnG07gO04IL7zpqQw
1wwSgbA52g5nh9ZZRLwJReJLA+vfTrEKDfWQQMEtJ7Gdt3x1NLtDVfy+lLmfRibXzbrpxyjfSKuF
7vcXmydK4C5PZV1aQEETOlcNM+h8SO4EPKUWQ4DdMABc0LhOTSpz9YFi4k5y426qZimffDoKxuL3
1npKBNwKmtdq3XhPQbdSMsz0ng7ETxZJj4gpooVgIemRHxAVlLq48vbv9iazRFfJORhSpWsj6/KY
Z8of9cn+42WG9wULF5k7FrP7v80XtYEmRQfFv/rG9MWWSqkx5KkmtTjkvn7ndYFKVfHu2a9S1s+t
s7bpUEzgiArixRiJB1cakqMvj4J4SiuMF23+rF+EJP7pKrKeyK9n3lMGrNcEOb5C7BcN2PnKwV+A
wRXoB80E8RQf1N/MF9zXAWuOdQZ62nF1rQVgHM9S6Ji6zzDa6Pm60HKsVI8mnMJs+t+2eW3UfmqF
JQXbp9XrE8ShSu2key1zwS/bILVuHCfp9j9o2dRn+od+NlS9obwLDSnnS4rnF6NrSbVf0NwyRx0+
UYhhJUtevFSx3wa4ZJbUaERv+JG9Xi9sqwFedWqFPYdIm+GuwgafkdV0jZ12IhM8vHANQ4ApTK2j
12c46VzzkLdXixbl6cn+ZmBj1U3RvGyE6fHifDsPFXfqE+bB12BJQy65OwFL2yQqAfVIIc4ha6Uk
D5ZeMJITiKj394rg8TRj9I2vQpUdW9eqJigDSZ5skpVqONZi+9FCV86tGQ+rfVclfojsyaVCl06S
UwPNdkJ7GZ6ZGuBBHIC2/ObAamq2FFeJUR2TAmk7xSHDNIZUx9fBfRfk3wGRD25e4cai4HWx2LGQ
WdnlQRL7LH4uz7O7ihw983krdjnuUTc6XP6nF3uyIQlvc/uUHDK9H4DsEkYFVPdfLvXttsJdvOR6
YXKhdvfhhj7MKg2oO2IPFOr12WaIKRmWY2Z2r4frQr60sZTbFbSAtmtI0S0AG3Zo29USY/8zGZbb
oygANx4dgmDC5vM/X5VmouTH/otcgOJFkRqG2zLoWrnz7UGLwmBk7GouiO36ppmo+J4QNYgjmFjE
jJAaDRNMhBAoqb7mfDmqBlwSRpvNOkMmyuwN5oL/04QTCDY4U3eghIBIKUmGFoGDCprU9GNgDaBx
hh7cEyeuYrGTvoEAKPaQcYFneS2jWEodiKowO8Sn4lOGgGHxBRobpwk58PN5yQWaaXftCaopliNP
joE6e/rT1XROwFTf75KgZZXpUrOGtym22cbE1b4B+tjZOqlv4G38H1GoSr1BLGu+GxlIz6xxATnE
KamBvot/z7MHPiE6y65t9aLLSD2Gm/jBpvCLtp6Uib/CEfk+3OdFx+Z9of6NqDn6VOShLZW+F/Ge
ueNGrGjCZHwRN4BLlggWKSQegzRcd183j23wuWpN58LRgbgGyYc0QtRSVxGZpKp7dxyXbIAF4ilR
gfVXCJ+JJljESGaQEv+tGoeDnOutba5R9ojiz/XM5hnjZShpj1CN+rWK0wMVUfJTP/vXJfDxu8Er
qcq6cwmItwy2CwvTrIHWP0TiZdhHVx7OKl8BJxvEMk8Bx1pFvbQOBRqD55XDJoA8v5ljHuyp/BPK
qggauVgBT1/q4TxwfcmLhgbt5ynYSHntciKdQYwrnxCH+TDdGTSwb6upEiJ494mQ6zLaubXbsb7g
zv3fsfs8yWzxqvueLIkobQgnNpI2J270J3GHsAzz8erJ/dFgaSDbuC0xmJm4qasaatT3rjtDPKtQ
TIXUUui3++f5SBsVBVRC3U48ZnYB7atxdH+RAyPLyFDepW5ce6kZ2HMwhNsveMxAvmEeF44Dw5JF
7RKV37E7f+uWpXFbGJk1fImNnzONe72hboTanAKrkBDo4y4DlX65kJCIM6tt3SKZgnGz4s/Ng2YJ
G6PlkW3mywyAxSWOB+Wx/ov9huSUey3FMqH9dISVrCb/yLgANFqVvQjlWrelxkTE6KkUJTYXwIPz
qJ2IGR9dixgCnZNtvX5SLIiQnGingp9NBqRF6D8OV3zG06+qaML6tH8cp7bkypOcgGlVQiXPqQQX
lctiY8N1DUyxYPq66EY46C8qU2y5YYMZKbK5vUnnyxERXhXLr3Jkw8SBlcACX+e5L7N5SvwyXCW2
k7s+q8b+83waK54GauygjLSbLG2p/qUYXh/1ysOX0BP7sCabTwG9QKkomU1Tcz2Oao+/Q9u/sTCK
NRuXyX7U3h0abwNcwhMSy7cOv84EHoDZ04VfZGcXW4vmn5psEXGucOfHiwzjBp9D7CR6193vLGAH
NoxFXBBTfPDbvPI0d64g37v+00r8A1udF3WmiJD2hQ63uLKZNHGLcXzcXhw6HQSr8wWySBJHuJM2
BkDSmOqYwJba0Mz1d3JBShp96cEeRWBf0sfiKggBQJebobY81UmFopeVvQ4yErLP75J2b4S4UTy3
XopwliQhdClI2iw5xbBHxnngUDuOYxrt6ZEDwAZYRWWOut8ncCmeCvnfm5inzfJnXvi0ZgMq2n90
FJMcCLgPayPa9h6fP2QtBPFT9VOIyG0O3Bn75ORdTGH69rWNJyjzBdubkmtjLmGhSHKSAxumUu+f
7ZLop4/l06jwgQysYsPNYwektHHbZ2WLpl9y+s0/FOvLX6MWrK6vcLXLr/NZfBA05ww7LPaukl+7
hQNyyIs0Qnc0wv7k6gKN/foPITXJcaYR+3l2J1y49VhJ0Z8OS9ktlgkC4w4bP9aF8gmGleA2JHtl
JRYqOxOKzurkPhC8mi/4QnhN9Cb5/hsrqLVs1BIYvnNZJpwa4QZeuss/W2EREi/+X0g9P5Yn3MPx
H2Mz8wihie7SOkSALRt8HzSc4VKpY5xvnWxFjR37+W7z9B85kACtYFL7+Pv8n9Vj1uwhULWo3jD4
alO4zesiX+jAxEenGUSdhPp/eBG5q5xAwIIbVVy1eD/8FawAU4f9ufDDH/q2OhD0cRjU1owhCWsf
/9Qex3vWycU9iJ6I9byT/qGBbUeQwTodDo4jG6r6U276J1XnU9LsrEXapRfZvhewL9CYkVW+CoxJ
6uz3KYifMhD/X0Sh+9Z4YFS449DLWqA+L38PMeYToormMumd+Hvy7QFnPhrvsRfHS776sYrKdCkd
t9MBMq6ih9x2di6Zft/pTiR1OAHY0ZZVRExSf3k1qvNaAHF2RsYLYt9LJ/s30JixTpS/fD0/dLRa
EXabMnhaBE69l7yCLXB7vE767/caJztR9JtKhM+yBT2rmpUohan/w+Q+brvyYdw2c4BrOWTfM/Va
CNjx0IjZjDgcCwIV1rnY2dEZlNAwae6OpfWw+6Km1cjp+WfoLX6875amBoJxArzudjsPsvyQc7bv
3vbj8JoZBuYo/59qupPOpWT3DBJFrT21QNtVdM9kEkRF8car/+W8xQ/tEYbZ1OmpPIXnbFnq/eOz
MxC/rVSjylh0dGPq7n/sFRWh3BnZt26UhtBEKIXshS9UQlpJem039FBnxiz1loO3tWO4i1c3zX0O
/phMAYyhBssDPTNkOQY03oLB7T7dU9EZqidUtwAXQgt9EU/CBxPJx0wN+Aqs4d+j3ceFxzX2PWDZ
4uz7dwJaZDqfM+1Qes3P0L6kZ05/b1TfvXHJEOzi38fVS5HRHPih0+YixqmnB9Tw4l1AoQUlhHbR
3LgiC2TJtQp+7eUmSHLXOiZRy3AxvxGvrjkV8nIdo7ib1xIWVMs+vFbTJo8K66/BxIzW01G8qIe5
22scJsbl6IEM66+YKFAO5tSQp8+XHDGw4BpBgNgg6sH9vOd5hXL7z9s0xvgjG+MnMWpib406MD6V
RL7rrpLesKYvw/u3J5KYShc4uanxlXq7iU0t/i2Lsp2R7GJrZwR8fk4UwRaozh4jHM5PoLTnB/tJ
EY2d7RSm/1inh22ONYjOhmjLiiYOoHA5IedpzH76tw2SjI8gLg4TOM7Lz/zBJd2vYIi/PkTtTZxY
VQofdGLmgOiiQtHGSg1F0FFckzRvJecKp9YT3v+d/MKqLdjR7niMrEmzYHL5XILPempPo6NFOC5A
V9gfvunsTVuRQyz5GPismqTpK9kyH6CUBLflfjuxcmvXqmyRuCzuvBLEX4f8lNc1U0iY3enkOTXN
NlW9krss1OGjUFVWXYTdriomXeLo685uUjL8eS6CUvrjpFTZc1kpdc93NfeF5pRlq+1xror7+0IN
eImV0ZPdvD0mnG0CDjYluyDtDLHDqAwAtiOoul2urrEhAHfN8SHPhZe9nkeVGOYMb25HRnSYhdl1
5QkulGnqYeGkNebhUWFrga5RYqsu/EMeo7JQiwAuOWWE96YkZxbJXK8hgGoIlJY2GLVm/oqqDT+G
DOBzDqZpGoa684XhdBt/vw+L+a+Gcp/7NRT/JZdvDHvdBClRNfIfpJ7cjwTI9nJXlaMhT+f9vrgg
UBcXHr1y2wwmZWljxY32pm7PDYDNgy4cwRRgSsgKrWHiwI0FodiK15PbuRzKn7FQlqkxSCy59cPf
6p/dCJBKK/M74LdLco80T8ma77ALKmNYe8+S4uL60/wbdFnDwcZonxw+/bGsEeh9VvD/15AvP0NO
r9luZVc6oQDbg25NmbY03j5f6XLX9T6NDCsBbny3X0qCpdd1BDOCavSJ5LuEX8V36lNSPt/hzGCB
phX2bSc8G7jfQ+E2adbi+sraaTMejrJh0i8XNnb8qbRei0CP1CV+5TGMyxsx9sabqNEqMy4AMnfY
uThInufAwJ8t1teaLTm6QBX2uaWOrl3TOKLl45N3+yt08wefrvXS1KuqxVVTszVVbCVkB+5OqZMP
zcMPpwY9o1CuHZAdVa2AGx6FPz8yqEFRPa3LJ33cJeGOMFMYzoHl2nc7i2AQCDfBOeMQP8g42li0
TzD6RxjgvrEGNruriqUoLMiB8HrvlzOVQkxaT0WMAFD77im9468n4Scy3v4638MdndinuQBXrVhe
/jKiulwFCZslAlq4sfaIo2Lak7Jy0zQ38Eu283v9SXnSRWxQsNBwLPj+R1IuLCX4vnXeJ9YTszkv
cA4z08zsw13Ag3REFJu/AnUGGFk7q96lq6Y50tCDETTKEJ/A4eRuheEnljhQLRFZkVAbne7M2muI
QpZQrLtm0n8hM7TqExJbjeW3j2d5rFLISvW1EKiNzCgFbGm/Zh/mfLjXdfa8Th6sfibXyXlJbAKa
B1bJytOWuDoGIBWtONfTIck0aG+KcNAFRJkC6ActyT5xHlzNY6PE0SPf+xZOqP8Zi1l4mRRScYK3
7nF5ggQU9bpU3USnkZhShI2D3dKvMfurp76AXRo30AuOxocsTkHSTzu+XKEqle6PHvgxJ8GC9+g0
WZHrBy7Lhrg9AjIABkEatYqcAfq5/I5jIuB3N8ltyahCsDdKnjuXAW4W0l0hY6CRqp22TJa/+YXs
hTKhF4pt+KonvAabB0PyYxdLX7OCIQNti+kWjnl8jTzQseISgx1zAFZFIWcnjG6GKRZanhL3Q1hv
4mguWGaOirz5aZ6G7txbsz5o0sFbpP9HcoYf0FmndBl8jJlLIyKXf9RtSlofvXUpVZsMbX4KxUeL
4iWbwkmWTyTz5mYOiyrQRnbe48Rdh3hN1tclqO6JTXT4ycFIcgcDephJU0Ig3cwpG6FTOtXcqgqw
0c8BkLY16jE5vqbLieoOIVgs89kniwlPybTIHFV2CGdapKItBHs0wzHxNhlprGp2Xkf0YPPUy2tP
48uU81iQIKxxplvZmxpABYhdJFL10pzPKK1GmBctzVbjwdsfx2coIcXE/MbXS3X/o5O59xJvciIU
FK9oOG5R5Ag1Ofm4o0v128T2rgUP4QlAsk2tbdsdtQ+DW9CnqrtjPhQoxryMlUPN3+doZr9Fc2a8
6idwJqClE4QagLhw1Bd6xtP1zV5LXGgZNHZt5OYUanBEm6iBuTA9VstHTUXBSEOLEwD+P+0DkQJk
28t0CvK8U3mVr4jQ55T1RZUsxTBO0xMQwC6jed5yxED8SvdCu/s1/Vve7vWfRDBHfG9K/6ZyfMCU
VRVi/XaGktP06qUE1EBP5F+PyOTeybr1nP6eNxdmGncyY6VE80u3NCLKy2oIop8em001f48cmF+Z
C+iQsocbqMXXI7sAoZP+oT7g0qqHVEOBISd9yR8wT/Nn2zcd4wN1q7uXOgBMDemop9ZNfMQRo4H3
0s4wTBsdLwlhImx4glI3diDbuLWUqaFjW0sK0D3RxVbGEapmq6dUxiy8309oEgFhtUDPSj4iUFdm
dUR0aNO+9pZyrr0KUM9xogEWBxICIKQqms0WA8q97TuZwNIEg6K7UNJ3fhH3ftwjIZH9gJ469fce
F7ZiNq3w7GvjB7tMbYbCGMSeHpJrh7Cw7ELq1srfwf8QYzlaTYLLMUEIQ1XMuqz2eNxgz0US/kIa
yZTye64iXWpTTzHiztWBTyUD2BxaaIelbK8aEw4l5OCmm79QCGAI9dRFOg1pYIRPP8UVwB70J6c2
3zlyG1Np2ImlxuZ9XxnJxxArYq4VxQWaA7omSKrAHKcrUVMEHny2JrbpT10TOLJFxzshNATb7T7n
4U387w0i9nS6jXWG6kMCqhsfI52ySZPCY+riCJwQm8IH+tG1aOzYNNy2nwvXz8rOxWTmqs05yfR4
YXxr7zdezPW30AZJoKStvYeDrB6Ddu6q8qFLolt+H0xpbHrUY0fUTOawQXgTYdQFGIocVFqQ1pNB
fbnsfLHdLyK3ea6UzCZNwF0iWNqijJ5iqmHMQK6iARjnJHmOnYvlEiZOQnLOFQddhOLWCN+87ikl
p3LkYpDbHFHp6e7lA6Cyytwk4uNH6QfcV1Z2R4jAbKYli2PS4bKTEtiHevYHS/qMuqzH/ScZwJjt
epfD7DCt1oJxt9sekYnGUKg8diaFnGCvdNt3Is8gtY2PyuHI7RR8C6qKDnOfYxf8PnhK5qt5YoK3
OmK2blVkzCZHt+4JIsBH7Vvb3itilpqeAsF7k6mYrBPsqDwoVY1WcfShTZGAAustKXy7NOOik++X
R1Vkil0Trf3GVXWBPVg7WbcjrHDw9E9eJ9HS+xVHMOxDpB5osTwYWJHI6KgWOQh9ae0G8k5Q3BZq
Fdm93aTblzDQh+RKxfH0dpGXeQv2jqVV4RYje/5qjX/SRBUkXshvUl2R2ADRFErhwC8T5tx6zdOI
3eu8l0F7wxWmng1Gpihgb7FTCoZC7HyrjImIfB1BHQdUsrkAEAtyqsYjovuGV+OtX2FQ1Uvk/96W
Nl5dAag3vmo0Y278t/U42MUXthZm5yvUjK/4Eczsaq3an71INvDaLHfdN9lyZksLC/aT9AopRD9P
BywlklUWZehrpVpopDHAMl+R/VPDKiiuJAdauobeSyvQDSVrHP6wfAPYpcB3XRDJMZmiPGnDlN9y
P2VI/plWFFdvt7czd+iRYdxMvh+mHkSnioG6RQbPvj2UquT08sp8UDtGR3/p7m/03SOoNbZKtnEn
++pGzgtAskvlqaCy7R7GIMtVVq0T0QMe3c/ue8oqn9fvbrCaFoIHw1buyMz8X3o6+IpLAUTCQ2Oz
q14FFc3UZ4j6OfLghgaNxMuUTBHEQ8EU1weqsdZumJ2pmS1eSAchahYQMdQ3Q5C29iQEtxq73lUm
WfYrhwduiw2a4uRdBC/lbp95aDz+dFidq3wpx3ep+38kckUjgmVdizwWhuIFFl44ad5jvBaJ6dHo
k5VmzdyxWCUUbyQpyqYdPZihs5pSA66J/58TW7VW+TjLiZMPgikfhFbrl+5qrs7Wge2by04G95e4
L4s9/CDKgVz1fUKYz7C8wCe2So+j8hYL8lh1SVclxm9Yo7jtUK6pTJMbO4T/r0wpUWu6vTK++6xL
neSl3OV26Jn8BX0/seW9AgzMUs5XKmQ0wa+eMvflHAKBLHRsNXUUYQtRiql/LULSWWpubmGFFaWT
qWLPwpzm/SY3MLcReNoYmZCbUmYgxqz1hrp76fz7Ml1mg9lGkOqKTh7ESwC8KctpVGUF80efTXdH
DQvl0pM+jG97Ry2SsMV0M+WWoTiSg6nTxUAMKK4NgQ2ZkM7vV9AWyF72Ziz7vMEtRCRHOSNaBFkv
kj95Yx5h/HiEVsfdl7LunI3/Md2i6lAkoO4q1B7spUprFYb1Km2P63NXT8Ffl8BMTg0Yo7oGQ8sH
j/ankQC3VlOtw7ih8UzeScVuTjnynfpiOp5PIGsazCC+oUXL8TLipxFPcN5TfMgGNYnG6L2Eaq8r
cY+967dM/WaXYN4lvJHb66dSloxD0D7QcdaPyMJvvxz/sXOq+ZgRr87gHmjohMfv2LmWHVJJQtkf
Zfn4oGeay+JNHSfFQDNE4jzyjoYyNO3lXeJx7TQdCsPxU96/s1qqG7K6O44fPC0tsRxM7yYcq93I
ZIaeS9Wqh0qN1hsL2JwXI5cuwNJxCHTdEYx8kBNGz35Ds35phIAhiH0KUAU4QNW7oUaVp+o5fn2j
alblWsk5MPdoJQMNFiKHIK0JSL0oiYksBVVITlKNc2R5x6zlrPUTf5tIiBkp0WcCQqQ4dzUVrpoh
BULvMaciNSpcJStb1oQAjZRWdeoeZxan1ccZwKOgnuPV3Vfgs2rVSTNNc22Og0u4w3huKJuEAxh6
v4UGIG9DerMYFlFhh1/8cbxThlviofdKLtc2GPj7oaR4MZWjg2mf59bSqAYGbEGOqjnmHD2lJkL+
ck/7jS4rxPrzUw4rNtNEPxMk5yhRHaRXqOAqfAu5PNt8ChT8LmsRU3RyEAZWXN9fO02+jTMIu0Bc
VVn9iV++R96qgrcTGhWvbKj/L676VRV/98Z+OgAjzahbepc314T5w3+O6jY/u5TcvlaghegIpCbH
vOiv2srEFCYjKh5YptoiPPbWcmWAJZSn2bSyTW/bk4s/dBM81Kgg4imGV+Kx4aoEi3GDtxjxT4rF
YkygQhZzPHrmk/yPOuB06XlEeFYM2hqnfAu1Sn71HUnX74ROQurvJLEsuEv7Cz/0g6x5JtfyI8ja
PvcfRLz3EpKqyZM0yCcqbsY06kky8CZ4ouo7d8eBCf6L6/0yaULu/YPCgRnCJjm22zJM9c0xeQXx
YLCXIThM6O/gtmq52zWpnT6sEU1rDrpoAjUSddXumoB3eGGsU4oodrfnW9p4hMQaHwyrRQf1vgoe
CFUOaUBkNzuytwHx6IlmrMwNVEEt3KEWnWEuEiTKYr26ILLaAnfBMGfwXvZIs8EFSrtF5d1iDveh
vrr3M/AgXbULcLZU+Gc3vlbAzJVNPd6QCDgk1FOc+aeM13/OJwSyWdmbVtNiLcDtCyVT25GUg1A2
FSTvGnNkCFY53t6cgxsNKMzvEF2BXp/uikZrnJpWFKndpnU32ZEhImr0WtQO0dWP4bASzLwWIDbf
YO/a4rzXTHFo+QpUkMXqgibS3eRl95DIcIH8Am18MzwfIvvJrF+RtoTQo19HxOUaGp5N3+13g447
SoUjKV+y9YQY8YeZ5kzhG5yce9Q7wyu9iYsHDemXrVmwrYArak6Wc2BZshqdsGl9VU47X89xknMI
5HeKhRA1VYFSZd5lXLGZhBq3Cfov/knE/AE+s/3kzQ/hnOF/UC1O2QEOsgWNfx1cCivqf6wTnEeZ
TM6SDiiLrNfgh1N+EEbXglNgKffwNZDVxRMu08Nw3MhnNYIjCgbeQ9rIhGtHLPY3oUX4AXp1HHNw
myinKc9TYT7Vc46KjH0UXb4kAGKF3K0LGLDDB7JEJm/AFOe8BmLpnwO4mz4DaYXXRqqfg09miJH8
ypxo5cDzYtSMI9junO13JWNsnQdXurdyLWDhhA9fa+ZZ91AjBvC7CIo0PGabTxxRkJCtw1wwSfQq
kWr9fI+vCGUSQ1pzxBExMhMR9idVXy+j0kkN+3s4Kqx2Ngi9vThIwu6htAtNmpjJ/D22S4EgneL1
56qCzzdYd1eNs5mtVGxgUWHz9IQCo9SfRIcXzk0Xr5drHUXnAljCFv0xiUThLAveHh2WHPHGz51+
XylxL/A8Y+M+OQfpZbLVvSXlGql4KnbL+49y7J05e7o8HJYDNEx1sUfsyZv7kBZhgN+QWg89rH1x
iiJs/A5cSS+nRpxtUF4AGa8Dgkv276u7d/eCoOtRVniF6Ce6aSoru4A28mETcExL4kMkHEYqbiLQ
TpCavz00UYQ28058SQg/2kL066zYLScMA+2VvU6V9iIrN1PbqQW3AEvAzILaR7+Wxq4T+YtuyrgP
GcEyNxY7IAhry0xLhoVY/P6r702o6Xjo+LCWIR9xdgjTD1SlnlhZMQ1i4ZFz73YvSrebsJspeeqc
0eyc7CXLNjyqceYsfv7ro0AI/XvnISQlNnyh45AAHBnodqwkObMPO/7TrnzchjoGsbp5GRdhEHcr
snIFKzZAy76gdA+pEjN1iGje9PoMk3F2CGuwEqm0xo5ioOlxTcnR+qeBWLdKqxe8rR22vSCAT8PI
6hR6L1oFi/SKzsHYDCs53LjVTgOjzNtynDSWqkmL1vht7Ez0B+4RcuWsSXBo1m22ZLiS0ZCp03ph
SS9Y6v4GTsbsLI7fiGGX2kzezVS/b152tl1AJnsjywCWTMLez2qI8cyUWv45FR9OAanxpMn2Xhzt
f/XrIu0Ky5kCxgNTpmm5qBvS8DaRYRcZpQzZka0opnDJsG6CmXV6BAgKFie63cUsgdql78Zi6n6W
j5uffWSH6fyTa10bK/tloC4oQaFMJKkGtw92SMUd5sa/WzORTBdrMaEytHqQ8LYcEZZWb0H/F0oQ
Ufjoq8r4p24AIZ5K+gbN+9yF8TAPw6DVo/6Udnwl4s2F9pZ6fje7HIN0r8dJJdWaELzCxwQazMkY
Tm5kaWdsHm32+Gi0ldeREHAnMSPCNZ5cwQzyZKS3OKlbYFDdSh15PZh97s2plFZyRalPj+B02ioF
IHyI9sIEP8XjUaRwDn8rqYYyV7dOSirH/4WYNN2BocxgVw1k80UuDxmCXau4TvxK52TJA81kfV78
iKdUZFpUNBydg+uOTGoiJaU8scPUG91hRLK+elnLw+Erhu+A+Yi5Vw/sdpKFbPs0mkDMSRndoO27
8G8KUI86Zh7QuFToKgqzIMPyqAP6RuPTjczQJ+Ui7P6sQ09E56IcsKFsNAI8wXzPWWZYwVTGmPzO
2JYzc2uIUEwOiLeulyqQHZfAJxK4I+UncK1AUBOzwUWJu2aOE/OEGXbtMMk3wwT/NCD/zXunpESb
DKDhKNu5JUCDbGRKzlPm+H9uJhiY2bHyZILvdw/fQ+DTSo1MFd8nLDoV8zJOhZLnht5ZmzD7bCHu
dQRPvY8BDqvMFUcEi1z4/Kt/aLTQp2MpVD1YIojm49HOkChET4ea9Ptlvh+XAIi6CNtsP5JEuIvE
tCNayMHwGPvVTHgkSMLYk5+ATRS4AZ0LXVxXf8ixWfouf4k0x/ljNKDbcL9mSUIK8e1Wh3oY4nEv
IvL6MsQ/jB1ar2hok3Of7mFjxclimbMJ+ShFxyvFRWHbXcK8gbvdDaJWn8O+KOvmwngXx5EGd/BO
QZnGWslhM3qQT/6LFA3+WlXKp5TdsKpaRIfKTJ4EBWHOQHHtJCbgyBxTJsSuWVqBBsK8Jv+fapo7
bViwXotEcOMKqJ2xxKjZIGqUE4o/4cqFdUu4F2LbZKwbWFFeUkiMEAlF5aci/kFhES7s1s2Y3Rfd
UoQ7d60Y7PHBJbDJZq/8kKZI5mmwx49jUaiDrqjdoQoeYNQsZma2mZCBXwj+LJZ4YxS+KIHlBD5o
Fb4CnRbdgRbvvuGsW3N1KibuuCL/n3IeEZbPbQqWpPnuCI/Hco3LQLcLT2HnQ2JeYG6In5g1+F7V
2zRCcDLJqAZ0yCP9x4zYbwCgre8H4GXPKJqE1ElkH19gzTlxCkJI7rr+kvdYZrpjVA5eyA6MV5H8
ON2EXzYjp9Re/lLd7ic33UqAJCCxmSp9DLzoUbqQ4ZfUagRfRHxMIvr0IYcFw6aHVYB+WVW/3BQH
0RrcEOKPf6XySD3edfce+XpslempBo1nouyp2CPFJiXJ3CeLtTky+AYqRwTAus95UoljvwzlPWV2
bKND//KKx+sO/adrJHjZDiI/28VjI6DF77VFMj/FMttfn8SOFHKhbfQW4quoXCQFe3Dqdg5gSsPN
VOLUVXOrL4VOMAcL2kgseauhDPZ34j4HDQ6mvd4iGgr6mtbh12ip4t6gS1KLSIpp4T6jR3utlTLZ
ZZjcJpcrC0N/eXqJ3N5duqiW40x5gXIN4elnYnMoXxW2eYFFMG6nPWgjTleWHuGBZxm7HPhD525b
yRZ8n/WUUIj3YCSZvJv6nYvAPoEwidRdpg5rHbYeG95QLchkgi3mwu2JfTe5fGOFNaC8AFFe07kI
ANva4aBbgVQyoFbb32B97QEYB67u6DK5q6ymo8G54JHV3wnCVkLqkalfxqqRCrWv+PSj0Nb0qaV/
KdRnNmrgQHPVeM1XFGKZZBrNKClGSXGXyAVQ9YmywGCvKSNIjK+hRS0KcgSbWd1RW2mEEqUVjDF8
PwgjMcqP34/TECleUf7LugmAgT3wn5l6vYfxK6N37Xvk7Yt8H+s8tjkLUG5n3J8qiPPXCYmw+8Us
k7+6efN5AQA4TQeBL/ZnAtwPdrtQpp8bhYZXx/rxLPAsLUnpeis55n8uvXD+vWB37rx/FEE4anio
DnY3nfcOLDoMEQWFgMv+4FIjGT9rut3zWWWzaQ0zfhxFnEqf6Bh7mDjFc/EkVP+mhGqJwu6+xBsr
Orsw3yowWWckJROULngZezSqX27AYtbL9eugcJvZH5DgKje27HUgr+0A9eX/hZOd/x1RdXhvIcBR
d0pOGlO6c6dVClLGCb6w3gzCUnF+Kgp/aPfneVcbnmZaoUeiP+oVpO3CX6OcUKJY2ugbJnhU0Q5d
qpbSyGp7+72clQW8JZ08Zw5wrSMCGlEeG+09FTlfa0wDD5QiCVZGv+LGgf5NLvrDon8UGAUnpIUh
URIMdqhOarAI/LEEt8WOGqHkVJYiK/CkPuyPxP9AlH1M6CeS+ULTRjtC+bJIHKtq03UHCEAOk8p/
n5XduBzq2xJJE9PrIglPtUl5CmvdcdALxDdTL9cdi0UN0iN1aOnWXutvFnU91Mm8xsuORk9TcleC
jyQyOZBqWWC2TAHVE8lCl6gHse56HtfNxmG9jnkPxXbtxjogxCDV6qAYtOyu7ZtZ717U2rmAc0p1
SpADGtJv1CLIe+bpQcZ3jpV21TUQZ6xCZmSkCJ4lgiMyDZiBG1KtpNvp4fgHLf42uCJhE4HeOkNQ
9pAk9WNdawEtFEczSfZsVrS2PONN0FHi6OjhcIAZbX6UqKXiaoM37XjVMJwbxPXrAeA6QkMWlpnf
igmh3iUw0bDApViU7tmg+UTlA3u02F2oS2EEIAc+0Qbp6U7iCZIoSWdunoUXg6x0kX2ozZXUbcv/
poz7Q7Dh0j+7kGqNV2pBJejQMeBbUOnagI0DbTv08ceZQmxRNaIWZ3rKYRV6dwHXidIjuZ5I7Uw2
m06z88ob2w/pOu+XkM1A+3PDKia5we3XiRBjBW9KKx/mZ0UJSHABo+H/PYMUBr8AZF+eqsLuJ8Ur
6XcbbIgqbTRthnr6uS7ntRZDCZXmRSHf70+WyFXi1qO+kNzUxGNeRqtaX9ZL3sAFL5QhdauLoG0C
YaUO4xBrJSxD8tiEOIWc6tm4LgOuPm6pkBuCJdBxgcOAoCGbHvy6Xd1s8gGfxJT6R+vdZFagkD6T
2ePGGJBZJUQz/dURzfRv7mfSpuzwkQvTmpT6/kvPNbLdSKuSg7iOzcgNUzMY3cJhw2Rg+8SP5nVN
670ASJ+R0CBOwkbMYqBPQ1FP5t3ld3TiPkxCDJd/uci5sLj9B3OciD1b55PQDtg1c/+LmlVTzfrj
mjHKDyPh4qO+I4MzQ7b7p8n+cbNp1qPcBsnEGkiqX4ZY92sndARgC9UeNY5Vwldfp7/v0ruMvA7y
VzEzZVWkPhrIo/QzuFp5iEDynt5znzWmqQSWr/T1JooaWDoV0N5cIIAQYpQDtDZrQUHCmNOTJI3q
LkwPhpJfcOVg4NDGMbANAoewlZBpgAtduU332BHHy6YBMtBSq76jFDnhikWJP3qIisNFDeFbWXHt
8GmzeXtVSzkl/Rz5rdCxB40JMHaCNACEXY8LfrQc4l5x7HptoH1vuYNkWmv7LfU5bxcKlS8JwQO2
1l4oumrgUhfrfRKqOuWrbhvk82GglQGrAiRBQ92sC1OFQaDGD43FadLxmmfxGTXsvcRaP/d9hrX+
/yEjkcM47dWNooJMDp8NSQ2LMvwTPBU4wDiPfqNS0JYIbasirJVfRA2TwszF0WeOmrllMmqNLYKU
jMzTmXc2QDa9Zai/f2LfMB5zhX/aYp46b67DR1FbleMBqrFqa1dDYy3yp5feQhuO8bNTvUJgyWxI
Hl79r8mmp7sdRNRWgtFyhQ2w5D+OfdywmkevsG0D/UN5pMufKzKZ5WaSmyT0o33ANR2vFo9u2HvY
zNK5Q873NTULvcnCXW92NqPGwgSvrfdsFIewvnvWwjyyv1hrEKDG4IJEDMBh4jEqY7EHKgCNpulh
JBNcc7iMQYcYaq0DzvzCZS3JLXfBotTVWWCgHuf2CNWxBm3Wqs9cfiiCAulZUg/B2ZXgQBRCbH5b
nKRqTnRzW34VookdqW5R+MqCMnGTLp6FoMBmsjiNd9d8uJx2xjAIwjOq/69S++a5Sf5oCzTZmiRl
AFLpFyBNBywgRPXeUUv16LfuvOIcPolrRqm5Dx9RwDb2afy8bbMDTEDzjEp4RXEXsUSmhsIt8hvV
D9HGQsCDUnXfuizobYTzUagOraY8uBOOGfZXAFlqZWh6/WG7p91v1q1YYTH6DFzFh429lwbNulcT
VWfSVx3Xqa13ooFE12SQhCYSTdk2u/E6Kc1CruMCI4/Xv+lwYOEzLCDYKosw8snHXHQj148PKgE4
wqVfGVjVyNgiKU5M1xtyeHMxw5F3AwJ11vSHLFwoD4OQBjd0S4e2iRMlFLZoIrxcHW8w2XKccOkh
1XqE9/a1oe3uGUspvfSqkjZyCK/fYP+0ac6oNkCaPw9mPJZmSsdYp5N+54VV/uJteUZGwN39piGq
5Ow6meVuRkAyI7Yg9HLRG8myE1WTBCvQgrUzel4qnEsqI9fdVT6Jc80kwM+LIKzDSsKeYn1NaPj4
K3dyMxCdXPwfIRlVn2mYoEPo93Ra3oKmCkJzWLM3UfGBqOSc92qTQ0iWmZpQ7F9k/J4mKfXfOdIH
CZXskOs7JYZjDoTCfklG2tWYeZ6rAyzBSRCVyx67zC5ZPar8YgKYfZB6uByfhuS2JdyuPE+NPa4K
9gqdz3zpRqrlCUXgWjCqANMbiz+v9TUG1ZWQhaX6dxKtXSXkn1dXffXCwP0h8S7EjvwtM4wLWjZe
O2ovarbdV47LCZdN0kqztXVKzEI6oYYf2j7D6I8SNuNeUxBqGjtlapnizFH6rGdOmX3xYBQyljG+
J5t7z4WzvV5OUIAiPAnjezqc1YYvGldMu6N15ljXJWZziNL3qoe9rRK+5XMEUF3oiswARmW1KgPO
QRw3kbAn3AYaOIzlznJBN9Bkf2U8FWxqTQehHM9vqOkTDhHTReN6O8g4rT8Qh85H96P2U400EOtR
Kj8IzOjGfpCrRE9gAHp9vNjR8Tu1CwQ9tTytPpkteAjl7zun2MN/62C8Lb8SX404IkDtF7o9/kQ9
Z9/FM3y2IPlCO5wJCNtdfb/z6WMPLPm4VsqghIDOEO8f3FXf+H6EMbZIw+4acEAsQ+YNMBwC3Moy
W1oHufgRCvJZNbJv+bE9XnCWSKIViYKs6Im56EGvBkJod38nVlrmye9taMjtQ5zStcQhoz0+ICAN
ryyTen3JUy/LqmtLokJrcE2rpQY2Z/gQ3YYsGD8BLKq0eDG5GZzEU7lTVmajPjpDhhVhmr765E81
1Ujopk2U5/NtHdrAqyyh/UmjM/kaXPrxCBYza//E5L2u+3T12wKFpHCpnKyhJoIZbvuIsMbzYptC
QO4dHww2z75j8CRLNTX3hGbnYr0AhT3NdNsZxXHcnO9Nj/zQCGUpUq1j84Gi54G92ZD9zQNnL4O5
ua+RPhPByskWBwdjdaMUKelfgvgwEf/RFcqPkRwGkO7bhao+qjxbVSErll0kFltUvVt0yqVuvKEJ
YzfY6IcFjgKnn1iisUbN0Uc0oqqT9U00K6YeDz6pn5z8/WC+TL94vTaDePKTo8kNqdJT8Det5Oah
tRPYicC3wlWoCsgIYyT8oYpoj1Cwm1mvJyYXfNSGtmwZUbcSl/AGhYXqzpSU3TM2Ga05Rq0TgEJp
wX+c9YSQTNu76BhzJcrGD+uMAVbQB0GvcMIowDcuMJy3ryl5QCjbkkKDqIWu8W9qs9EsRcPjKog/
BzS51d7xpLcuMwO/uUo8N3CP/YO2wxBqCDGnsZ9O2XS+frgn10E5iHR9Q7jYsXlyiaLNFF/6nIDD
YPVFVLsYTPJ9pwSMUF3trebwQICOEb7vUj/ZHcOskQU6ZekpHsLkzCyAfxHkjbSUIXqC7cWYbXEV
/kAEAco7Iqil1fziYj7eXasZF0v4GFYr2Fo2Kv2/Tw09pVewg+hxL9Aim52TEK9WJ5rRzBUv7E31
Yz/sIpuZd/UQxHEzLmZK+yTFzS5c2EpV+ONsPCfeIFGQvIsiWOR3Fj5SM1mqJIv+T5J5GIPAfRLS
hmUvfUwQJwLmiDWvmecGHFA2ze55pRCw2xjgYDTWlP2oxqLJIx9uPr49a2pUzSfmiVjDAJTqKEI2
k5kJv2yVKIArN/JxHUpCPzzBtcSrCRbcHUQcVhCEkNuiXD/d5rnr5I3BohX1WevyNhkeH1RreA/e
EPNEXnVGvk292vTfah4QMmcEujfbbOFNJCBAUDkM4rwa9lHhUmLejFDNZOhRK/DESKQthO2/Zl1e
UUdkH3qZ1u271U8ciWMg4KtFQI7CHcIrN0KUEmGHt+D+/8buD1kHT8RrfIJn7Tr0bdgAmTNm5Dz+
vheo5eoD9s2I00tgmJebZ4Wmio+YhG94x60M9UiiOv3UcLHczT05n644yvr/gEiNSmwCem6qf3z0
Xo8j0QpjsKZvNmtOEb6iUki2c/L0rNQ7OEEVaOF8MKvRWXq+o+Wg2zfgeArhUFwRfTko9pjQrpZx
xCx0FttEyMLPZeomCvH82Ncb+XEIK9B/ai2sFz9lbd+WcTyNYI6V9tePtuDJjeXkywOeeWLqi+g6
t8Mtykoa9mz8sdJTqE0dukwlft66rQAZjjdqTQ4d6jePO4zsxHtJCGTNz5iQxAL7dWh6hTC8bbl/
rUclou/9we8doOXyefprE7Emb6sP8fi3iymoIxMBgNhvEaL1MTFG6ZlmjrEIpTjJUdRUm2exJHf2
SzROq6kdxLsfnSgK1/sVxKI05YJE1cnrqs637gdpAp1PkVngRq6V3h94Viuj8mp43PeQCoS2mAbk
J85rvG3ge/X386e105eLsK3eqydcBXkReohSwV+dWFkoacyn8qI2OyDwmoOx7LIJjSiWM3aHbvmj
aePQ4557ZCIKXyUTLYJtyOVsn6XhzeZpx+ej/+Lnfy85y8imgCD2fQbzpOwwZsKoSzkaSBrEIQ/F
9IutydxUg4oJnky2erNcouMWJ25f2AD/UZgqhRlKU4nG4tyOrvaifdfAcmpIQnhNrL76t1eYA4Na
wdsxWbqqwAb7VwdvrID5OLT3dRg8KoD+jIN2AipShdBNNAIa6a3+gVLuWVeGSFI+59FQX0Gkqkc7
2AhCOcWrxNMScwQgFIjYqoTjvYmrXmn3CaHvXRtlPbpTKfVSRvXVPmrBXSywDp1i2uL0+bKSB/tM
D2vHlcPh3acNMHVPT3YZj3vGDrIetVRDHSgoy/zerpNl8pFxj/9MqECtd8rnH5oJ+DSloAzmQGHL
1TzbfaTEPJyhAtZNi8BWZO0DqoIu7/Xk1xLuDLtLTcQbSXEgEuyM1mZS+DIYBNbgXGqKuHMgXShw
WQFbS0dmtu7ktAUT7UCMVCSNm+8mcbIRz9aus28XRjrC/I2OZvdEmSsqCQUMA3fdLf/GCfh+BG3w
7yIyhZCC8k6QxlzH/nefGB4YHNSDBmkMT42OBkB2ZqtuYo1mAFK1MDUnrPjG/Xv1A1P5576YEO4W
0//9RvLHLUKRg2HITkdQf9bktk2qbd4Qos6JeyP7icT7X8nulTGTwuUlishbBTKL0WciksimVuQ3
q0YTS/xLQCHbZpY2jAiun+HEe5gBkOxRRNkVoiawbm18fXVEM1k+hJmeA9KhMdnnkgRcFsNI7eGB
ROBdTFeLUj5y7cBvzHuI5FZxUGw63EE3uSqGNnKCLvYvuGoLAqDKsN3a9GTYWCoyizPxOOy1HdOr
IGqcdm1/D/JrqmoAqpZvFskrRdgG4KMNhLqxsuRqsZVWA7KDtpcVvgg/bWpF7GUdq1yj8YlB85BE
QZIAtiqNp8Dex4+/EDIH3FttNM0OBRwoaYpVPwJVVdJqWSa1cLQjYBT72MRYZ87ce/4BrS2En/oG
GvZa6FpzVlIfdVr/KyA1PB/dwfta7gflU3hXv15YVyjCgbHiwnz0tHcNkXAKW86m582FMQaHUvtw
rW/6PEtn+vOw7da7kaomFTdOabuthMWsXukFKNy1wquJ0yT9DaWEnuds85PPcuFp1xdg0dmLE+yD
mXOA0zvvyZO1mGhLd+ZZ25/Wr7bSrkz9C2EUf1qRmhi9P0K9zmMDNO7I0whBuGZizCMSKWECdCxR
Zvjx0XXxHKADpzrkK0Cjc/SGlLFe3X+ZSGgt6xF7JoH1KxlDC+MGiaQBgjoeXD3xbWuJUBLc4hmt
XGWUPrzBTFBUsirxKPVoPeoRvRZuuSK/u7F+vATO20a1bkh3MlBz2luDrXc7J+ZROJEJhw45PgsG
HELe3OYnVZnzLKFYEW3yU1pAT6VFWxE0u2+CDvmakzVd2IFMrSKJ/zldj/y9+xveMPIzYtg4d2Jo
+xiBPyZtRMujTMdUmTb/0JXylomnafqcV1BPc51PkOdSg5aexGWxGcV4bfGfLJrViDjOFWDt+sdQ
VGGF+le1afxIrBGI/TaX10jf1aHu/I3dWwOOJn0PNe3jwNN14Si+BiZQDYGE5j76oZTtSyfCpz20
FtUQ6WJ+JXjhU+5oznwStABEFQFY4MhUWLtB4TTzWVf2OSra5wBcLHccXTsw1l5vpC9BumxHdFAr
Q7qaD48+fb7ynOX5vT0Tm4TjiZ3UQc0kBw5W0TvG9frTjd9yVqEB6TW/IySdvRN07b4AHbf7gDPZ
YtNJAWErJjZSRIPzPddygMmNrph1FQyTVOISQPvN6zZwEuhy8p8aL/H+5xZ4aU7bSHJX9LrAmkHd
2iojc6hJVfxv+ArT1Vz8Vxy86QdG9uin3324K+QDztRl7Cyh8KJtQVJYi3/FK7FoPtTebxAtakUD
0cNzFq7dP1csZtmtTQ46sCG0zZjaQYf2HG4AQQNJufGqYX1NH/H2P8Q/kD2yGtiN5XHkdcqyLGew
i2WYDs2RWcJEOy49m7zFfhx89mPpFCsPm61O72F0zLmVV6T7eONOg36CgxauQiHwcyhVA0YGRj+A
ofjerOgXoPCIzss3WjqrmCLofABHUCq7hGGAzU3lBuMVVbKYPNJHEHn/VAPvMmVihF6YI2nV8T1I
xEQt1rT4Jpey2PqbTJjvQsu2bHjPlWN+4tzKyPGWAdGqEXUth8RSodzxCZhYHPcv57sbzNQ7SCeW
PdFCAqY0YyPqp+2xc5I0qERXNgKCnL707lnPtIBHfgOFla5c8B8C1MVTZ0A/53o2mW7xDF6BH9Hb
uY+XaUlbHnq5yhVFOnh0bBgwLCWs/2z+LNUsMg502XVTQVsfg8vy6tqt6QGZd2F5QmWf1G1h4JAy
DcDw3qkt1tN1V0Tlcu3SI4iBVp9UhZhf/WRR+AiGroOB/lzAmTELqfmGbIhkbFsPBJxa2yC5npc2
Tiq9YX/D1Sz8EgthzsmH0I9x8af/0Nxow6Zq2XZqEoVmPEWXDbMq8QAYpCoBP0H7jQKQvWJl51us
OATsMQYcAR+Mz9e8IuwpG+C6VhmbARIgryK9yEEhhxbIDPIBQeLZ+YCipJDevg+jkMhs2xo1giD4
FVUp2u15Evty5BMWnb/wEuMBhkFB/uLmwTm2t1htnmcTaNDEKBBKezE0ZJpJPIubXF+shv/7ffCn
5ybt6G5h1GKUjVK4hNW2atRnUreBK6ojiY9iJlkar5aOjs+DOv/AvrdNKDkfm4cxDtLFn30J7yaa
QcAFc14sTeyQfHNuKoFD4IUAkw1Tq5/IiEk4X7p0+7NfZ8JNkkkoSQKqKw9xyjxy81WLr7DzD3Pb
UUykcxs6lKWWZ/un82zGNC2XKaueJFDZmXobFpdcagwO2svvGwsrM/5x4vT4DY2foNbhvfyAYsvR
MEbKdcQtvjBZafihvUksXL4bbEUxtVpTVPM2Z6ks3qjF2X4Fl08UQIqoh6uSExmtVf3+B5/RxaHB
sgh5rfJKiQ4dJ6fk2VRSFR0bFs5B/nC9ZXv7OjuPzk9zOjCbJNLwuc62XgPxz/owtOByCZIQPsAB
gndtLrsnX/8WAniEmph07GHoHgCEhKLGX8TSzaqxxwRrNcxrVRKvedFeJEA7RZJ38+Dpd2LUEdj+
WAjsTAG/Dj/kvgvTp9d0+RDKiiDRyWixTQvFIkVEQ13VNfB2IU+Cnqlrcht7QzpEnyh1bonIjHpP
tyiZYp1vxsIJ6907z+od1qM5xvFzWdM5Ye2xAksL9e2qFODOZXbu/1BjUTwgvWJGX5BuUp8S1Tw0
XsJhMLnWey57HDuNFmu45SzSc+cHUF+qVI/ct4Lpu7LT6mXfEgXg7JRQbLv6gEBlgmS2gjhicDOM
LpVDCqfeOlgT3kMgmXJvE9jqWyZdi8mjcHjmJhfspsMw4mxHhZ9B2DWjGkDWnQr9Rair9DXuRIaZ
t3FmSbRqLVMOyi7ruukFWrHaihzuLfkCdndhBxt0BoFVwwUHSe6eIeAH2F//VcoxoQKLlFsf5vRw
O5/dtNFHd6fmMjtNeEnfupn0fe8q1fN6evT2DBM8tYw4BHSucFmjQz4BweYab3cD3Mv9tI7bPhsd
kx9ebp25FfslLxwGl8PRLFH1/RTn5ZWr/Y8dXDINHbJubEM4i3GumVQEgAMGa8KDNW6izwj3ggqO
m12uuXhXZsN5XWHIRMtPa6wayAN64INcLa7rBdTNfje/uf2fDjA//IXFonPhF6oDMtRWETN79CTb
/6cR3QL+J73puNDLkiwkUQouLBMqQHByOXQ2qLDBcOD0XRAD+OwK6Hey4QdtUsWd647+rhSDRt+E
R8VuleJmMRerwozBgH1TuYJijVuYZRY8QeXDt6iO2U5a25r2U7bAtxZbInU5tiyXPdmXNVIl0h9u
NWYiITpvlkCB5jjcR1i3MdWP1D1OI1ympLTn5hboL30b8BtIh2gDSJdfwg/5GpkF6J1SE+mRUMoi
AR0kRQ/TqfPEwBgfG+iCYRBYE3FuN2yMf8qiIPt//TYo0QlGim1sUs3Ao1u6dzoPZoNjICC7J6Pa
HXrcMOQqv2yOxL26FS+LXJ7bHP07sbEeKL0x7nXUlDOAjH8giLh9EJzKODn7sZPdRxs/PtyONrgg
XZ6Amt9pi35YRbQp6QW1Fmr3IU5eFNICJzFvUNZeel8ddCbmID4TCo3/YNCl2LomTqfC7/hk9C9t
mc+duODHu5ZEnGb4shtpewgkhz1/Chf1+2CUcbGYF5cAyMGbXRwj0eRLSqHm2AMWLvZ7QWdE/bC/
p6C81dSqgkOyt5yAjReUgnEcpWJAUUCDfUcPnBJt3a5nVSClalmnWG7I92BlIjycnmwwf/VRk2Dr
MUPflfe9NGH5O0PJphSDt3IUHWLMMoYaT9cv49GQLhKntbT+BO8NKnSCJYWXEg+ANcZElLt7jtBG
2c54RPnUfMFXxzVslWM9p3CSzw9UN3mNUjnFH/BkfXG4PhrwQKw5+6zpasDunxncNonbZwphSZy0
kuIZufIYQzkwNia0ApQz8gY8nFb6bZk0vQFOqINSXSAVacNFOnqhMJWP2NeibAV1w9H2Pg9OXWD0
rfkULtg3fmzUFPS+UPIC6TxcAzwX0Za6AK6JX6nYtL1x+ahdjn5SQj/8rTiIuWrHjhXT5H9fWJxn
06RyFWipsa9ANXypRA//lrZcKfc1qR0/0GXfpPMMfWQBii459i8SUeThrjp1Zm7hQVv81FnHhCcF
WoxZk+OROTC240Y9oXPL//m8agJJXMgvad2fXjyjtH46LPvRRhCRjqhWP54VGbbBixcageNjS1Ji
lhh4ouK5AE+9HGFAqCFpvViLaFTYLuT853xJve5H5KQXXprh7iT52ZrM+3TSui/YlUaWTMAzYGgu
XHjzkGjsMXKXNZKdBIJxdUJ9vEqhc8eBjubHzcjhElHng5m3In1EdMWy3CGBy65Ah9M/OO0eeTR5
PxXQ9tTB9dcvXpQKs3kNfnQJ7yLfTziOUnpXMe7UqsXnCiYyb9Oivp83/3GrfVnAbe7K763Im4ZK
nyEj3ueNweu1Ime4GnqCNM4USOSQpGeLSL8VSbge0/r3QBcJdwBwaNVbAi5UyjFI9osZTbPdwBcP
bV3162YYw66sH/Ax69tpCfw45VjbI1muj+myynLN4rjUW1vm45D4NP03FDc+b6Uz1EMI1qeHajSq
DrVvGFdnNy1/auQDx3WMmVKlsDxI1OOniuDlNDrY9C8vKYdKbTnFb+IW9/mujVdd8E2zgEtsjtGv
QXt4ZBFcRGjnqrghRWqLH7sW3xeVZa/n9UAgwHygha4emb+q0vdFyvNchCWDWjZVFcrQLDoc/ksu
JKvtnU6aQBJSbJ3mFSJlDrv6NNTMNwZ3nmDol+31h8RL9/HU40XOGR1A8wS6QNrxq7AntV4ZUH9W
+bIgF0tU/HP6Hg/v4WPpW2nSngwhC4ufgLnIJPW9WvkASGDMM9I9iY5W0toWj4dFN1r1KsPmiTaT
pX3yvNy3J/QYMGV6i1wK/lXm7FYDyaQlF7zLE0Z508QQmY5TaqhsbY1ia9PXDH2zZBe+lZDyPms6
4pWbZ494q/z9yPK1M2AU64zfynM4bLWX2347GyRxmUryI/iJtFhDJYjSuyMEQS3XLpk62jtdz1FS
LsrSDXELnEmoqm+AQFMERuW1qDNeiT89vKz9GAsNLsWVaH050nv1xaUNYxDwii6rJ0JBXp+YrXQE
D11gkE7IhJq6JGjYS+zVixbWHECpZorQXORxzq5PO0p9nKJBbeUkgzDyqV9m1YukZAyvOwDJk78x
sOFTqCvf9Dkjwd212oaedtB5xc8NAleQ3QxzQyxfVO99Mhh47hqfdQGHRSfOI20qEe+5VrvyiMSv
uIfKBoHnWyx/5+NOtDgZ2NogqizNeWZn+JXvkuMnnoKUaQXWIo8qF7Uty6M8Mo4z37rZc6UWBaNG
IHmu4BmXSw2xANG2m1XxjzE1HH1pbxQbjvHtuIfTssyaakFY+nIbf7KAq1xF3YpIG/sDf1c8Jd8H
XHMc6ZFFqfGOG7P7uJXBBTurokEEC8oNBwaUAqoAK0lG6dn/T71UCOupDm6q0NrAjSRB6qsOK22v
Ji0fGH2ZRVDeHrp2j1betD9L3qsCf6rSUd5Fh7DgAXNvi0NATn1Zv3rOj4vdqJ5Me/2qIOqxEn5p
X0pq/s5myP18KWNp+4Ob43sP+apWDKuEYphoJMZdGQ5GG1n4Rxj6XAwZrRrMPjxsVLhYViIR8N6Y
n5FpY/eOlV3qP/MeuzJjtoZOxFhFK9YmZVGt6TknMMePbmOkvxPecu0w4hp70ePz1owooCcUlisp
X8TFITlynz4RtOGHLJds/cdDAA+oPT3bjqerD8csifqdCWBqSkkgNM0remn/46eCcrS0ykifqrcN
tvq6rVwcgfbtw6OMVjmCxlFgMtvFuMlL7j89AWTrEBINThtdOSjb2Y5ArbqpVM1kLZX2Z1A/cN31
mLZSD43pgOPZpdN6PpqxENSwSnbXxernHzhR44sEOmirz2ugivY6CqC4fcJUtNNvr4pBV2+9UwLe
JxZH5lQh6s6Ep8hgQA+j8/RvKJzVsX5z4FCXxCzUA/r1e/2Gar7Mw6EC/AEqcHOaee9mP30QuB4F
e0jLcL/MMPGwf7JhBiXQ8UunSpnOd6H7num9CJQuDGJJU9qOWCj+aoWBIEYdsKufOL5ypOOoDnFt
3CR78RqVJNTqqOL8jIwwJrSKD+yt/Xsbe43ZjD1jrxGPZnIMM0R8K3o34TK7s1ducW7u4zE/COwi
wnt7Nkkn3P23Q7Hu9lgsXZE+3oS2nEwtDq9z8910rYs04wOJKmcZpyEtck2BPtX2Z8VLtyhdZvkS
VfRopp3NVtAn0ia9JtgkVkuIwCmPYMt6p3kpOzJbMFIdpzfm8A7nrUJY1wwPS8zMyn7hcFZJSliS
DJ4AzQPr788zEi4jBYvncLK/1LUhTXw4bz8GkFu4Kz1vOaE3abt4NO3c0kaKgXzvVbio/w2nEVuC
9Yv/w6lbiMv7xUPud3jGVbh40UpD5abvQG7Wz1hpXUsXlnBzUi4LWfoO10uOAUFZHqyxiWeKAtuY
4Cj8heo5W78HZ8MYBW4Cvng9vfgyTj1i+hawlYUVukHEiu9q7MFUiE1FJg6XIRXUaxrjivjjarOG
BPHfV/Ecs1cTbZB+qXVJSP7dRZynWVTS5lL5pgPY/LoRo3iI6WEHS6vugvCIGjVJdfaVV9dvDZVd
Q14YzPr5pO2UjaV8soHpV/+CxO6PZ/8zrwAY5lFVEHqlF/AucWeLQKXV8f2ssU2UjYGz8tMiZQqM
3ebLHGzJG5yzf2M1ORjUdc3+uQLPa4QuTBnXUR/sge/EMd9h63PDHc4hsjmy+uyl4+c71CIb+KXU
dsiZePl+061A/e6b4rf5rw89kqnh94APyB0asI6nXPes3lqjimErHXeq9RJObdCT5p/byg9Myrhg
fXizocXT2KByK7CbQy/WOWf0lmvD7oNWLpS6ZP15+zHhxICa1Fk6rzpun0Nwq1I7DT1iuOQSFH8m
4IXRKN9lHzotHDZu0GYpL2WWbvHMrqA4hbUk4neD6BEO3SvX6h9injJYXjNr8QDZt51NqihCiFsu
+MgTA6nbUZiXvcHaJoqqWSLSqf8WCHWRWudeZiT6CqTm+RfYdsTzDVpjw4p/KSjtgm14h/ziUUoY
6hYnebc7SmgqedSbite0OKN2qZ/YElB4gQEaxt15Ey6usE6XhdX4nsQoxn/CYKPo/ms4mmqwgitn
eQVziqqcOGDYJKVJEUa4OAJ3sTEN5kKOqyN2agEpgnyemIj9jTny1MPLQtKZRVG/Ho/0ldXHn3cw
rK4eNFdxGeNa7sIZ+tMvEne3hDlsAhrlCmVN6kE/lYS2QAOAc/sGqeuo1DoxdpEFM0t8UXXKjCJK
ZwZLbKy3W5UlaNLcb/pVUqqXfxnF1gyaUgD811KcYT18Zi8JpLa5Kk2ugip15XDqcqP7cIAcThSP
m/5rc/FP7a/N6e2zPE89XwX+llMK2mMsnkPfMKBej+FlfNXvcNj1gwgobMqVYNkt6ix9T4DnNeMO
yGUi+BMup3BXO4JP2RjG9xDi2nxt6B0sBGmcC6NPU2i6S/MQ3AqW1umhWiW1FIRVfNPO4wtfxQ+5
5un1SDKa6dC//EIg+BdHTn0aAbVnFcKWDzaBH8XZndxgXEtnfmHrhp7oLR0w+k2FvcomjgMRcr6e
FWYEZslEVqt+UlsOUGkTcRIS8fejpr7qPSgr0aLi5lLsyTLRlDOvC7UjRU3eQG8aNTZC3ZkxhIGy
uVAKzvSeePsrwEgU9iJouZifJdnPmwS+gBFzt52t18kajcBabgZX72GSc+zXZigj5oPUH6f0AqTw
tVVjid1Z5FKFlcpJLutljDcK1i5EEX2n4DdInhQxYPWKRNvPdLqNtSokVIU/EfoKM+PImSlkRqnU
89QlJYxD0VNAawGODyaVb/TPFdKtW6161gjCREphN7QHJq7nZnwpOhnCXAl3q0Ifau27Hw65o1kB
O/oedtGZ2ej3l+i2iOCdDVfYSHZf/xyFwDWHmaocrdWNjQGHAl1mssVLau2YwMT4JN2O+B6XLzcf
ifteGLpHOk14OQHi+9a7taXMaitA+8xQYwdr+ZctsStpzDs7LTPrkIkx73Lrbs1+wUP32f3en55D
A1vcsN7dNkjzNZ2iWATvKiRDf6g6n0kcJRbukSrSU8/J2laDbzcZKxXG3wdDd5tWhlJQdQnNdTwa
tI9/eDoUjFcmVhlaR6eKvTi1BPYIzfm15z0ptchhbn8McBGuqhVUIZnJiKpHwxOO7uRfK+UK4wQZ
+oc61aMN+zKmC/67G+SVP5RhYKDYf30oPZ9ckL4HeBbWNPvnMqi0nI9M4EwKo3ZJq5TX8ERAeAqu
aAQ8XRJ2luL/Gnm6aWH++4azZax9LyJaCmga4cIOMxlY3o4w43ePD3mlwJwPWJXCOOH6bxGcIMDI
6KxBsY+xp9C5AtGHiOVkTxE2K63zLaFOd1KtmWoytb/OPLXTS181FcGfP3WbzigWo+/LexuTXbmM
IIzkbQuiea6mWKS3CIMJ6KlCFxjrcPIwivabfbsNNIGIQPe0AcYnMtoeFc7h2FnIohUaX8q4PbBs
+bi27w+GfXtJVxeV/e+p1axCZV9V2V3wDsaPTOYTX4smmcFEdn0ER1JWRpskbup0Kn8OXAVFjgUG
jSfZTq2zu1M096OrUZQEMmXh23wNbfS6urm9KiTBnPLA3sBxtBikYE7jtxyeGntEXEwL3Ojc5ElV
273I7xQwsCCYREzMFhTPRNMFQJhMJpeY7/r1I++so5jnSD61Cs01I+bM/bM+F+Vktlf6860FuLTt
sf0kUvKCuuSNLmYfVBTkt6EX2TYrjIZfi8v6ChsbnsAeJ0qBMYF5LKavkrIblzMPr0lWk5+zANXn
H/Nm9is7nBnPNkMc8vrdwnVisSGDRWueZqkU5tVV0SxytAtRCNJoRWF6aHWkhQO7AYxhW8vZQUzR
X9jDKVTyDTLSvXAkBwjyekk3hx8zNz/L/yG+cPzB8sQPJ13WoulHsNpSxe+oaKgUcmf3WTXFzFrt
OIR/050bA7ZdfgMDwbUqe6m5xmAE4ObuKsVw1vGkqErYAiol+dagbv4Y3nTW6uM/s41uku1++fy/
ld4PexW0sWSdN6yvlQxuACFpdWSpNJN5iN67Gk0vCIERuyNDJJ47L6vXK7z7H2+R1YDiT7VzyWl3
eigtqtm42kTwGxBZ0NF3wKLaZjSn8NFYmDRYI5uTrx0Kc3QEuS1M5T91uXEsAH6+vPab/2l2XHJG
/jYk2jCixcwSWw6FKbZL3gIp/x5ZQoGLj+hdKL8kl2Ymzc2sn5NQ7qxddWMZgMX/+TN88Xtu3gEY
FhXK88L15gOAYPpiHS7U6V/ZD70r+AHc8GsdPFkz8LC0IOK4MzSzAYhI7SMwX7zNhKOh1M8aMKjL
nMz0E6LfpyzNX5AtRR+uSEbFmPOgQ8tm9MLClP8qRh07wmT89N7H/joIfjYIh1QnaWrExggTiim5
UJp/ZEHX1yE/Fe05t1XuoS/BDjsKjBF/I2AcLS3VA1XPLV3I45PEIvvfOxCXjSIWbrBXvmzuT9IE
ncx41IYS7ayQgcwjAenTO/lQHp240xqGuAZBzLLdMGsQ/mjfipXqskBNePFs81s26Ht1px+nnG26
lkLoE41ZHP9s70AzVejquGuKAY/Vl4c1eK5xsqVmF8n9vyodm3TTSzcGaXpKfd1cmAPjVj6ObwfE
8DlD+f1qRcg6usmPis0hoS4kpLkZecNRKB0VmQDha+IMHZBzIGd6/MXCbuMebLJFiOHUy9X5CKqW
s26FtYqe0Vpy+P+wV1d9Yy2HNe9SqOW0mQZtfuXJFbz6b1i+9g9Tcuxq/j2CDibMB0xPZ6/IsGGV
Suf+/AEGjfj0nHDBtLmCHWuQqgkY9aVjBcAwhMuVQDzIwa4L1sj6McouldqHZ9P0eiez9Qn4+yNk
bgYEyeV0j0D/pSTvQl03ILYUmti10Ob8VC49Ewm+fdwr/es+pDkANkGi62g2IACRnLGU3EFvHB24
uK9hwJM0GmEMCPTlga8roLLVR2juuQ5QHpqkdVT5iMGMr+fvKFLsaqoxl2+2M+ant4JPqWaqpDdm
DNTHQkyY+JW3Y2MmZodfWs3BZf6hUu+Fp51Z2BHBmDBXd5nRhSqCZB3K+xR/3iQFqf+uSey2Q8ZH
fHXfmDoD8dvS7zg9HiyEpR6lpHrVEhtm2sc2c8En60gdGrhp0MuMComGxpfiG65qjYmlcupzX5Xt
Mg1ps+2FkmiZs06VL1tT/hGstDZ3xUTpp/BoF3e2DEs6euo0ZP08td66W6RusIcyWnC6/r0ebFDb
ygItxLjkf5i8WZILakaVyiQWdDHQQKOLcBc4mcW45/TGdsnaPSt6fsrqrCYXrzef1mmi5ITvYbXb
zyZjU79K0JbqrqrB5ktePvWvk1F1wmW/ZuMMua0qKFi5OxwRTjeSVikk16aYdFRIm3kzkIbmUxSo
/+wNxrmejBURwVXzgD5+zi7RImCkaob2ZVvUEeEx6UT/VnXGPpa4Mzc0Hd5ePTVPv0qwVKuMIA/T
MwY+DiBTOtDqrgWZd5gpXm7qTL43sY7dKbA8X1UeyPqS8R72rsNACQDqncRJQrh2ylv9Zx+SQfnR
QG+9HAJMprqg5iX2qZi6llLzXkgG0/Cw4cPp9TYBTMst1psv4O0k9qEXyKcrppaqLVqkM4OUhgLR
1yJdDesBjJzL+8chivuvCuRVQYbfPihjmykdECmbHSF9dXwFpJlgpUXD1mmJhpl6s0Gt3Wioo+to
yXg+L8PpKosfD72qIzDbWNSoUNNLiQKz5YNUJ3EwurT7fNqApBRKBkJ80bHmHFufjs7ZlJVupWpc
QxKpz5tGy5PCR088xxa5QbgHsJuxa+8KYCIcAKzcq/TrbsI63Z7aCSdErxa88CiKQfeSzePLtfBP
PyGj3mgpOJxmt18XB7SbidcpJ5dr6/ovt8zvA1+Ju/HsigxdJyqHRZOTO2yo/Eqh28sL1bTsLk+Z
lJfu9KLRgqcIo/x6CrR/iek0ethXh5Hh6ZPI7coQgXzDflxVpAPVxzi3RZWT0SRmkSbaZfe0GyfS
ICRNBKncOGx3F2kwz6LQ5qgUQX5pOUp7uttTb9J83LPSN8+UrpSkgY338WeVEgtSgetG9U3qD4mN
D/vKkgbdalkPxFwBb6egWsmtHfhIwNS7berKmKq4cQJ4jkeL2g/4LG00JU+o4DpvnbGdi3x4r8yA
rChl90YCBW44zBfwx2QuynfdKNiqRucTSmHdKwfUtXEcdEkz0wTGrI+BuHp4pDxRPjR15eopvG6I
LSAhR0pai/Vko1EprBcXBfo/BscjbBvAVmyqnI9b+324oG6HstXPD3vijdznJtWMhYKYRwO3jQqN
c2OV4BIIW/94n5+WIOp+GohCqsxBOVlxCFFwJUH3aH1bGHfANaDAxF5glcFUD/ev4jKMOLEj+Uu/
8iqPqPy/vJhaCPrE8ovPZ8VwdBczGfCUdC+mqRCjjm9ICRdFRLgMBJUrU+oHzkydnGSVh3AKvc+A
DN2vnicz7wMsZQanBXU/8sKIu+2+ttXNQzfMxRcjsc2CmDtDf9CzatDiPq+/WckdTw8dx8ag32T5
ea+qfsbgeetdedbAXKUOAVUyCH97ao1k5KOsfvoxQUnFZ8q9V2eCWflPzK9w4DbTnroMsD62fUYI
Bj0QCqWXpXOe0cGelTssNeQk3TG+u2osHEWm4RWQdlp9olTV3WZVrk512iRi5tvAC5BfNoak27rB
V1Rpw26EIaKiv2iA2tM5h+ppnMuiy9cpxjog1yjE1YBBZv1/MOIuTobm8y3LOqaDSLO7RiFuirT6
2LmpHVF1Vt9Vo9DJADazEbMqoKenSxODPem26nDRLL4WWySTZ/17AGB+ElDqCNZlcUWgxJZjfeEy
PgjhdNPyu/YoSVQ+aP3xe6PdgGZsX1Yg4glfTajFlX01A21L2PcQtSBP+j1D5Rj2dcag+gtLePYY
EBSfqI0/sO1kBKfVeugPXWe5nDT7ZQCdUdWARhrezPZu2VdNjur8rEe8mYTJTnX6PuJh5vKx6aDr
xcy8gYNriabpGVNiUEpSGbjWNNqllgmsDS94oBYeaGi7zWs2Fig1gN8UzuPWCx5OH6nEbc7VvJit
JsN1SH/YBV9pmpVfSOj/pcqQ8ExN2Xs4oqHm4OskrWN0pC66V1ryJi9/WMl8GzalGrE/S7aMSvPY
bZBmuZfq8p/YDJ9qhrsJKmiPKkUtJR7i36d9cIJZF3hgas6V6BHthQvqgzitu6jbkf3h/BVfWsCA
J9L9Dcx4Y0KXJdowJKPbWi7e1mCYwsv0poZAFLZ7N9Yd8H+Q9C2xaj72MW8YWgZ4LtA3mA1ZDZMf
jz3x+EGauprOm3IzuEozUVmIxCMShpDWdi263h4vM5/UFzFjsIjYQXKELsYcOZSShwHSCmaydz8v
+OqpeNlRa3w7Nh3fnw9agyZ6JU9DcUjmTcDRVDMan03G9fWovuqsbSgP7cy1A8cHi97pIFFuDVGH
gM4gzParU2YMzbAmWdoqL9Qtin5NqMTmHE2ZrugFwr1rv0ZF94CBZIapXCN5OEEtqEqWXVnw6pGd
NJHl+uLzm4VGkOHTLYuCPX8X21AF/I7hHWwH5Ew4A7vhI3f7RovY9R4fRf4abFtbF7n6DCXWfOc5
T/gTuJee+DIbIwBCOpj1ebYHlN/Y1hCgPr6xsB8BYmjR3QUYiCBTMn4WO7x2EDwA3nTcpAgbBraj
XRdqk6lesb0hQ5gd6SSRpqCLMCF4PFsLYK9yCEkAzzbujTFwn69Z+1AnhYPn8vyo0ZfiYfYVHJw9
zqrY3CuT7F2WTpIKnHVEzY9OwfKi3jcUa7DwDXTl62ynenyqVGeiRQzB3WHyFRiJ3oU6ZakHiCB/
B3LM1F3AnYATYw61UFnBb6cCTuWpbdAmR1rd1TLEF1WdSxf95+pgdbPQPOVEPUZKBNIPIUcAaw0B
t18tIUmPojgZHwiEVumBkIR381CNvDE12SevF7H5GJKiyyZjuMEcVuHCVmuE9wqSQS4Xkk4YILwC
YIwbCHgBSxGrkqYZrWwKhiTvC6HxQpWa5u2Qeq3JDVYUIg8E8VWOL34vAE0qp1WusJcthYE5LQB4
E9iqu4v6xqrF5sab5uRuQ77Qb806ufy0hrlxhowUD8/i9dYuY7JfrGKagav9sBZqKsM3TMidjE81
C6eefkOTH7CJPd4inCOV6sRrFsXRy+dsbzaHBUBJ6dFNTpiylHrwlj43CpgfdCU42FbGKWfzKAy7
+gIm/tEWrpyxCwSuCA+s/MAIiMugE33TB9P71d4khzCsZqyJSnWvu6qKaai9hp2Ei+piC3UXRxf2
LH+DuAjcvrouBlLrAbFxYjPF7AkBEeG2Z4KOxp2HSBZa1SJ+H7/4KlQddtFJFI1WkCU4WQH9GJXd
xbf481RdCRSJ5ZOvyNxJ0hZt3nijlPf8lCSu4wZ16BC0rqMlRL04msBUr82ErQqDbEdO6H4geTlJ
BkOjvJ+lEBPz/DcijyvgKsrEwpimFaJmrgX6HCCAfbuY8GB9VWHPfq1IgSTZ4LwRNvN840DUOLGB
ey68Bgl4ZjBiOxH8+DsJhav+/8p6xKLpECt6QazvE6ZjXoinM/gCCm6IoJFKQBKq2LFBCDxOCP2w
ubDkSMoqbQ0pfcMMA+BoOvZtz7rjM4Fd1fc/GLoexzfnkdXNF6Ir6qhjo8mSmWX01xxfUXcuN/xv
A2T6HOwNA7Mu8mowTq0RnwawB2aIyiSjZj5qhEbPeYWiJHb19Nw4/n2/7jY2gQHbSVVDIPmN3hK5
UbLr9e++8UnbWeTRQCd99npZQQMOh+3mjWHiBgVFXbbOwr7qnrRifxA/SFBo610pDOdZUS81rYr8
B7fxEATPEFtxtn9rB1bNTxH8waIMMQmZcKHWjvd825WluwEufQaKpbkmyOm5w8f8RNIGOqsGgY+0
tGeDjyLEB8XDC97Ktyo6qWGoV06YTFY7mDphiGX34QFzgbHMJ6WHQrE1J9eF0kWmhfU5gODcCz5S
p3/ftAVFPGDfVr0k1LtGZopDkcNkHCLFj+7bpUy5sOks2Z9USm7RirKMk07COizTWkWs29eUCQ/v
pNd/0JKd8XwsmEJKzzlP3PTxKfzv3qnmfbAVfUmoHcm6WU5W25guzEwuV+lvDhio1PK3APMPFZBB
12Keb1Y+1hMS+VmYKgfrBVoWcMENa5D0mIiHNO+W7NdpI/J81E6Ijzsm/pshRIb4SrjxtvVgkAU0
/+QeKpRmPDGVtLOD/GlfNsWi9RbVkM5iYCAGXQUN6Yafs11Ez+7smfv43h3CKLeZ+PuWQWuYHc1D
p5JOViyTMHf5TFqrWKa1aq0BqWJSZBgjfgzBpAZv2OauFiS5GcQRBX6Ak10KgP99JVC7CWtaVm0C
ijHhGya9ZCWklOvSGbP9Qo8di5gH/v/6KNXI5pG9EjUOkbhMgJVokR6a1Lsn0a5sECSeFh7upOiE
qmZNGpcTGr5ZsM/pPzn6IQwgHyj1gR6rF/vrg/OzriElwGNmBaMcf4+Kbum3CbCUbN+k5UJzaT1P
f79/YsThoMk65QVSzDU/yhpTzqRM11mGWHSQvyIdNYZOywaeWLVHtehpjUwRkuFuIyWX4oNjTpgc
WB0A7hpiz9OF9spIreaDQiimhtZu4nRrCdwGJWqdWojmtCKZegLXfUMu8pJOSfQWIRdQhJJEFfgL
ban8hBgBx2C33r6kEj43jZlSe0DP9CUZHuC4EWdHjvlRBPNVpWxDiIyeOKyO4G/cFSmjVxYi7gC5
sx+kbFhromA0Yyf9GQZ52pTx1fzsLWA3LDXhnuURh9vcQ9UTisNpHIPgCmaNkHQ9FjnqyIMq4uJL
wOSAOtpMfwP3NEdfJ0LuF8IaoAkFUj0nGu7P8aav6BaueSdiw9QxXQ5KIxYmxriCnGQuUKX6hf+g
0WGBScaO79FHOhSkB2LQfmfxxTK5CMOV7yQaKbeGEsFYHrv9WT7gXwR3TLTdx/+sM5LfsodF5umj
+6VU05CR2oXzwBmGjBtcSt//wpbB/tLUL7qw7V+/YSGvpis7BVFzb5VDuzagqu7Yz6f1ud1icJti
jQQhRGiJD4tK99+C7VLViOrZW6WoBzZu1BxePS2rFsdy6q9v+FblOus1+3m9ul66jIXtV+c5Z4pw
GyPVh6UDecNi8cHQWbiqfhA4U2vUDI+Wa4/XVNJ0VHnTticmxEtat9PSkbhbfo9tuOC7leHRT74v
SSqgbWY7b73j4RbDoJGJLD31JAZPOasbqFM56NXBX0jYPUN54AXOQNxp6jLEB+NreYZIfkHQnL5K
udRHPCR6hOGNEayqVdfTkeo8e+BdTHNcqiy2F2C9jfsk83O9o8bIZOEN2T/EbjrlSWk4wzKghUJv
MQojwq2L6WfF4Z+c0rHGqv5vxChHBWgM+x6M24yRHyN3kVTWvFjDGMg5Ic4UMU9/LwbHd8h2ZaIo
8RhCps6SIYHdOLW4mjDrtK+kl7d6owzGap6Rhxs7o0cd8GrzpJn7IXDjNN9zkim15eDFD96LnR0c
oVsSyVmJCam713YcN34Kv2FtaAeOIr4dJqR2LPKUcFWJ/HTticEAec5KzbrmqUrCZpxqU6tzrHa8
XCnJbSFRhHP3wZ+WRv34UR/jyKkazzv+Aoi2cgeIHh1iKoXSKFFb0kVQAHe3OpLzG0/Npao+qkcy
TQBzuB4iH9U8XpGbEBOVmmi2EmZ15+rwSMEWe5bS324+N99wiVFB5LI/LrtJVXyHFrTrCarVBn9R
Ujgw3P2u35+7JbHiDpnuQm1yAOaj6HRM0J8fjCCNZyH/EJrGEtGYkYfSebOpHdcjlI5N+mqF9VWm
wmiRK10X4t+y1naNdhP91WMMdR530M9Lk1zC7zc4DPBUeiSxDjCjghnRVifnV/qbjNNz31BMm/oW
EscS2F/TVayJLVAY8OgwNO8ch3ewRDCnNPtKlWfPTsWFmpUkqxw5LqcU6cIRAadfShHYQem2icoj
LsRFcm4b5h30lFx8s42RMzg9ANDCPI2duyWSNAlcymeYz4MJySaUZHzS/lffZzoTcLQ2vvVhMfob
VJUpD5RrYTSxYz81WcOhKXbv+9tcjs4YOLE1tqKYJg0t1GaRvFhhL41y6tRj0lN7CUS+4b4PRcvH
BdMAZJ+Dj+F/aRjIbxQT28oYYKSmDYNSfPJXxrX6/XSZkG5ZvS3FT7rJAsxdmJpY+Ebt2NbW8vaw
Bpx66kjCfDE4ms7UUJf4hABKTjAwaKM0+4cBhIMZUv8d4W3MSkiJwAuLji6A11M9YJFQCjCKueBV
lXB02Srcp96TyQZR4lTN4a/iX7bvyLW6j9jbCJqvTsfDOYfRqN5IfZKDNc5zKxQkYs43OXcnDT7g
Ot0j7siLvgKIkShDhl3ksa1OTYycZtRsc9XY9wBpRs0fl68xX/9NWW5ibrwsegd9KhxCr75GHfQa
WJYccyI4Z9bVm7d8KvE/L28U0E71s9VLlfvPLW7uZwFa8k2FrCIc8l4dgy2eOD8UWeU8vZe5Xb4d
JPFy5/+MO9KwgqsoO1PUQ0BsZQub8I+jv4ZI/Qs+vhpccZM8L8sznnGZO20ZkDZgHqveX3ZIKVK5
yp91dSrzvYVTpCCGr3OLvlHvcdMhPKATRJEXIVbVHxHt+i/zrUfI4ezYHh5ZTtfnZyNgBYU+VbpQ
/SW0fZG2Q+TZ80Zj82F57Xsw2V4cSdJatlnVTWotGzkK+Znp84kKS3i2FDwdNPdu0mPvYbra7ulh
rPGyZ/A31B9EUlf+tzRpigsOd2WcfilHrK44APjLkE6D/gaadst3FxRy8beNhaN8tVvs63e0b7Kl
DsSy7fdznpkWP7bcuokA7uK1ssaRDDpKDPorLOPf9c+r9SxErLd3hVXncLIHZB9TYBtZjy50f3Fl
PGHzoC7gZZnftRsBagTyQt9puBpsvtozdgAflYzyegMuwez3WKk24Vb3n2yGee1/d65NjuY4ea6c
RTmiOKzreVmeC3GzywQ81WtYjlb7Lv7CgjaIrizkkrlWj0k5bFeS5rtBV08YMkeVx1RnvyCW0NCY
WR6zWc1mQEf7UppQGjuraHZCKc4OF9fgexO+lpnXoUgRGcCpGR3lVTHkd7/lsGicBLdq6+X+PpyF
3B/s0h47+iZn8/8jr2zOE3PTLghWyfJ2m3omNiCsyxAuD96ugr+P9uBShacbXI5V4Y6h01Rj6e00
MMN4/dVKntbuXK+xpEjnHFrayjPkb8erQv0Pox4f0SGR7CRhLz7m5wpFDfm0UvmvE9ivOvr/NJdI
qrz95tzRsSwv7CJFmVrD9DWPAzDZmPL1xG1bTb9BpPywBl1RuAGbhKSAztaJVJyq3IhS/ZLo5/Ox
aJgZMEQQGhu5xZvy+Np6DquLVCAA236trVXNMcYviMz+yZh/HCXNnHzITKl22Q70ti4P2fcg/zGh
Kl4q70pMn1+xY9EcbZIv/7BUsIpx+w7u0WXVJ53qvkpQwvZ18JoKKqpKhBq3TaXS4UawLisFCZoD
n8QRTwAl5ZKSe0OvgRW2IYCqsItJIIbzv8GAI240l83ZgBF1hto5dMb7DPmrTZkj87CX2i0sBV8K
/p1VoqyEXynOMSo+jL0Dq3cCHXGxK78bGWZ6hRKmw72qz4M4v7catC5BO2EY5qk4ZmPzIVlY8rGY
ETkkK1jVYi5HAxjXdUyDIGdHPF7MaG232DZPo093PztWIESkF5Mi2uY0e9VcdxHlR2AEO8ImEJCl
hRh+2D6pp6U+bSGtz6wArCQIcbcZhKqjoYZlPbN/0jQWChRQRB4O4HJPD+PpWd9cBvJiaVUyLJi/
PE5acBEoZqyZYv4R1V5+oSqcIQIhlaHzXhV0D1nVY+jeR1YGVm9lMnZcNu7uT+PlXjklh0TCLjg/
Yk6bDif3IpNSxH0n/hdiGfDKwqHOHWkpPCz6bHA5DMsaMenEulm/F3OP50+6XL6nrNpcLSCslX6v
tTx6QvFqOrZ0NNjwkLh+aF8HUizcSfwpNtRHFraOjXRRJnzHWiWf9GLbxg8DRsuqAX+MM7iMrADU
nIrZn8wXCzXpsKJqnOTAMwj7sFvugf+dSPBg3dXZCMYXkI/2lnz3O6+jkIU4djMsGYLb4GrCILqU
smYqqUer7JGszIj0XLRJTlTWdepIkIADxm13eva6de7a3i1l3xMb1UwPt/XTF3u6TRpSIll4GJL4
QCQwt1SVltZCTN3HAf/CDvbA8tseuAVTIIDUXXJAE0Vry3090TA9BVa64wZBafw45wVFNjrklAgT
Kx4cFFdb/2YPjTmDgcBlNj0Xy5hmoBcBT2vOyBHqixwmEcZtfQT6SaTuZ3TNneqrtQ3cZhwwuqUe
pJHiChAes/d24/dYcOkiCcRvscc0zoN6/QTUQPtquCcnJ4CYepn3AWtOxeTqrrhHWkSlkX9bdjBv
GQRBJRPWMXEgQai1iuPs1BzgCCR5chkqkigCKq7m5Wc+2Ky9niNyW7deA+mDrflhh4I6ODB9ilEp
WsEDlWxvaeod1l2vusH0/tpXSWQeb9+MYIcwcD/6G9VC/bDKVJ3EBLRM+NPl4GcDSs+CMIR2jqtU
aTN930sJkuBzm9D5cUk8VdQBi6BPLUNY6xSYL3ibNoUX+PZ9teVnygZnj9ddZUnU7tdXwZq62rXs
qn53m588Q3Bi5AYVqhOAX51tJVfGpskmQv6ZVJzyMufYcRF/IoJmWVHmLGXEjLpU85u9FiZHA48U
6IwgxIaYTwSa3AAUL+NmpAAlW2lVc67C+QpEm5tflIOsUOZSngf+VD7+NdvG6h7sfhAyrJ6LhbPO
Rb4debHYcdob/W4nij+w5Nl+TY0pMompB2E8/GPNfdVM7O9CqOJFaWTMeiLEAddKemhcsrD0bb61
SEayupPRvsDGGHDE3VP53n7fEFe0i4KplAU94oUw5G75oT9Z2NxjSnVbZWw6PFuPpwHu3eI14pUW
nGWWLoxmSw8yKxqoldS5Xnv+Fxe1bAshhJc9iOEBEv6JtwyINoML5fzBwWVhNS7cM7a9d259vNNr
s//xdTCJ7oD8nyjYaobtg+CbuS0MWHSdm/AGvPgg5rI5hepv/oWypXygJm+hrSM1XC0zIyt6pQsu
KoQjC3bxffqwT7A77Z0Yud1s6ztmBsqw0ikWFq01A/f7ZzNdfqmSvjft1sj0aFnMiky0lHzTOK1c
SxIVgAsygRAcVrCgUNoOjhKs0qEr/H6eA2p5cerzS2TFKMHmwggfpwga0NK/y+WvyK0L5ml6yTrJ
0F7YNnuBOrGheG5shZ/B07u1hvSdDSWOImv9lsrzvsU878gnGtmpyK6zA+FrYjPYMQKXEoFf7wXj
6zpGDwfTOc0pxVTcPVFdlCHuXpHutESOjC8HTwLsjR6vgf/o3dNO9DXzgY6TsZrMOhi7kU9OoomV
aB9njku02Fxiy2bo/JN5Kl0p7oYecZszgp75hu0u2R6CxZH5cI9x2h3M7e2Ljk571B/58PPdVMGS
D2zeg+F5lPh7AKknJx3aQrL4OaK28rO/ZQC7Ups19OQvd95pW6BwpDnGvRTlPTKo5+DbHJKCA0DK
ciXujcRosa5A/3i8LgHRgL77zTcqsMEKedhWVJE6fIF92XA8NcDxHM0KkaFJ3XIVE1XmaUNRi6DZ
7ovEGOEuVJMu64P/+CDQo7LTv+QMdg8J0ntwlt+VxuWlq8wWxuooArFuKi7raYgr2WgrjyolgFDJ
4nEOytkSyrHLDsrjwMWsbB1kIgStMLehMB1xxdbUL46gLzXojQnLV62kFwaxuj1QnK+3PSUJ05fW
IzNN4pMzDWK5Y5BcaWXItBerrjxaR63RD9N20eROsgZkEk/DgyPwzCYqJqgSPfzoiuyoKXlTPaCJ
kwKrYEwu51xvR/fHWs92SE5tNQv2rMVLsClDl0j3UzRcLlr1gQDsZBVwhLTkDIMhS8mUSVEaXSza
OEmnH4+sgNKzPs8o0LeU3zTipwYh4NUJ4PQKCR222iSXUbcFq19USmekH1S8pVPpXcl0HGbrOuIm
4fvySWC9PB/8A8F805dGLIV555OX4bF3BUCXcgOXfF4dyQDpyz36VFBypudHYxJ6Ms+mzz3TxWhM
6F/tPi4fPb3VcEG9Tyf56538gjwiBPfiY2OOAifHSCqModlqIdvOYD/zjeur7J389vYxrbHnMjAs
FEpfZhxbFF8PIbRbo5oFTzXIsB2sLzKEef9fdKMNCbFsnGWQdHG9DaQ+ksOSY6CV/N1baAPWcGEK
WrGnMFR878KNL2aEcwqxC6aU6JsiGf4W8ASil23qA4YmD6O+8X15jF2gsnrWVs3kYFS4Gikl45ai
9er6rn0tjSR6MgkpUReB6GZ6Jfvd1NfgSexQZYA+9ialDbK339IR+vHmV/QztT/jb3ePK4gQOLQW
Ye1YNlQlkjGHQDSr4XS0VoFqGzxrKoznc4aKdKPgJwJKkffWph8LWwAev4l8Cxp53Zz3uDXBrCXX
AY4KN1h/F9r+y+CIiCn8B2yioM/a81LACs4XZxyW/2/Bkds8PDo6HIAkCMOfQxx7wLvmr3JdfEOP
638P9hz0t25U+eVqtKwfpa1WhacbXR7ck0moQ6vvKA1gexWDc1bGFoYswLa6DvPqGZjgp6w/owfz
MsaMNEGrJyocAjLWz0rfMNQQH2lB00yZliunk+7tmoF6wjmVCUzORA5IDcItJIMAyQyUwVYCbCvF
PYZ9Yi9cRd/fz+OpY7aGxU7mb+hpA5p/tndBkKrke1cMGTygl6A/QDkb9JGIPFL6/0VZrwY1zysA
JlR5KVFGL69ANL5O32UtE5Kfx50OcgLTDXVpPfPseIdSCBJQ7wnZkn2lrt/j7C/y/SuhlG6p7Tw/
U+ZSRzzMeDhgeWLKRGyysd5+XGSwW+1OS06VD5UwaQkYceD54eFxGqi8whapPaK4jZEM9SgDIeGv
HC/hWYxQplL1D/80AIGgt8TtxsX6w4m+v3ASZgE072LX8ZdtDLJOvRA2muRxLAcQbYtQH6Dvalkb
vSHDN7O+ByJVE9Y1UAz0WSkMvp8opk11JvwIp4X3NmN36j6N3RCOVTtSYWneMEnbbxwl9dB8biHt
f/vzGK2g0rfbSX13zloFyGbPAOnL1+7acJ0Rss8JPKLfrPpAqdO6wOPtephBtifNAqPyktEMvm26
E9kjuUD68iVK4uZvnlhBZcTrTkP1kE4LzfXD4feJTQR+cPQT3sjgToYLNYATB7XLsQrqGdi/1TA9
BmfK1WGgQT/D3emMQGslQz1+OoUosVR+IITk403nsRf1afSrxUTCLHSU8Vth1sr1sYnSfX84Q84H
qeDVf2u0ajotekVVo7RWPlwIfAfODpe5wZ5upMLa6NEh47PBXYFUkwSUBsbkQRQhoa2sKUZUbVBl
2pw6c8CouT29i3VI0NPf8MUEp/zJghYA88UF/0+mtDYZAP6F3Grh14+JDKFtLPP3XHOH0CHxCUWp
Vyj/V4tjaqFXFSRAY/MTsbAJX7KDK9v7jk7wP21CJBwuwk1ltK8YrRfx5BZlNrEmEtobpaxJy485
+iKowZn60pvUzfCAHMTsAmQkNSVeyAKzOe7orcEbrpqYovYh7BgkEZNftVbmk1RM4kDPiYMhRtKv
XlJ5VPW+g1L7u7mixu8ljKXqM090hbzc9D0gKsUl4Ls3peK+KtTORnzKP5/ONK9DK+6MQlF5sRGk
Af97aM7cX1c++BnL9VdRG8+K++NSDxaujB15Lf7B1vCVZH6WAeC5tDOkRtzjT9NijVtagwdNn4Zq
0jUgLPh5Q9aHbJqS44YKCflmqqM0674YwgLbQXeyPQ6D1DnL9GaikfgKsVJEkiAGR4VHkT3npVl9
ghFRcPiBCUsdjQyGTQybmwoLPzqCA6ZzE7+y4Cp+Rbj9OUAXy+7LEOGsdah0P/xJrmZuglMnOjdV
yTijIfQiBDBx+7tZtaxyZG0j2VaRFXTu12dojuaHqYUGzu1MQnyT8BOZzK7UTM/zuNuv8ywL1M/7
3lWk94EKhRSwCuKAkeBbIgrgG07u1KDPd/MC+Zi7lGc8wlJ6n50apjHe2sWO0i9rk7jAJ5Mpt0RP
TGAT/xtdyY7r+jK25eV1fsMII2g3Cqjjqb7L816FKDN0og0WjIm5ourXWrtkrMmG7jJVMyWtdp+Y
FwNgViDJ4GHC+GxXQmlSwqzNPZ5cUVG5/JU6et3gEHjvxHc1r1s1BNhsDO0JjgpDes14n4EothNj
9t/1/bftKYxlE2eMGQHlOhyOLWyDtUQOd1uiZlts6/PGYK/bQAAKeLsSOS7EEH+yO1KmtaA9WBn+
hZ6kKXGpm8PRZ1uLxuFyjsOw3X404EB9rvowu09Arz0INe/ZCtE+Jr3jNG69bDobE2dAwI3HSrqz
nrK7BJdD5moKYq9bOn6RFjWqf/COz/bZxJXxDDtQ1EMFSMwG6EbHZTRnqD4zFUE0GFejGKXWrTyj
Xgy7xWGPiDICC6+/2g8vds55hql+bjSdUM+B5kYi2vGz0rRqgj/OMxBKbQuKg8FgJcKd2EG68VQ6
umurSOEq8ckGRr0EMLpp44zSmCfS7s9FFwwgJzZ1y9IyYx0L5jdpT/9SV6BQLmmVHtlMcZUiyvYN
nbqE4WbueQ9fxYwn7g5W8Uf6pGQbnt1X+erJopWLKwD/AqUR+U0RKTxDCHF6ZLrm+9wQy3enX0oW
qV5E82nFBHfXemvmWNo7fuM/FesnNogK+aI5wYyRT7h09UIp8NgHWKpWRrUWUA48W49q80Rp3X3f
OgdhRWgSCN8pkzDFipl5ZQk9XtgWpDVo3wzWWO8Z6/9U87qTcpDX9kjKbnxHGY+4en9lgDrR44k8
NpY+lzf/2hkJxXPijzpvKXBWU7TYtgQ+6tpz7ruY3Zn4YR9HUGXxW5USYFx8SkYcu3fV7W9gSH9d
IBKrB1GQ55gBKKXSRw3LPziVv4EteWROlVYauGja+RuSxtmzYlyAlqtrZutAgMoZpBhxiDtEYDQf
3ZGsiB4d1dylgVuJFfGtf45+PrVFeWvvKRLq2by1jqyIyGD9qx5lrxK2dgiWeXACkVPFW9bZDiwq
oLNO0j/VJOBI+v6xZ6gwHqmhRXwOWQsmKXbocNBlqRJ8MI5g/7/d+byIKAOvgZ8qEnT7k/NHbGQm
vY2BYvQJL8c+jEXXKzZm8lI8Cdj9OVL3lQORmp70OlXh8O2EjyXAGeUxE4BdxbKEnfOJMQ2Ky7kf
uDdBvmkV0/ZBct8rfmgL6NpJQHWn7yS7hUVRYhnTNUT5WJjfV8eNmez8X2D9MG2ko08UUTb8PFd3
KNDYY8cj2Mi4ASui1oJkSeIg7AimlYqGlGwXBrMxYAUWFLb8eIlbqBDoX2+iXSlod6GHo44yK4YY
3Ch4/cF0YGIb7dgvmB8c7nF97Pd28IjRCz/w40IGVSBnvTKF9nbT3cnIrM6rQy99E4E3/0KOXzd7
MNRoAtp96RajgzHWm86GRHg3PzgVPSTneYPZipiU95y0Qumj0tCp5PXcSOtaLinGnnBNGcLsdtyu
Xj8xaAapIWflUDPVLobHgjbUKw3Adlze1L7G27mFqQdrDTyRtlzfeeTbp9FxD1OwzPXyIdzD9ZfK
HTS2zsxj4VzbqkXKWxnIboMJgTu6VBLOzSd1vnVmItadYcausiaZBFbZ9FxPp2utSTzIadqo097+
3/C0vQVW6r3Qdk3dh4JamTHcvaL/DzzOG+l8HKu2NG9tkmHB9jLHZh2XHEKxNdDmlIPr9kPGKPI5
urIKR+2h+AAMrseFEuHMsnsNuvtBBQUhRTDjWo+4bu2I5pYVB4z6S1HWnq/BL3Vd4GNiJKz5RJ/P
kwcAAGotrc4it2XItWTlUtVmf0Mj9O5mBAoSAkSU4FpRHzOnwNtJp+fqB6EO87HAMf8JhOGoJZGN
5LRgUO+sAv45t1j6dOdF93eFgaFXnlYhNsKmWJ0vOBOOElyz5djEd/0Zgpsumdz2e1xnmiEdzlZ/
5xPSTEuDEGuRT6P80HAmg4blt0OAck2l2tH0lw4MunpadxhPS5XeWSdBbOwoPcFvhXqIz9/pk1sN
MK0xwhsQrK/ATtFitJSea7hvVW3u6EC144BD2g4BItMqgeRcKiRVuKX3IFxx2t5nSslyqde68pug
bYmiOqZ2uAmTu4Dq2E7lf1dGjcVp/GOVb/VtCKVq7ZD8QZkznMWuJZdr1qyr+GERh5l7Vwuwoj0X
NwlrsRssviaWQVmcvOo+l8V0LmzlOkXa+hRvY9jpldYcWMFquoP/5DCYSE54XhsO6R4xOVThIN6Q
c/1eRW10rWEHycZbDU6VXVnhT4Dfw+WAUqbIx6jM60UttSTI3KjZYgT7Lkif1ueHVpU4wioFpFH2
Vnf6mISi/158w0JN0ud268tyjB3eOEm7DAvnm/q3XG3XV+YwCBUq/kd1G802LDIbF4KmiJFMdY2A
dK2HcyipNl0oDCNBOApoy7W6w6g13LQ/dAyJAkKKkqjRcwBbbgLj3memYGDHGEX99Ur/3g4TD+aw
qNevGYs254vsDxXZ7eh2rMa3oHcBmkZ0UAH+mRUWuvFvi2M/dpC2ZQVFZYhC6c7JBXyu5Qz425gJ
XgoFGS5kRcOPt2bZMk4PDBltH/DUw6pw9uzD3fIrLfDYH1YkXWMFsj88LdWiH5Wm9Sziu9Vefpda
MZ0tFQGE1+a0Y+hJLGl2aUDJMFdmCeWOl5lEJ0dFJzBMSLjWfWVpCMYNxygp1SIyXsmIgO+Tm+G0
52ozk3YcTiKoU8vU3noeta8QaAPHtFHfE4EGSeX44LpahsP8Xe/G4Z3BwgQZJmZ5vKfr1J0Vct2A
U9f4Yfgi67RB18wxEkjXKSQqt15yANECDAEvIcqbkiFBsUmyYo3Ur6WJVuGQLEd4wxLPZ27fU900
SJ8f658WuvrqTQsm2E/Uq785tyRbtFpcayHLsii+v5QSP+PAwUyd/lka3Z55WGJm8lflutvIr1jn
7nW9wrW0qVuCDsSN4gy5v/4YSpt0hsSv2zOPLC3Xmw2X6v18/fFgE/r1pJjdQtgE5PgVnuNcga9k
lD0ULqEpbVWdyAxFSFwY7vCGEJwu5rb/K0dn6wWsogON4/qUbbdz6cVbH3T+ySYZKLIWPUeOnDM8
VNGGOuCCcRTyE2ox2OHV5NzHjoEbEnMYhaOz5+rwKhKzfUflez6WFLZC3cGfLw7ha/+Tcp8UW0Jl
+fB9qvhibXdw73U8vT875+53TVUqiR6QD895mkZA4whu3j5z64211o1b/KHDiMY4Ke5OnkUFQ507
T5UKmsZbBMjKK+DDGYEEsngi1h3H7GNlHOGuJqYCbbTCWMtRvubHXGOGlGWZSJZBcUcGUBbP97PB
KYYt5bhVlL9rlsIUUHLAUBzyEgLBNwLcdwXbpRPFB0bvdyT1ZYWW34dUk1P2QpnalY55d+NlnHJA
KxxtGKb9Ra2MyzUZ0m8JXVkB6NhbA3O2GZQvT65jE3yvswsCdoSwdfwC6iftuJOIrVrjtKcO8EWE
aOoGP8FO55RNM+V1v73pIZNQUvcZtOv7t7RGqonPExtCXkmSmF1el4yteW1zvoI5in6mMM68NMKr
9YNzjkq+s8CAhKyx5VlwR80xSZU6xfk4n80XtlNNv9a4Z1DfzWgXKJBIlijKZqcoy+dKmuPwAe0i
3Aq2dFBV6TlrKTKostY0C1EkbWRvNFk36x43KsKozXQyiHsLrxapmXbVz8LElHdEUeFCcNP9jdoM
WhHvcFwLGwJSchbX6MJLMRle1TckJoATYJiVdcZQiBQHrPLqjyNE7zFh48KmvebMi/661NO5HNA3
Pcu4IE3SD3qCUabPyabXr6DFL6opFstZco95LDQcFlsgjHwEuWvCLPZZpL0jY2EvCrezjQCE1ePN
ghzJN5sN8ihS0vtaTPWwfn/VND+NJlBEowVUJ6tM0PeE3AxpL1/kZK3+OCfehHEVAE8IJZukgHBX
BxeaYDNDmUXHyNbzFZ9/LMZFk3H1kmvLbdoTRUa+B5vXhLpUrTuOHqDX4oYnnFvbZ9wr0/hIckCy
99PJqDyQEgjgnnpu7UgmChFvPUd5D4LB0RvTgbSao/SeuBLXLEyk3+mHMlQeNSlBf2MsPrfCgQvF
O0Lqr77oNOjjVSjYC6MTL9UTrlG530l6jby6VsgDXp6XOcdd39dq0WQC6r4cPHNiK2Ybf3+R99oE
rgtz4LG2sl05pLfBW25jttTzcOwzSW36xmyQ0jq0Zp/OpfvDWgFzZfm5zMLLDCVmfIv9iCAmBu4l
hpi3epWrDk8vKCkRKxQqCEu/WzFL17EBCIrcEN3uDKPad8LGzKy/MCrDka/40qMZKydOWk5VvEir
tzIZaobesaaxg7b/wylW9/Xfr6dDcbRzBLM4bL0UHDGwviWbrWAB8TDhFRZdB2Xcw6eWguNTvb0M
rDlD+tt6BbD/X6rN6IsUQDdPkjs+p8Hd477c2Gu2lLTGlA2xj+whvyNYOVvr9u4vrajzAzPHV/Ju
xXTjOayWanTpxsmEqvTtbnqZzHyxTJDXAKTgh/gEF6HKBD0ZcQTZyGPm6JzmScA6rt9qQygTyerq
FQLPrFa/jPM8OXbm2gIoJjbjtC2t5sxzCaXzBCL3pqHs1vwWX8vrJneBRY8smQy+F4x0DREKLS2F
u54y7Cg5Mf0jhyf6OKCe34qcEHbXWjT4wKGBHzOMxZf+gqB8+KxxUe8z1X0afpNQk8UgSV4SPpX0
pGGv6RYwpn+diDgX6gZSrmD85o/LwUqZeehD5N/rehiFqgBqNza82U3UvVElPIRpwxswu/18FeSg
/amNcULaGJZ0a9vA8QS+JeE8uDaiPNjlE+UDzIFmzdedHZQAr9vHQmJPxdmuT2TV+ufcK8e1vvYH
6S+2wjPChahRY9AmSG0NYyppb1i9WZFKt0ARUrN/TRGkNzsaWOAMfJ1fJA1GPv2zClCd9eBg8pN4
4XhvD0HRIBE1ukaAcN7+KJkzmtjBzQS52ImDBDXJNZps+99CO3KzPkt1MrvQkNdDS5m9MWBW+aZ5
Y1pb51MfkdRPQB7iychKbSmilZoFxmKfxk0wfyh0zqOA4+QRvPJFnv5GlHrmurGS4OtAc5ElvQRI
1iFE+7/RYmYecViu0sx+Mk/bWcPjefeJXhUL4jMhhUK1YbAFaCoiQx0Z28VQ4hhqxFXp7vRwyWLn
xBaJ1sRVSNZMtk40AIK5kMy/nCJCkrtC15g/lpexw4P4VpuEBUNIxjx9O4D8W+YnZ1hy2opH26VA
U1Cedwv7XQFceBdMQBAJWju7T0Dbx+69lYwaMalHVRSMHF8fY8BtR681rbi3+Ou8X2GU9hq0W2Mu
SpUu7+miy+AcMlkjnDR3HvBSRGvVqsXAnX/dm9om6K0pmRflPTHqrzEyTnr8JBjAdzf9kk7RJDYy
cjLbwBUA0wyeQw3ps3qbKY8ZSVtPbtwsEOICzwLkajD9aftqAVam/U6W3I9BJW0oP9CcnSiB1Ixl
TQsSQGie6+q317MO5tc+9FVByulYNUvmtYFgCqvFtJlFr8KfzlgoWrbnC9b377Ru6dt2vdGL5B0m
8Yhl2C8dKK10wlLrPzL92N46Z5xndoZK2SVHM0jh3ctmTwGn9LesdcjpTVub5B8eZTxpXHuX2RME
TpOijx/bktgZdN3Zdac0gdy1Gs+pSGfQdnGMeFpGBK/kLYwn5OAtvEnQEZqbKmH091lfd2EE5RPg
Kz8tstYaE3UEN6w4HY4C9iI6E5uhZJ257HMPUT2jD0XMwhchS/WxLPPSG5rp6e1jGfxZPc8lwvuJ
JwcRVax+6QzGT6LUht0OCXKgc1JdM/5U+ydIk5dWwyk/EHABluJ9wIy6HkGpaSaCrF0G058RW4AW
Ug09g2/TbAIh1ioxTmprHJoVwrDwMpRZ+eLrFOrr2+6t5prPpgd7K8jjzzMwjAUd59/824ZUsjKp
JQvfyouMgIg8SGhIkGQ54LKzkPKleERpvGX6rOxlXfXLdWvqP7EQt4Rek5QDQL1BfYFIWLiZ8TQk
plItYmYx4P5XutC97atRG9rdHNjZXcImbxu74ytl3NUNoQO2dO9g2x3tc0cEvSas1Qs/DImVMyll
IMjqxpP4v8GsHm0M9b9GjH10VF3RWT2U/PAr0vsfN+Mg6s6XoteYaQ6VcYONsEDL//uD9D9nptg5
fdI7Q4aw7UtEWXhh8R1heTYf11rUIsI4OdvVejCsCe9VbyzrBFHv5/MQQfo7WJGkO1VH+pmfo13y
V5eMlYgfnLM/ci28HJ2ZkCiQO/YfmhY0Y3QTT88FuZrVwO3LAad3I0yAAyPK6fniyfHQRTiRKzfF
e4agERGl6MrJxBMFw89lrWr1syIy/UGGApLjlKRcp6+hL/DmLdOI9p99m8/q08UnZuCIW1U32XXB
zC9SiB2iOlbK8qwOv5iwE23/5O2bpuXWZk2ROTSZxNjb/0oJlsBFgYMoXcKh0evDilLCgeQ9lD17
mukS3MWsX5avywIut//h/n5491OlW73c4sfBwBC7UaisCQ6dr0Sr1pWrXAjYo/+EDP7wRbSKcTbn
QjKtLGlaNGeAbmHG6qk1g1+CbxLdzTwNjcSlP8eK4mTcbZjTuIfgseWYdT+NIKl+uAl3mpU360k3
DROJEYDmx154+CNJV55AjlkFL/dh1GSEiGf3IJV9YsJBqDJJTHfGgE+PKdJ5bYT4e25UoCAs/2Kc
EKvITjZbdwujNaTqs1xjHxXDedlHFQ509JZvwfrDCip+o9y9BBP8EkJyuK8FgvwXtYdABX0B3pLL
c1EefMoxAOSYPXMrvawDodUkzQGY66YpxYV/4RWqX5wFSiI4xxSBjPFEs0WB+ADdHtq9eq8FW1sf
XDJeXJp5MZpvZV6/GDlRMnQ2G/a93uFHq1YuUCsxLVaGXtLhulAPYTPks0A2dYyIerzGuoFntrj4
k29w2PaxV0eC/9+ohr1jyMfqQYw0YKut381nCQGq3xMSRinoCCvGdt4roHgOtQaSi4fxB3jpFRNQ
Gss8i/z1f9Y52tUMwlK2k5hKqQNEOckeusRhWGwMViAu9NbQyaNhBMzqN7M0zodFy6mYnCmeKiFh
UdsM3wFTj1jOqYiNjydolwMq8a3Rr+Cab2Zhjqsa1USw+9iQGLUQGGUZ2f40l/v3We9qAhdrmUF+
BbCBzHbLU5KH2HIdv88gXloFDAjKO6/bC7LYPJ+QNBhvG22/MnGkOfgWGmdwgRzqLYkUPzMZ7PHo
tAdjkpMglQeGhHw+hUTmn4928CS07zHEFcp0oeFVoARkPVpwyo2yIYDs6GTp2RxQeRvHlfCHH7xx
jiGu81qowqqP9BEyeA1jpOyMdW047/8WqEGL/HtEQF7zV8yzFV12gvJ+6oFDzKJEIf4wsdWeozrY
UGbtD6AKK7Jnxmbe/eAjVxtr74jGpXqAXFc197gjJNbxZIIGP0eFvY+4ID9b8EPLmWgoUm05/XNs
5sMOKAX2SCx9rgiJwSjr89jTDvtJt+CI0EFCjy2no0b91fKBJae1+MRqi0/b1eF7ArnivOwtzhVp
MquHw1zh4TFebpAUX9mDb5kJUXBVi1aPTX3A5kvP8N+mvRofzWCgncBUPihGR92UqtxkZWZ9ySSU
Myp+jyUnUHz7G3Ja0qoz7i7gIlDAxuv7r0+vD32BBzOeGyyU+0mWV9oWCgoYUCPjT7AGcie9iFeI
g1TP525LM9DajwDTQsjCMRtJh3nJSMm5RHAY6Y2/+0hp9uqjmuYkGVqTXnx3qMa+V9nxcn1d4X9O
GBCKWmdSRe5j4rBCyBFIO+I1U1jP3l8WQCgRGAVeha6Qk0Gcnd9X1DACh2r052dxA1ZrixhDiidn
RHFP5qdfdBNfwzQMIJKAYhZ9ZHin/z/BeMJbNMm4olC6UCwgtswQ/cE//PuD8dGjrnskO7EAE9x3
BnmjNeNZDjZA/bX08AM/B+RBpkamDbw+viy7wuRrob7iPIb3TIRIBupqdnBi8oB9XyB720NHWTzo
ZscOp0TLBCeCP5kqngezdpWOW4jPTCcgjzeRlyPgpnNDqcQx+YO/5ysoXLwTfNId6fSME8I24Xup
Q93hoR5+Y5ahIDj80dDEGN6duIlI9IkVZRPhCc+Xq3TpB9Fp03JXgHV1tcisD2hZ4ee9lRvZkvk3
ySFKM6LmFrknNSN0TPHGG4t4ADGwBNGDTdr/vtBBBc2/Ad66g0gIuEMr6eF4DJKbsfLMG7dCl2YY
6+3Ucay1L/nIcIC+P3M5+huxBFyCEjw6asD7VDY2Idynm2U6/9sHVQG5ZKIWXDZ3fpalDt/XmGFT
RlPCBOdfFVDmj7dI94tTeRWnoj9tqAA5oGHxQio9yuj6g2srro5/Sh59d/iExicZJ8Cfn2d/QXlh
NIQEeMnv515e36C2l09t28cuVapJwnrIo1aXd2hJnyFBYg8XShr5hp99bQHAQJF5JIkTM/KfuN6d
gzM25DrZHddNJGFOOkZdaGkJVzl9IVyz/nHj687Bna4YOSbnGXRDBN9yCGXmnZAzkXcwYCyiW1um
nbKTOfG8W0yabtTAmEz2gTGAEsg6ViwrEeRDiyx34SFZOkRt4jP0XB3BoIFCTt6hp5ilSnZsdzPF
1cVLo7nnUMRjwGkTy3l8SjqICIyJoX3Zg4JMTayYWpZlss7yfwmF3cLwR3Nw03rb7DbP91dtYVP3
pdDroe36LmjBR7B6g+CT087Sq8dhkpu5xpfmuQx/ZzpQ4mzKmnOZ1i6+T0dikfau8/ztPAg+yK1r
pp/ivQfsE8/cFVAYRbnuX9B2EC64CiPFk4VXu/w5g8C+Jo/uqWDQCaVRemwmWbWh68AsSSqEFwdU
As4H94YBQHWFbkyA3MV69K3vUIASW92y+Qc0Uhix9GvHXKtZpC8ZlvYGysZyqmF10J12+CcjFHi2
CnqrfBBcD0VMBR3EtWSzknOOZgPa/AtOJDLd3Le0LHHJSfxboLXhZ7LJfudulTAuaktLF0pQ1IlZ
/nRPN28r3e3NCyEbbxYY5VrEgtVyynaLvzaMe56nTiGDCECdAkEzU7DBgYfJM/VG/zbxnlX11yX7
p0TBzyPbzVLhq4oXcFl3Qy9n9ZEE2lnbSivw54D8pVOQP3KL9MIxvw1Yst0Nsg35jLbV+NOGdUTX
m2mfiiZWvEpRhSrFs2NdGpwz82s++77J79PirUBjwYBmS8aPnzA4wzRFqbn0D0vO7Ab90H3ffPAi
35niB7FiNcrpJSN2tVP0yEEP2AomFgmf8Sny5BKszn/oP6bCGDPNJe6keVtAzJxi4mMmdLGBKXgo
TwlBGswNWaU8u4sUCFBI8bK6Je0Z/kJIGNEHPW/iutq1PgOHXMgr2TadxdgH0nhpXSATul4ezs9p
R37oUvnW2lGrNDJLo6ctYFGGFKSk7dGN69JRY6sfYwL/F7wvMxM/Mx9YPzUKWG5b12r9YWx3helx
XBCzKwKnblhqh75k7+pIdoHTCjscNtKRliU0eoHeVqFcExMtXLBmjE79k4m4HiloXXEJydGVhOAR
3HP6F0kNbp4PMOCI6ZXSVSXvEXFIzVZrfKhMRT5JReQzzGLZ88/yK50QjZKOoxbtgPW6OQv+JzHE
6t2JTDSaADqOGWxPflXhUSmz9Fu9HWSJTASlofbZk+0A4Jec4TG0zsEsyMj84o2DvbY8pv0M4zrS
14wu9BsRTlY5C2eisemNHQiNW/iMnNKKVNaSm6RSEOZ20xOzEU4K6e4ssHYG9vG505UknGlLjllH
kMqAtBFlF4Cq9opbfSx6DvivLI0nzzgjKBWqqSlNQbi3a3BdBppaRBMI/cmimhuG6zBmBG4gD1wx
K18hUQv8S/eoX6yEyfM2hIXSTEOwA6iPk2HWf9e+GJVzrA1ILUji+zWgN6/L7KIKSox6XVvvCJoT
BBCBFY6MZqBzYJiavMBGdomRL1ODjSt6CnmvEk9cJRUKgKCN+2UGSsmthCYX3NUT7IAkIkfgxBuf
LLoaoWVzF3llWwwe8dqfqNBftnD0ZHDV37Nl/+wgbWM2suqVVNed2uwj57tL1tffdf7vzg/nb8cD
OC5bFAVebPcod3dJc6Uh/OkZLqbaZQ7gypaloSXSDmsof8SUG5nTLv2k8KF5abQ8zExqRvOqb72C
q2XtWqMnHaabdsCxx1QcDOC/GmtYmWpTdm2pv5XKu5XRyXzs3dx3ulpIKby+DUD3yP+j4TE/EXWr
3g35ShXsTqYi/1aIfnbSXHWRseT8FpZh8y+ucreadcsBm+uiAFPortF0ahQAs2fHhMNKsJWUrx1A
DHwxe33/dhuPijkQUn+ks2AxbfnddvKj+MAg2Ad0tNj4cYwy2HdMBAt8ju6zhWOipyhQKlu0X5GW
k0nBMqcHMAwmSV0a4ab8GFWkA2FoGVIW8cfga1m5UCwBcmoKqh5fjXzc6bqWvgq6b98lG4uRNPLh
LGBgP+C9mIHNx2AHN0LJNh5Zi/EtEWkBLlkVUMco1cZsR4586Kpk/96I1LBq74Pgi6BWO2rBRL37
I57U9ApIW1tFwPZFumi4k9oyDHxCRO2nLcK7YaoD2U93w3MuL5a10ryN+luFZRYQNeFc/FEvorh7
CY+hqskbebGwbjE33GYnQSq2zZhPn427xi8xPgtqDVuFfTCsOqGXj5YpZZxyGJxww9fssmSViMZv
wHBGhVFH++2XODGenEneE1NbFLgbIKexRQXGMgu0AxdYZNzvd98fPbPCHoyn6QLbFVc4rzX3KVir
nc4g9brRbb/qhCDnO2kgdGBRozW8x5Gdnur82ScYfnxdAGed5J3CHOpAdK4l23BWy5n7dwS6vozw
C+voUHWwO8kT+fUTE9vL3THt1MoHMNSV6q5U3xV31Y4hDk7sinms6h4m2zbN2gS4gw8xTaNuBkt6
icGUwAc+Qtr7K6AvEnQhiVBGPdffyfv9AHR7qix/g1zauSeY6ol9DQCEPjs5yQ3WoZlhJ9Pi3eBd
nm5xTegDqiRIcjCDauNWEr004N78+wRjgT+YsxDgQIaVk5KedYdZns3zLecotev4g6zUUkbnG9GJ
orEEqLvKUwakww/Wtj78nIoAlQRFbsbwMNKVXkfZHITavToTZeFCEIVzmLvSqOWSpKc4YEVq6Jwy
F+ESX84EsCW43vuwm3rNlKasrMII2Q2zySfSbsEAB3HWSbSY1O6/qdpEZpI8Iz6bK6BwstM4MvS2
5bBNcZwhmVnFvg32Hu+BC9dv8J7wQG1Hd6lVRU5vFpsJRARPyf40OysMenluwmc0hK9BwKhX+csL
XFqhlcX8qYMJYuO+St+dK6VkRIw9nGy+/kbyxQDDWYaCz6Ew7v724g6Z7rHToJNk9BG56aC/CeLF
rKW42opp8pMlVH6Zv2W/0nVtw7iBxsv1rIxMQEtx8oTAFjTCKdYkMPgI07Opt462oCmvaQI8jFfW
IftN7U0yKTS8wR/PpXDLREl8QtzsxO+4OB+bPXiUAEx8u3WaVJHbZsDS67yx/3w6LCFK+1GQp5jc
a2ECMyrRT8NIr4zvZH0Lpr2v1WYp63mzCtXen8U/o/UHqPOs22gZJ5O33YSZrxNDqWY1dfd3QWVi
DGwg6djROatbLQ6IgMrUa5UHx48u+z+uT5jqABJUprWuye5TKDgOYYH3ykvkqF61zVvTnCjD6q3R
DH2fsxsb8F0SE/ZZ0RS8V0OieKjBF/ufurbNYL40KaDcf8ZC1UKmQIwhANncXSa2KXNezCnN1oMx
u5G8HVcyE8OJbpjjudtzJd40ent5IMmRBDZCoeljye6abTh0UF4pJFACTQAwxu2VRAWtIY/8XYeT
cnVme8ch7DPDpncz7TRwauyho5cc6suAJD80RUE+3vdGBLoLRBfnA/PpTy/YI0KW7XSxUGIdAEsm
7vEh181Oe9IPO/zGlBTdg8KKo5URauo2jaNOQPbZEdcgJIC2YNyKq88prU0mofDeDaKpaihGSg89
OScXfqfdA1oP2KVADcr2HwNBYwuroYd7c7ki3AfeYPl9HAo0lWYs8x+taXMlEu1y+DmBByhiK9ku
oJ0eiARxVxWb1mZlMHiiorVQMX/AJS6NqHOJpudZZrWSN26Cp9jueDstlDXbde480qfCIvAZTbqT
oTYEGlwhYTseLxcRrfsRENqBDrdApKmtAvj78awBhaWrHmEG2dHbdJvd+n6jsusIm0lENY1wbJGc
L4GxyanpaTAoMIodvyGQjf8gW6AKbfkaGghi9zxRkNZ9Ocrow9n6/ano2kQOWmtLZbAZgTYb3ZwS
dJEVLbSDCfBrSszOS3X9nSkeGqyC93BwxykbyFEDjo0/+W4z87uQf2o4Jz+FovcR3NOve5CHD3n+
XJGHz8NFF9qElRYxnEtQDSSIW46AbQUAHY/kiGPRmvLjMPAjI7S2xC9MyYTlYSLo3yCeCE0CWhqt
I0IvTRCsNs2MpTC+WOYq95ERFBXotkaycaqoLue46d8M7pXkoWLAWW2fojVuCcX9oxY1hzyubaJs
KTZkvmHaUG+Re41VZ9rRxiMgUJIJyFFtwC8WsBKexFIKS/QheWVxfjhZcU7gH4jhhu5HNtxMVkW7
0piR5g0ocN5UqzWO8AFuRzQgIdHHdc9e7okgBTVZId2ueuu57noOZRcEOPo4gp07Bjyb6YMSMEeg
1NxJTTLj6ZNz/1BC2+9R+VsZAzXOQfBBThAQyKxyNaRZ1yw2+PMN3x3OMpdLfj2PWlKbgpLilIYH
1fzWAWdjldBODIKf/FjytTHsgpCfWVGn3mf4v31h/60GRN5sZ7cKCjKgW7gdcLo1ReiH3+hsxs7P
7JjzoX81fC8L06h2inrxvWaJISeRAYm8hnu4pJYxzEwXLbV4JuBXyTBE3pmSrWbigU8FmYGoIB0U
HKE+6HCPwX+UjDFmj/o88LorolIk4q8NDFM0/95MzSLRN/imgPPk5YTc1O4AEwcmdVwCxqj59nDx
dzFJocD/jsnO7ScKZ0FhUyQs6A0b0uFGU6G/sIFErr/JkfyXZqWmT4XxQr7ZjZTW5dw+nAMWVEJx
+ko3Sr9LCI65t70jruR4wYQNVhaGAZ+T5gIFf63v9RpG44JR+QWt/pylPwrEs/5nHt5uKmb1iOBG
CDNKrMPz43Ccg/QiVr9L/1NmU/3Tqt/wvtnnvdmxQzZNrOcvDCAznjKlZYVhl+FYyq9uMHCthIV5
IiU0EU4uWXBGAIvrT5KCvlMVMOrgBBET2KpoAvGE3Npv+zJ4ZID7jJ+gNzzqlTEhx7jUpAhX6BRq
uYTlHT3cqg00pEN6URSwM0qlTmsTFVQSfq54d/HNgk8q4I7zA5HcHEIHWTneylVGOVEhXX9ObOsJ
+VGlDjI38wc4uLhvuvSiSBYN+s6D73cinOTHs8m2T4NHR0xOSVh4WoNbZcjL/7APUEQ39T7qO9Y5
g7+eXCM8i4WkvYcYLRnZyNxBvQP5gkkIqo78AoCP0bFRPut/gH7K2qoBqB2c2qUP2ogcYiMBxjRs
F8yCdpkpHJgqTFCLlWNQcgi6RQ1CR/rvfQkGu0KdjDgFCuXrPHS0XVs95zQ0d9H6qAI/c8XuYMWo
cU3w6Xa/wRKmXVj7gL757v+KLA0Ssi0jnWDkpFqpHCrjLtMt3zma7jsLIgyP/qf7yL2ybGvNmeig
SiZkHFr59bgdLIV1T4j76ef59k4gUh9gzdHJ1qgXPEKnQbTxBSzwE0Ts3QgSjr/gaHeiJWejgCkf
5hmHaU1MGqhG1mSTUpcClQoEufllCzBk6S/Q7cul7EhV0d1rYC/fuFlwDybkYh/EgcuFvXWyqHvK
00ugQs/PB9V3RG0KSQu/RlDUEYEdRY8tY/jwJPlglfqUUNok8tCd3PE64wJz//SkFCrxe3z/RU3y
JJtEoAxtmu25ZQFIE9vmWFwTDqht23K4NnclRfy6di65eCkqtS+syYBuBHBhREpNhDz7hDQYAWL3
rknwf8fKlddf8grp6RZ1iytH+vLaRbKFMdOTNxVJ9FCR7YmCi8jMxhwLYcFcYCCAej/CDMME9nE2
JTgmVQc1RZmaO+s3+LQIBrIWuEeJGtBPDPJnXWC847KuCPcPGNa7a5ePKMY9e0d1/1QTZDaOeFZ6
vwL3med/t1dMaFrVzNWl0/eQ9OP7e0YUwETsXf5+jcFGUNl7oUpiP8eZ9Ubc29de42ymTjx0nzBf
/h/BlS2cgNZ7+uxdawPANvzISV+OocNL5M7mU9/ERynqpZDoWumO1siu8NM13+4QULUS2twxfGpV
HdCcCHewPU2X0IdTlK4bSo8TkZLvA5MYlD1ft4/BkEnplLVU5AqJ+trurCI+OqWbeaxszf/dZoBx
OO7xk4zCsLhTKN93GGz/DUs971bsUNc96bpRksXI0/FBKhPGuQ9l7wG+G06/B7VGr1N5kBjyaeGa
XqDP4ONYub687ALbWqR/Tm1uqlCxRu83d/r9CBGuoEmt268SeDoOKP8FpTenQQHV5eobIb8LA3+A
jdj8yjbRZIsoVf2fpzLS9gR7VM/18ZIJdnekR72pzrJjudsYntR5+7iIq6MzDZ8F2n6c8IBqiM4s
ousaGbaXswlrJofUXHa6OJSnrMwVXlkXN9eS6pEo3yyF7uQNvH8uLI8CqqcNi+lWwPB9xGur9Y6f
RskfHmwbigE5d5a9u2z9wh1v3Sj7fyipccreMh+fniKqALApp2CRW3sZK+wJ9XLaK5tXtvB7u+8L
b9dQrPmVR+ZyNukiYy38VwrsMBNaa4Ip7KrGSA7aX/uKTKQcelW4aqAg0WOIfLSVt/j++bTSEXLl
h7tXu5wD5BZ/wf52my0O6+KOqRwFqZE3wlS3oEsCqJPiE/C6mbpf3L4s6gjtDn0WCqcHprkSQfzK
I41bc5Ic+OOcDknH9uinO2F7omF7n8J998i9kNL/hvOMjBXt+S2jq5EZUvddAFDQDspIiDv2Jfmo
WHC+Lgxy2HR7NjeO26Bkv1cxL7kp/sxTi9O3FNxVG09Cw9l9kcZwdOUgv5WLCvY59yr1MOg2A0vo
rQtnxGUbep746JrlxnQfA0kKMlBNQYwUJrePBWS9TACx3fPkL04bwg55B+hy5zQsrjEB/BCfQAfb
GHnqFkfOp/yxw8UM0IoFNRa4Jr3bsbiBKbVpHNlI9gxykIE2tKoFpnbV8wCuvjKszP7iHvtP0h9D
n5TvoA8sNp2z/A91qi7bdf1Yr4EXilF2TUe3FkSKWvEgFcj6wVG+wl/l7oKzT6aeJDo8fUFKaw0S
9qG80FHoXDx2NKAHIRx8dQeZxnuuw6DH8I2zo2YLb5ci9DvtctEUTOLUfvg7VKXj56IlyWVL7hdT
NFgAnwVzSMEan/WtX+zYJ/h5IoFPyfBHoH/YpP5JRWs6nTqP1a5ifMspyP2dz7o1w+28kKuDZmva
Wx8r2lJXqjVkFM1bC7Awgk01rV798PLFo+LX7RArpcKrz2AUZfSDJxGfuObX2jE0TuwputDJcj4H
JgFQirI52D2FkSUuiFfw4YFo3uXJfKWBPYUQHotq+ZQ9W6SeTA7Zy9vBlI+gXJqXrxAfIONH/KcE
DPq8SjfSVeX2tgBZ+6QlWUvV0/STV8oWMNibA/GBbTEOjVvArFrRL3UwoKOIzI8NyFC37K2GNrxb
2ZrRbrhvCJl3Zdg/Ddxi+nvOhfUqzDAwp3f/q13q6kExR43rMrojQ7Kq61+ChVIVw1URx8Hd9U1H
ScRWjDSMAqQNQ6ZzWzERj+/0YEgJXR4w5h8VUlytdCnj75ZWfLD20geyVFdROT2ue62jejXZC1oH
w9YzRBmMXX2VCu4iF892AG3lQS7dQ9jfxHj5ZRzmp1z80tS0cUfz4x4zReAWUFnR60RqKspyrGFg
oLrEezN/5Rcf0TZC86lc4acRobnJgWTmnzf3T3X+XWPrvskkT9KulNaqEYVTl1z0NdUukETcwM2T
VVfFowNULGkut74dI7Ae8L32kxygE1z2gyVtZZgQhPRr6OzRHAaflxCAACCRMP/yY0f+2aVTVDEK
qiEaKn1GEeROM6AartPXvMCiaN3NY2s+RKle8y+dDqUEH7LzCX2nt7yPB8fECBioINLPcEJ9H8hV
ntu5O+g+GfL08sDzbOBNOV1EAHB3BRoAi8EakIQShFMxAAVu01tScg3P/0vTL515t0upEUD47kAh
f+ngWsxaMY17ryuUC2MBEFHwCb4fzp2n/yKkrtYqRCyMPqrhk3b+dQcYVZBHKBz2zhwTtRjUpYXW
wFnwRvc9UK6+dLdfWJqZni+/B8qaFTVY+oQucyKFY+cNUhNgwMCMWv269w+34ITEChLDnCZN+zQ5
lnYaCK7dM5duv62zm1x/2hZeoPbQrBst0gaci9MA8Ki4RVpLbnzAjGew8sWtuQAxKUgK9asJx32l
w+3pIwwFR/AN83qURoDDyzu9WTKj/CetYd3/h3T53oATF37doJ66NokvLTi/sqvslKyJWEcKrQpv
A08f5jTsSlObZbtdjNr2MPjSKQPaQYG0QaPcDtMYJySIuKpnRwUTo0FTVFew/4/vSd94XbC0uBj5
LMaukFm6eOG7Mxw1qRRiUSyUE2hnVBGx3EMyiuAM7jW6gz9YAciok+KXZT1Ts5nTtnRJQ3EuL2HN
RNFc0FKMoGF1CeNNUc7SfvVHq6S5lzuM6F50qm4wmc7IIUeqJQf8sZNyBmEbhC/xZmHozqTaxJVu
6/pNB8wT2bX/UozTJJRdw8QQqXQqqM9blO2IHfpJEcHLTJtcoFxqmP5WT3e5BBOcUSZtoGVJl/iD
1YiG5qPqh+TD8++zrgEGO4lZ3MntlFNgpOxGoj+BIHFlCWZGpim3zwCS9zY4U8Ez1eqtagavIV7H
VDZlJdv25FfUBpEUaLUb2JuR3eNd7etnxrEYVURoKfSJM0uBkYqmYOE+OWn4EQXjpzfBnXHT8i8G
LOcXO1Qo25ZVGXxNQJFwzxQH1LxlYHqtzr7PZ03ZNIZkv3/OBDTcXcp5176hjNz9F35QocOZA5N+
fRiujbxo3bdn0uHp/q3hZBHrPfmLN1ruGIE1nFPTw3pUD2dPfeOh4yrnBc+g5B+Vlr/PBLPvcbuc
ndUeWtKowc3pMTXtjlHKF5kxHiSBoWMK4l23h9PREyg7yFL5boEaVCIhfWLrveIKeKCNEUeYOvLp
GDCtnOJ8OtY9nNg+cN6C0a8djlWj1GHXxfK4z8+EKiPhdlliUEVQ3I7vqxfq34pDf42FhxDy3plb
eG9sK52E1yZdBpQ8uokgk5q9DYKqFj9cyinnF8mb9ntCRZj3fwt5TbmuCVlCDFlvd7maqc9EsO6J
oUxt8NUg+Tf9qRolNb3/BJO7txHFRTPZZ1hFho9bm6ZoZ0N2KaAslvDA76h3SOTMhbutN/y8KKXC
UePlIZKf7grripjlU9+wc1wABRHq9V1hIk59R2IQVzWExNK5UqwWp+fWq2PlTUz8V0YRmBgBr2qE
sQpNE2Pp9X1vg2IH/Yi5a6B4+omlmTSM4AEyUa7mEtTZnUaOj9n2LnfKxMhl3CGCRPaQHKWFfvq6
WJbpZ3fHY5jmImzv4oq31PqHl4577yT2wabncnFyXdQ1OsVKqPklzFHxemkNG/MB0yq5VMXo7GvC
GywUb32xz/M4PDvwQoo6tDDNroTDCVcsPK+g8K5xBcACHSYxPslMP/nN3ep+kBc+ocyRtIGigQCZ
Jg6f5buoBvm2JWrXM8WzZQxpEP5sz05pGt+C1+KQr4/Gk57jfRaX2WkQK2Ft8uM4f2KngDSX3Cb5
HLEz22opbr5VevDhRjUf3FqyFVM58NXWJX4U4BmdzmCwbiAXag1FK9VRZxPRB+vIhVaAdYnvLH2K
LgF7/wIWgZYD1oGeGeTKaofW7h/eXknhNApFh1dKm3EmZifVEAJWuf9eTUaMfbyJWsFhfeBs9rNz
C5KwqphJlonNLf+JpNbol/DtNBLNkgIRKudnmN7P29ljwbeY9qgHpIydCd8sTVFReEA/jXr3KubN
JHAXuN0uX5oj0PCR5VmHuoHfmSoDOFS82arSjqasHUZB89W6iM+esORnIxt7FH66yVpVlEUYLPpt
OjOwIc3o4SyxeX9NfaGu7mSH5YJkNyZaFJ48M+e35V3iP9kes8dBAm3N32NWLR6F0G5cKbyEj8oe
SgeD9aU/9DaFOp3e8HGOVoe23wds0iy9kJJZj2RFC3sBtagy18LnFBcQszCNd/oS0tXnajwW8451
RHLE0w3CLgD+0q7Vr0tbVnss8KcWXGM59/go/NaWDjS6bnFi5f7FqSzSednx4NZ+qLS5zCG8Jm8D
10/ltmDZE3yswQ2ZvaIO8W5rauRyBARUT7mduieTWHlD1xyzbIpFxAMk/cq9wcQaLjqZHYQoLVEn
MaM9RBjvhoj6NgqyceGuY9StwBvJHCnP3HyXNB+R74GLSGY5Ge0yVPaeVPnFipZBR3e80ZPW/C7g
7Jms6jycf6k7BlrzYy3yOQEHT1bfFaptxJHRVL9sz3UYXQY5jzm7NZzZ9l9FFJiJ9hk7ZFU2hQl+
HtpTRWmE13sufM3grXeu6OFI/VSMLq/NUudd5n2jjQ7N30gQbS4hq7f/zLHK28DKMW2dZl6hZWMM
4I1ZwaJ1Q9NHH6t+yjrocAtf+xKj8I0ZW2Y0J9EE4rjUOufnJ7F4xkripJ3m47hYFA6j9AowK2uQ
wdM0T7RkGoMu59DGuT6VKyQk3X1lzSD/K+DyRaMboXpb2aKS3a2XeqZ05WBx1Xb5nmrVGzDYLCW/
AaGRXVYOea7kNak2045BnOfsZZY48FnV3ccpN11jMnXRjyMSFWRHU4hNKGd9PAY2LlKLRC0CYLf+
eONuYw5/1srQVKyg6YMM/MjgUP3wWVhYeX57+2J+vgRwbtKl0sPVGbMJPmoj83XTS3390gVFQ3Dq
o2yHADrELRoSKyzYsB0WUfbCgixCc6/2m/TxDxMc3I6X9Mm7MK9129fLSLPltqjwrZqm6amEZQ64
f7g/jT99oyQl2K78b/HsRtFqqWMPvAPzXqx4VypNRRAl5kXQItu/T2sPPJ22xr1FK4857A9g2c8n
ESvAaPvZPIViG3yUhLrtFM1i4TpkBSTcoK3K44tPIlSmTgSlHXpSqKJ0s0lUpDQihFO5K5+EkUkV
DZ5NSbGdUbhgjlY8rm8F7PRFCOeczT13pDKAt6sxOSvPvNCa2xIVbNxhzre//E8QBb8z4pORjfSZ
gZSb/Wg6f2AZlO07PBj2OIb8H3VvjLwVGQIAPIGGIHT5cvOdXxnW+PIVaspIrHYpab0DowqTb3bO
DlObEPzbJCzCfL2a+3ktdO6bFqmD6kPzEnGgwvAPD+CEqOCNnVFo/HoPo3BEmCP9qF+WKAAk8o1U
QGAHBMBSb5o+WWQdaFMnz65YCR3u5aTSgkhL0ye0Qv293+tQU9FwJz0GxEq+fO1xahGnKR+N8GMq
z/5+xlobMobTaVYwUNzN+f4hUQrmOxA10fIW0MUyzNHQK/2qPfCL40Fa0sG4EPUiUU06JTESzRNY
YnxQTRMIBhFGLsKF8GMo+vQCGDwAuGpPkXrmo2rijjkU8CSa9Z76qkJ+c95wir84CKtPRwXma7b7
h5RqterhmaedVPcIvf14gYuZEkBzgXj7mXg7uNQulCWdL8AzuJpGffsrWPZWDY/WZv/8AYO+yu8v
jmYxh7cHnJntbJO7jRIlI1WKoa7irZ+74rWHTJqsUoZybUkkW7ka9BkT/CjHjXn4yWX7ySnBsfHh
vcCJOg+9wILPmQaOtPsUkpnNEMHSd3LxuVUTwubQhqOohLMmMnmgRRObxC/R6m82QQWXdJBqy5Mx
3Nq5X2wIAK3DJS+tEBnQkHCugU7VXUIWauunC+rKCz2nWAXuBTpj0IMGDzlIE9eLE3aQGwFfub9P
uLFe6l3KF/sr2gIdPfOcZ7gjIwFtVdvLu77DM7iZRwwuv9l1IBBo5Uu69mo7/z/R5k9sOxEiqIPG
5QfFRu7h3Kgwomk34jBfcumMdht7YTz8f7SA5IcWX3CKBeslwGKeTqRZ4CNNekriKyaWt9R6+yWs
q5WqOUNgj8Q7OMo22JXkeEH4tq0a3/KScXEuA7VceHuvvcfpm6sKPpdn+4S4PST7Vac53qkLj44s
CEpQWw1BDE1PJNQZIPhZ/B614oJ/yYYF2EjjrlBWeKr6tHYbFQ9kN5u3Ud8Cjyllfa0kyEYbeMqc
qE2rQSLJN/SoDcufOoM76kJ+JocoNM26dY5D1uExLtBgSysp5ZH/CFJRLWcHAcVazVvGL/3u1vAc
g/3yRbxM6AplOyp81bm0Q5PHscQDJ2CdDqBt3XJgwKKTU0OwOjkL/rfTE6d1OCpiGjpw67aQd+8p
H4zgnWKoYQ6Y7Yv5wGo8M/gUZVxJtmtjoFKlsY4WOWMv1O1dmEGZaaZjD8RBvxnT9Pr4oL+5Ky1w
P0PCNi6V7iuk8dAyVG28NjkKmkGAZrzlLz8mgH8q34mnYzdv4ZQeukVUx6rgQ2Wems4e59ozyii+
J+/5cQePHnfKxZ1y43rw7BydPHpkLb2yEioZNN4f4Fgo45yMgc8k8iVhDZgmbSe1e39VGz2Legfm
HJSTAfBplnXK/cjvfkrtfNjHdD+G+m1WyusdyTxYw9ecuujRGxwmJZq19Ed1HtUd6+0g3CeH8RF0
JUtY1g86UJmqKN/Y+WO0IMifMcX33DGQHHd/FYgCXO5zM64SnQh0jYiDhwWcgN0RiAxZh/ssmAJ9
26MhM7bIh3tkr33Ri+ob/IgTYdcBDEszuar3LGdWDgI5zOXRM+qtbfdegnE+tUV6ZhJ2rLyk+heJ
ftQRardWQj6F9nWBjZlQUCTvdrMi25EkWdfXXa1gjCO0UOM5ZmspGkn+K+D5m+0GLjH4srbL3yE7
tL7921udmD2hTY8l9sG0xb2ht8cRg2lJEDldwpX81vzqzbxyaWsmqr9mITr/X52O29BudPASD/Rh
pxex2v7AG9RN1RcX+w5BFuTWVy0nsze/wggs3cXVgcjUFmqd/dY/xW5WsgsYC3WmHPbJGs/gL52+
efomZ5PGOPqbwlYJ77QomvsoTFgwjYqPJNwujgcPGRKEGr6ZGgrIlzA1Uh0X7z7iHGrvV4hH4gaW
U5yhu319+x7VWrMBYtp9Q1W8sCSR9Zv9MMBV+cRGtEXGzoT6ni19DFBvmdNNARziD8/VezQpTCb6
FE6+znB0vL8keKNrZAiENv4O/Ylq3NXC7XwAfiCQ+2H0dsEsbi6gsqrdRWrbU6AFf9/LP+kWRqml
9mbOyGwzI8yE88fu8BY/vE0eeWpc2CAuCyHEKyIKk5+eoJXZyt/Woyt4xXJjRsAzjlXixHsmMdkb
yOtCaW6VVRTxmVFvP9Hvly+fHh4BLbLMbOCFS/NiDTCSMI048n5iMsykHL2jRYUQ5OTdJAj0mbWC
yZJe69ioq90XxeDAY2teDkHWGSKU7FrcruLSyQZwwG/b6LazylFk5pstAsbACykIDE15AN00E1uv
/c/p86D/PLaXNq8eg8tgmD/CejEmNLQKODEXoVI3lQkCTWTuB7IAYZl+R9Lsier0K+Pj/jXSLsBU
QKbO8P8GjtAZSz+HIl8XleBSkrpHbz5zw7KOhVmKQK9NJ71fDO+McJCKtNQDfvnDk6qLeQfOQfyV
BzM+A2X+5LS3JBWkydK7pn32791Vx21PyO6OVWWGFlcFgzDk3Gb1vXAQTxCrTbTD28hqwvIIJFIx
JAfDZ9vS1lImAvh+8vdcwDiMou8PXi/dekyar6aOwGwv4s1ewbv9x4cJaRGUrO3kwSU4Dl1EJgZu
FkH6JBwN6mXztGF+jW7Zdc/HDf6orCdirp53Pm5ES+wmkpqLlB0kI883aBzNflPrNInSHoQtVKiR
Cp1EO80BO9cuwF9c5aOreGdSA5Ocz5f1BdttYjeRAxXrsuBz0frKuYtp03uPLPTZuztCOyDPrYzw
g6RKXUlj0q+U+5evJARiMV1Hrl/5Wfxqi+m7PQT+p4T/iXmrhuMOUIeNn5uBP5PRfMmAsBqM/aTi
sFXarYBSk5s672U9Ne8lrtOj6JHBbhMuqwlAEvDTU6VHxe8SZKu4QRrFB1kLf8CCs35tPvznJXrM
xNOezEETaYgs0nCNNLhuLQwGIYbJF12THsg7swK2TmREd2eEaPd0p5Xc1TL7vVdwwtWcC3Ojh5NB
wDGrVH58sKxIyQo7+FjG6jCPP8kSPwGeNqKL3q/qwd4X7byXdDkhqK5YzvT2+ktseyV2Up846n/9
AXr1yukCrN8DGvZjzxgzwvVWGkluApzBqGiAGXHaeC4k5ju7fL7XJeB83wJIFPsFf47Ve+a+VHXb
Ddnshtl7Mq0hIt/3FPiocUYq+M09FFoOFSBTvtf1kkU5YQWGaZHwpzqAjz7dYFCa6k1E5+2r2QmO
LBmpsQOS8gpxtcEl07W2qTdd7jsG9bNpYVRa+2aHufchsnAebrSs6DSLZYp4DAeCnXBGbPGZgNS3
pg//UCZO5RWkwyu5M+Oi7qGhKnGbkXMuj9U5srngYUfXgUwWMGV7iyTQ6ahkz9ldQfXevnsCZ66Q
RhjWOgWz9+hFj6PBOUmQYjwQ02OdO6kqAdIuV5sjgcVPoe8M73YCQOFnFOWhEEHgti+ZtyJLs+6I
9dkEJ1buXSJIjlJ0QzVnFK1OdSxsbjThBwZXGIKEzoolhe5R5VOeZHCUaKgaD2QwQeBnlBpwOtvu
7VWrKnNCUCCikeO2cBtn+LlltsO3lQh00JPMZN8OcuMVL3aL7UwNWNeTdG3G8g7OsELt0YGQr9gt
0yHUDEGsSb92RexzsKnIvT61+mYMVNByg0voJoLQXoZtkjmGyu1tHMFcWJ9KpQaj4SKUS6n+/uj1
0gMgtHtjmkeF8UN+a8bwOZSUnX1ny9+mIevm/qSmh2HPmAAlsfgC25UC5yEWYD9S3tEPRAtnDLeT
3yNXL9/ahUJQQgE3Vo/vTRQlSwZs+mokDhuFdkELxFhW3d++T5kyUgNg/lxLHWD6z7iVJt1wsZFU
q3sh0Jqt9jqI502tOFFbMTxE1uUpGhmYpA0cAKKFRwcxMEbhQcQnKWya/HXW2wZxQqUAHt1o5+59
F8GKIaMz0BNjK0TTxrXNZRPg1NKFiviCEOvU3Mjcvr2SuuI2Y0bOUEQe4o+Hm7xHWZ//TXxs0QdE
aRPHco5ddf2nwnFmM1dQLTPCPGlM9NLuXfMB+LJbfuoI/B6esm2Ft/xB38wrnzLSoKKF/84guVFw
lQPQR1Ei66XUDKvr+1GEM1nKCrWjdkIIaGEAlNJu9yCuZzx/jCa/quXM0HnhYxAOCWXAqq0c11b/
F22XclLGPrmsnwzmcJNHDwk+y6tPrzgZgoz9f3Ut9TmiTTIfun7CTHcxjb8QScAnM29a+5wLF2Wj
4MFC3Coe5IvykfHwf4EspVi0gygbTpYh5POdWeBGU7f8zOBiVIvID7TEzgCXrY66pqfvWWmsiAVM
GK3cOMOhz+KJzmTXc9T8+84km8AvssggPZ1wyiw4jV2VVUZIPS6oHq2uJyRXOKWmpRORwypYhvhr
h+ik7A7lEOrdecBzBiePvJaX0wZp5J9jZzchc2D+KYpME9gzyt6mOsiGu/M5h0/uNRbnwWLFPUsL
EIRqkeCUcG7C/QgRxksDMYQjTUBH+chKsGDcnLMQDfwf9CAKfi4p9Gm4kC25Qx79LHftYsXudmOH
WL0YNBhIkASYV+v7sL+WLiYsDRQfOvjKLUX90ut0ABuzrf/ZMAaMGK71WV4d37j8BjpxbD55fAU8
NsX4rifrxXk96rshyd49iH1P+C+PQBLCzGd63TOX4FR0BBV8uDwBfUH64gxtN3KPtkH6EMXbHXjK
+3UovycAG0CllKsiYMSICqvwelss2vn943vAHDkwC/CtPgmGKGxN/F+AnEGC9n37OLFHD14PuW/Y
v1GJsdPslQtsYj1iQxPQ6Jd18sm1ucDyUZTKD1IdsHoiQjd4gCxienN6XDlB4M4C4R94Fld3Lt3q
zD3W2t3+1Bs7Mvyo1A++rBVzyxbNcSVJhaWnfjCvfS66U0+excUT+ow8/ZNjUy3+xIklWvjUNPiB
Z5Fq2Z4VQmyTHPpzFZ2Fy68XR0IQDdDJElBvRir4HZtanhrZZh35dL8MU1ugK4/K9QbqnNKw3740
8ymBdKXu+dojwnv+I+kVKtizYiNmTORh+lLpZ7R0C6gD0n7XmLLj75jGUt3zkQHacRfAKHKqqCCQ
HJUoE1UEWRO2jGfPIFSPs4Jf1OSwz/h6SSoZRGYf/HkLz+1p9On2VO5aubmKojZsef3MfvPySQXu
WXNGPS2yzXBuT44/TkbAzYJ7BWul7/dnP8A+8NYXQA3xdGW47mS2FeX4MHnGGZ6eC/JadcSzvn9X
1PB0VIYCoFpcV++iRl5GuxIhJqJriaXTjyG+63vPASpaOKwr32m/svdjikCiibEqIPw2OEdnem1X
0jGevQRa0RCl5dXD6r7/uN7O2K741LxLnUMLMd2XgbwUVYXzEdDRBxm+yi4E8MMz7hXbRmVz+rgA
PoKTh7vDctNncxaKGGnO/L+pn0m9Ykvh62MAF17L4Jz8ciALFPsPQcezgRYP+kDi5YxYxMyBGiiW
Sgr0pWQ6Q133gVnbqU/VckLr2SIr7nhvuZPdiDFoVhHZwDOEnPaldod4Qf3Q2EseNToXduS55JOi
9AGuXkMYaNX9JDJ1rjzhTcL37bE70upelFsSMmB8oUGs9qPtvfxN4KugneZdtJpoU4QYW10soHfI
f+N05WPq9Auu5uWNVD50zAJxwZTYqXESUzr7hd3yF/FtPCFTAz5tAIwBLDoWEj0RKFxeyVXSTZn1
JvyTAn78OZ/oYICDKFNG7Mh2Wf0VXS/YbBH2FehYCJiVlK0i9W3tHczMsc7FWfG/lCkP0Xoi7k+h
GP3DkwcoxCJHmZjZRBO0mAb6oQWZbZywlZWf3+TBayoILPl1g4z21Uf4P3zpazhB1+qWMq1e227Y
Mc40W/aEt/OaWYFtf9Rrrs+we7e93MoB9Wa9STAuF3tjPqELpx07pM/1w61pEbkomkkTCu9LzqK/
nXBoqijFeJNqkommF52wZTPD/b/ssfzvquDhdTQKeCVhBuocoCYRxD7P5CevKv3CrIz6K/UvuO5J
ZJs9R8emYHJWles4j4NHOZKroCLW61LYn1FsT+JFbN7w5HyS/SfQb5S8YqIlJ1sodCnybIsu/UUy
Jd9tmQfkh69VXJ7jjIFGv2KjUN8eRsgymfOmky3El1Q/1Wg2b3GkyiHUyTR/qvsaZID9+aQnkbCK
o26hvg8ODUSQ7h2Ry4UfwHkEIeWPFU+543UfezbtEHNHu0MxXH3naMM5UOMOFX2GS8EkckLZk7ab
PkilQTbWvsPCX41ea15FwqDtCNgWqu6R5qvd8gojrxl9QyvlLAsA0oR+FXaW+9E4aewVLc+Pfhm5
JP8W2bUnzqZK7mN2WPqnHXvwvhNWzMHd9T8eSYzra7aHYGeHJHV1nSlJejVX1rNVVez2K1HbQ80u
6RIcRSFIybUC5J1kXwYXez1smfhzhIBmkw/YVZ3t2R0WEfC2tq47JQcLusZ4K+NouGhkvC9S3MCy
2XtJir1xSHHxoj8Guz1evYS3WubI+YCairesZo8Hc8dd6hkPh4NUhBkBy766UUE9VqfDv3A9/DST
jvCbugnGfcupU/0xBcyQCqdZk1yCEHuAujzm+6KQMXfqTTLA3kErU8lk/VGgC0OewIg629cixeHA
tNKvU258xOYPtS6puVSzPlDBqEjgb4gEapZ73opcM3gAWgbBUB52+fKsdjjEWQ4W1sLHcr0hScm+
T5Wn4lmDQmo9D2bgbP3mfv05RgfsemhM3EXvkuC2BDo5tGyN7n9POyfEOaZQb5fODT0fDsaMZ3x4
1oXHdN/zMS+wcyXWh5DLykBJATFiBvGkV6dI/8E5Usf9bAUD09fWpHYvAuxfGeIuoCQXn8B7VgRS
/ImQxKcpRV/AMErv9qljto+itcJTCgtkbnQv5NibPBWcvG8GwF2kIlKeFY0t3SWiaEm46H350UZS
838zBuRGIZWKqizX5+IXXw13GJI2jXyA9Do7Mu0h5/av/KRZWGslBB4QljPOV4bslTb6+AzifvAk
IqL52N/hvKl22bShQqllmYLPfVgk/kjNszQZi0fNYGSsOLr8GGIbu63P70sQ08UBO2S3//bVs5n2
0ccElvAsPeit838Spk5iMTqgyGkGuwHDgV5iD5M01FOyNtjC+gZGlHycldnYiwdv5v8SitEWd1R0
Q/3SwtXhO0lS8enwWMpn7LOePBdFwf1lILPWmO3LBFCm5l5gebE7Iu/KFomEwBvrMwTZPEKv75AA
jiaJpVTYc4Yzh+S1A9pLB0arDbJL+6lMPsvGyciRA5ikFSko4BB69yd8HWu9I0BSj2xNFyEHI+os
u+ZOpmIz2jOkDuVIoMCITLMDv0bPe5VpmDVu5OaaYWbCSTWHCZRbiaPYrgeEBWs0jz8S7Ynh7aKE
iIMRNc3YjE8A1sALy8uc67Y7+Zl+OR0FufUDnV5ziHGNNK5TVwtUAI7+UJx4KkyHaHj6e/uIlkUu
wzAFPVcYQhXQ5mqKQ4TKynFxa+HXtESFfZW5/wBlrrB3lZ9BsxKLAKZKdjA7aLSXlYfvknNobz6G
oH5ju2bXgxF6l00Tl6cOn/U/1oYCcdTg3dixC/nlWQd2KKoxLELEeOX42HpQGweB1KK+ceK9VXLY
I7X2Sngkr/aIaMJ8Zxi/4vHEFICbPtNh99RXweWg6uJCq1093ng+Qj22fSe5D3noNzsmiImPgTJa
cZzuOkiKetnQXDlR3eTK0vtAkMOxFCdOiBJSPc4yIohxNw60NXdWsRpMPJ9BJnq4mIflG4g36Lww
kdsR6WRgo78H1h0D5yLZxAbazLH6k8RpFmBoz+GyapImfS66Fqqf/T/cJpFP/ilmpnct+N1omOCj
Oiol2Tu1tI3JjOSIpeJ0lvnGO3HvBaeFipGen/Zr1EBUecu3OGzGz345Dzz8OdrA+Pd+NXwV2Ncg
KjJecgrCiA55xDx9OgQhd5IKdHiJ8voAAVqZPjBvPF2cLuh95PL8D33V54IjSymgI1JM8Kunf+Ks
lmg4o0geNjrwVF6RezJ2htoffyeCtyarsrydDOZayi9COyVU97HS8KxIuBwOeDIHPTb4X1DT+fST
2g1GzaQy1UjFpdPTg98qcs42q7hl4na3Cj5nTdxH0cKhPuVnYfFcxp5AKnCFoGRBRSK4G04QlslF
dihg3UKNB6RqAC8YY3c3agtLEDwcJw6n54eB+qSd0VJWy0bQn+BlYjucIJzwRREgs1SUbL0JTEU3
iBy4JZdlkCvG3NZWj4Y15luPofEQ8B/2PoQTzv0yqSf30GMuugDSTS869xP3BlAthcZj1MnnvSuV
CbVTI/wliOKpB1XYRlX1lt7hkd2trUCu22/0fB8vabGb3hUMESv2SBURkGKS7Zw7xG+2zVpAfFPC
hChzdW+QGBo4DPOUG/vtENvHUhwL3Vr4SnJDNtCynDUrM01RCLr6iMNjMDNHnrIVbRjs6m6FcIQn
pxjHSSWxrQ8iM83/NmfnpcuFmZgQf/hE/VxGfDDGN+cSm08MqRPyGTZVi81bLXxFgslCUL6vgwnm
P2LTOPAoJtAQB618+KbEE0PuutkTzQJjKace7cQiywXic/E2/Ba5M3AXUFD9jLn96J1sq9L8Cqr5
DS24RbSnccJb5H7zW3SxkIoa7/FWrkGvEZIQG1SNbg4yoefEijZ6Qwh7OumVkiwW7e0K9VjWWn+U
QQMjHgZt18gVp01hQe7v/zzpxvQuCYEGzYgB48nV8avLscRwvxwkydnHW1AHtdQhRRa+Hl2xsDFu
GJg+8bR6IE2xZMQ9CyYpnCwk36dsWhMMQsYNexT249GedLFWMrqiE7jbdGnfeWEVhCiRLJkf6EKs
NebE8uBc4OX8w4yghf7UNSORROqnRQHGvWqi8qFxX4zzM4mP8m4o7UbaOuhe8spR4PTdY0MY7vCR
5bnXE8y+gZlmiq55mF6U+A9HFaSRNPDjvL1+SWRurh1Al1Nd76nEib/y3R+MsKVwk2c7LSUQheTR
5bdyNapYP6RJBtj8ztckE6rcLPn6TPQfCd+03fT/bi7H5igp+Li/kcJY98xZpNz/QmW4a7LnDMwg
rKyteigOjuI2RowKe4ekm0vJl0A8aPH6AGG742CexED/mxiQFJu6B/U8vCQiN+BSXJ4CeivGO5PP
iOCCp3f/I4J1w/ZZg3Ff879yLk3ItCivtl74dlUH72x1YuGMeCEpkL93Rm90NWooBXHmRp1irz1y
7VvISCQmM2FmDFlyzb0kVtPFXrwKrNKQtQHhGrtTI/v/0Xi519IVYXPzLH1CIjLoZmJ3QtPxV0jL
xVVhH6XKKA0Mit6DKfFWPGPVa7mOnZxUR71uSrh7ouizoH8WkfY4A/X0Uq0PTsSP34S8daJR1MSu
4W0ioLCvumG0ZZKvj/7Gxd4pv+oEqSi2l7Liud8TQ3BnVj6nxrWj0UEXyj4pB9W3lxeeNaMS5fB6
6svj+88vObGwWpY3Ib0M0vCwBC2xHTP4zThQJXSFT9dxyEgxlEO2f9gO4Aj0vvPM4xW9SGLflVhx
bdNuIv0YFH+w2cgo1f63Zc49mhPUG2MzYn6M8HgBdp1v06G8tSin/+80Q8XKoz9jGTsDcKHzFeiL
biIxSgwmBtevje+ab/xrLRy4I+ygSCmgWWiq0IKlyAKHUFvJaw1CykWnh3FIcU5I1/HMpyhrqc0c
rf4cZr7pLSzVBdys5IN5ohc8G7Ex1r1rOiaexOE7u4EG99ANnvJTMCada6/RDv/j/wiCdQLQRNN0
bl0xEM1m6EXDQrcXnokmyiz3FcjFYgLJGxj+KcUEUTg/Hhos1onUO6EqnQ5uJ/ucN0+SS0bhIHXL
WQWNeFLT2tWsd6mwz6rhvLvq4DEX/v9QfFWVAJ3SlsYcgWFA66Lxu4MPnByN2cn6HC5mo+2zi7i8
Y5GnRqZb27o05xMr1nBCHvdPqi8DrQWG7Tqk5o6qPikg2yRSQ2dKqsftEMjd5woQ3WKj9zdX16Na
gjclnhl3gGurz+BZEHBfFsRlXBBQ72lxvkc+djzMpgrHPBL4S+5D9BNRzcaHtgE7B/Te3JWUHzfS
I9lkct3UZWx4Ru72mOIOJyYhvnytJSSB5CGr2OWwV0oh9PQlRJxvHjWO9JOFz91uOHE6UpiM6gVO
rKIDQIqOOAlUE0OonjVFkv48GV3HR/DwUATZc+N7Q4DH6sK/6Zi0o7IaeoZdlHXYO9t9Uh6bcBre
FEzNw/1cpIQ/OcPeuH9hl3ddi0JSGhKKYnAIZ/dD6dvlDbim3CDSlInmmaOieLWi9Ca67xzYvRbn
Ntb0iO4SQVn/77kcg3y3aO8wvruHfnJX+hx8FmTyyOF6WP0nIELn9vn/5Z81qUJIeqom7GI/Txrt
cjDRWRbAkcvM/UZp5VNcU5L5wk4F5n5DVYf7qVmwHX5LLyRnqhdvQfido9n07qCZSTPfQSnQgex+
Gtfz/GrNmN+tozIBTK3pq837fmWKSPgmcsuvpQ17IIJH7LN8w4h/KohGd2tBEGS8/QI976W3aBJO
gMjyhvZ5gi5KL0FrOgGxQWrVc+wZLmZJuUK5XJJGhh81w9XmjpdOnHDm5wOU+FV+75B5m2/myiHO
P1RQiNMtr3TMqRtETFPA4szhZGgiffQ5wL4Dz5sUuGNvd2u4mV/u26nfpVOXcZgYxIObKSaJ6nA9
AVrg4IjGNH3WZS23h3GUFnIzY0gQ6+Ngd90BEUw72zFiWJlAH3S67ByW6lUqiJ1IPoq7sh+jfgSF
27lA5Z7tX/9Pif93aKwnteKEnEtsTFGxuJnMlVCXFfuwlDWlU/kygXvFbEzqWhImSlsraoBygvir
u0tl2NLQEJM/KQzxLeUm9dvWrjW0M9r+0nIqpwCVUQ5fyCMQZCmp2sJtWdLD2HSv+x1EKv6/SVoB
0j+RRaCH1FVZA2KMvtQMJCVvLU5G3OxCk9hX4vt9z2uEA+D7nONr+3wJBOc542TVFxd8tRM+Y3tz
P2fS9oHeBcUZ2zjU1aff/wnBWc5Ql8sHKRU4LyJkRB0f9jPzmyBaEsVA3PRVaqgtbzt+Z8xNBItC
S/6xMA2wYJhC1FsAc7IGrTRTURGvyAFS5USXiZSalNf55FF+54qjSiVmBef3LRwX9+tKms3Qc7vj
IatJQpVPe2zf8arf4OCKOwQOKMDkAbNSPl0FrtDq7R2fFji/Rwieyapk366hfcRD/kBxODqTvn7k
tTnRYyatwniwbt3uy0eLh1EGdj4zzz/od8DCA2ko+R6c0xK0vqjymWdqePpYjEPUWuzyKMmEG52c
svMQlpRj2NHnEjmICv4z3KkzMAn1YGgQYJsDrrjH5iwVNLVjA7B0ElXsn7+HFSusz3C0edA6q1GE
IekiJLeKvwzawiMn0bD1xFcLwCF0UNOYCTpzLFtHnRGLEtXHRBGb4tO+llJ6Q/JJzlEGLF+lxCdc
hMfcdCfhgbeJhdfhP0VgRT++1GyXx72KEzThqvVSmp/uXPOF2iEeFbmTdtYdC682TC4YzQnB5uTp
mJu8yBsCLjtNSEScM81TVqsy60Tkhgy/Jw1GvZjvkYVBPbQPdTr87k0UjAuxVWWpaXF3AJMUcYMH
DKr48C+3jQFPkl8U79bFt1NVEApXNcQ9i30isJ9jgWMWmNeoxDFdbc9glVqxDckHa2a5n69CXWGb
+STPbLVtrL5H12eGms/pJ5AbtauP3fGHkMNJ77nkFM9qykL4UZ/DuNhrFyExNHQo7V9bFMwCqHxq
APC1rM69yg86gSdxJ5RX+oS4bQpkGws/brOBgbOIQ7jHfPfMgkX8D70g0oC82g2VwzP5XJFbsgot
QDFZfNTLjX2gRcOcS14fd0li685d5RlotX50w43PfxfLgLZxcd+TnTj4JXzzD9FwdkbwcFqj0WLm
ApA/RvXeRMrgdOaOHDo1Sx3odrY4t5SloF/7Zk3yHP+CFnbC2IJClR2AQgXkyt3adM7GuhVoHAGo
xplJy+E1szn/Omy27+K9/zlWMzxGq1AZWxLn8u+FcVE/s6KYPSOpBr4Ww5sFqUmxYcINqMhOWmjK
rngEWZbZTl5OCO5F90iF4TKZZt7UgY4/VeBnDkmVTRozmcA4AybkLlBEDoqW8jzx1b17mmBeuwR2
qs+gtH1rO8uPoneXRDsK+NAvR3LNyczRBSAnlilfS2zHg1tgEXJKRu5Aat9WTvXY1BC5oeBXDOUR
xipio2p9E+TKY8+EDcJWjyPTlo6OyvPPCNmXt5hcveV/1nxwH+V8wl3Jxi6z6e3e0Gwhe4MocXmI
fIxMbt+fz+vbl8bRNWijoMOzYLoMJjYYwm+k+iJA9nLMJahPg9cXn9e0EiCdUts2YsrIEDZw2r20
FfUnx39QWB34xx6ZXsfCvAOORraXYAotRojtBR6wgSzAk3nYFuQy6eQfE8yF/g9jFXIxQTFbesQL
Qg8NQd6oh4WcoQ0YGIE/igPC18Dvov5dbsITxFse2fU3Dl5ju4RVPZ++CIv3HDboZVBpAerHjOn3
cyWSGZKuMiAbam8nA+bqirKhtntqeUO4pqMpgLLyB+1xnDmK5YhouhJ2h2HQ0UV8bDZjpMj/6I3N
7Q8YwtBdFzKytLKxzT0JP2DcQSYK5pYw8ebiD9bVrJ+jwljhtjst98LmqxdUNhuozTm9TwvwSRN5
KA2TPOHvhK5sIGNrSAbW0VL+Grq2jLF8feiaKw0vfUhHvV6mHgiAoTnIJ0Db8wmUFq84iHu5B46X
dnMm096lmM8fV8CiayLssnZeW7OKjzF2Q2WSz9eXogLD8uNEFECc6jiGEh457OT4ocnxOPoTU5wM
o5ZhO1dXkakTMcvindmhpOnS//ZibRovboS1vEShW0p25rgrCDLP/+PUn9vmDg4yifwFG4QCcFZP
KbLY0tgeEr4dSa57+on+wQ2oQuddD2fyF4wA9JBv2gbRcQ6/hGr6pSc6cI657INEAc1ulPuURb8c
kZnvh4zjW8pH2B1hc5qk6d3dN1WytjWf7dzUAcywEIvNfGpT46rv8keFXI4wTX+gl4cuUfzOWGal
ON4fSrwh7gNlkLD3rKzVF8k3nOMwc+sq70bMsWc6binWxP7RNW5ERVqlMKWvwih1GAXft/YN0Rj1
3V9jrUkCagtO01utH6EZuf8YsgG8YjKK2UvCDQmDHAJQT6VfvF4WsyTbswJscwPTNj4j1DnDZaFJ
+7TEeYO8XzSMXIf3RjXPq0YM8BQBQwSXIEiK5rjp89jdVp8aUvSmUpm7H+y6V7lfMjjRRqM7m0rP
49tqopiHs/Hi0V2z095WeO1H2if5ag7t07e23NeuK7WT39GBluqn+W8I2U5q0t4CPnCwGwUdvh+s
Ma9dabuJ1u7ZGoMR0c4bncr/Dl44rtuGwMHJjpxcsox81m6/sNwqsHRSJdLVdIzVfEVp/6u/eoS4
P/Sxxx1q6whAdTstk7Iw0jmLGpEQHSGrO5i06P2tPA8F3vxuZAsjQjBZiKi9uKogjNZ9RUfvRJt7
orojRKsyJTI4y6u28uRlwC/tBQTB4oqh+Yhh320GpSi2iH8K2FjWhV2qraGxnXcq5nVbIHKY8OB+
S1g4SjMI4f3NJDZUAchTj8HYwfqrWy3fl+UH200L7SE/ABonYPtFAHbrnhOItobFIQJhSgabNbbv
WzzlzUOMrHE+jNLZ76qOUHw8QMrDh9/7aAz0o58Fh6jO+yBhpDBYyo2zAWkuCdSbq14YwvskEUKb
6oKpqaJkFLT55X6g9TzVwCNnqKHZULpRibuSBV3LWxdhSlXzIWr1mE7yTSXmyuBsVh/Lo0LBBdA7
NNtnhtvOGQs43GHb/fblY/lOYIXO+6J5izCpwZs441x47sNUBb9rjyqYLtazL6WCgNMn8zHqVzwk
jhHpFpylVXxhYZSEAhirr1jrTsCfAkzcc+rPeeZ9nt0+MRD+G6vgyjAPmREQ8aEbGVV21J8mSi1J
Nhnzk8ZDM9pu+vDts3mKJGgxBnk1emXblGA2j6rFQX5q5jnPRuzNJbNVpiT/U5sd+G7CjWhGY4UX
WvrsDBmDixeyqaMdDk+UVTerJeF/sSE/SO+2/88nJKORicXStWX3VPEqg5Fk+sbEVvO+1lqcAmn1
rYzNi1DWgIiG8MPUritlv1ABKQXBjqj0V+SV4vCnDWKz6UYU7EhNXHQrFfDI7kQXlCorbJPg9RUd
onUIFD2U7l2VwEbdRQMw335FvDCx8xcxOkIvwJ/j7FZYlFL1NlMZd112PXw5iHEEazHSfRYjNcg5
xLuRLnRlBq0YC6POZ7Et7QAPOzpPYNayKR+dwJqMxAFUun12ye6UEXlCvcyYv3Zb4/Zm5NcAArir
z1F2DFrf0IWMgoo0GfociT+OCGKu7nXza6uGb4BetgOYjAvJ31jQhAECdK6DkfVUBAw9yc5gHQ6t
efZEuFFuatjc7CoAZ4p0YULom8KQ9jNgVFwoNWemP/mK2XVKHswQ3xHyFp44Xubw3GWpw86GYjwC
MazJkAuSFAhI2v6AA8BEDdqtAigdQuDHLdrVWJsQuFszW65jK+WDQNy+QHJOcn4jRF0wF5M8b1zJ
W7qm4C+Xk+gQxMJuc94P+cvzjOVM8gW4mS334iTZM8FcBcXpV8lcHDNgggvBopSCUkDQgA0+QbpA
KK7nc6n9aBjo8nwpupnGeO2Y5OjxhpCZslDFf+X/TFYNUyNbDmMtrwbW/GyZO6V6Jm9CX+/41JZd
3gAu7LFvBuGGMpaheq69174/59deqhEK1DPdEubAs25wXE04lzeouBdTMDwfXRbh0X0AhPfyTjy1
LVyozkh9i2OkcF+OfG3v8MLqSis+tfruPaXjta17x79dwFfTN0O0QaWlDenbrfC/4iIJNOLglm9m
Vi2hagxp5Nf8bDprJ5qsHCkWUSfFTJ+RvvTLkL61Fr+oLgWFWswSVfXaIlDfjcpV70gUw8TqQN8i
in0qfWcLd+Gu8Fnym4DXuM76NG9Xgx3XBCHMK8EoojnkDyT7l18IENt35zu2ZcWiDipIQySi389C
TWJB6ziFxmyDCN+rmaSFA11ZhJtRu/bl+2KIGSB2kDu/RwAq4HGdrV5iN7ZjUcni/nQudBSvQkuh
EgWMD83v97WZYUjjJLzdvTtjOVwTFIgy8boFFN88vXeKD+iS8Oxe7Bd88UITOoJFaVuiQp05yoUE
rE1BBtXcJLudiLKecxwLpDy8jMd8dq4Ab5oqBmROHjO1Q+ESp4BaCwDOCV+bhDaKXcQ7NPLS3b4u
8/a4/3w+jzHmnMzN3+ANnbsSthtqfLTHfA3ek/hiUTDc6ZiwA/tpg8Vvf5r4uYQPb0HJztrPmZxM
PhZTqJgg2o7WP7BmmKDlAXXVp4IIaObeB81zNuXwtcaBunKTv9J1s05Rdi8NP9No/o7O+VxUt+9E
WCkn/94p6kdBOl1f1KPpcTcs6hBM1sBZUDJw1y16slYS7JQwffQSFDuUgMe+tDFu2fVElNAnkIJO
gt+V1QsozGLB6wbuEfXlIfO1yqcG5EO3rAixfknEJu4d4XMPKYJi21PHtVNeERIclSF+CzApJ4IX
iZahm9gVsnVcf524rfTwkGEron+/RC/4tcD9gkZDLTfFlXWV0FMAsZU254edD5vwlx6qA4ZIk1f7
tMEZfeN/0ntXEgjarCY3n90X0avzOXbhWyd5wEoHNcQghmnwDNZOQ2tRZrwzOwohy/3ERz3GrcKM
VJz2kp+BA73SEy7/RMZocVypqrstB7buzhf7yiY6/x+HSRqYpe8XOxDIaFT175ESB3pY/9YWUyb7
3phFPCLuhwxxbplLxMzsEAEZbj7u3wTfLydE6yit1JwmqR+Hz7z4zReZJOVjF4OysVHDjYYgRQSB
jso67ytCjmtKtC/XdmlJ2/ivl58EhHvfcKOWgPo3QqP8aO71IkKOGKWN7a0MhoU1kn1Yc1AlN0Ni
x0Ja5KUvekzWoIBDj/KRZwLElYQjsXXOJ57Ry28DQ2WNDcRRa/PXArIsHUrkFC0w4CSts0jbrXl4
7yRwZpM/QbaUHBZ+wOsIc7Cf4KU5Zh/58HEmH+36OxHVIebe9N/DzKAkPmHCBmdqLus0EY8+5kBl
KIxPmaaYGtL7AclGcq9aQRuCuaunbPP222G9gHPQKyzw5nad85QBYuPk5KTyQ7HQTBzjUE6+F4BF
tOehLfGcjJotPMp1ddu2Bir/GL9exFbFRd+Y9ebt1axf2i4s3cf7Htp+kpWPpBOTh1+cIz1+z1M9
aa+zXX5WC5AEZJyvo7i4wbEOkQ7jRXyVm0P82iO4MkLHPKcbEaL5AMzXV04ePsSmbrdDMrj8f+6X
g1JaTkt5dt04oM1x5NMKs5gL2s3qIx0dxwkRcjv5UBnz/oR+VLN3TTgp0oi7TlblU+I6W+gbD7JY
MsMMHbM6UYZdf5x079l+XZTx3abupJNCXZ/NL8wLHFr8KURpKhqBmTcNY/hJ8VTEUXgP1wnwMJ+P
GPCAYQ06VQ7JJpHy1hfHEka/VH5Vde4ZCBZ2WV/l8SRfT4u8cfvl/L6A0iMDtK1VHTsZUfjQsGy8
djEEkG5p65/j8sq9AqVS25O5mbaUEdZyKcYxJH+CdjAIb8V86jS8r0HL8uhl/ppl4CF3KsMMVmv1
8bOov2rG1vBWuLdyyedq81K4QV8v3LiX/3v7m9aKhnwMIioyu/NwXuLC6gjwOPadhxybrYIDRnJy
TFQluuzfeyvC9+RLRIgq9w/JphzNFxxM2ilyX/7cn+5o6eeSWfNyOYREfV8W35xEFp8anU4iaI57
bCTRf/60J0uxXioknl28hwI2kGlXLQz+wDhZpewgjUozdXNCikdkovlKgLDoC/zQ+jG79ARfRqZf
RuUfRy9ll0e+qP7Bdlbhm3PxBUNdnIs+NC3WVDhb9iiMhneCgWGfP2wy9K0+lgU5Gz5UiZ5y0sFp
vPpciuDMC/iBn9GK0maaLp6CSvfV73OSfCJUM2EXo6rwP0CPtDquBG5TZ11EZMES5LrjWSkm0Lhm
zsc5KrF9KKA+OZWcA1O0mIOdRpF9N78W8jVUQTfkoiXAn3ZDI3krDMTOUVjCpsdhiM+ddnnsNAM5
HhJZslBYM588kEdX3O053kKJzkCKBPJ6Shtdid1opVA3ggVRwQC5un4b1EFaOv0rH2dfNt+toz3p
BA0RrJ7OBFvtS5BJFCrI8VhSyFjRT4+Tn2mvSmL5Qy4wV4Ac3UgAgOGnS4cJ0EHZPDd8oLDnn4hr
8FUG7vbfM5U4dExkDnAqHRJywfCyyN5aAeBWJq54cwvLgNX5j6qCkcAJiha3/TBKKiiAfThO7cdx
iQWRO2JC+5SyIi+H+8InYEq2BywfSZjovaFIq5nJGtgjvAeb8iOrOQpPfWwlUfbjxaVmToZ/Spti
uUG4ODsje/8HPyHqK4AOG7ltXYWEcO9E1LLIC/YLiMp21CXdzhqyx1ue1I9zUu9O8V99ZqArZBDl
14R7i0/AzG84jmhg4OiCdp0aveEDiKfwyqoGALYkcHTIPr/r24UopbsRTWoHUnK69Pkk7mjVIWEl
cKRQRBgZfztkjSCLtJ1Z9iN9CS35gymCbItPvWQeQRHfwqXgwl3TuisLXFSqbEcMzym6eLUJ8xTT
YvJ0x1k4hwAKIihevs5td+dHdwuTYL+DLVWMGQKXQKpFFZ9/3Eojjl8GVeKqn7VBqkDFHVo/VyRu
OVjuvq07z/uT1kYgQTLJI6KiI6vS4ze7MpfxRQ3UV0pGwlZpI9ogI6g1hjzr6gQIwduH5Qhhf2rK
c4BCDZY0W/OiMTluIUp5DsHuMUTkVnoTol0MN0Cax1LsziPANWMDPafehzTJzEaa4l3o2XK2XmV0
2wFZbgjsyKjAvHX0P67rGFregyVqVV+UuOg1DMH8eZkYQLFHByS3oEKHIpdLsAdlAajiEh7WfB5K
i28Bki5H1Xj0ieVmQh6AQdJ2Q0NyHZ1rtnaN3Kdzswr8Omw0gx9Pn1pIgDkfyAgjOlql8ajF2sxv
/kyA5QHSCPKVv1Vm3XsrGgTJeWzytjsaad68ca+7xT44XE0w9+N9ljSzIP1vqutf9ZGOUACoSXxJ
AXJqkHDugrjGQtwjJOLjpMLwk4vwOCYaNB/BMPgc9R+PtRDcINeoyHVeWe+xNAnW83l7T85iMKHX
r9+SzUUTZ0nklGRYyN6asJkJcEp2O5ymbLCBk80400qx/pbLu2ySdqfUoMKfY36phNh/2SdpLCtq
82k/V6fcbH7kl9XmV5n/klShPumeOxcsbvyWgtsbQxdf9wiRS23kDhc7qGWdxUc/syiZwvpUR6Sv
0VSCtt/224OwAdyQOk364rCxfwblLkUhE4u1wp76LBbeIoTKiTWOEJj4GnljoSpIcxJAi06jqoip
h896NeWssYTzzr2gAgXTp420L0mjIFw22mqTiryV4HQG7DG6W73Pnh+SXvB7ZYGGyqXtmNCMtbZp
1mm6jtDHWsew8HDrGJVMbWQgDV1eLWyjx0V3VeIXMr9WkkySA9VznLBD3U2Cqh446WhXe7v6ojeu
jyNXtyjIejuMJ1WPYIkbTIBTLp9a7LCVe1b56tWDyx7GnFDFMXchYxCFAKIONxSlt9iZmda9/Xy2
psPLTGUx4g1+uo9BnCspy5LIzey+3dUuhISxI211VxlAFCrcpnDHWL/irMyvkVs1aYauQ8rRaaRM
XuiXnh00KSVCVr/9dW6sDsKCjQXg03Pp3nCeZPuNQHKFQBeBa4u8CG3EVEr1mgjS+mCZ5PQTWqeJ
HmVZEfcHERnNB6viWsXzAnb/njrGC90gkm8vmf2ldcJDFlZn/qjdMIMHTjj3j9jBOXeG05MrolvS
dHUy8MxDOXOSVvA6tLPCh4hnrjSdJUNqRJUwwqHqICVrTT8TQNEfMxPuRGTZkqSprMMoOuivNnK8
+AR5qwUcQUgk57Z39yASTfAhIk/NaWV+61ClqyqVe0rOHY+ejx7oHZ3Ir0PbbxRC5q4WXLUGy6Nu
UztiXvNGpX0fQHNBg2WdBhEgwX0xJ7Y8URjXhxVTe00He5Hx8vzcEkiA0YO5enRXx66DagI7q88P
Icsbnvzaq2Z4xjQVzSx7sQvKB9rdvRQ+OciOMjQlFI9D7R92OC+B8RXi1SuEWrW779clWE8v2Cft
mIpK3kT1FPqu0QOUW8o+GyNcwffO41RnYYIGMmB3Cyp82yy1jFXoFhH/FlneDdHTqUxUwPjEfpP9
YN6uFS2v9WTeEEGZd+XDVf93gH9b8DnhGtKBeINvW/RDe8gagRtsISjMRO7rMDwRBTxAw597WWvx
fvKeERjSlvP5iOh6M2m5UgNhyniDR9yAT95jtzFZGd1zLx1MbuJJLAuoZVqO1PPjBKgNCPp1Z6qx
alICHpQE9zVkwP7fBS/SJgCM1Ni8w//ES7SJ5RaWl5S3icD2kvUF5HRqOM2v9pAjmJ/t8kHnBv5r
7VIrUOW+34dWir9GiYtg/SPRw+1CRDt3Ie7j/so58UZOGcVuGu57MOJ+dhKKqhFZk5NT8NGoOeEu
tfgWhhfv02NqDP0WR3V9qNK+lg1ZmOf7zuMsHDdEQOx/tEL8moDz60FOiLjuUs9wQdZZRTNxjQzr
hx5Z1A769UdmXVzO5KdqvkLIDFtZGmz+UiK05Z0uUhlzitEChONZjdKflOSj7+10/AYJDi5c1W07
FiKtbugYH9nu2db6DTVt8nz/FtVk+wlpgUxJoHLHw/t4N3Pq6sPMUENOoq431vrqxm1UCKKHL9Yi
RQjUXqvGQTj/+QMbskI2l39nSUhru4oqC+1cCC1YV0h9hn0EBoaqPLysPD7AIX+yGxERudjsTPsP
qNZJTpADJbXp+fDpceGaiJKKHiR15/iVTuPuB/Xvt2ru5fV/qd8OJRPnkuh3pVw1kkmliLmGwSa8
9m/0Q4laWDWLguTVADWT7MpJb2AVENwz6w1FGnlfkVjqraW3s1nFluAI9ZCy2YVaOmzpLKgAnJJA
MTnRhxsVbLbGDC79uHNlzMEFVqhk5GfGukvLnpLXtsNRGFeKOAbA1wme01S3nZqZVwJMEekBx4aY
x7aAIvmG6+6lq796z62cJTCWFjVC/Ya6r/0vDp9Yzxs27ayDt/t0qZX+5mAwvgNqqlYiG36GC1ud
9c79BEb9ZyypTM197x9HuIIjUS4DYK6HtNE3ZBiDepJKCAq5OtBprlob0518joFhLxbbwIKWrNgU
5Lwk1GE8UdySdf/V/Xm3yQ0kWR1Zg3uD0Qppq2QkUgSTDG1XY/4TU9VIh/0OwHlMZeReZgB0VKad
C78AmMv3/2sHOJvyv7ByVFcDWgu6CUi8fm242uQlBMJSewN4Kt1iGGJVXkuKFr9ESfGnhYhZ0caW
S6+OS7sgiFqxzAmC45PEPkcp33wVrKdv6i0PoXs2Y1Z+SauMhEDxe4UFyg5h4DGQyC7oxUVTvsEA
aCG+GFDeJaE5m+YZED0oLA3nnrDiBIEVBZTQCosvl12+iN4lkq9LlUofNavWdkSruRQGU9DCj1on
I0V5wEBIXzoTn/pjRDsF5YzgaMPX/N6K+O09kcB01CvkMhS94WAGg+hsa7073yzMJHeneDWnLVpf
RFCO32yEVHLH9LNG+esaaZV6CXYpsPihF79+mxTweqmNqWn53pgOE0ACODgKwfdCRJJ9jk2/mRKN
sNI906G/rNVfp/AiWmiG52DcYqzZbF4Xcsc9T6+XCMazK2jirNFK52h7sG66rlffQSeSX4N728ud
WVMFNo2JGh1CLCN2UFSOx1oIaPgj43dlLKC/q+7HSWhOmj6KMfYy0crWQftXQRZlU3j7hWziL095
T2SaBFPoOBrYRRYpA8HKpHoUjClYC+Y7qGfSpTBvi2u8EPNP7t7ZrPyDcHgWYnwksvuIql3k+tRx
uXQgUOX3QI1Qcyzel5J8Bjb8H/2xd5JHaYd1ZoZMaKOwRd3BW3Ww4IE7EWU3i11YV20UIptigAXT
wPryFRf8WOlbZuXq/i6fO37iWVdILA+iB8ZM5axQBRJC6DH4nrUWauJeuxZhVlolLrspDBgpSU57
vyte5Wuf/p1lnDJlUHbcxgf2aKu1BbnP+yrkmMC0hIeftVuH0ABFK17078zRbYv+6uONePzCZALZ
7hzt3P2PZgHv7C9pOxB/aQi1ozuOOxYF4KGrIBJlj44BjkeatcDopKtJqcMwxvuTTsb4fUXQ5MM1
8MiU7df/6D2H4o99eqBRbzQSGNHRlBscNHemGaN04d1ccNZ3/ykl/LxHTnMuDnjlYnKdbm2NwSxO
iA+BBELs/SYvLJ5VbDJ/Qg9LXTh6rbsD3gW0tQpUsqMmvHW1OISwinYIQuyXan66aRlw4cUgnPZX
8NKBbRZ/2y5/6KgJzWLriGrMs6TY/offlL+CtJMokOmToe1aRC2GbPU0cTmUuJ1oRItnSjDVUnu/
8Jn+OcMjl09gM2rdZjgNXBO/gjHrreu0H7VO2trTeho3moqF67RoYpSc12x1tgsbgEjnhi0ZU7Fu
cY/gq38RrIDjK1qoyPVZJI6ahBRcFIRk8GAI3wbViyzvfDNGFi643GVYF76jw8JrLFjAhwnulCBL
efCXVqpnSiOyDBFW9Dd5M4CR7UBjZ1wk0dSqIKbcSfAzRSOvcFxrC/e8tbp3m2GSTWNnWiUoAhKb
TOfsFC9DWCtNtvUqyfTrfK7FohYcVh/nEjsFM7OzMjuVLo65ZVwYq5MKdhYlN80QEMJkHtJQBlOQ
F9sYtReuvFVFbkJmU9wELWpqdudAvGFz9X2CES5YgwwZnnaCNFMSIVPpeKeXZYks/wJgwG193pHE
Uuvd5tk2vTmYTZiySQ9OOnbSih5b3BJNAd2nNZqW8OClyjXg0gRqL7fiGVBtXRep+2qbDPUegXAv
gndNLf/dqWnRzfd/mxi0xrDhGuUIv1DHo1NnGqoIlOBWi5qX+nUT5SfSWc1brAPjA8sQRy3B1FUX
Lh/V6mxpdDN3gJ+MS8xtH8Vhnr3msn3CNpgj8oPZ0lZo8YO+fz+SFhJ/zNDyAoXsb1DQSYP//eaH
XZFM/bq6V+ktN/vi/kOWSpUcNG5xEnSfRU8PbDHM/dRyYw5SZcpL4Lsm1dU5X5BU7QDVyUcoMcYt
aycBOOvRaa4qrX/ElJsVMpnwHG54Ch+YC0I00hBPcaAM+a+hjm0+5e239kRfR5E+k1Hw5vS6u6JG
ndsHB5C/FtUeG6DogKQlE/irCZ3HhSecy4aPADiYyEVYTkTFGLMEg2fhXcONnzoTq+X0UP8t0xrc
pevMXrdGTI2MBZwasAANBAXgBC/OTZ7FL3wqV4xamr5xgd9tTV/kpVgr7ZPQ71QFfGX1TFzdxXF6
SfUWOR/Tn+AxbpkuVfpDa8G3/G8n7GKmCyW2fwa91J2Y11F/olXOPlbSt6ROoKG728jhlcAUBlz7
GMEyKjecMVzXzcVfnKGfgfhqJMjeTadLQqpVJLS2gNfAx+is9bHkJzBdkc2hOpshX1eGTaHHwrSw
cNN29UVcEApnRNvW+7vfBcMj8xiiOvA8jUXMfXUHewY83hg/S/ZDys4xVAKQl0WV8KovO0322iWb
XwhVQ6yhCP2GKbtrDvSeNqIdtESsvb7V+62F5fGugh4xhzPT4+Jzq3FE3YyUlIriOwWdtsFvInDC
zuTWIPtHHQpL7FjqVOAgPXeeHtTF6terpT1egY+qs3U1KvbNjSVMZ294mvhSXDjYkhKnOjvQnGK2
qgXnFpViWSj47/sSxhwyj8wSKI5y4Bep9kgLHT1iXr2lH5XBhWTd8faoNZR8oMp+eOQxC6R81GST
g3P2P/pPQEextRLbOAEar38mQjMuXnnPeMwgQI/c1x5hB46aGsFz7WcJqQxNo11Q1M3ns9aq/M0+
40Owfcnd0K0U6atN+3Y4jrJJoNzDktmM8pF/yuWHnMPUfOXADtsVIUr1BwVD01hDq7IyKW28qh6W
XhPyU6nT+Fx65RlCm/8AE4v9AGYILyWY5N7gESrGTAhuhYrhJkkn43ifnTH5blbOqKSwOd+ohNI3
4FTL6Rbx3pUXi8Fv3wtgh3hHS8QCwjiNnLmiAH5bkPMrT1EhZZoedXa4JilSKYstkirMK9Wc/At3
zs0R7h4cGAhy/T+i2jO8O3sJss0Di5AgN5vUrSFyAveyyfE8aoMLFrknCAP1F1uaCNxI+Ey7ZpNT
I+VzpMMUcBB89tvVay6sderedDFQX3TceZjxGxyxcbdw1ku3yiWazwmukh0nwb7gJybwE8SEXqBw
vp+5JR9xx7ltCQQnGLdkIRbKtuC2dC8qWK556ybD8bLMPL6yC9/aPBJKoDMWK1Uz/P1M7Hd7gYHg
q0XJ5Suouyw6tDtLAddm0gz3eX9R9EMlN8l7E0zvjXIboY8RXCLleKreYfC1RZroFfTI9n0OwxKI
gXO5Ltl+dkrHraK3j2syxIEQlQtlm7+4Vaef9jWOOYSK1v4xYGcAmbXN52bWYVPUxUPMge/Uz/Qf
cwqCt1Ck5WTgQYRbV83G9ztT4BLJPsTi15NKX4nTJ4fJOk79XA6zK5FDH6CnAQVrMpNbhAgL78Mg
+pKj+QCbcTyJsyob8hpsGFz79BmevGTee7HiIG6iuA98gQB/U0tI6UN5lQuY6GsCcq3aoewVaSYz
/t7TpaXM2cuT4E1ip/xRhB/c56zCYhrzHpaCJYKVf9wRqXPOjP+gXKSXu6HzM1RNSQq7YWLF2J/w
nESblJtmZqLhptvnok580sXFYO75OlbNhw9E/DulcRlkOLHRQhfX5aRI9ixm0AG3v6/JAxy4oc4Q
BjlROHX9kNSVNIebJ+uWk9Wn0zzgphPGfvl8AS9a3hVUvimhOITodS5YEx/GJSS4trFQetUW2oOX
SY28Tkh5z4EB3/gglMQvIgqy9k8e02014r4q0eHMI98HGzLIZVGLiDJp2du5fkwcNkKXHlG3RKm0
zPMBv3lvlgy19PeKlUqU8gzp1DlJAPpwwAVUjDuZgEmdtA9lmukVtQzSVvq/jrYZPy13Gj6rExKT
KG8h0iDE5zoIL121KSrGwGBuAHls6YHjUtNDQCk5zo+rjc95p9nE0spXJh9+qzf23NxOg9d9cd6D
FZJ3YIne6xVubfnZhPrJJd54XOC4is4bwNN5MR7s6/F80edtggrTOr6u0fZFUyN18hx8WfgBEJKe
FSZg4pzzUE2os0E+g38K9qVVM8ZDcNlDsm+8X0kGPOcsC8YqJVDZKGnjEukIzqd/NeaiD9UCLLkG
aqY7u7WypSXn1wzlTzZvASVczpucKr+7Aoh115yDuXz3KYCp85Snkre/6YGkzcSD7gFTh+7pjpM8
6py4ToWTIU8SeYzapjZQFtZw4kKXzaGeMFQ4UA50dmukLxJ2Cung0xUz5XQBf7Ae6gwL01F6B72O
s1fxzEEEiLjYQW1srGBMksOX/ZIVpDqXbfeiwVdIN+3tslKRZcyviO3MJIYfEkvFVSpAJoFYMA/F
ejy7m32FChbO1rcoNW44ZWbY4y2do30W34qwjaHgR8eN7Ea7MIySQXI5DldYRtE1hiJtwaBVcb7O
tqKXUL6+9dK3cWu/Aas9J0Hc9tVQejV6JGuvgdHUyDOrdT/51o6/uC1/wMBvE10u1l0WduaqoDvf
8bcM/+77pHHb6GOoMQ8RkImjF0gjLdx1TpBntBmOrziIQvA1L5AsLc0+SmNvNbIfxmXcvQv5roHu
mM0j8cuwrZmMlX/iv/Okum6uz6W4yrMEOylFOwWtCkcAXhB5xrxVMXrQ/Em0YfpST635w4oOSDcC
8UTCpoIRZaAQ5P2etOM01LK/ARKcUvekBKboZFrV2i9kl9Y23LlwBnWQcCWSSEjkx2ngpRPxzFPL
yMvBEjNlQ73pO0ToePIL3hvWEmTBzI2iXvhQOUv9BUVpqfYBdPXZ5+7zEOnqnLJt8UEr3HAOhLxC
wfpSCalbTYvVOO3hAGxfg1mdrSfZAJNeuSNyxZ9ALTH5mZVV3v5x0ioht8okD8DcWv/719vFT+rb
VZbnhZ0FY5qFIQb2X4TMA8aYJi5YJeElXrCoP/1snMszCypdNtS+lK3sysfT0ldUG4ghbeUPUtuE
/nhl9qbWXk9vpuNEHcZQJhK1ZHMAb6iZ+0zWhUxas88D1e+R4bAvqubywblXBdE+gIodQqBE9CyE
5wOhRbQ5xw5tDmDVoPf+fsEULv6W/1pPxuHaZr5YS2nOut0EZZkxn6o29+RRcsDrh4k9fC7O4mZp
8VkVZV8/erMp231kM/UcuhwjUvIxb5NhwPH2BlNKp89FqpME0g7guL7z+WWOHzni4efMw7UsfLnd
Qu3iJjjjwcg7O3L4PgvseF+VI1Tton3AcaMbekIkcksFXxLARk6cam/3w2rXUAfYkHVXIB7XtyBF
PgoeAoWIN/h6TgFs2jcgV7l3uVm0h0CcdETRhWJUYU7OV+vwpY++wWe3HtjAuiouMi/aRE5AW+EQ
K+XllHJKPevZ3EOGVEBevhneaJgoBZU2vTrQVyV1UmBhsm69OlnWCFjJg6i+Q3wvkEuueAlKlk6b
v+s8T9WATwk+74d5RhK2F8ThZL/IEmwlHLjfwm0hMXhGtL4JtaT9QBNatr/46dOmu/qcQ1tEXVEP
Gzh+IztZVi0bTXFAcsrQ5NZLPFJkWsThYVQjBHKOSomqGx95mzo68sSzGtqLfCabvCGYuGq8sBAG
wk12mYMYwHbNr0tGG+aNW+adqUKiVt5RJPTkrd2c+FEmmtP2SYWk7Sy4QlB3aEG+LSzPhtY+kR3Y
u7yYWRkjqQEfvct/ge0lMo7RODWmYFWtoxNE1LrHI5CuOWsyipsYobcmr19d96IK7tmMKlW1WeCS
7UvNGXcISRNvu+HmNNWUVizyHr1NKvpWvfgosrsTIptTXVE7Yoosw6y9FakxfwW7fq3Oy1/vxUrB
pJAuzOLuNNkZmYFCB75V3DfkMgWNyfwK/p/fszd1dV0oyrcKFUE4pLPJlg5RJGfvhTp2bw8+FAK+
VSLgG0jCFFvuJCaBqQLwDzX+XAoJFjHMACZD/Ua3rOtAIpGVRs4XvXiYZ4deFvJiRzdp3uRNQ/FL
belP8t46hwk+EbdEwWyAV0GW1Z1I8BTABsrt8P8ikEErC4CdVSIzWmY7kfw6w/PWUzIIlEinhn17
CatY8KhQLBFKzdklmCutwAlPbOak/puumLwvcDSlkU/Xt2bdu9TRaNa7U/Hfr4V/waObwmWmHFIY
XWLyyAkp4V8cHkPd1jeCndYgrtC0pjUWP+ciN8KDTGCLHlUqJNjaZKR1u2vYgRi1VUx7NEU+z+fu
aSTRbCSjH9gyxH8svrB+g/OU4BaPcm/kntXRVlVXoZ2j9gBsN310SGdWq5NSTKOyGnjAaQoV+j9h
YURHiKAgmHIcVjL3okxuhTFkADK+wP+SBRrYEKvLtThe8qOQR88Wm1UroujrtSDDTHscw7fennDh
am4bb7+ljcA3xtrWj9qN+wBsaJ+Q5NKDHnEYxgXTbQ9GwbkGKXZbgreMk88LM3zjjDD8bQjEDKoe
ySsbDctV4DeOF0E3fwBJNi7zn6JcjlSJWSY5Sg1vYf7NnN8ff4rTqielK5XM8DsOyKubKbAOM23I
XMNdnoflhrIZE0UUwVK6i4d+thvZaGoC0XwdJOyccB6Ky1BoMOtFr8/AE1pEpcgXoOHLBJpEsXfv
gafpnYdamh4vVkTKX4MThaaKBisvutOmXLDkGSp7c/niLMHo+d6IJssAjtv2O8RQYggPqUQ33MHj
1s+sY9p9pmSKLJ/hfN7xiBfwH0sbF0Qyb5WQIH1uavEc+2GPhNpZ9JX8qq1HMLz9Od9psQd4g2gJ
kCzNPCptzxs/SkBPrvo2jIufiaTbG4Vz0z/K+643K5yXb+o9vKdCXBDOZPzEaKsvEDprcO5GSeHC
G1vTVmFEYnWUHTmEI5o7CUc8NqWQRbQ4qCbXGizWbRrVmON/QxalIU5E0wOxQEwtln4iQJ3PYX2u
v4MkzX2Zs5vK06nGXwZP+iQmpMdYub09L3yL9ttOO0/+Sxsp7d/9D3GGvfkhtfAwrFq9haIJDRH/
IHh70kBXFEllWo5RA1A5pRn0yVc61vDyaOfWKHS0BvxP/FTjxGbfsoScSbyMtLkYGJwB3JxPLhth
4E7u2IzaEvAuELFnrGxCQhVZNN1ZcF1lDKRmNL/o9jIu1QhfUQ6Sk4ub8WPoWWMvLVAC//39K0KL
0+fwAbE8Y+31ZFFQOpnAUMXvRXH2rc8DDM3oVV+HkfxYyDGYgfKDuqcKmMNDKOV+5IqweBBTNAb2
x+A+VlmSaKOdyQEmTIbZgOqROmSRufsRIewoZsgJCvOVYkdfm9z5zC0UmB4pUzHbns1WnpxsLQIq
XKbl6chmTZRWtr84bIEbGbhwUE0f9bGF4+1mwu/EVuUt9reelheVqeFModPIjISB+13ECcvhAhmv
lMd4spem/qbVrXE/3EkPNd8u/6yE7MUZhYI8bkwfZO1vMyHRDtfSWMOy2Ee6CrdSKaySm7X0boCK
H+FstBsSF0I0aG84WFbXKTwdktQmQQKv8RJCQz+c8XWhy+mcwdJCMtZQL7k7Mu7zUYiJoo5FhOG4
rzU32GZ86QwEMFgPtjlAI2PkNDpcbqmei+JiihxLiGU1GUOgGlgGjrd+OB9s1GtIjxjElIgItkB2
1S/s1+Z/IJWanmqZjg/NX/5DRNmkNyIldf2monAPKIxREzk/vd5/KXeQBUixJoAyo3ayzatWCPmc
qS00nfwiyXwJwHS8Z6DJntOOFf6srydbzHsUo6SaUCNIh0Otm+rIrvXsjwfip2c2x737qRF508da
g8Ifi9SxoranQy10DEJK1gA82rSUjTNV6++IFGa6ywi+Ws+ubV0WL+bYiGbI0KLIv5HX3hyj7SQJ
E/0vWkzgQeb2WWoZTHqkqLe86l+EdbbGvlr241OYjIYWWH/IloKhVRlxdYaXFSjZxG2AX/y4OIqy
TZkp8tpH8mhP06LC5dVOlr7TcBlGm66K2CmdaOcshucyGkRj7IrBtUc0LZGvJe7RBmW2VwhFCNSH
inxjrzmKKQAeONxf8ul7RtlnsRMr4oKhFFe3SVVohAHmH7eNYzkkA0N2dv0YY26z14nPRsrvqmsO
I65Gj6M5cuH/uic/mUH/I3ycowzkg2oYxPIdSMnOrcZi4uyqo0VpAju0tZbZhwDuO2ni9INeLsgN
m32I4gNIyiTo2RMBehYrkF74mqRZkh9nmRY5x5Vbpf44lGJwJwCX7AhSWmIX7IUCP7N0g/PSjyGK
jXmviTcdjxXBXy+yxaQis/cIVBKmaPe3jvAsGVyrNHegK6Qg0h8O0jQ+6OCF2uMwOC+9RvH43xw4
jl8rFFtC14Sth367xhndFUMUzWCWUYRtDSyJgBhj4INT4io9Pqhyf/+KJbLKrHwdFuVKZK/gevMz
5b8//p4h7IQ3dc6n7ijjHq1rtD74Mt/VBeLWpfgQJqy4B5wJsn8c83jO9oQ/tAVicJ36oRKdWGeH
MUQByXNue8XkmfogWC0M2xFwx46DlrcpdiHH4HZyjT5r5dUFDSWRPaUGR/OYReYx6ZXr8eqU2/M0
+Ys8ZZIhPfHo1piidGc9Cx5WdJd9iKoreuvbD1Dks7b7vCQlDk8X/75HLNZiCDiab6KLVxD/D18t
/TfoCDywZTLi6Ve4cFSs0RMdbDy/Zje4+34AxSI/7StEMrqLNw/1hBZnguXvj6e975kBB0//SU6R
Bmvojc9NjRuVaC+zZtA+wapuxt5NNnwVE4nw6lgk1QnaGDhZZJlG9poyD7LELuzfvr/zMQwn95jH
dSaLXHXshTdvWGEk+HuOuc4GIkoZqTgkpjz9CJOXMP8VCssWDkOLwJBotRcWpkBqSm2KDE9p1ndB
YY0/Kkh9c9Ta1KQIHnurBWApNBJueh9M6rd2gzt5myONgF5JC6uQWa2BkJaVhbi1i+R4+540U4x9
mnW8kHZ5MISVA6lxOcbSnm8Xa830qijKGp6sCM4++T2zn/YDEBKAcy0lPWS76iFeIczLE+8v9V5G
DDMBO7cW+kx9p1g3kad47FwEC5T4ObcYsYGdtkBKIZKJfgHszlAHpPhIbuj7jfs5DVnlUVP2gn3g
EX2gKi5BuRo3sKJRw07FlEnkf8zV7QHgpG6rzMfyPRHnTOBCm8UL9LymLPYzny1hFPvlE3YHmeu8
QMU62EU3C1ONILetLGjxTrz9tlwtiDw9WmGGDtyfvCuqLu5UEpMA/aqAOIJ7TrXETkP/VnsEcrrh
adYkkttVAiluMSlI5LASkiQ0enpADfH4/zuqRKkx4BFIeZZJ5NbSHRakGq2G5rJtyqDAtuLj31vB
n5zXv9yTbiQpX9dzH5ypPePVYRughfQfeyEBsyVRA45FNWxliIfRXDg8Cqd62yl1jB6q0COthP2b
Yfr0fb/grWnJOLt6e1BhKHYCB7jkSd5MLbsZG9Biib+XguifTPmMRrds7IO3o+N5o/xvJi/6E5/y
kjjZnfVtk+SKJ6VuRLpM2z4soHgPqePT4fEEZfa3P+c+rFHVo0O4RLpxER1FJLJ+VVK4NAl1TyVh
Yr+M8YvKqLAx3ndnS8zLLMs3HV0tqlwDdsxiWN8EAnF6W7vePildlUSg62ih2XBccsY4iPbGFpAV
R76DzRsa+UekgcnthKLYxpHY3PiUADLwbzAGXL0EKRHbDvNoSEy5fr9Bjp1ZrRuobLG2SdxIMTDd
FCECGG/lkN9klWVTqgEee5jU31HMhYmwbLsNb+wsnjwtiAjZTHIGTG0Y8ARJ17ftkyLFTt2/XxWv
Wfz71qILEVV1HjkPyqiZKyZDxqBCFJUbhzPDCNE8ijzpGchASgQO9pCctKlwnHNJRljwY+4APQCi
+kFjnBdJYFfM0WQ6TvLFwy4QtmdWYq62UWfofTbXz4JM0ItCsyB8Se9qldhgA6m2AtkxELKaiPEX
8T0eMpM3fMGz5X7JsiRG7QLe+ZxygvQ4VtiZP53ZOG3w6GWs+Ey98p7EqHeKTgsyXfKKghbxXy0U
TkQtF7vqfhXP0oxNHqRmanBElt1Z8UV5Ji5EZipln+40dXBSJ+JIKXLyxU5N8aoAazl/vhU+2KVS
VFDbIWa23kA1KhvQOL+PU7r0th51oWIsOw7T0zK6R49khw7o9VDLfUs/m8TSttKVkxQ+eAdLAQaY
+gPO6cML+MMQ1c+K6UjCWDO6T3FJrmVQYjwoiPTI4YsP4ltcUAUTaWryM0C1BSueUJVkMT8mjUEE
GvPM0h8Inv8uu7c4NGjEWm/MLdkGoSEUfvko/cikr+ygvbP9DJ9TdVFt5OpN3Y3p9dAIVWUvzUcJ
O3gukgv4rW7owC2eVB4OiyyBcRlICDlF+A7LHpSkDPiq5wWnWjx3t21AeKbMlfNo3A8uUOUNEwKF
s6c3FSrTmwRPNpDADbkoo8BsZyJE8k82yXYGxkQIz/IDHqHIXn77GXWX97tuW9Wk1c9HNTrc6DBZ
dkPHalg9scSKJzMS6UNfUuKcSU6ogSRZILoXxeLwfkx4YocbFy8sMi67FJaoCxWAe8kSws1U3WVc
wCPBT1UvmXMCnICdiS64xLAEHz2XC/G5In5RrgdHksonflhs5G67M4uS3uhQXiV+JXApgKsnL2pu
nD9+TAMq2Ilh8kl0mnbaTpYo7yYmxX9DBgEdw1VyZEWEms58yJbrWyoM2FXU+jENNaEtiDQwJh7o
DT0rZ7hO27lNYUPutR5aOUMWZ89ie531qhlQTUrNhFh3hxIBl1tVkXCqYvx3nKDtetQXjG+xL1KO
vK5ByHczYq5U7K2tAyIu+Bsv1H55rDQGhEqKny61xRyN/NpyupOYyEWj7nYSQm6iHQqbjQiXuTFA
+vyOPMqo91QrFT9r0sM6vSFGvUk8NJ+stdajJpM19Xd+QGaIBHFB/NkaEfCw8ARuB85VgoeMmXvQ
aEcm0m1voL56cfkP9eNNC7ZAR9P3SFIqdg==
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
