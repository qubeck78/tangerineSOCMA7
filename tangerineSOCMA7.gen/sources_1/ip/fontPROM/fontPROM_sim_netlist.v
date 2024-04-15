// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Apr 15 13:22:26 2024
// Host        : Desktop-qUBECk running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/qubec/Documents/Development/ProjektyVHDL/MimasA7/tangerineSOCMA7/tangerineSOCMA7.gen/sources_1/ip/fontPROM/fontPROM_sim_netlist.v
// Design      : fontPROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fontPROM,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module fontPROM
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
  fontPROM_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17680)
`pragma protect data_block
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
yEcnQbgoigdqOw==
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
