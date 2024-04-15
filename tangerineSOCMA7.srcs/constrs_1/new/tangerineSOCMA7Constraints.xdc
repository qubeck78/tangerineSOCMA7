set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

##Clock Signal
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports clk_in_100]

##Reset
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports reset_in]

###HDMI out
set_property -dict {PACKAGE_PIN A1 IOSTANDARD TMDS_33} [get_ports {data_n[0]}]
set_property -dict {PACKAGE_PIN B1 IOSTANDARD TMDS_33} [get_ports {data_p[0]}]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD TMDS_33} [get_ports {data_n[1]}]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD TMDS_33} [get_ports {data_p[1]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD TMDS_33} [get_ports {data_n[2]}]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD TMDS_33} [get_ports {data_p[2]}]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD TMDS_33} [get_ports clk_n]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD TMDS_33} [get_ports clk_p]

set_property PACKAGE_PIN K17 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[7]}]
set_property PACKAGE_PIN J17 [get_ports {leds[1]}]
set_property PACKAGE_PIN L14 [get_ports {leds[2]}]
set_property PACKAGE_PIN L15 [get_ports {leds[3]}]
set_property PACKAGE_PIN L16 [get_ports {leds[4]}]
set_property PACKAGE_PIN K16 [get_ports {leds[5]}]
set_property PACKAGE_PIN M15 [get_ports {leds[6]}]
set_property PACKAGE_PIN M16 [get_ports {leds[7]}]

set_property PACKAGE_PIN Y22 [get_ports uart_rx]
set_property PACKAGE_PIN Y21 [get_ports uart_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]

create_clock -period 10.000 -name clk_in_100 -waveform {0.000 5.000} [get_ports clk_in_100]
