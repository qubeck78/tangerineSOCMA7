set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property INTERNAL_VREF 0.75 [get_iobanks 34]

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

##LEDs

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

##UART tol usb converter

set_property PACKAGE_PIN Y22 [get_ports uart_rx]
set_property PACKAGE_PIN Y21 [get_ports uart_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]

##DDR3
#set_property -dict { PACKAGE_PIN "Y8"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[0]}]     ;               # IO_L23P_T3_34                 Sch = DDR3-DQ0
#set_property -dict { PACKAGE_PIN "AB6"    IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[1]}]     ;               # IO_L20N_T3_34                 Sch = DDR3-DQ1
#set_property -dict { PACKAGE_PIN "W9"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[2]}]     ;               # IO_L24P_T3_34                 Sch = DDR3-DQ2
#set_property -dict { PACKAGE_PIN "AA8"    IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[3]}]     ;               # IO_L22P_T3_34                 Sch = DDR3-DQ3
#set_property -dict { PACKAGE_PIN "AB7"    IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[4]}]     ;               # IO_L20P_T3_34                 Sch = DDR3-DQ4
#set_property -dict { PACKAGE_PIN "V7"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[5]}]     ;               # IO_L19P_T3_34                 Sch = DDR3-DQ5
#set_property -dict { PACKAGE_PIN "AB8"    IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[6]}]     ;               # IO_L22N_T3_34                 Sch = DDR3-DQ6
#set_property -dict { PACKAGE_PIN "W7"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[7]}]     ;               # IO_L19N_T3_VREF_34            Sch = DDR3-DQ7
#set_property -dict { PACKAGE_PIN "V4"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[8]}]     ;               # IO_L12P_T1_MRCC_34            Sch = DDR3-DQ8
#set_property -dict { PACKAGE_PIN "AB2"    IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[9]}]     ;               # IO_L8N_T1_34                  Sch = DDR3-DQ9
#set_property -dict { PACKAGE_PIN "AA5"    IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[10]}]    ;               # IO_L10P_T1_34                 Sch = DDR3-DQ10
#set_property -dict { PACKAGE_PIN "AB3"    IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[11]}]    ;               # IO_L8P_T1_34                  Sch = DDR3-DQ11
#set_property -dict { PACKAGE_PIN "AB5"    IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[12]}]    ;               # IO_L10N_T1_34                 Sch = DDR3-DQ12
#set_property -dict { PACKAGE_PIN "W4"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[13]}]    ;               # IO_L12N_T1_MRCC_34            Sch = DDR3-DQ13
#set_property -dict { PACKAGE_PIN "AB1"    IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[14]}]    ;               # IO_L7N_T1_34                  Sch = DDR3-DQ14
#set_property -dict { PACKAGE_PIN "AA4"    IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[15]}]    ;               # IO_L11N_T1_SRCC_34            Sch = DDR3-DQ15
#set_property -dict { PACKAGE_PIN "U6"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[0]}]   ;               # IO_L16P_T2_34                 Sch = DDR3-A0
#set_property -dict { PACKAGE_PIN "T5"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[1]}]   ;               # IO_L14P_T2_SRCC_34            Sch = DDR3-A1
#set_property -dict { PACKAGE_PIN "Y6"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[2]}]   ;               # IO_L18P_T2_34                 Sch = DDR3-A2
#set_property -dict { PACKAGE_PIN "T6"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[3]}]   ;               # IO_L17N_T2_34                 Sch = DDR3-A3
#set_property -dict { PACKAGE_PIN "V2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[4]}]   ;               # IO_L2N_T0_34                  Sch = DDR3-A4
#set_property -dict { PACKAGE_PIN "T4"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[5]}]   ;               # IO_L13N_T2_MRCC_34            Sch = DDR3-A5
#set_property -dict { PACKAGE_PIN "Y2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[6]}]   ;               # IO_L4N_T0_34                  Sch = DDR3-A6
#set_property -dict { PACKAGE_PIN "R2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[7]}]   ;               # IO_L3N_T0_DQS_34              Sch = DDR3-A7
#set_property -dict { PACKAGE_PIN "Y1"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[8]}]   ;               # IO_L5N_T0_34                  Sch = DDR3-A8
#set_property -dict { PACKAGE_PIN "R4"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[9]}]   ;               # IO_L13P_T2_MRCC_34            Sch = DDR3-A9
#set_property -dict { PACKAGE_PIN "W5"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[10]}]  ;               # IO_L15N_T2_DQS_34             Sch = DDR3-A10
#set_property -dict { PACKAGE_PIN "W1"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[11]}]  ;               # IO_L5P_T0_34                  Sch = DDR3-A11
#set_property -dict { PACKAGE_PIN "AA6"    IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[12]}]  ;               # IO_L18N_T2_34                 Sch = DDR3-A12
#set_property -dict { PACKAGE_PIN "U2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[13]}]  ;               # IO_L2P_T0_34                  Sch = DDR3-A13
#set_property -dict { PACKAGE_PIN "W6"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_ba[0]}]     ;               # IO_L15P_T2_DQS_34             Sch = DDR3-BA0
#set_property -dict { PACKAGE_PIN "U5"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_ba[1]}]     ;               # IO_L14N_T2_SRCC_34            Sch = DDR3-BA1
#set_property -dict { PACKAGE_PIN "R6"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_ba[2]}]     ;               # IO_L17P_T2_34                 Sch = DDR3-BA2
#set_property -dict { PACKAGE_PIN "V5"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_ras_n}]     ;               # IO_L16N_T2_34                 Sch = DDR3-RAS
#set_property -dict { PACKAGE_PIN "T1"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_cas_n}]     ;               # IO_L1P_T0_34                  Sch = DDR3-CAS
#set_property -dict { PACKAGE_PIN "R3"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_we_n}]      ;               # IO_L3P_T0_DQS_34              Sch = DDR3-WE
#set_property -dict { PACKAGE_PIN "U7"     IOSTANDARD LVCMOS15   SLEW FAST} [get_ports {ddr3_reset_n}]   ;               # IO_25_34                      Sch = DDR3-RESET
#set_property -dict { PACKAGE_PIN "U1"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_cke}]       ;               # IO_L1N_T0_34                  Sch = DDR3-CKE
#set_property -dict { PACKAGE_PIN "W2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_odt}]       ;               # IO_L4P_T0_34                  Sch = DDR3-ODT
#set_property -dict { PACKAGE_PIN "T3"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_cs_n}]      ;               # IO_0_34                       Sch = DDR3-CS#
#set_property -dict { PACKAGE_PIN "Y7"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dm[0]}]     ;               # IO_L23N_T3_34                 Sch = DDR3-LDM
#set_property -dict { PACKAGE_PIN "AA1"    IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dm[1]}]     ;               # IO_L7P_T1_34                  Sch = DDR3-UDM
#set_property -dict { PACKAGE_PIN "V9"     IOSTANDARD DIFF_SSTL15 SLEW FAST} [get_ports {ddr3_dqs_p[0]}] ;               # IO_L21P_T3_DQS_34             Sch = DDR3-LDQS_P
#set_property -dict { PACKAGE_PIN "V8"     IOSTANDARD DIFF_SSTL15 SLEW FAST} [get_ports {ddr3_dqs_n[0]}] ;               # IO_L21N_T3_DQS_34             Sch = DDR3-LDQS_N
#set_property -dict { PACKAGE_PIN "Y3"     IOSTANDARD DIFF_SSTL15 SLEW FAST} [get_ports {ddr3_dqs_p[1]}] ;               # IO_L9P_T1_DQS_34              Sch = DDR3-UDQS_P
#set_property -dict { PACKAGE_PIN "AA3"    IOSTANDARD DIFF_SSTL15 SLEW FAST} [get_ports {ddr3_dqs_n[1]}] ;               # IO_L9N_T1_DQS_34              Sch = DDR3-UDQS_N
#set_property -dict { PACKAGE_PIN "U3"     IOSTANDARD DIFF_SSTL15 SLEW FAST} [get_ports {ddr3_ck_p[0]}]  ;               # IO_L6P_T0_34                  Sch = DDR3-CK_P
#set_property -dict { PACKAGE_PIN "V3"     IOSTANDARD DIFF_SSTL15 SLEW FAST} [get_ports {ddr3_ck_n[0]}]  ;               # IO_L6N_T0_VREF_34             Sch = DDR3-CK_N




create_clock -period 10.000 -name clk_in_100 -waveform {0.000 5.000} [get_ports clk_in_100]
