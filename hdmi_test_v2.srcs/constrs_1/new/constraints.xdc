############## NET - IOSTANDARD ##################
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLUP [current_design]

#############SPI Configurate Setting##################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]

############## Clock and reset define##################
set_property PACKAGE_PIN M22 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sys_pll/inst/clk_in1_sys_pll]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {video_pll_m0/inst/clk_in1_video_pll}]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]

set_property PACKAGE_PIN H7 [get_ports RST_BTN]
set_property IOSTANDARD LVCMOS33 [get_ports RST_BTN]

set_property PACKAGE_PIN J8 [get_ports mode_async_i]
set_property IOSTANDARD LVCMOS33 [get_ports mode_async_i]

############## UART define##################
set_property PACKAGE_PIN F3 [get_ports uart_rx_i]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx_i]

set_property PACKAGE_PIN E3 [get_ports uart_tx_o]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx_o]

set_property PACKAGE_PIN H6 [get_ports led_rx_o]
set_property IOSTANDARD LVCMOS33 [get_ports led_rx_o]

set_property PACKAGE_PIN J6 [get_ports led_tx_o]
set_property IOSTANDARD LVCMOS33 [get_ports led_tx_o]

set_property PACKAGE_PIN U20 [get_ports debug_rx_o]
set_property IOSTANDARD LVCMOS33 [get_ports debug_rx_o]

set_property PACKAGE_PIN U19 [get_ports debug_tx_o]
set_property IOSTANDARD LVCMOS33 [get_ports debug_tx_o]

############## HDMIOUT define##################
set_property IOSTANDARD TMDS_33 [get_ports hdmi_tx_clk_n]
set_property PACKAGE_PIN D4 [get_ports hdmi_tx_clk_p]
set_property PACKAGE_PIN C4 [get_ports hdmi_tx_clk_n]
set_property IOSTANDARD TMDS_33 [get_ports hdmi_tx_clk_p]

set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_n[0]}]
set_property PACKAGE_PIN E1 [get_ports {hdmi_tx_p[0]}]
set_property PACKAGE_PIN D1 [get_ports {hdmi_tx_n[0]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_p[0]}]

set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_n[1]}]
set_property PACKAGE_PIN F2 [get_ports {hdmi_tx_p[1]}]
set_property PACKAGE_PIN E2 [get_ports {hdmi_tx_n[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_p[1]}]

set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_n[2]}]
set_property PACKAGE_PIN G2 [get_ports {hdmi_tx_p[2]}]
set_property PACKAGE_PIN G1 [get_ports {hdmi_tx_n[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_tx_p[2]}]

set_property PACKAGE_PIN B2 [get_ports hdmi_tx_rscl]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_tx_rscl]

set_property PACKAGE_PIN A2 [get_ports hdmi_tx_rsda]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_tx_rsda]

set_property PACKAGE_PIN A3 [get_ports hdmi_tx_hpd]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_tx_hpd]

set_property PACKAGE_PIN B1 [get_ports hdmi_tx_cec]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_tx_cec]

############## Camera define##################
# sio_c
set_property PACKAGE_PIN H21 [get_ports sio_c]
set_property IOSTANDARD LVCMOS33 [get_ports sio_c]

# vsync_i
set_property PACKAGE_PIN K21 [get_ports vsync_i]
set_property IOSTANDARD LVCMOS33 [get_ports vsync_i]

# pclk_i
set_property PACKAGE_PIN H26 [get_ports pclk_i]
set_property IOSTANDARD LVCMOS33 [get_ports pclk_i]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pclk_i_IBUF]

# d_i[7]
set_property PACKAGE_PIN G25 [get_ports {d_i[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[7]}]

# d_i[5]
set_property PACKAGE_PIN G20 [get_ports {d_i[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[5]}]

# d_i[3]
set_property PACKAGE_PIN F23 [get_ports {d_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[3]}]

# d_i[1]
set_property PACKAGE_PIN E26 [get_ports {d_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[1]}]

# reset_o
set_property PACKAGE_PIN E25 [get_ports reset_o]
set_property IOSTANDARD LVCMOS33 [get_ports reset_o]

############## Camera define##################
# sio_d
set_property PACKAGE_PIN H22 [get_ports sio_d]
set_property IOSTANDARD LVCMOS33 [get_ports sio_d]

# href_i
set_property PACKAGE_PIN J21 [get_ports href_i]
set_property IOSTANDARD LVCMOS33 [get_ports href_i]

# xclk_o
set_property PACKAGE_PIN G26 [get_ports xclk_o]
set_property IOSTANDARD LVCMOS33 [get_ports xclk_o]

# d_i[6]
set_property PACKAGE_PIN F25 [get_ports {d_i[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[6]}]

# d_i[4]
set_property PACKAGE_PIN G21 [get_ports {d_i[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[4]}]

# d_i[2]
set_property PACKAGE_PIN E23 [get_ports {d_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[2]}]

# d_i[0]
set_property PACKAGE_PIN D26 [get_ports {d_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[0]}]

# pwdn
set_property PACKAGE_PIN D25 [get_ports pwdn]
set_property IOSTANDARD LVCMOS33 [get_ports pwdn]

############## Clock define##################
create_clock -period 20.000 [get_ports clk]
create_clock -period 41.500 [get_ports pclk_i]

set_false_path -from [get_clocks -of_objects [get_pins sys_pll/inst/mmcm_adv_inst/CLKOUT2]] -to [get_clocks pclk_i]

set_false_path -from [get_clocks -of_objects [get_pins sys_pll/inst/mmcm_adv_inst/CLKOUT2]] -to [get_clocks -of_objects [get_pins sys_pll/inst/mmcm_adv_inst/CLKOUT0]]
