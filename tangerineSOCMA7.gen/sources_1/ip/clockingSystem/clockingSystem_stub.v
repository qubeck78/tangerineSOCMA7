// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Apr 15 18:32:37 2024
// Host        : Desktop-qUBECk running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/qubec/Documents/Development/ProjektyVHDL/MimasA7/tangerineSOCMA7/tangerineSOCMA7.gen/sources_1/ip/clockingSystem/clockingSystem_stub.v
// Design      : clockingSystem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clockingSystem(clk_out1_50, clk_out2_100, reset, locked, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="reset,locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_out1_50" */
/* synthesis syn_force_seq_prim="clk_out2_100" */;
  output clk_out1_50 /* synthesis syn_isclock = 1 */;
  output clk_out2_100 /* synthesis syn_isclock = 1 */;
  input reset;
  output locked;
  input clk_in1;
endmodule
