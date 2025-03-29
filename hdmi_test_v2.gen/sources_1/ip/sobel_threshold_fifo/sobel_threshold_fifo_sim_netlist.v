// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Sep  3 16:48:18 2022
// Host        : DESKTOP-SDG9QHK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/User/FPGA
//               Projects/hdmi_test_v2/hdmi_test_v2.gen/sources_1/ip/sobel_threshold_fifo/sobel_threshold_fifo_sim_netlist.v}
// Design      : sobel_threshold_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sobel_threshold_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module sobel_threshold_fifo
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
  sobel_threshold_fifo_fifo_generator_v13_2_5 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module sobel_threshold_fifo_xpm_cdc_gray
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
module sobel_threshold_fifo_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module sobel_threshold_fifo_xpm_cdc_single
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
module sobel_threshold_fifo_xpm_cdc_single__2
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
module sobel_threshold_fifo_xpm_cdc_sync_rst
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
module sobel_threshold_fifo_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 99296)
`pragma protect data_block
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
+08=
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
