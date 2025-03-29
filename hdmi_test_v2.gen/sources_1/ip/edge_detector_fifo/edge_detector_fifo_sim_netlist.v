// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Sep  2 22:50:52 2022
// Host        : DESKTOP-SDG9QHK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/User/FPGA
//               Projects/hdmi_test_v2/hdmi_test_v2.gen/sources_1/ip/edge_detector_fifo/edge_detector_fifo_sim_netlist.v}
// Design      : edge_detector_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "edge_detector_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module edge_detector_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [0:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [0:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [4:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [0:0]din;
  wire [0:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire [4:0]wr_data_count;
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
  (* C_DIN_WIDTH = "1" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "1" *) 
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
  (* C_HAS_WR_DATA_COUNT = "1" *) 
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
  edge_detector_fifo_fifo_generator_v13_2_5 U0
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
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module edge_detector_fifo_xpm_cdc_gray
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
module edge_detector_fifo_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module edge_detector_fifo_xpm_cdc_single
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
module edge_detector_fifo_xpm_cdc_single__2
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
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module edge_detector_fifo_xpm_cdc_sync_rst
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
module edge_detector_fifo_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 103248)
`pragma protect data_block
+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
Dg3AfI4HwmYV8av2Cp5Mb4LsG/vw
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
