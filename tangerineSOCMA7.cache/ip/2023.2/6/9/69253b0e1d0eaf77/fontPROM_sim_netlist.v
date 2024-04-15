// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Apr 15 13:22:26 2024
// Host        : Desktop-qUBECk running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fontPROM_sim_netlist.v
// Design      : fontPROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fontPROM,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [7:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.2196 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "fontPROM.mem" *) 
  (* C_INIT_FILE_NAME = "fontPROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17744)
`pragma protect data_block
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
GCJgSMEjAPX+nQwfwmP48mw=
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
