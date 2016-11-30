--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: Core_map.vhd
-- /___/   /\     Timestamp: Tue Nov 29 14:15:14 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 2 -pcf Core.pcf -rpw 100 -tpw 0 -ar Structure -tm Core -w -dir netgen/map -ofmt vhdl -sim Core_map.ncd Core_map.vhd 
-- Device	: 6slx16csg324-2 (PRODUCTION 1.21 2012-01-07)
-- Input file	: Core_map.ncd
-- Output file	: /home/medrano/Bureau/4AE/VHDL/TP_Ethernet_2/netgen/map/Core_map.vhd
-- # of Entities	: 1
-- Design Name	: Core
-- Xilinx	: /usr/local/Xilinx.ISE/13.4/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity Core is
  port (
    RENABP : in STD_LOGIC := 'X'; 
    TABORTP : in STD_LOGIC := 'X'; 
    TAVAILP : in STD_LOGIC := 'X'; 
    TFINISHP : in STD_LOGIC := 'X'; 
    TLASTP : in STD_LOGIC := 'X'; 
    CLK10I : in STD_LOGIC := 'X'; 
    RESETN : in STD_LOGIC := 'X'; 
    RBYTEP : out STD_LOGIC; 
    CLKDIV8_UP : out STD_LOGIC; 
    RCLEANP : out STD_LOGIC; 
    RCVNGP : out STD_LOGIC; 
    RDONEP : out STD_LOGIC; 
    RSMATIP : out STD_LOGIC; 
    RSTARTP : out STD_LOGIC; 
    TDONEP : out STD_LOGIC; 
    TREADDP : out STD_LOGIC; 
    TRNSMTP : out STD_LOGIC; 
    TSTARTP : out STD_LOGIC; 
    TSOCOLP : out STD_LOGIC; 
    RDATAI : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    TDATAI : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    NOADDRI : in STD_LOGIC_VECTOR ( 47 downto 0 ); 
    RDATAO : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    TDATAO : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end Core;

architecture Structure of Core is
  signal CLK10I_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal CLK10I_BUFGP : STD_LOGIC; 
  signal Transmitter_DADR_SENT_1144 : STD_LOGIC; 
  signal TDATAI_3_IBUF_0 : STD_LOGIC; 
  signal TDATAO_3_1146 : STD_LOGIC; 
  signal TLASTP_IBUF_0 : STD_LOGIC; 
  signal TABORTP_Transmitter_COUNT4_2_AND_7_o : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal Transmitter_TADR_SENT_1150 : STD_LOGIC; 
  signal TAVAILP_Transmitter_TRON_AND_6_o : STD_LOGIC; 
  signal TDATAO_0_1154 : STD_LOGIC; 
  signal TDATAI_0_IBUF_0 : STD_LOGIC; 
  signal TDATAI_7_IBUF_0 : STD_LOGIC; 
  signal TDATAO_7_1157 : STD_LOGIC; 
  signal TDATAO_4_1158 : STD_LOGIC; 
  signal TDATAI_4_IBUF_0 : STD_LOGIC; 
  signal Q_n0543_inv_cepot_1160 : STD_LOGIC; 
  signal RDATAI_3_IBUF_0 : STD_LOGIC; 
  signal Q_n0543_inv_rstpot2 : STD_LOGIC; 
  signal Q_n03761_1167 : STD_LOGIC; 
  signal Q_n0543_inv_rstpot1 : STD_LOGIC; 
  signal Q_n0376 : STD_LOGIC; 
  signal RDATAI_4_IBUF_0 : STD_LOGIC; 
  signal RDATAI_5_IBUF_0 : STD_LOGIC; 
  signal RDATAI_6_IBUF_0 : STD_LOGIC; 
  signal RDATAI_7_IBUF_0 : STD_LOGIC; 
  signal TREADDP_rstpot : STD_LOGIC; 
  signal TABORTP_IBUF_0 : STD_LOGIC; 
  signal Transmitter_TRON_1192 : STD_LOGIC; 
  signal CLKDIV_UP_1193 : STD_LOGIC; 
  signal TREADDP_OBUF_1194 : STD_LOGIC; 
  signal S_RCVNGP_1195 : STD_LOGIC; 
  signal Receiver_PAUSE_END_1196 : STD_LOGIC; 
  signal Q_n0700_inv : STD_LOGIC; 
  signal Mcount_Transmitter_COUNT4_val : STD_LOGIC; 
  signal TAVAILP_IBUF_0 : STD_LOGIC; 
  signal Q_n0571_inv : STD_LOGIC; 
  signal S_RSMATIP_1202 : STD_LOGIC; 
  signal Receiver_PAUSE_START_1203 : STD_LOGIC; 
  signal RDATAI_1_IBUF_0 : STD_LOGIC; 
  signal Q_n0543_inv_rstpot_1206 : STD_LOGIC; 
  signal RDATAI_2_IBUF_0 : STD_LOGIC; 
  signal RENABP_IBUF_0 : STD_LOGIC; 
  signal RDATAI_7_PWR_5_o_equal_79_o : STD_LOGIC; 
  signal RDATAI_0_IBUF_0 : STD_LOGIC; 
  signal N33_0 : STD_LOGIC; 
  signal CLKDIV_RST_1225 : STD_LOGIC; 
  signal Q_n0436 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal RBYTEP_OBUF_0 : STD_LOGIC; 
  signal RDONEP_OBUF_1236 : STD_LOGIC; 
  signal Reset_OR_DriverANDClockEnable : STD_LOGIC; 
  signal n0079_47_wg_cy_3_Q_1248 : STD_LOGIC; 
  signal n0079 : STD_LOGIC; 
  signal RCLEANP_OBUF_1256 : STD_LOGIC; 
  signal TDATAI_5_IBUF_0 : STD_LOGIC; 
  signal TDATAI_6_IBUF_0 : STD_LOGIC; 
  signal CLKDIV8_UP_OBUF_1259 : STD_LOGIC; 
  signal RDATAO_0_1260 : STD_LOGIC; 
  signal RDATAO_1_1261 : STD_LOGIC; 
  signal RDATAO_2_1262 : STD_LOGIC; 
  signal Receiver_RCOUNT_1_1_0 : STD_LOGIC; 
  signal RDATAO_3_1264 : STD_LOGIC; 
  signal Receiver_RCOUNT_2_1_1265 : STD_LOGIC; 
  signal Receiver_RCOUNT_2_glue_rst_1266 : STD_LOGIC; 
  signal RDATAO_4_1267 : STD_LOGIC; 
  signal TDATAO_1_1268 : STD_LOGIC; 
  signal Q_n0404 : STD_LOGIC; 
  signal RDATAO_5_1270 : STD_LOGIC; 
  signal TDATAO_2_1271 : STD_LOGIC; 
  signal RDATAO_6_1272 : STD_LOGIC; 
  signal RDATAO_7_1273 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal TDATAO_5_1275 : STD_LOGIC; 
  signal TDATAO_6_1276 : STD_LOGIC; 
  signal Q_n0543_inv_1277 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal Q_n0526_inv : STD_LOGIC; 
  signal Q_n0681_inv_rstpot_1281 : STD_LOGIC; 
  signal TDATAI_1_IBUF_0 : STD_LOGIC; 
  signal TDATAI_2_IBUF_0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal Receiver_RCOUNT_1_glue_rst_1287 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal CLKDIV8_1291 : STD_LOGIC; 
  signal TDATAO_7_PWR_5_o_mux_134_OUT_6_Q : STD_LOGIC; 
  signal TDATAO_7_PWR_5_o_mux_134_OUT_1_Q : STD_LOGIC; 
  signal TDATAO_7_PWR_5_o_mux_134_OUT_5_Q : STD_LOGIC; 
  signal TDATAO_7_PWR_5_o_mux_134_OUT_2_Q : STD_LOGIC; 
  signal n0079_47_wg_lut_0_Q_29 : STD_LOGIC; 
  signal n0079_47_wg_lut_1_Q_21 : STD_LOGIC; 
  signal n0079_47_wg_lut_2_Q_13 : STD_LOGIC; 
  signal ProtoComp26_CYINITGND_0 : STD_LOGIC; 
  signal n0079_47_wg_lut_3_Q_3 : STD_LOGIC; 
  signal n0079_47_wg_lut_4_Q_63 : STD_LOGIC; 
  signal n0079_47_wg_lut_5_Q_55 : STD_LOGIC; 
  signal n0079_47_wg_lut_6_Q_47 : STD_LOGIC; 
  signal n0079_47_wg_lut_7_Q_37 : STD_LOGIC; 
  signal Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_lut_76 : STD_LOGIC; 
  signal GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o : STD_LOGIC; 
  signal TDATAI_5_IBUF_85 : STD_LOGIC; 
  signal TDATAI_6_IBUF_88 : STD_LOGIC; 
  signal TDATAI_7_IBUF_91 : STD_LOGIC; 
  signal TABORTP_IBUF_98 : STD_LOGIC; 
  signal TLASTP_IBUF_137 : STD_LOGIC; 
  signal RENABP_IBUF_148 : STD_LOGIC; 
  signal TAVAILP_IBUF_151 : STD_LOGIC; 
  signal CLK10I_BUFGP_IBUFG_154 : STD_LOGIC; 
  signal RDATAI_0_IBUF_157 : STD_LOGIC; 
  signal RDATAI_1_IBUF_160 : STD_LOGIC; 
  signal RDATAI_2_IBUF_163 : STD_LOGIC; 
  signal RDATAI_3_IBUF_170 : STD_LOGIC; 
  signal TDATAI_0_IBUF_173 : STD_LOGIC; 
  signal RDATAI_4_IBUF_176 : STD_LOGIC; 
  signal TDATAI_1_IBUF_179 : STD_LOGIC; 
  signal RDATAI_5_IBUF_182 : STD_LOGIC; 
  signal TDATAI_2_IBUF_185 : STD_LOGIC; 
  signal RDATAI_6_IBUF_188 : STD_LOGIC; 
  signal TDATAI_3_IBUF_191 : STD_LOGIC; 
  signal RDATAI_7_IBUF_194 : STD_LOGIC; 
  signal TDATAI_4_IBUF_197 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_47_dpot_221 : STD_LOGIC; 
  signal Receiver_RCOUNT_0_dpot_213 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_21_dpot_253 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_18_dpot_244 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_19_dpot_236 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_20_dpot_228 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_14_dpot_288 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_11_dpot_282 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_12_dpot_274 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_13_dpot_266 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_17_dpot_324 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_15_dpot_320 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_16_dpot_312 : STD_LOGIC; 
  signal S_RSMATIP_glue_set_362 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_35_dpot_397 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_36_dpot_389 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_37_dpot_381 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_38_dpot_371 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_34_dpot_427 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_32_dpot_418 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_33_dpot_410 : STD_LOGIC; 
  signal Receiver_RCOUNT_1_glue_rst_rt_463 : STD_LOGIC; 
  signal Receiver_RCOUNT_1_1_447 : STD_LOGIC; 
  signal RBYTEP_OBUF_471 : STD_LOGIC; 
  signal GND_5_o_GND_5_o_MUX_157_o : STD_LOGIC; 
  signal GND_5_o_GND_5_o_MUX_153_o : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_25_dpot_522 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_22_dpot_513 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_23_dpot_505 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_24_dpot_497 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_0_dpot_558 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_1_dpot_544 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_2_dpot_532 : STD_LOGIC; 
  signal Receiver_PAUSE_END_rstpot1_578 : STD_LOGIC; 
  signal Receiver_PAUSE_START_rstpot_570 : STD_LOGIC; 
  signal N35_pack_15 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_26_dpot_623 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_27_dpot_615 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_28_dpot_607 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_29_dpot_597 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_43_dpot_656 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_44_dpot_648 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_45_dpot_640 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_46_dpot_630 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_3_dpot_690 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_4_dpot_682 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_5_dpot_674 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_6_dpot_664 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_30_dpot_713 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_31_dpot_705 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_7_dpot_748 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_8_dpot_740 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_9_dpot_732 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_10_dpot_722 : STD_LOGIC; 
  signal CLKDIV_clk_count_1_pack_1 : STD_LOGIC; 
  signal CLKDIV_clk_count_1_GND_5_o_mux_3_OUT_1_Q : STD_LOGIC; 
  signal CLKDIV_clk_count_1_GND_5_o_mux_3_OUT_0_Q : STD_LOGIC; 
  signal S_RCVNGP_rstpot_772 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_39_dpot_807 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_40_dpot_799 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_41_dpot_791 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_42_dpot_781 : STD_LOGIC; 
  signal Transmitter_COUNT4_2_pack_1 : STD_LOGIC; 
  signal Transmitter_COUNT4_2_glue_rst_817 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Transmitter_TRON_rstpot_837 : STD_LOGIC; 
  signal CLKDIV_UP_pack_8 : STD_LOGIC; 
  signal PWR_5_o_CLKDIV8_AND_1_o : STD_LOGIC; 
  signal CLKDIV8_rstpot1_882 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal TDATAO_7_dpot_904 : STD_LOGIC; 
  signal TDATAO_6_dpot_899 : STD_LOGIC; 
  signal Transmitter_ADRCOUNT_0_rstpot_941 : STD_LOGIC; 
  signal Q_n0571_inv_pack_6 : STD_LOGIC; 
  signal Transmitter_ADRCOUNT_1_glue_rst_965 : STD_LOGIC; 
  signal Transmitter_ADRCOUNT_2_glue_rst_957 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal TDATAO_0_dpot_983 : STD_LOGIC; 
  signal TDATAO_1_dpot_978 : STD_LOGIC; 
  signal TDATAO_5_dpot_1030 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal TDATAO_4_dpot_1004 : STD_LOGIC; 
  signal Transmitter_DADR_SENT_glue_set_1041 : STD_LOGIC; 
  signal Transmitter_TADR_SENT_rstpot_1053 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal TDATAO_3_dpot_1078 : STD_LOGIC; 
  signal TDATAO_2_dpot_1073 : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_7_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_7_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_7_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n0079_47_wg_cy_7_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_S_3_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_N1_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal Transmitter_ADRCOUNT : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Receiver_RCOUNT : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Receiver_ADDRESS_BUFFER : STD_LOGIC_VECTOR ( 47 downto 0 ); 
  signal Transmitter_COUNT4 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal CLKDIV_clk_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  CLK10I_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP_IBUFG_0,
      O => CLK10I_BUFGP
    );
  n0079_47_wg_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"0000000000000040"
    )
    port map (
      ADR0 => Receiver_ADDRESS_BUFFER(21),
      ADR1 => Receiver_ADDRESS_BUFFER(25),
      ADR2 => Receiver_ADDRESS_BUFFER(44),
      ADR3 => Receiver_ADDRESS_BUFFER(23),
      ADR4 => Receiver_ADDRESS_BUFFER(22),
      ADR5 => Receiver_ADDRESS_BUFFER(18),
      O => n0079_47_wg_lut_3_Q_3
    );
  ProtoComp26_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X2Y6"
    )
    port map (
      O => ProtoComp26_CYINITGND_0
    );
  n0079_47_wg_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y6"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp26_CYINITGND_0,
      CO(3) => n0079_47_wg_cy_3_Q_1248,
      CO(2) => NLW_n0079_47_wg_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_n0079_47_wg_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_n0079_47_wg_cy_3_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => NLW_n0079_47_wg_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_n0079_47_wg_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_n0079_47_wg_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_n0079_47_wg_cy_3_O_0_UNCONNECTED,
      S(3) => n0079_47_wg_lut_3_Q_3,
      S(2) => n0079_47_wg_lut_2_Q_13,
      S(1) => n0079_47_wg_lut_1_Q_21,
      S(0) => n0079_47_wg_lut_0_Q_29
    );
  n0079_47_wg_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"0000000000000040"
    )
    port map (
      ADR0 => Receiver_ADDRESS_BUFFER(27),
      ADR1 => Receiver_ADDRESS_BUFFER(26),
      ADR2 => Receiver_ADDRESS_BUFFER(28),
      ADR3 => Receiver_ADDRESS_BUFFER(29),
      ADR4 => Receiver_ADDRESS_BUFFER(24),
      ADR5 => Receiver_ADDRESS_BUFFER(43),
      O => n0079_47_wg_lut_2_Q_13
    );
  n0079_47_wg_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"0000000000000040"
    )
    port map (
      ADR0 => Receiver_ADDRESS_BUFFER(35),
      ADR1 => Receiver_ADDRESS_BUFFER(34),
      ADR2 => Receiver_ADDRESS_BUFFER(30),
      ADR3 => Receiver_ADDRESS_BUFFER(32),
      ADR4 => Receiver_ADDRESS_BUFFER(39),
      ADR5 => Receiver_ADDRESS_BUFFER(31),
      O => n0079_47_wg_lut_1_Q_21
    );
  n0079_47_wg_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"0002000000000000"
    )
    port map (
      ADR0 => Receiver_ADDRESS_BUFFER(37),
      ADR1 => Receiver_ADDRESS_BUFFER(40),
      ADR2 => Receiver_ADDRESS_BUFFER(38),
      ADR3 => Receiver_ADDRESS_BUFFER(33),
      ADR4 => Receiver_ADDRESS_BUFFER(41),
      ADR5 => Receiver_ADDRESS_BUFFER(36),
      O => n0079_47_wg_lut_0_Q_29
    );
  n0079_47_wg_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"0002000000000000"
    )
    port map (
      ADR0 => Receiver_ADDRESS_BUFFER(2),
      ADR1 => Receiver_ADDRESS_BUFFER(5),
      ADR2 => Receiver_ADDRESS_BUFFER(0),
      ADR3 => Receiver_ADDRESS_BUFFER(45),
      ADR4 => Receiver_ADDRESS_BUFFER(4),
      ADR5 => Receiver_ADDRESS_BUFFER(1),
      O => n0079_47_wg_lut_7_Q_37
    );
  n0079_47_wg_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y7"
    )
    port map (
      CI => n0079_47_wg_cy_3_Q_1248,
      CYINIT => '0',
      CO(3) => n0079,
      CO(2) => NLW_n0079_47_wg_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_n0079_47_wg_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_n0079_47_wg_cy_7_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => NLW_n0079_47_wg_cy_7_O_3_UNCONNECTED,
      O(2) => NLW_n0079_47_wg_cy_7_O_2_UNCONNECTED,
      O(1) => NLW_n0079_47_wg_cy_7_O_1_UNCONNECTED,
      O(0) => NLW_n0079_47_wg_cy_7_O_0_UNCONNECTED,
      S(3) => n0079_47_wg_lut_7_Q_37,
      S(2) => n0079_47_wg_lut_6_Q_47,
      S(1) => n0079_47_wg_lut_5_Q_55,
      S(0) => n0079_47_wg_lut_4_Q_63
    );
  n0079_47_wg_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"0000000000000040"
    )
    port map (
      ADR0 => Receiver_ADDRESS_BUFFER(8),
      ADR1 => Receiver_ADDRESS_BUFFER(6),
      ADR2 => Receiver_ADDRESS_BUFFER(10),
      ADR3 => Receiver_ADDRESS_BUFFER(7),
      ADR4 => Receiver_ADDRESS_BUFFER(47),
      ADR5 => Receiver_ADDRESS_BUFFER(3),
      O => n0079_47_wg_lut_6_Q_47
    );
  n0079_47_wg_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"0000000000000040"
    )
    port map (
      ADR0 => Receiver_ADDRESS_BUFFER(14),
      ADR1 => Receiver_ADDRESS_BUFFER(12),
      ADR2 => Receiver_ADDRESS_BUFFER(13),
      ADR3 => Receiver_ADDRESS_BUFFER(9),
      ADR4 => Receiver_ADDRESS_BUFFER(46),
      ADR5 => Receiver_ADDRESS_BUFFER(11),
      O => n0079_47_wg_lut_5_Q_55
    );
  n0079_47_wg_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"0000000000000040"
    )
    port map (
      ADR0 => Receiver_ADDRESS_BUFFER(19),
      ADR1 => Receiver_ADDRESS_BUFFER(17),
      ADR2 => Receiver_ADDRESS_BUFFER(20),
      ADR3 => Receiver_ADDRESS_BUFFER(15),
      ADR4 => Receiver_ADDRESS_BUFFER(42),
      ADR5 => Receiver_ADDRESS_BUFFER(16),
      O => n0079_47_wg_lut_4_Q_63
    );
  Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y8"
    )
    port map (
      CI => n0079,
      CYINIT => '0',
      CO(3) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_CO_3_UNCONNECTED,
      CO(2) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_CO_2_UNCONNECTED,
      CO(1) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_CO_1_UNCONNECTED,
      CO(0) => GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o,
      DI(3) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_DI_3_UNCONNECTED,
      DI(2) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_DI_2_UNCONNECTED,
      DI(1) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_O_3_UNCONNECTED,
      O(2) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_O_2_UNCONNECTED,
      O(1) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_O_1_UNCONNECTED,
      O(0) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_O_0_UNCONNECTED,
      S(3) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_S_3_UNCONNECTED,
      S(2) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_S_2_UNCONNECTED,
      S(1) => NLW_Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_cy_S_1_UNCONNECTED,
      S(0) => Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_lut_76
    );
  RCLEANP_19 : X_SFF
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '0'
    )
    port map (
      CE => RENABP_IBUF_0,
      CLK => CLK10I_BUFGP,
      I => GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o,
      O => RCLEANP_OBUF_1256,
      SRST => Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_lut : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"1000000010000000"
    )
    port map (
      ADR0 => S_RSMATIP_1202,
      ADR1 => Receiver_PAUSE_START_1203,
      ADR2 => S_RCVNGP_1195,
      ADR3 => Receiver_RCOUNT(2),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => '1',
      O => Mmux_GND_5_o_Receiver_ADDRESS_BUFFER_47_MUX_145_o11_lut_76
    );
  N1_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_2_A5LUT_O_UNCONNECTED
    );
  TDATAI_5_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_5_IBUF_85,
      I => TDATAI(5)
    );
  ProtoComp29_IMUX : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_5_IBUF_85,
      O => TDATAI_5_IBUF_0
    );
  TDATAI_6_IBUF : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_6_IBUF_88,
      I => TDATAI(6)
    );
  ProtoComp29_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_6_IBUF_88,
      O => TDATAI_6_IBUF_0
    );
  TDATAI_7_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_7_IBUF_91,
      I => TDATAI(7)
    );
  ProtoComp29_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_7_IBUF_91,
      O => TDATAI_7_IBUF_0
    );
  RSMATIP_OBUF : X_OBUF
    generic map(
      LOC => "PAD186"
    )
    port map (
      I => S_RSMATIP_1202,
      O => RSMATIP
    );
  CLKDIV8_UP_OBUF : X_OBUF
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => CLKDIV8_UP_OBUF_1259,
      O => CLKDIV8_UP
    );
  TABORTP_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 240 ps
    )
    port map (
      O => TABORTP_IBUF_98,
      I => TABORTP
    );
  ProtoComp29_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 240 ps
    )
    port map (
      I => TABORTP_IBUF_98,
      O => TABORTP_IBUF_0
    );
  RBYTEP_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => RBYTEP_OBUF_0,
      O => RBYTEP
    );
  RDATAO_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD197"
    )
    port map (
      I => RDATAO_0_1260,
      O => RDATAO(0)
    );
  RDATAO_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD198"
    )
    port map (
      I => RDATAO_1_1261,
      O => RDATAO(1)
    );
  RDATAO_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD199"
    )
    port map (
      I => RDATAO_2_1262,
      O => RDATAO(2)
    );
  RDATAO_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD200"
    )
    port map (
      I => RDATAO_3_1264,
      O => RDATAO(3)
    );
  TDATAO_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => TDATAO_0_1154,
      O => TDATAO(0)
    );
  RDATAO_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD201"
    )
    port map (
      I => RDATAO_4_1267,
      O => RDATAO(4)
    );
  TDATAO_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD170"
    )
    port map (
      I => TDATAO_1_1268,
      O => TDATAO(1)
    );
  RDATAO_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => RDATAO_5_1270,
      O => RDATAO(5)
    );
  TDATAO_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => TDATAO_2_1271,
      O => TDATAO(2)
    );
  RCLEANP_OBUF : X_OBUF
    generic map(
      LOC => "PAD181"
    )
    port map (
      I => RCLEANP_OBUF_1256,
      O => RCLEANP
    );
  RDATAO_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD203"
    )
    port map (
      I => RDATAO_6_1272,
      O => RDATAO(6)
    );
  TDATAO_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => TDATAO_3_1146,
      O => TDATAO(3)
    );
  RDATAO_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => RDATAO_7_1273,
      O => RDATAO(7)
    );
  TDATAO_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => TDATAO_4_1158,
      O => TDATAO(4)
    );
  TDATAO_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD174"
    )
    port map (
      I => TDATAO_5_1275,
      O => TDATAO(5)
    );
  TDATAO_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD175"
    )
    port map (
      I => TDATAO_6_1276,
      O => TDATAO(6)
    );
  TDATAO_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD176"
    )
    port map (
      I => TDATAO_7_1157,
      O => TDATAO(7)
    );
  TLASTP_IBUF : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 240 ps
    )
    port map (
      O => TLASTP_IBUF_137,
      I => TLASTP
    );
  ProtoComp29_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 240 ps
    )
    port map (
      I => TLASTP_IBUF_137,
      O => TLASTP_IBUF_0
    );
  TRNSMTP_OBUF : X_OBUF
    generic map(
      LOC => "PAD177"
    )
    port map (
      I => CLKDIV_RST_1225,
      O => TRNSMTP
    );
  TREADDP_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => TREADDP_OBUF_1194,
      O => TREADDP
    );
  TSTARTP_OBUF : X_OBUF
    generic map(
      LOC => "PAD185"
    )
    port map (
      I => CLKDIV_RST_1225,
      O => TSTARTP
    );
  RCVNGP_OBUF : X_OBUF
    generic map(
      LOC => "PAD180"
    )
    port map (
      I => S_RCVNGP_1195,
      O => RCVNGP
    );
  RENABP_IBUF : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 240 ps
    )
    port map (
      O => RENABP_IBUF_148,
      I => RENABP
    );
  ProtoComp29_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 240 ps
    )
    port map (
      I => RENABP_IBUF_148,
      O => RENABP_IBUF_0
    );
  TAVAILP_IBUF : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 240 ps
    )
    port map (
      O => TAVAILP_IBUF_151,
      I => TAVAILP
    );
  ProtoComp29_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 240 ps
    )
    port map (
      I => TAVAILP_IBUF_151,
      O => TAVAILP_IBUF_0
    );
  CLK10I_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 240 ps
    )
    port map (
      O => CLK10I_BUFGP_IBUFG_154,
      I => CLK10I
    );
  ProtoComp29_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP_IBUFG_154,
      O => CLK10I_BUFGP_IBUFG_0
    );
  RDATAI_0_IBUF : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_0_IBUF_157,
      I => RDATAI(0)
    );
  ProtoComp29_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_0_IBUF_157,
      O => RDATAI_0_IBUF_0
    );
  RDATAI_1_IBUF : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_1_IBUF_160,
      I => RDATAI(1)
    );
  ProtoComp29_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_1_IBUF_160,
      O => RDATAI_1_IBUF_0
    );
  RDATAI_2_IBUF : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_2_IBUF_163,
      I => RDATAI(2)
    );
  ProtoComp29_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_2_IBUF_163,
      O => RDATAI_2_IBUF_0
    );
  TDONEP_OBUF : X_OBUF
    generic map(
      LOC => "PAD178"
    )
    port map (
      I => '1',
      O => TDONEP
    );
  RDONEP_OBUF : X_OBUF
    generic map(
      LOC => "PAD183"
    )
    port map (
      I => RDONEP_OBUF_1236,
      O => RDONEP
    );
  RDATAI_3_IBUF : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_3_IBUF_170,
      I => RDATAI(3)
    );
  ProtoComp29_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_3_IBUF_170,
      O => RDATAI_3_IBUF_0
    );
  TDATAI_0_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_0_IBUF_173,
      I => TDATAI(0)
    );
  ProtoComp29_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_0_IBUF_173,
      O => TDATAI_0_IBUF_0
    );
  RDATAI_4_IBUF : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_4_IBUF_176,
      I => RDATAI(4)
    );
  ProtoComp29_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_4_IBUF_176,
      O => RDATAI_4_IBUF_0
    );
  TDATAI_1_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_1_IBUF_179,
      I => TDATAI(1)
    );
  ProtoComp29_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_1_IBUF_179,
      O => TDATAI_1_IBUF_0
    );
  RDATAI_5_IBUF : X_BUF
    generic map(
      LOC => "PAD194",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_5_IBUF_182,
      I => RDATAI(5)
    );
  ProtoComp29_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD194",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_5_IBUF_182,
      O => RDATAI_5_IBUF_0
    );
  TDATAI_2_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_2_IBUF_185,
      I => TDATAI(2)
    );
  ProtoComp29_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_2_IBUF_185,
      O => TDATAI_2_IBUF_0
    );
  RDATAI_6_IBUF : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_6_IBUF_188,
      I => RDATAI(6)
    );
  ProtoComp29_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_6_IBUF_188,
      O => RDATAI_6_IBUF_0
    );
  TDATAI_3_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_3_IBUF_191,
      I => TDATAI(3)
    );
  ProtoComp29_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_3_IBUF_191,
      O => TDATAI_3_IBUF_0
    );
  RDATAI_7_IBUF : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_7_IBUF_194,
      I => RDATAI(7)
    );
  ProtoComp29_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_7_IBUF_194,
      O => RDATAI_7_IBUF_0
    );
  TDATAI_4_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_4_IBUF_197,
      I => TDATAI(4)
    );
  ProtoComp29_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_4_IBUF_197,
      O => TDATAI_4_IBUF_0
    );
  Q_n0543_inv_cepot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_PAUSE_START_1203,
      ADR4 => RENABP_IBUF_0,
      ADR5 => S_RSMATIP_1202,
      O => Q_n0543_inv_cepot_1160
    );
  Q_n03761_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"00000000000000C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => RDATAI_7_PWR_5_o_equal_79_o,
      ADR2 => RENABP_IBUF_0,
      ADR3 => Receiver_PAUSE_END_1196,
      ADR4 => S_RSMATIP_1202,
      ADR5 => S_RCVNGP_1195,
      O => Q_n03761_1167
    );
  Receiver_RCOUNT_0 : X_SFF
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_RCOUNT_0_dpot_213,
      O => Receiver_RCOUNT(0),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_RCOUNT_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"FF00F708F708F708"
    )
    port map (
      ADR0 => S_RCVNGP_1195,
      ADR1 => CLKDIV_UP_1193,
      ADR2 => Receiver_PAUSE_END_1196,
      ADR3 => Receiver_RCOUNT(0),
      ADR4 => Receiver_RCOUNT(2),
      ADR5 => Receiver_RCOUNT(1),
      O => Receiver_RCOUNT_0_dpot_213
    );
  Receiver_ADDRESS_BUFFER_47 : X_SFF
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_47_dpot_221,
      O => Receiver_ADDRESS_BUFFER(47),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_47_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"FF00FE02FF00FF00"
    )
    port map (
      ADR0 => RDATAI_7_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(47),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_47_dpot_221
    );
  Receiver_ADDRESS_BUFFER_21 : X_SFF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_21_dpot_253,
      O => Receiver_ADDRESS_BUFFER(21),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_21_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_5_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(21),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_21_dpot_253
    );
  Receiver_ADDRESS_BUFFER_20 : X_SFF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_20_dpot_228,
      O => Receiver_ADDRESS_BUFFER(20),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_20_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_4_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(20),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_20_dpot_228
    );
  Receiver_ADDRESS_BUFFER_19 : X_SFF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_19_dpot_236,
      O => Receiver_ADDRESS_BUFFER(19),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_19_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_3_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(19),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_19_dpot_236
    );
  Receiver_ADDRESS_BUFFER_18 : X_SFF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_18_dpot_244,
      O => Receiver_ADDRESS_BUFFER(18),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_18_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_2_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(18),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_18_dpot_244
    );
  Receiver_ADDRESS_BUFFER_14 : X_SFF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_14_dpot_288,
      O => Receiver_ADDRESS_BUFFER(14),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => X"FF00EF20FF00FF00"
    )
    port map (
      ADR0 => RDATAI_6_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(14),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_14_dpot_288
    );
  Receiver_ADDRESS_BUFFER_13 : X_SFF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_13_dpot_266,
      O => Receiver_ADDRESS_BUFFER(13),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => X"FF00EF20FF00FF00"
    )
    port map (
      ADR0 => RDATAI_5_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(13),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_13_dpot_266
    );
  Receiver_ADDRESS_BUFFER_12 : X_SFF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_12_dpot_274,
      O => Receiver_ADDRESS_BUFFER(12),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => X"FF00EF20FF00FF00"
    )
    port map (
      ADR0 => RDATAI_4_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(12),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_12_dpot_274
    );
  Receiver_ADDRESS_BUFFER_11 : X_SFF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_11_dpot_282,
      O => Receiver_ADDRESS_BUFFER(11),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => X"FF00EF20FF00FF00"
    )
    port map (
      ADR0 => RDATAI_3_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(11),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_11_dpot_282
    );
  Receiver_ADDRESS_BUFFER_17 : X_SFF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_17_dpot_324,
      O => Receiver_ADDRESS_BUFFER(17),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_17_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_1_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(17),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_17_dpot_324
    );
  Q_n0543_inv_rstpot_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => X"003F000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Receiver_RCOUNT_1_1_0,
      ADR2 => Receiver_RCOUNT_2_1_1265,
      ADR3 => Receiver_PAUSE_END_1196,
      ADR4 => S_RCVNGP_1195,
      ADR5 => CLKDIV_UP_1193,
      O => Q_n0543_inv_rstpot1
    );
  Receiver_ADDRESS_BUFFER_16 : X_SFF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_16_dpot_312,
      O => Receiver_ADDRESS_BUFFER(16),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_16_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_0_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(16),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_16_dpot_312
    );
  Receiver_ADDRESS_BUFFER_15 : X_SFF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_15_dpot_320,
      O => Receiver_ADDRESS_BUFFER(15),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => X"FF00EF20FF00FF00"
    )
    port map (
      ADR0 => RDATAI_7_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(15),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_15_dpot_320
    );
  Receiver_RCOUNT_2_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y9",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Receiver_RCOUNT_2_glue_rst_1266,
      O => Receiver_RCOUNT_2_1_1265,
      SET => GND,
      RST => GND
    );
  RDATAO_7 : X_FF
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => '0'
    )
    port map (
      CE => Q_n0526_inv,
      CLK => CLK10I_BUFGP,
      I => RDATAI_7_IBUF_0,
      O => RDATAO_7_1273,
      RST => GND,
      SET => GND
    );
  RDATAO_6 : X_FF
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => '0'
    )
    port map (
      CE => Q_n0526_inv,
      CLK => CLK10I_BUFGP,
      I => RDATAI_6_IBUF_0,
      O => RDATAO_6_1272,
      RST => GND,
      SET => GND
    );
  RDATAO_5 : X_FF
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => '0'
    )
    port map (
      CE => Q_n0526_inv,
      CLK => CLK10I_BUFGP,
      I => RDATAI_5_IBUF_0,
      O => RDATAO_5_1270,
      RST => GND,
      SET => GND
    );
  RDATAO_4 : X_FF
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => '0'
    )
    port map (
      CE => Q_n0526_inv,
      CLK => CLK10I_BUFGP,
      I => RDATAI_4_IBUF_0,
      O => RDATAO_4_1267,
      RST => GND,
      SET => GND
    );
  Q_n0543_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => X"FFFFFFFFFF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_PAUSE_START_1203,
      ADR4 => RENABP_IBUF_0,
      ADR5 => S_RSMATIP_1202,
      O => N22
    );
  Q_n0543_inv : X_LUT6
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => X"0000000000404040"
    )
    port map (
      ADR0 => Receiver_PAUSE_END_1196,
      ADR1 => S_RCVNGP_1195,
      ADR2 => CLKDIV_UP_1193,
      ADR3 => Receiver_RCOUNT(2),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => N22,
      O => Q_n0543_inv_1277
    );
  Q_n0468_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => X"FF00FFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_PAUSE_START_1203,
      ADR4 => Receiver_RCOUNT(2),
      ADR5 => Receiver_RCOUNT(1),
      O => N24
    );
  S_RSMATIP : X_SFF
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => S_RSMATIP_glue_set_362,
      O => S_RSMATIP_1202,
      SRST => Q_n0404,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  S_RSMATIP_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => X"FF00FF00FF00FF40"
    )
    port map (
      ADR0 => Receiver_PAUSE_END_1196,
      ADR1 => RENABP_IBUF_0,
      ADR2 => S_RCVNGP_1195,
      ADR3 => S_RSMATIP_1202,
      ADR4 => n0079,
      ADR5 => N24,
      O => S_RSMATIP_glue_set_362
    );
  Receiver_ADDRESS_BUFFER_38 : X_SFF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_38_dpot_371,
      O => Receiver_ADDRESS_BUFFER(38),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_38_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => RDATAI_6_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(38),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_38_dpot_371
    );
  Receiver_ADDRESS_BUFFER_37 : X_SFF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_37_dpot_381,
      O => Receiver_ADDRESS_BUFFER(37),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_37_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => RDATAI_5_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(37),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_37_dpot_381
    );
  Receiver_ADDRESS_BUFFER_36 : X_SFF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_36_dpot_389,
      O => Receiver_ADDRESS_BUFFER(36),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_36_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => RDATAI_4_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(36),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_36_dpot_389
    );
  Receiver_ADDRESS_BUFFER_35 : X_SFF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_35_dpot_397,
      O => Receiver_ADDRESS_BUFFER(35),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_35_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => RDATAI_3_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(35),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_35_dpot_397
    );
  Receiver_ADDRESS_BUFFER_34 : X_SFF
    generic map(
      LOC => "SLICE_X1Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_34_dpot_427,
      O => Receiver_ADDRESS_BUFFER(34),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_34_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y7",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => RDATAI_2_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(34),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_34_dpot_427
    );
  Q_n0543_inv_rstpot_2 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y7",
      INIT => X"003F000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Receiver_RCOUNT_1_1_0,
      ADR2 => Receiver_RCOUNT_2_1_1265,
      ADR3 => Receiver_PAUSE_END_1196,
      ADR4 => S_RCVNGP_1195,
      ADR5 => CLKDIV_UP_1193,
      O => Q_n0543_inv_rstpot2
    );
  Receiver_ADDRESS_BUFFER_33 : X_SFF
    generic map(
      LOC => "SLICE_X1Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_33_dpot_410,
      O => Receiver_ADDRESS_BUFFER(33),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_33_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y7",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => RDATAI_1_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(33),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_33_dpot_410
    );
  Receiver_ADDRESS_BUFFER_32 : X_SFF
    generic map(
      LOC => "SLICE_X1Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_32_dpot_418,
      O => Receiver_ADDRESS_BUFFER(32),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_32_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y7",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => RDATAI_0_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(32),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_32_dpot_418
    );
  RDATAO_3 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => '0'
    )
    port map (
      CE => Q_n0526_inv,
      CLK => CLK10I_BUFGP,
      I => RDATAI_3_IBUF_0,
      O => RDATAO_3_1264,
      RST => GND,
      SET => GND
    );
  RDATAO_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => '0'
    )
    port map (
      CE => Q_n0526_inv,
      CLK => CLK10I_BUFGP,
      I => RDATAI_2_IBUF_0,
      O => RDATAO_2_1262,
      RST => GND,
      SET => GND
    );
  RDATAO_1 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => '0'
    )
    port map (
      CE => Q_n0526_inv,
      CLK => CLK10I_BUFGP,
      I => RDATAI_1_IBUF_0,
      O => RDATAO_1_1261,
      RST => GND,
      SET => GND
    );
  RDATAO_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => '0'
    )
    port map (
      CE => Q_n0526_inv,
      CLK => CLK10I_BUFGP,
      I => RDATAI_0_IBUF_0,
      O => RDATAO_0_1260,
      RST => GND,
      SET => GND
    );
  Receiver_RCOUNT_2_Receiver_RCOUNT_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Receiver_RCOUNT_1_1_447,
      O => Receiver_RCOUNT_1_1_0
    );
  Receiver_RCOUNT_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y9",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Receiver_RCOUNT_2_glue_rst_1266,
      O => Receiver_RCOUNT(2),
      SET => GND,
      RST => GND
    );
  Receiver_RCOUNT_2_glue_rst : X_LUT6
    generic map(
      LOC => "SLICE_X1Y9",
      INIT => X"000000003FC0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(1),
      ADR3 => Receiver_RCOUNT(2),
      ADR4 => Q_n0543_inv_1277,
      ADR5 => Q_n0376,
      O => Receiver_RCOUNT_2_glue_rst_1266
    );
  Receiver_RCOUNT_1 : X_FF
    generic map(
      LOC => "SLICE_X1Y9",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Receiver_RCOUNT_1_glue_rst_1287,
      O => Receiver_RCOUNT(1),
      SET => GND,
      RST => GND
    );
  Receiver_RCOUNT_1_glue_rst : X_LUT6
    generic map(
      LOC => "SLICE_X1Y9",
      INIT => X"00003FC000003FC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Q_n0543_inv_1277,
      ADR3 => Receiver_RCOUNT(1),
      ADR4 => Q_n0376,
      ADR5 => '1',
      O => Receiver_RCOUNT_1_glue_rst_1287
    );
  Receiver_RCOUNT_1_glue_rst_rt : X_LUT5
    generic map(
      LOC => "SLICE_X1Y9",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR0 => Receiver_RCOUNT_1_glue_rst_1287,
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => Receiver_RCOUNT_1_glue_rst_rt_463
    );
  Receiver_RCOUNT_1_1 : X_FF
    generic map(
      LOC => "SLICE_X1Y9",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Receiver_RCOUNT_1_glue_rst_rt_463,
      O => Receiver_RCOUNT_1_1_447,
      SET => GND,
      RST => GND
    );
  RDONEP_OBUF_RDONEP_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RBYTEP_OBUF_471,
      O => RBYTEP_OBUF_0
    );
  RDONEP_262 : X_SFF
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => '0'
    )
    port map (
      CE => RENABP_IBUF_0,
      CLK => CLK10I_BUFGP,
      I => GND_5_o_GND_5_o_MUX_153_o,
      O => RDONEP_OBUF_1236,
      SRST => Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mmux_GND_5_o_GND_5_o_MUX_153_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"C0000000C0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => RDATAI_7_PWR_5_o_equal_79_o,
      ADR2 => CLKDIV_UP_1193,
      ADR3 => S_RCVNGP_1195,
      ADR4 => S_RSMATIP_1202,
      ADR5 => '1',
      O => GND_5_o_GND_5_o_MUX_153_o
    );
  Mmux_GND_5_o_GND_5_o_MUX_157_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"30000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => RDATAI_7_PWR_5_o_equal_79_o,
      ADR2 => CLKDIV_UP_1193,
      ADR3 => S_RCVNGP_1195,
      ADR4 => S_RSMATIP_1202,
      O => GND_5_o_GND_5_o_MUX_157_o
    );
  RBYTEP_259 : X_SFF
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => '0'
    )
    port map (
      CE => RENABP_IBUF_0,
      CLK => CLK10I_BUFGP,
      I => GND_5_o_GND_5_o_MUX_157_o,
      O => RBYTEP_OBUF_471,
      SRST => Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RDATAI_7_PWR_5_o_equal_79_o_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"FFFFFFFF00FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => RDATAI_1_IBUF_0,
      ADR4 => RDATAI_0_IBUF_0,
      ADR5 => RDATAI_2_IBUF_0,
      O => N8
    );
  RDATAI_7_PWR_5_o_equal_79_o_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"0002000000000000"
    )
    port map (
      ADR0 => RDATAI_7_IBUF_0,
      ADR1 => RDATAI_6_IBUF_0,
      ADR2 => RDATAI_4_IBUF_0,
      ADR3 => N8,
      ADR4 => RDATAI_3_IBUF_0,
      ADR5 => RDATAI_5_IBUF_0,
      O => RDATAI_7_PWR_5_o_equal_79_o
    );
  Q_n0526_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"0040000000000000"
    )
    port map (
      ADR0 => RDATAI_7_PWR_5_o_equal_79_o,
      ADR1 => RENABP_IBUF_0,
      ADR2 => CLKDIV_UP_1193,
      ADR3 => Receiver_PAUSE_END_1196,
      ADR4 => S_RCVNGP_1195,
      ADR5 => S_RSMATIP_1202,
      O => Q_n0526_inv
    );
  Receiver_ADDRESS_BUFFER_25 : X_SFF
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_25_dpot_522,
      O => Receiver_ADDRESS_BUFFER(25),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_25_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"FE02FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_1_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(25),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_25_dpot_522
    );
  Receiver_ADDRESS_BUFFER_24 : X_SFF
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_24_dpot_497,
      O => Receiver_ADDRESS_BUFFER(24),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_24_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"FE02FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_0_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(24),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_24_dpot_497
    );
  Receiver_ADDRESS_BUFFER_23 : X_SFF
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_23_dpot_505,
      O => Receiver_ADDRESS_BUFFER(23),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_23_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_7_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(23),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_23_dpot_505
    );
  Receiver_ADDRESS_BUFFER_22 : X_SFF
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_22_dpot_513,
      O => Receiver_ADDRESS_BUFFER(22),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_22_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_6_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(22),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_22_dpot_513
    );
  Receiver_ADDRESS_BUFFER_2 : X_SFF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_2_dpot_532,
      O => Receiver_ADDRESS_BUFFER(2),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => RDATAI_2_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(2),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_2_dpot_532
    );
  Receiver_ADDRESS_BUFFER_1 : X_SFF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_1_dpot_544,
      O => Receiver_ADDRESS_BUFFER(1),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => RDATAI_1_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(1),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_1_dpot_544
    );
  Q_n0543_inv_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"003F000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Receiver_RCOUNT_1_1_0,
      ADR2 => Receiver_RCOUNT_2_1_1265,
      ADR3 => Receiver_PAUSE_END_1196,
      ADR4 => S_RCVNGP_1195,
      ADR5 => CLKDIV_UP_1193,
      O => Q_n0543_inv_rstpot_1206
    );
  Receiver_ADDRESS_BUFFER_0 : X_SFF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_0_dpot_558,
      O => Receiver_ADDRESS_BUFFER(0),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => RDATAI_0_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(0),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_0_dpot_558
    );
  Receiver_PAUSE_START_Receiver_PAUSE_START_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N35_pack_15,
      O => N35
    );
  Reset_OR_DriverANDClockEnable1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => X"CCCCCCCC00000C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => RENABP_IBUF_0,
      ADR2 => S_RCVNGP_1195,
      ADR3 => RDATAI_7_PWR_5_o_equal_79_o,
      ADR4 => S_RSMATIP_1202,
      ADR5 => Receiver_PAUSE_END_1196,
      O => Reset_OR_DriverANDClockEnable
    );
  Q_n0372_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => X"FFFFFCFFFFFFFCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => Receiver_PAUSE_START_1203,
      ADR2 => S_RSMATIP_1202,
      ADR3 => RENABP_IBUF_0,
      ADR4 => Receiver_PAUSE_END_1196,
      ADR5 => '1',
      O => N20
    );
  Receiver_PAUSE_START_rstpot_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => X"FFFF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => RENABP_IBUF_0,
      ADR4 => Receiver_PAUSE_END_1196,
      O => N35_pack_15
    );
  Receiver_PAUSE_START : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Receiver_PAUSE_START_rstpot_570,
      O => Receiver_PAUSE_START_1203,
      RST => GND,
      SET => GND
    );
  Receiver_PAUSE_START_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => X"FBFFFFFFFB00FF00"
    )
    port map (
      ADR0 => N35,
      ADR1 => S_RCVNGP_1195,
      ADR2 => S_RSMATIP_1202,
      ADR3 => Receiver_PAUSE_START_1203,
      ADR4 => CLKDIV_UP_1193,
      ADR5 => Q_n0376,
      O => Receiver_PAUSE_START_rstpot_570
    );
  Receiver_PAUSE_END : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Receiver_PAUSE_END_rstpot1_578,
      O => Receiver_PAUSE_END_1196,
      RST => GND,
      SET => GND
    );
  Receiver_PAUSE_END_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => X"7780770077007700"
    )
    port map (
      ADR0 => CLKDIV_UP_1193,
      ADR1 => RENABP_IBUF_0,
      ADR2 => S_RCVNGP_1195,
      ADR3 => Receiver_PAUSE_END_1196,
      ADR4 => S_RSMATIP_1202,
      ADR5 => RDATAI_7_PWR_5_o_equal_79_o,
      O => Receiver_PAUSE_END_rstpot1_578
    );
  Receiver_ADDRESS_BUFFER_29 : X_SFF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_29_dpot_597,
      O => Receiver_ADDRESS_BUFFER(29),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_29_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => X"FE02FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_5_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(29),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_29_dpot_597
    );
  Receiver_ADDRESS_BUFFER_28 : X_SFF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_28_dpot_607,
      O => Receiver_ADDRESS_BUFFER(28),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_28_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => X"FE02FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_4_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(28),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_28_dpot_607
    );
  Receiver_ADDRESS_BUFFER_27 : X_SFF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_27_dpot_615,
      O => Receiver_ADDRESS_BUFFER(27),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_27_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => X"FE02FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_3_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(27),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_27_dpot_615
    );
  Receiver_ADDRESS_BUFFER_26 : X_SFF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_26_dpot_623,
      O => Receiver_ADDRESS_BUFFER(26),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_26_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => X"FE02FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_2_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(26),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_26_dpot_623
    );
  Receiver_ADDRESS_BUFFER_46 : X_SFF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_46_dpot_630,
      O => Receiver_ADDRESS_BUFFER(46),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_46_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"FF00FE02FF00FF00"
    )
    port map (
      ADR0 => RDATAI_6_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(46),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_46_dpot_630
    );
  Receiver_ADDRESS_BUFFER_45 : X_SFF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_45_dpot_640,
      O => Receiver_ADDRESS_BUFFER(45),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_45_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"FF00FE02FF00FF00"
    )
    port map (
      ADR0 => RDATAI_5_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(45),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_45_dpot_640
    );
  Receiver_ADDRESS_BUFFER_44 : X_SFF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_44_dpot_648,
      O => Receiver_ADDRESS_BUFFER(44),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_44_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"FF00FE02FF00FF00"
    )
    port map (
      ADR0 => RDATAI_4_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(44),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_44_dpot_648
    );
  Receiver_ADDRESS_BUFFER_43 : X_SFF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_43_dpot_656,
      O => Receiver_ADDRESS_BUFFER(43),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_43_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"FF00FE02FF00FF00"
    )
    port map (
      ADR0 => RDATAI_3_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(43),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_43_dpot_656
    );
  Receiver_ADDRESS_BUFFER_6 : X_SFF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_6_dpot_664,
      O => Receiver_ADDRESS_BUFFER(6),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => RDATAI_6_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(6),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_6_dpot_664
    );
  Receiver_ADDRESS_BUFFER_5 : X_SFF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_5_dpot_674,
      O => Receiver_ADDRESS_BUFFER(5),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => RDATAI_5_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(5),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_5_dpot_674
    );
  Receiver_ADDRESS_BUFFER_4 : X_SFF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_4_dpot_682,
      O => Receiver_ADDRESS_BUFFER(4),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => RDATAI_4_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(4),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_4_dpot_682
    );
  Receiver_ADDRESS_BUFFER_3 : X_SFF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_3_dpot_690,
      O => Receiver_ADDRESS_BUFFER(3),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => RDATAI_3_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(3),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_3_dpot_690
    );
  Q_n0372_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Receiver_RCOUNT(2),
      ADR5 => Receiver_RCOUNT(1),
      O => N26
    );
  Receiver_ADDRESS_BUFFER_31 : X_SFF
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_31_dpot_705,
      O => Receiver_ADDRESS_BUFFER(31),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_31_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"FE02FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_7_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(31),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_31_dpot_705
    );
  Receiver_ADDRESS_BUFFER_30 : X_SFF
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_30_dpot_713,
      O => Receiver_ADDRESS_BUFFER(30),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_30_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"FE02FF00FF00FF00"
    )
    port map (
      ADR0 => RDATAI_6_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(30),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot1,
      O => Receiver_ADDRESS_BUFFER_30_dpot_713
    );
  Receiver_ADDRESS_BUFFER_10 : X_SFF
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_10_dpot_722,
      O => Receiver_ADDRESS_BUFFER(10),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"FF00EF20FF00FF00"
    )
    port map (
      ADR0 => RDATAI_2_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(10),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_10_dpot_722
    );
  Receiver_ADDRESS_BUFFER_9 : X_SFF
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_9_dpot_732,
      O => Receiver_ADDRESS_BUFFER(9),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"FF00EF20FF00FF00"
    )
    port map (
      ADR0 => RDATAI_1_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(9),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_9_dpot_732
    );
  Receiver_ADDRESS_BUFFER_8 : X_SFF
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_8_dpot_740,
      O => Receiver_ADDRESS_BUFFER(8),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"FF00EF20FF00FF00"
    )
    port map (
      ADR0 => RDATAI_0_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(8),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_8_dpot_740
    );
  Receiver_ADDRESS_BUFFER_7 : X_SFF
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_7_dpot_748,
      O => Receiver_ADDRESS_BUFFER(7),
      SRST => Q_n0376,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => RDATAI_7_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(7),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot_1206,
      O => Receiver_ADDRESS_BUFFER_7_dpot_748
    );
  CLKDIV_clk_count_0_CLKDIV_clk_count_0_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLKDIV_clk_count_1_pack_1,
      O => CLKDIV_clk_count(1)
    );
  CLKDIV_clk_count_0 : X_FF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => CLKDIV_clk_count_1_GND_5_o_mux_3_OUT_0_Q,
      O => CLKDIV_clk_count(0),
      RST => GND,
      SET => GND
    );
  Mmux_CLKDIV_clk_count_1_GND_5_o_mux_3_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"000000FF000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => CLKDIV_clk_count(0),
      ADR4 => CLKDIV_RST_1225,
      ADR5 => '1',
      O => CLKDIV_clk_count_1_GND_5_o_mux_3_OUT_0_Q
    );
  Mmux_CLKDIV_clk_count_1_GND_5_o_mux_3_OUT21 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"00000FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => CLKDIV_clk_count(1),
      ADR3 => CLKDIV_clk_count(0),
      ADR4 => CLKDIV_RST_1225,
      O => CLKDIV_clk_count_1_GND_5_o_mux_3_OUT_1_Q
    );
  CLKDIV_clk_count_1 : X_FF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => CLKDIV_clk_count_1_GND_5_o_mux_3_OUT_1_Q,
      O => CLKDIV_clk_count_1_pack_1,
      RST => GND,
      SET => GND
    );
  Q_n03761 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => X"00000000000000C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => RDATAI_7_PWR_5_o_equal_79_o,
      ADR2 => RENABP_IBUF_0,
      ADR3 => Receiver_PAUSE_END_1196,
      ADR4 => S_RSMATIP_1202,
      ADR5 => S_RCVNGP_1195,
      O => Q_n0376
    );
  S_RCVNGP : X_FF
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => S_RCVNGP_rstpot_772,
      O => S_RCVNGP_1195,
      RST => GND,
      SET => GND
    );
  S_RCVNGP_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => X"5555155555001500"
    )
    port map (
      ADR0 => Q_n0404,
      ADR1 => N26,
      ADR2 => n0079,
      ADR3 => S_RCVNGP_1195,
      ADR4 => N20,
      ADR5 => Q_n0376,
      O => S_RCVNGP_rstpot_772
    );
  Receiver_ADDRESS_BUFFER_42 : X_SFF
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_42_dpot_781,
      O => Receiver_ADDRESS_BUFFER(42),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_42_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => X"FF00FE02FF00FF00"
    )
    port map (
      ADR0 => RDATAI_2_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(42),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_42_dpot_781
    );
  Receiver_ADDRESS_BUFFER_41 : X_SFF
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_41_dpot_791,
      O => Receiver_ADDRESS_BUFFER(41),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_41_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => X"FF00FE02FF00FF00"
    )
    port map (
      ADR0 => RDATAI_1_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(41),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_41_dpot_791
    );
  Receiver_ADDRESS_BUFFER_40 : X_SFF
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_40_dpot_799,
      O => Receiver_ADDRESS_BUFFER(40),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_40_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => X"FF00FE02FF00FF00"
    )
    port map (
      ADR0 => RDATAI_0_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(40),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_40_dpot_799
    );
  Receiver_ADDRESS_BUFFER_39 : X_SFF
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      CE => Q_n0543_inv_cepot_1160,
      CLK => CLK10I_BUFGP,
      I => Receiver_ADDRESS_BUFFER_39_dpot_807,
      O => Receiver_ADDRESS_BUFFER(39),
      SRST => Q_n03761_1167,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_39_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => RDATAI_7_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(39),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0543_inv_rstpot2,
      O => Receiver_ADDRESS_BUFFER_39_dpot_807
    );
  CLKDIV_RST_CLKDIV_RST_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Transmitter_COUNT4_2_pack_1,
      O => Transmitter_COUNT4(2)
    );
  CLKDIV_RST : X_FF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => TAVAILP_Transmitter_TRON_AND_6_o,
      O => CLKDIV_RST_1225,
      RST => GND,
      SET => GND
    );
  TAVAILP_Transmitter_TRON_AND_6_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => TAVAILP_IBUF_0,
      ADR4 => Transmitter_TRON_1192,
      ADR5 => '1',
      O => TAVAILP_Transmitter_TRON_AND_6_o
    );
  Transmitter_COUNT4_2_glue_rst : X_LUT5
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"F0F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Transmitter_COUNT4(2),
      ADR3 => TAVAILP_IBUF_0,
      ADR4 => Transmitter_TRON_1192,
      O => Transmitter_COUNT4_2_glue_rst_817
    );
  Transmitter_COUNT4_2 : X_FF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Transmitter_COUNT4_2_glue_rst_817,
      O => Transmitter_COUNT4_2_pack_1,
      SET => GND,
      RST => GND
    );
  Transmitter_COUNT4_1_Transmitter_COUNT4_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N33,
      O => N33_0
    );
  Transmitter_COUNT4_1 : X_SFF
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => '0'
    )
    port map (
      CE => Q_n0700_inv,
      CLK => CLK10I_BUFGP,
      I => Result_1_1,
      O => Transmitter_COUNT4(1),
      SRST => Mcount_Transmitter_COUNT4_val,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Result_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_COUNT4(1),
      ADR4 => Transmitter_COUNT4(0),
      ADR5 => '1',
      O => Result_1_1
    );
  Transmitter_TRON_rstpot_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"F0FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Transmitter_COUNT4(2),
      ADR3 => Transmitter_COUNT4(1),
      ADR4 => Transmitter_COUNT4(0),
      O => N33
    );
  Transmitter_COUNT4_0 : X_SFF
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => '0'
    )
    port map (
      CE => Q_n0700_inv,
      CLK => CLK10I_BUFGP,
      I => Result_0_1,
      O => Transmitter_COUNT4(0),
      SRST => Mcount_Transmitter_COUNT4_val,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_Transmitter_COUNT4_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_COUNT4(0),
      ADR4 => '1',
      ADR5 => '1',
      O => Result_0_1
    );
  Transmitter_TRON : X_FF
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Transmitter_TRON_rstpot_837,
      O => Transmitter_TRON_1192,
      RST => GND,
      SET => GND
    );
  Transmitter_TRON_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"F3AAF3AAF3AA33AA"
    )
    port map (
      ADR0 => TAVAILP_IBUF_0,
      ADR1 => CLKDIV_UP_1193,
      ADR2 => N33_0,
      ADR3 => Transmitter_TRON_1192,
      ADR4 => N37,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => Transmitter_TRON_rstpot_837
    );
  TREADDP_367 : X_FF
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => TREADDP_rstpot,
      O => TREADDP_OBUF_1194,
      RST => GND,
      SET => GND
    );
  Q_n0571_inv11 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"CCCD000000000000"
    )
    port map (
      ADR0 => TABORTP_IBUF_0,
      ADR1 => Transmitter_COUNT4(2),
      ADR2 => Transmitter_COUNT4(1),
      ADR3 => Transmitter_COUNT4(0),
      ADR4 => Transmitter_TRON_1192,
      ADR5 => CLKDIV_UP_1193,
      O => TREADDP_rstpot
    );
  Transmitter_TRON_rstpot_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"00FFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => TLASTP_IBUF_0,
      ADR4 => Transmitter_DADR_SENT_1144,
      ADR5 => Transmitter_TADR_SENT_1150,
      O => N37
    );
  CLKDIV8_UP_OBUF_CLKDIV8_UP_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLKDIV_UP_pack_8,
      O => CLKDIV_UP_1193
    );
  Q_n0700_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"0808080808080800"
    )
    port map (
      ADR0 => Transmitter_TRON_1192,
      ADR1 => CLKDIV_UP_1193,
      ADR2 => Transmitter_COUNT4(2),
      ADR3 => Transmitter_COUNT4(0),
      ADR4 => Transmitter_COUNT4(1),
      ADR5 => TABORTP_IBUF_0,
      O => Q_n0700_inv
    );
  Q_n04041 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"0800000000000000"
    )
    port map (
      ADR0 => RENABP_IBUF_0,
      ADR1 => RDATAI_7_PWR_5_o_equal_79_o,
      ADR2 => Receiver_PAUSE_END_1196,
      ADR3 => S_RSMATIP_1202,
      ADR4 => S_RCVNGP_1195,
      ADR5 => CLKDIV_UP_1193,
      O => Q_n0404
    );
  CLKDIV8_UP_376 : X_FF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => CLKDIV_UP_1193,
      O => CLKDIV8_UP_OBUF_1259,
      RST => GND,
      SET => GND
    );
  Mcount_Transmitter_COUNT4_val1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"3000AAAA0000AAAA"
    )
    port map (
      ADR0 => TAVAILP_IBUF_0,
      ADR1 => Transmitter_COUNT4(2),
      ADR2 => Transmitter_COUNT4(1),
      ADR3 => Transmitter_COUNT4(0),
      ADR4 => Transmitter_TRON_1192,
      ADR5 => CLKDIV_UP_1193,
      O => Mcount_Transmitter_COUNT4_val
    );
  CLKDIV8 : X_FF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => CLKDIV8_rstpot1_882,
      O => CLKDIV8_1291,
      RST => GND,
      SET => GND
    );
  CLKDIV8_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"0330330003303300"
    )
    port map (
      ADR0 => '1',
      ADR1 => CLKDIV_RST_1225,
      ADR2 => CLKDIV_clk_count(0),
      ADR3 => CLKDIV8_1291,
      ADR4 => CLKDIV_clk_count(1),
      ADR5 => '1',
      O => CLKDIV8_rstpot1_882
    );
  PWR_5_o_CLKDIV8_AND_1_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"00000030"
    )
    port map (
      ADR0 => '1',
      ADR1 => CLKDIV_RST_1225,
      ADR2 => CLKDIV_clk_count(0),
      ADR3 => CLKDIV8_1291,
      ADR4 => CLKDIV_clk_count(1),
      O => PWR_5_o_CLKDIV8_AND_1_o
    );
  CLKDIV_UP : X_FF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => PWR_5_o_CLKDIV8_AND_1_o,
      O => CLKDIV_UP_pack_8,
      RST => GND,
      SET => GND
    );
  TDATAO_7_dpot : X_MUX2
    generic map(
      LOC => "SLICE_X8Y2"
    )
    port map (
      IA => N41,
      IB => N42,
      O => TDATAO_7_dpot_904,
      SEL => Transmitter_TADR_SENT_1150
    );
  TDATAO_7_dpot_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"FFFFF222FFFF0222"
    )
    port map (
      ADR0 => TDATAI_7_IBUF_0,
      ADR1 => Transmitter_DADR_SENT_1144,
      ADR2 => Transmitter_ADRCOUNT(1),
      ADR3 => Transmitter_ADRCOUNT(2),
      ADR4 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR5 => TDATAO_7_1157,
      O => N41
    );
  TDATAO_7 : X_SFF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '1'
    )
    port map (
      CE => N18,
      CLK => CLK10I_BUFGP,
      I => TDATAO_7_dpot_904,
      O => TDATAO_7_1157,
      SSET => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  TDATAO_7_dpot_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"FFFFFFFFFFCCF3C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => Transmitter_DADR_SENT_1144,
      ADR2 => TDATAI_7_IBUF_0,
      ADR3 => TDATAO_7_1157,
      ADR4 => TLASTP_IBUF_0,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => N42
    );
  Mmux_TDATAO_7_PWR_5_o_mux_134_OUT7 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"00000000400C40FC"
    )
    port map (
      ADR0 => TLASTP_IBUF_0,
      ADR1 => TDATAI_6_IBUF_0,
      ADR2 => Transmitter_DADR_SENT_1144,
      ADR3 => Transmitter_TADR_SENT_1150,
      ADR4 => N12,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => TDATAO_7_PWR_5_o_mux_134_OUT_6_Q
    );
  TDATAO_6 : X_SFF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => N18,
      CLK => CLK10I_BUFGP,
      I => TDATAO_6_dpot_899,
      O => TDATAO_6_1276,
      SRST => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  TDATAO_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => TDATAO_6_1276,
      ADR4 => TDATAO_7_PWR_5_o_mux_134_OUT_6_Q,
      ADR5 => Q_n0681_inv_rstpot_1281,
      O => TDATAO_6_dpot_899
    );
  Transmitter_ADRCOUNT_0_Transmitter_ADRCOUNT_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Q_n0571_inv_pack_6,
      O => Q_n0571_inv
    );
  TABORTP_Transmitter_COUNT4_2_AND_7_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"0000FFFF0000FFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => TABORTP_IBUF_0,
      ADR3 => Transmitter_COUNT4(1),
      ADR4 => Transmitter_COUNT4(2),
      ADR5 => Transmitter_COUNT4(0),
      O => TABORTP_Transmitter_COUNT4_2_AND_7_o
    );
  Q_n0681_inv_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"FFFFFFFFCFFF0333"
    )
    port map (
      ADR0 => '1',
      ADR1 => Transmitter_TADR_SENT_1150,
      ADR2 => Transmitter_ADRCOUNT(2),
      ADR3 => Transmitter_ADRCOUNT(1),
      ADR4 => Transmitter_DADR_SENT_1144,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => Q_n0681_inv_rstpot_1281
    );
  Q_n0681_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_TRON_1192,
      ADR4 => CLKDIV_UP_1193,
      ADR5 => '1',
      O => N18
    );
  Q_n0571_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"03000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Transmitter_TADR_SENT_1150,
      ADR2 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR3 => Transmitter_TRON_1192,
      ADR4 => CLKDIV_UP_1193,
      O => Q_n0571_inv_pack_6
    );
  Transmitter_ADRCOUNT_0 : X_SFF
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Transmitter_ADRCOUNT_0_rstpot_941,
      O => Transmitter_ADRCOUNT(0),
      SRST => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Transmitter_ADRCOUNT_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"000F00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Transmitter_ADRCOUNT(1),
      ADR3 => Transmitter_ADRCOUNT(0),
      ADR4 => Transmitter_ADRCOUNT(2),
      ADR5 => Q_n0571_inv,
      O => Transmitter_ADRCOUNT_0_rstpot_941
    );
  Mmux_TDATAO_7_PWR_5_o_mux_134_OUT2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"FFFFFFFFFF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_ADRCOUNT(0),
      ADR4 => Transmitter_ADRCOUNT(2),
      ADR5 => Transmitter_ADRCOUNT(1),
      O => N14
    );
  Mmux_TDATAO_7_PWR_5_o_mux_134_OUT7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"FFFFFF0000FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_ADRCOUNT(0),
      ADR4 => Transmitter_ADRCOUNT(2),
      ADR5 => Transmitter_ADRCOUNT(1),
      O => N12
    );
  Transmitter_ADRCOUNT_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Transmitter_ADRCOUNT_2_glue_rst_957,
      O => Transmitter_ADRCOUNT(2),
      SET => GND,
      RST => GND
    );
  Transmitter_ADRCOUNT_2_glue_rst : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"0FC00540FF005500"
    )
    port map (
      ADR0 => TAVAILP_IBUF_0,
      ADR1 => Transmitter_ADRCOUNT(0),
      ADR2 => Transmitter_ADRCOUNT(1),
      ADR3 => Transmitter_ADRCOUNT(2),
      ADR4 => Transmitter_TRON_1192,
      ADR5 => Q_n0571_inv,
      O => Transmitter_ADRCOUNT_2_glue_rst_957
    );
  Transmitter_ADRCOUNT_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Transmitter_ADRCOUNT_1_glue_rst_965,
      O => Transmitter_ADRCOUNT(1),
      SET => GND,
      RST => GND
    );
  Transmitter_ADRCOUNT_1_glue_rst : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"00D00DD0DD00DD00"
    )
    port map (
      ADR0 => TAVAILP_IBUF_0,
      ADR1 => Transmitter_TRON_1192,
      ADR2 => Transmitter_ADRCOUNT(0),
      ADR3 => Transmitter_ADRCOUNT(1),
      ADR4 => Transmitter_ADRCOUNT(2),
      ADR5 => Q_n0571_inv,
      O => Transmitter_ADRCOUNT_1_glue_rst_965
    );
  TDATAO_0_dpot : X_MUX2
    generic map(
      LOC => "SLICE_X10Y2"
    )
    port map (
      IA => N43,
      IB => N44,
      O => TDATAO_0_dpot_983,
      SEL => Transmitter_TADR_SENT_1150
    );
  TDATAO_0_dpot_F : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"5504040400040404"
    )
    port map (
      ADR0 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR1 => TDATAI_0_IBUF_0,
      ADR2 => Transmitter_DADR_SENT_1144,
      ADR3 => Transmitter_ADRCOUNT(2),
      ADR4 => Transmitter_ADRCOUNT(1),
      ADR5 => TDATAO_0_1154,
      O => N43
    );
  TDATAO_0 : X_SFF
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => '1'
    )
    port map (
      CE => N18,
      CLK => CLK10I_BUFGP,
      I => TDATAO_0_dpot_983,
      O => TDATAO_0_1154,
      SSET => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  TDATAO_0_dpot_G : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"3330333033300300"
    )
    port map (
      ADR0 => '1',
      ADR1 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR2 => Transmitter_DADR_SENT_1144,
      ADR3 => TDATAO_0_1154,
      ADR4 => TDATAI_0_IBUF_0,
      ADR5 => TLASTP_IBUF_0,
      O => N44
    );
  Mmux_TDATAO_7_PWR_5_o_mux_134_OUT2 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"FFFFFFFFFFE6BBA2"
    )
    port map (
      ADR0 => Transmitter_TADR_SENT_1150,
      ADR1 => Transmitter_DADR_SENT_1144,
      ADR2 => TLASTP_IBUF_0,
      ADR3 => TDATAI_1_IBUF_0,
      ADR4 => N14,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => TDATAO_7_PWR_5_o_mux_134_OUT_1_Q
    );
  TDATAO_1 : X_SFF
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => '1'
    )
    port map (
      CE => N18,
      CLK => CLK10I_BUFGP,
      I => TDATAO_1_dpot_978,
      O => TDATAO_1_1268,
      SSET => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  TDATAO_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => TDATAO_1_1268,
      ADR4 => TDATAO_7_PWR_5_o_mux_134_OUT_1_Q,
      ADR5 => Q_n0681_inv_rstpot_1281,
      O => TDATAO_1_dpot_978
    );
  TDATAO_4_dpot : X_MUX2
    generic map(
      LOC => "SLICE_X12Y1"
    )
    port map (
      IA => N45,
      IB => N46,
      O => TDATAO_4_dpot_1004,
      SEL => Transmitter_TADR_SENT_1150
    );
  TDATAO_4_dpot_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"5554555011105550"
    )
    port map (
      ADR0 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR1 => Transmitter_ADRCOUNT(1),
      ADR2 => TDATAI_4_IBUF_0,
      ADR3 => Transmitter_DADR_SENT_1144,
      ADR4 => Transmitter_ADRCOUNT(2),
      ADR5 => TDATAO_4_1158,
      O => N45
    );
  TDATAO_4 : X_SFF
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => '0'
    )
    port map (
      CE => N18,
      CLK => CLK10I_BUFGP,
      I => TDATAO_4_dpot_1004,
      O => TDATAO_4_1158,
      SRST => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  TDATAO_4_dpot_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"0300333003000300"
    )
    port map (
      ADR0 => '1',
      ADR1 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR2 => Transmitter_DADR_SENT_1144,
      ADR3 => TDATAO_4_1158,
      ADR4 => TLASTP_IBUF_0,
      ADR5 => TDATAI_4_IBUF_0,
      O => N46
    );
  Mmux_TDATAO_7_PWR_5_o_mux_134_OUT6 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"FFFFFFFFBBA2FFE6"
    )
    port map (
      ADR0 => Transmitter_TADR_SENT_1150,
      ADR1 => Transmitter_DADR_SENT_1144,
      ADR2 => TLASTP_IBUF_0,
      ADR3 => TDATAI_5_IBUF_0,
      ADR4 => N14,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => TDATAO_7_PWR_5_o_mux_134_OUT_5_Q
    );
  TDATAO_5 : X_SFF
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => '1'
    )
    port map (
      CE => N18,
      CLK => CLK10I_BUFGP,
      I => TDATAO_5_dpot_1030,
      O => TDATAO_5_1275,
      SSET => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  TDATAO_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => TDATAO_5_1275,
      ADR4 => TDATAO_7_PWR_5_o_mux_134_OUT_5_Q,
      ADR5 => Q_n0681_inv_rstpot_1281,
      O => TDATAO_5_dpot_1030
    );
  Q_n04361 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"0000000080000000"
    )
    port map (
      ADR0 => TLASTP_IBUF_0,
      ADR1 => Transmitter_TRON_1192,
      ADR2 => Transmitter_DADR_SENT_1144,
      ADR3 => Transmitter_TADR_SENT_1150,
      ADR4 => CLKDIV_UP_1193,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => Q_n0436
    );
  Transmitter_DADR_SENT : X_SFF
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Transmitter_DADR_SENT_glue_set_1041,
      O => Transmitter_DADR_SENT_1144,
      SRST => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Transmitter_DADR_SENT_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"00080000FF08FF00"
    )
    port map (
      ADR0 => Transmitter_ADRCOUNT(1),
      ADR1 => Transmitter_ADRCOUNT(2),
      ADR2 => Transmitter_TADR_SENT_1150,
      ADR3 => Transmitter_DADR_SENT_1144,
      ADR4 => TREADDP_rstpot,
      ADR5 => Q_n0436,
      O => Transmitter_DADR_SENT_glue_set_1041
    );
  Transmitter_TADR_SENT : X_FF
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK10I_BUFGP,
      I => Transmitter_TADR_SENT_rstpot_1053,
      O => Transmitter_TADR_SENT_1150,
      RST => GND,
      SET => GND
    );
  Transmitter_TADR_SENT_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"00000000FF80FF00"
    )
    port map (
      ADR0 => Transmitter_ADRCOUNT(1),
      ADR1 => Transmitter_ADRCOUNT(2),
      ADR2 => Transmitter_DADR_SENT_1144,
      ADR3 => Transmitter_TADR_SENT_1150,
      ADR4 => TREADDP_rstpot,
      ADR5 => Q_n0436,
      O => Transmitter_TADR_SENT_rstpot_1053
    );
  TDATAO_3_dpot : X_MUX2
    generic map(
      LOC => "SLICE_X14Y2"
    )
    port map (
      IA => N39,
      IB => N40,
      O => TDATAO_3_dpot_1078,
      SEL => Transmitter_TADR_SENT_1150
    );
  TDATAO_3_dpot_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FFFFF222FFFF0222"
    )
    port map (
      ADR0 => TDATAI_3_IBUF_0,
      ADR1 => Transmitter_DADR_SENT_1144,
      ADR2 => Transmitter_ADRCOUNT(1),
      ADR3 => Transmitter_ADRCOUNT(2),
      ADR4 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR5 => TDATAO_3_1146,
      O => N39
    );
  TDATAO_3 : X_SFF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '1'
    )
    port map (
      CE => N18,
      CLK => CLK10I_BUFGP,
      I => TDATAO_3_dpot_1078,
      O => TDATAO_3_1146,
      SSET => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  TDATAO_3_dpot_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FFFFFFFFFFCCF3C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => Transmitter_DADR_SENT_1144,
      ADR2 => TDATAI_3_IBUF_0,
      ADR3 => TDATAO_3_1146,
      ADR4 => TLASTP_IBUF_0,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => N40
    );
  Mmux_TDATAO_7_PWR_5_o_mux_134_OUT3 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"0000000040FC400C"
    )
    port map (
      ADR0 => TLASTP_IBUF_0,
      ADR1 => TDATAI_2_IBUF_0,
      ADR2 => Transmitter_DADR_SENT_1144,
      ADR3 => Transmitter_TADR_SENT_1150,
      ADR4 => N10,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => TDATAO_7_PWR_5_o_mux_134_OUT_2_Q
    );
  TDATAO_2 : X_SFF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => N18,
      CLK => CLK10I_BUFGP,
      I => TDATAO_2_dpot_1073,
      O => TDATAO_2_1271,
      SRST => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  TDATAO_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => TDATAO_2_1271,
      ADR4 => TDATAO_7_PWR_5_o_mux_134_OUT_2_Q,
      ADR5 => Q_n0681_inv_rstpot_1281,
      O => TDATAO_2_dpot_1073
    );
  Mmux_TDATAO_7_PWR_5_o_mux_134_OUT3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"FFFFFFFF00FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_ADRCOUNT(0),
      ADR4 => Transmitter_ADRCOUNT(1),
      ADR5 => Transmitter_ADRCOUNT(2),
      O => N10
    );
  NlwBlock_Core_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_Core_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

