vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"F:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"F:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_std.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \

vcom -work xil_defaultlib  -93  \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.vhd" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/migDDR3_mig_sim.vhd" \
"../../../../tangerineSOCMA7.gen/sources_1/ip/migDDR3/migDDR3/user_design/rtl/migDDR3.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

