-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Apr 15 18:31:07 2024
-- Host        : Desktop-qUBECk running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top clockingHDMI -prefix
--               clockingHDMI_ clockingHDMI_stub.vhdl
-- Design      : clockingHDMI
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a50tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clockingHDMI is
  Port ( 
    clk_out1_125 : out STD_LOGIC;
    clk_out2_125ps : out STD_LOGIC;
    clk_out3_25 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end clockingHDMI;

architecture stub of clockingHDMI is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1_125,clk_out2_125ps,clk_out3_25,reset,locked,clk_in1";
begin
end;