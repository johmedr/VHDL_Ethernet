--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: Core_timesim.vhd
-- /___/   /\     Timestamp: Wed Nov 30 16:58:07 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 2 -pcf Core.pcf -rpw 100 -tpw 0 -ar Structure -tm Core -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Core.ncd Core_timesim.vhd 
-- Device	: 6slx16csg324-2 (PRODUCTION 1.21 2012-01-07)
-- Input file	: Core.ncd
-- Output file	: /home/medrano/Bureau/4AE/VHDL/TP_Ethernet_2/netgen/par/Core_timesim.vhd
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
  signal CLKDIV_UP_1145 : STD_LOGIC; 
  signal TABORTP_IBUF_0 : STD_LOGIC; 
  signal Transmitter_TRON_1150 : STD_LOGIC; 
  signal TAVAILP_IBUF_0 : STD_LOGIC; 
  signal Transmitter_DADR_SENT_1152 : STD_LOGIC; 
  signal TDATAI_3_IBUF_0 : STD_LOGIC; 
  signal TDATAO_3_1154 : STD_LOGIC; 
  signal TLASTP_IBUF_0 : STD_LOGIC; 
  signal TABORTP_Transmitter_COUNT4_2_AND_7_o : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal Transmitter_TADR_SENT_1158 : STD_LOGIC; 
  signal TAVAILP_Transmitter_TRON_AND_6_o : STD_LOGIC; 
  signal TDATAO_0_1162 : STD_LOGIC; 
  signal TDATAI_0_IBUF_0 : STD_LOGIC; 
  signal TDATAI_7_IBUF_0 : STD_LOGIC; 
  signal TDATAO_7_1165 : STD_LOGIC; 
  signal TDATAO_4_1166 : STD_LOGIC; 
  signal TDATAI_4_IBUF_0 : STD_LOGIC; 
  signal RDATAI_3_IBUF_0 : STD_LOGIC; 
  signal Q_n0477_inv1_rstpot2 : STD_LOGIC; 
  signal Q_n03221_1174 : STD_LOGIC; 
  signal Q_n0477_inv1_rstpot1 : STD_LOGIC; 
  signal Q_n0322 : STD_LOGIC; 
  signal RDATAI_4_IBUF_0 : STD_LOGIC; 
  signal RDATAI_5_IBUF_0 : STD_LOGIC; 
  signal RDATAI_6_IBUF_0 : STD_LOGIC; 
  signal RDATAI_7_IBUF_0 : STD_LOGIC; 
  signal TREADDP_rstpot : STD_LOGIC; 
  signal TREADDP_OBUF_1195 : STD_LOGIC; 
  signal Q_n0499_inv : STD_LOGIC; 
  signal Q_n0397 : STD_LOGIC; 
  signal RDATAI_1_IBUF_0 : STD_LOGIC; 
  signal Q_n0477_inv1_rstpot_1201 : STD_LOGIC; 
  signal RDATAI_2_IBUF_0 : STD_LOGIC; 
  signal RDATAI_0_IBUF_0 : STD_LOGIC; 
  signal T_REQUEST_CK_SYNC_1213 : STD_LOGIC; 
  signal R_REQUEST_CK_SYNC_1214 : STD_LOGIC; 
  signal RENABP_IBUF_0 : STD_LOGIC; 
  signal Q_n0466_inv1_1218 : STD_LOGIC; 
  signal S_RCVNGP_1219 : STD_LOGIC; 
  signal S_RSMATIP_1220 : STD_LOGIC; 
  signal Q_n0354_0 : STD_LOGIC; 
  signal RBYTEP_OBUF_1222 : STD_LOGIC; 
  signal Reset_OR_DriverANDClockEnable : STD_LOGIC; 
  signal GND_5_o_CLKDIV8_AND_1_o : STD_LOGIC; 
  signal RECEIVING_1227 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal SENDING_1230 : STD_LOGIC; 
  signal TSOCOLP_OBUF_0 : STD_LOGIC; 
  signal RCLEANP_OBUF_1234 : STD_LOGIC; 
  signal n0079 : STD_LOGIC; 
  signal Transmitter_TRON_glue_set_1237 : STD_LOGIC; 
  signal n0079_47_wg_cy_3_Q_1249 : STD_LOGIC; 
  signal TDATAI_5_IBUF_0 : STD_LOGIC; 
  signal TDATAI_6_IBUF_0 : STD_LOGIC; 
  signal CLKDIV8_UP_OBUF_1261 : STD_LOGIC; 
  signal RDATAO_0_1262 : STD_LOGIC; 
  signal RDATAO_1_1263 : STD_LOGIC; 
  signal RDATAO_2_1264 : STD_LOGIC; 
  signal RDATAO_3_1265 : STD_LOGIC; 
  signal RDATAO_4_1266 : STD_LOGIC; 
  signal Receiver_RCOUNT_1_1_1267 : STD_LOGIC; 
  signal Receiver_RCOUNT_1_glue_rst_1268 : STD_LOGIC; 
  signal TDATAO_1_1269 : STD_LOGIC; 
  signal RDATAO_5_1270 : STD_LOGIC; 
  signal Receiver_RCOUNT_2_1_1271 : STD_LOGIC; 
  signal Receiver_RCOUNT_2_glue_rst_1272 : STD_LOGIC; 
  signal TDATAO_2_1273 : STD_LOGIC; 
  signal Receiver_RCOUNT_0_dpot_1274 : STD_LOGIC; 
  signal Q_n03401 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal RDATAO_6_1277 : STD_LOGIC; 
  signal Q_n0477_inv : STD_LOGIC; 
  signal RDATAO_7_1279 : STD_LOGIC; 
  signal RDONEP_OBUF_1280 : STD_LOGIC; 
  signal TDATAO_5_1281 : STD_LOGIC; 
  signal Q_n0466_inv : STD_LOGIC; 
  signal TDATAO_6_1283 : STD_LOGIC; 
  signal Mcount_Transmitter_COUNT4_val11 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal Q_n0583_inv_rstpot_1286 : STD_LOGIC; 
  signal TDATAI_1_IBUF_0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal TDATAI_2_IBUF_0 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal TDATAO_7_PWR_5_o_mux_129_OUT_5_Q : STD_LOGIC; 
  signal TDATAO_7_PWR_5_o_mux_129_OUT_1_Q : STD_LOGIC; 
  signal TDATAO_7_PWR_5_o_mux_129_OUT_2_Q : STD_LOGIC; 
  signal TDATAO_7_PWR_5_o_mux_129_OUT_6_Q : STD_LOGIC; 
  signal PWR_5_o_CLKDIV_clk_count_2_equal_4_o : STD_LOGIC; 
  signal CLKDIV_UP_1_1296 : STD_LOGIC; 
  signal CLKDIV8_1297 : STD_LOGIC; 
  signal Reset_OR_DriverANDClockEnable1 : STD_LOGIC; 
  signal n0079_47_wg_lut_0_Q_29 : STD_LOGIC; 
  signal n0079_47_wg_lut_1_Q_21 : STD_LOGIC; 
  signal n0079_47_wg_lut_2_Q_13 : STD_LOGIC; 
  signal ProtoComp26_CYINITVCC_1 : STD_LOGIC; 
  signal n0079_47_wg_lut_3_Q_3 : STD_LOGIC; 
  signal n0079_47_wg_lut_4_Q_63 : STD_LOGIC; 
  signal n0079_47_wg_lut_5_Q_55 : STD_LOGIC; 
  signal n0079_47_wg_lut_6_Q_47 : STD_LOGIC; 
  signal n0079_47_wg_lut_7_Q_37 : STD_LOGIC; 
  signal S_RSMATIP_glue_set_lut_78 : STD_LOGIC; 
  signal S_RSMATIP_glue_set_lut1 : STD_LOGIC; 
  signal S_RSMATIP_glue_set : STD_LOGIC; 
  signal TDATAI_5_IBUF_87 : STD_LOGIC; 
  signal TDATAI_6_IBUF_90 : STD_LOGIC; 
  signal TDATAI_7_IBUF_93 : STD_LOGIC; 
  signal TABORTP_IBUF_102 : STD_LOGIC; 
  signal TLASTP_IBUF_141 : STD_LOGIC; 
  signal RENABP_IBUF_152 : STD_LOGIC; 
  signal TAVAILP_IBUF_155 : STD_LOGIC; 
  signal CLK10I_BUFGP_IBUFG_158 : STD_LOGIC; 
  signal RDATAI_0_IBUF_161 : STD_LOGIC; 
  signal RDATAI_1_IBUF_164 : STD_LOGIC; 
  signal RDATAI_2_IBUF_167 : STD_LOGIC; 
  signal RDATAI_3_IBUF_174 : STD_LOGIC; 
  signal TDATAI_0_IBUF_177 : STD_LOGIC; 
  signal RDATAI_4_IBUF_180 : STD_LOGIC; 
  signal TDATAI_1_IBUF_183 : STD_LOGIC; 
  signal RDATAI_5_IBUF_186 : STD_LOGIC; 
  signal TDATAI_2_IBUF_189 : STD_LOGIC; 
  signal RDATAI_6_IBUF_192 : STD_LOGIC; 
  signal TDATAI_3_IBUF_195 : STD_LOGIC; 
  signal RDATAI_7_IBUF_198 : STD_LOGIC; 
  signal TDATAI_4_IBUF_201 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_47_dpot_207 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_16_dpot_248 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_17_dpot_232 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_15_dpot_223 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal TDATAO_4_dpot_272 : STD_LOGIC; 
  signal TDATAO_5_dpot_267 : STD_LOGIC; 
  signal TDATAO_1_dpot_312 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal TDATAO_0_dpot_286 : STD_LOGIC; 
  signal TDATAO_2_dpot_343 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal TDATAO_3_dpot_317 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal TDATAO_7_dpot_355 : STD_LOGIC; 
  signal TDATAO_6_dpot_350 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_30_dpot_390 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_31_dpot_382 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_7_dpot_425 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_8_dpot_417 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_9_dpot_409 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_10_dpot_399 : STD_LOGIC; 
  signal CLKDIV_clk_count_2_GND_5_o_add_2_OUT_1_Q : STD_LOGIC; 
  signal CLKDIV_clk_count_2_GND_5_o_add_2_OUT_0_Q : STD_LOGIC; 
  signal CLKDIV_clk_count_1_pack_5 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal Transmitter_ADRCOUNT_1_glue_rst_487 : STD_LOGIC; 
  signal Transmitter_ADRCOUNT_2_glue_rst_479 : STD_LOGIC; 
  signal Transmitter_TADR_SENT_rstpot_470 : STD_LOGIC; 
  signal Transmitter_DADR_SENT_glue_set_497 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_18_dpot_532 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_19_dpot_524 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_20_dpot_516 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_21_dpot_506 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_3_dpot_573 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_4_dpot_565 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_5_dpot_557 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_6_dpot_541 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_32_dpot_599 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_33_dpot_591 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_34_dpot_575 : STD_LOGIC; 
  signal CLKDIV8_pack_1 : STD_LOGIC; 
  signal CLKDIV8_rstpot1_610 : STD_LOGIC; 
  signal Transmitter_ADRCOUNT_0_rstpot_626 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_38_dpot_658 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_35_dpot_649 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_36_dpot_641 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_37_dpot_633 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_39_dpot_694 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_40_dpot_686 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_41_dpot_678 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_42_dpot_668 : STD_LOGIC; 
  signal S_RCVNGP_rstpot_721 : STD_LOGIC; 
  signal Receiver_RCOUNT_0_rstpot_737 : STD_LOGIC; 
  signal Transmitter_TRON_rstpot_754 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_44_dpot_799 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_45_dpot_791 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_46_dpot_781 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_43_dpot_772 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_11_dpot_830 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_12_dpot_822 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_13_dpot_814 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_14_dpot_804 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_1_dpot_868 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_2_dpot_858 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_0_dpot_849 : STD_LOGIC; 
  signal Transmitter_COUNT4_2_pack_8 : STD_LOGIC; 
  signal Transmitter_COUNT4_2_glue_rst_878 : STD_LOGIC; 
  signal RCLEANP_rstpot1_924 : STD_LOGIC; 
  signal R_REQUEST_CK_SYNC_pack_3 : STD_LOGIC; 
  signal R_REQUEST_CK_SYNC_rstpot_916 : STD_LOGIC; 
  signal Transmitter_COUNT4_1_rstpot1_953 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal Transmitter_COUNT4_0_glue_rst_932 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_26_dpot_988 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_27_dpot_980 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_28_dpot_972 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_29_dpot_962 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_22_dpot_1023 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_23_dpot_1015 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_24_dpot_1007 : STD_LOGIC; 
  signal Receiver_ADDRESS_BUFFER_25_dpot_997 : STD_LOGIC; 
  signal RECEIVING_pack_1 : STD_LOGIC; 
  signal RECEIVING_glue_set_1033 : STD_LOGIC; 
  signal Q_n0354 : STD_LOGIC; 
  signal GND_5_o_GND_5_o_MUX_140_o : STD_LOGIC; 
  signal TSOCOLP_OBUF_1088 : STD_LOGIC; 
  signal TSOCOLP_rstpot_1087 : STD_LOGIC; 
  signal NlwBufferSignal_CLK10I_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_S_RSMATIP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_TSOCOLP_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RSMATIP_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CLKDIV8_UP_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RBYTEP_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RCLEANP_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TRNSMTP_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TREADDP_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TSTARTP_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RCVNGP_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RDONEP_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_47_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CLKDIV8_UP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CLKDIV8_UP_IN : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_TDATAO_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CLKDIV_clk_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CLKDIV_clk_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_T_REQUEST_CK_SYNC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CLKDIV_UP_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CLKDIV_UP_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_TADR_SENT_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_ADRCOUNT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_ADRCOUNT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_DADR_SENT_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_34_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_33_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_32_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CLKDIV_UP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CLKDIV8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_ADRCOUNT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_38_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_37_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_36_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_35_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_42_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_41_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_40_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_39_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_RCOUNT_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_S_RCVNGP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_RCOUNT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_RCOUNT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_RCOUNT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_RCOUNT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_TRON_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_RCOUNT_2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_RCOUNT_2_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_46_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_45_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_44_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_43_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_COUNT4_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_TREADDP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_REQUEST_CK_SYNC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RCLEANP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_COUNT4_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_COUNT4_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_ADDRESS_BUFFER_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RECEIVING_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RDONEP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RBYTEP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RDATAO_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_SENDING_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SENDING_IN : STD_LOGIC; 
  signal NlwBufferSignal_TSOCOLP_CLK : STD_LOGIC; 
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
  signal NLW_S_RSMATIP_glue_set_cy1_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_S_RSMATIP_glue_set_cy1_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_S_RSMATIP_glue_set_cy1_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_S_RSMATIP_glue_set_cy1_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_S_RSMATIP_glue_set_cy1_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_S_RSMATIP_glue_set_cy1_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_S_RSMATIP_glue_set_cy1_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_S_RSMATIP_glue_set_cy1_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_S_RSMATIP_glue_set_cy1_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_S_RSMATIP_glue_set_cy1_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_S_RSMATIP_glue_set_cy1_S_3_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_TDONEP_OBUF_1_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_CLKDIV_clk_count_2_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal Transmitter_COUNT4 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Transmitter_ADRCOUNT : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Receiver_RCOUNT : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Receiver_ADDRESS_BUFFER : STD_LOGIC_VECTOR ( 47 downto 0 ); 
  signal CLKDIV_clk_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  CLK10I_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 240 ps
    )
    port map (
      I => NlwBufferSignal_CLK10I_BUFGP_BUFG_IN,
      O => CLK10I_BUFGP
    );
  n0079_47_wg_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"0000000200000000"
    )
    port map (
      ADR1 => Receiver_ADDRESS_BUFFER(21),
      ADR5 => Receiver_ADDRESS_BUFFER(25),
      ADR0 => Receiver_ADDRESS_BUFFER(44),
      ADR4 => Receiver_ADDRESS_BUFFER(23),
      ADR3 => Receiver_ADDRESS_BUFFER(22),
      ADR2 => Receiver_ADDRESS_BUFFER(18),
      O => n0079_47_wg_lut_3_Q_3
    );
  ProtoComp26_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X4Y2"
    )
    port map (
      O => ProtoComp26_CYINITVCC_1
    );
  n0079_47_wg_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y2"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp26_CYINITVCC_1,
      CO(3) => n0079_47_wg_cy_3_Q_1249,
      CO(2) => NLW_n0079_47_wg_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_n0079_47_wg_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_n0079_47_wg_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
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
      LOC => "SLICE_X4Y2",
      INIT => X"0000000000000040"
    )
    port map (
      ADR3 => Receiver_ADDRESS_BUFFER(27),
      ADR2 => Receiver_ADDRESS_BUFFER(26),
      ADR1 => Receiver_ADDRESS_BUFFER(28),
      ADR5 => Receiver_ADDRESS_BUFFER(29),
      ADR4 => Receiver_ADDRESS_BUFFER(24),
      ADR0 => Receiver_ADDRESS_BUFFER(43),
      O => n0079_47_wg_lut_2_Q_13
    );
  n0079_47_wg_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"0000000200000000"
    )
    port map (
      ADR2 => Receiver_ADDRESS_BUFFER(35),
      ADR0 => Receiver_ADDRESS_BUFFER(34),
      ADR5 => Receiver_ADDRESS_BUFFER(30),
      ADR1 => Receiver_ADDRESS_BUFFER(32),
      ADR3 => Receiver_ADDRESS_BUFFER(39),
      ADR4 => Receiver_ADDRESS_BUFFER(31),
      O => n0079_47_wg_lut_1_Q_21
    );
  n0079_47_wg_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"0000000000400000"
    )
    port map (
      ADR5 => Receiver_ADDRESS_BUFFER(40),
      ADR1 => Receiver_ADDRESS_BUFFER(36),
      ADR3 => Receiver_ADDRESS_BUFFER(38),
      ADR4 => Receiver_ADDRESS_BUFFER(37),
      ADR2 => Receiver_ADDRESS_BUFFER(41),
      ADR0 => Receiver_ADDRESS_BUFFER(33),
      O => n0079_47_wg_lut_0_Q_29
    );
  n0079_47_wg_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"0000000000000080"
    )
    port map (
      ADR4 => Receiver_ADDRESS_BUFFER(5),
      ADR1 => Receiver_ADDRESS_BUFFER(1),
      ADR3 => Receiver_ADDRESS_BUFFER(0),
      ADR2 => Receiver_ADDRESS_BUFFER(2),
      ADR0 => Receiver_ADDRESS_BUFFER(4),
      ADR5 => Receiver_ADDRESS_BUFFER(45),
      O => n0079_47_wg_lut_7_Q_37
    );
  n0079_47_wg_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y3"
    )
    port map (
      CI => n0079_47_wg_cy_3_Q_1249,
      CYINIT => '0',
      CO(3) => n0079,
      CO(2) => NLW_n0079_47_wg_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_n0079_47_wg_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_n0079_47_wg_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
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
      LOC => "SLICE_X4Y3",
      INIT => X"0000000000000040"
    )
    port map (
      ADR3 => Receiver_ADDRESS_BUFFER(8),
      ADR2 => Receiver_ADDRESS_BUFFER(6),
      ADR1 => Receiver_ADDRESS_BUFFER(10),
      ADR4 => Receiver_ADDRESS_BUFFER(7),
      ADR5 => Receiver_ADDRESS_BUFFER(47),
      ADR0 => Receiver_ADDRESS_BUFFER(3),
      O => n0079_47_wg_lut_6_Q_47
    );
  n0079_47_wg_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"0000000000000200"
    )
    port map (
      ADR1 => Receiver_ADDRESS_BUFFER(14),
      ADR3 => Receiver_ADDRESS_BUFFER(12),
      ADR0 => Receiver_ADDRESS_BUFFER(13),
      ADR5 => Receiver_ADDRESS_BUFFER(9),
      ADR2 => Receiver_ADDRESS_BUFFER(46),
      ADR4 => Receiver_ADDRESS_BUFFER(11),
      O => n0079_47_wg_lut_5_Q_55
    );
  n0079_47_wg_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"0000000000000020"
    )
    port map (
      ADR1 => Receiver_ADDRESS_BUFFER(19),
      ADR2 => Receiver_ADDRESS_BUFFER(17),
      ADR0 => Receiver_ADDRESS_BUFFER(20),
      ADR5 => Receiver_ADDRESS_BUFFER(15),
      ADR3 => Receiver_ADDRESS_BUFFER(42),
      ADR4 => Receiver_ADDRESS_BUFFER(16),
      O => n0079_47_wg_lut_4_Q_63
    );
  S_RSMATIP_glue_set_cy1 : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y4"
    )
    port map (
      CI => n0079,
      CYINIT => '0',
      CO(3) => NLW_S_RSMATIP_glue_set_cy1_CO_3_UNCONNECTED,
      CO(2) => NLW_S_RSMATIP_glue_set_cy1_CO_2_UNCONNECTED,
      CO(1) => S_RSMATIP_glue_set,
      CO(0) => NLW_S_RSMATIP_glue_set_cy1_CO_0_UNCONNECTED,
      DI(3) => NLW_S_RSMATIP_glue_set_cy1_DI_3_UNCONNECTED,
      DI(2) => NLW_S_RSMATIP_glue_set_cy1_DI_2_UNCONNECTED,
      DI(1) => '1',
      DI(0) => '0',
      O(3) => NLW_S_RSMATIP_glue_set_cy1_O_3_UNCONNECTED,
      O(2) => NLW_S_RSMATIP_glue_set_cy1_O_2_UNCONNECTED,
      O(1) => NLW_S_RSMATIP_glue_set_cy1_O_1_UNCONNECTED,
      O(0) => NLW_S_RSMATIP_glue_set_cy1_O_0_UNCONNECTED,
      S(3) => NLW_S_RSMATIP_glue_set_cy1_S_3_UNCONNECTED,
      S(2) => NLW_S_RSMATIP_glue_set_cy1_S_2_UNCONNECTED,
      S(1) => S_RSMATIP_glue_set_lut1,
      S(0) => S_RSMATIP_glue_set_lut_78
    );
  S_RSMATIP : X_SFF
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_S_RSMATIP_CLK,
      I => S_RSMATIP_glue_set,
      O => S_RSMATIP_1220,
      SRST => Q_n0354_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  S_RSMATIP_glue_set_lut1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => S_RSMATIP_1220,
      ADR3 => '1',
      ADR5 => '1',
      O => S_RSMATIP_glue_set_lut1
    );
  TDONEP_OBUF_1_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_TDONEP_OBUF_1_3_B5LUT_O_UNCONNECTED
    );
  S_RSMATIP_glue_set_lut : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"8000800080008000"
    )
    port map (
      ADR4 => '1',
      ADR0 => RENABP_IBUF_0,
      ADR2 => S_RCVNGP_1219,
      ADR1 => Receiver_RCOUNT(1),
      ADR3 => Receiver_RCOUNT(2),
      ADR5 => '1',
      O => S_RSMATIP_glue_set_lut_78
    );
  CLKDIV_clk_count_2_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_CLKDIV_clk_count_2_9_A5LUT_O_UNCONNECTED
    );
  TDATAI_5_IBUF : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_5_IBUF_87,
      I => TDATAI(5)
    );
  ProtoComp29_IMUX : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_5_IBUF_87,
      O => TDATAI_5_IBUF_0
    );
  TDATAI_6_IBUF : X_BUF
    generic map(
      LOC => "PAD204",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_6_IBUF_90,
      I => TDATAI(6)
    );
  ProtoComp29_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD204",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_6_IBUF_90,
      O => TDATAI_6_IBUF_0
    );
  TDATAI_7_IBUF : X_BUF
    generic map(
      LOC => "PAD205",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_7_IBUF_93,
      I => TDATAI(7)
    );
  ProtoComp29_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD205",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_7_IBUF_93,
      O => TDATAI_7_IBUF_0
    );
  TSOCOLP_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_TSOCOLP_OBUF_I,
      O => TSOCOLP
    );
  RSMATIP_OBUF : X_OBUF
    generic map(
      LOC => "PAD178"
    )
    port map (
      I => NlwBufferSignal_RSMATIP_OBUF_I,
      O => RSMATIP
    );
  CLKDIV8_UP_OBUF : X_OBUF
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => NlwBufferSignal_CLKDIV8_UP_OBUF_I,
      O => CLKDIV8_UP
    );
  TABORTP_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 240 ps
    )
    port map (
      O => TABORTP_IBUF_102,
      I => TABORTP
    );
  ProtoComp29_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 240 ps
    )
    port map (
      I => TABORTP_IBUF_102,
      O => TABORTP_IBUF_0
    );
  RBYTEP_OBUF : X_OBUF
    generic map(
      LOC => "PAD174"
    )
    port map (
      I => NlwBufferSignal_RBYTEP_OBUF_I,
      O => RBYTEP
    );
  RDATAO_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_RDATAO_0_OBUF_I,
      O => RDATAO(0)
    );
  RDATAO_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => NlwBufferSignal_RDATAO_1_OBUF_I,
      O => RDATAO(1)
    );
  RDATAO_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => NlwBufferSignal_RDATAO_2_OBUF_I,
      O => RDATAO(2)
    );
  RDATAO_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => NlwBufferSignal_RDATAO_3_OBUF_I,
      O => RDATAO(3)
    );
  TDATAO_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_TDATAO_0_OBUF_I,
      O => TDATAO(0)
    );
  RDATAO_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD168"
    )
    port map (
      I => NlwBufferSignal_RDATAO_4_OBUF_I,
      O => RDATAO(4)
    );
  TDATAO_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD191"
    )
    port map (
      I => NlwBufferSignal_TDATAO_1_OBUF_I,
      O => TDATAO(1)
    );
  RDATAO_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => NlwBufferSignal_RDATAO_5_OBUF_I,
      O => RDATAO(5)
    );
  TDATAO_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => NlwBufferSignal_TDATAO_2_OBUF_I,
      O => TDATAO(2)
    );
  RCLEANP_OBUF : X_OBUF
    generic map(
      LOC => "PAD172"
    )
    port map (
      I => NlwBufferSignal_RCLEANP_OBUF_I,
      O => RCLEANP
    );
  RDATAO_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD170"
    )
    port map (
      I => NlwBufferSignal_RDATAO_6_OBUF_I,
      O => RDATAO(6)
    );
  TDATAO_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD193"
    )
    port map (
      I => NlwBufferSignal_TDATAO_3_OBUF_I,
      O => TDATAO(3)
    );
  RDATAO_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => NlwBufferSignal_RDATAO_7_OBUF_I,
      O => RDATAO(7)
    );
  TDATAO_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD194"
    )
    port map (
      I => NlwBufferSignal_TDATAO_4_OBUF_I,
      O => TDATAO(4)
    );
  TDATAO_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD195"
    )
    port map (
      I => NlwBufferSignal_TDATAO_5_OBUF_I,
      O => TDATAO(5)
    );
  TDATAO_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD199"
    )
    port map (
      I => NlwBufferSignal_TDATAO_6_OBUF_I,
      O => TDATAO(6)
    );
  TDATAO_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => NlwBufferSignal_TDATAO_7_OBUF_I,
      O => TDATAO(7)
    );
  TLASTP_IBUF : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 240 ps
    )
    port map (
      O => TLASTP_IBUF_141,
      I => TLASTP
    );
  ProtoComp29_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 240 ps
    )
    port map (
      I => TLASTP_IBUF_141,
      O => TLASTP_IBUF_0
    );
  TRNSMTP_OBUF : X_OBUF
    generic map(
      LOC => "PAD176"
    )
    port map (
      I => NlwBufferSignal_TRNSMTP_OBUF_I,
      O => TRNSMTP
    );
  TREADDP_OBUF : X_OBUF
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => NlwBufferSignal_TREADDP_OBUF_I,
      O => TREADDP
    );
  TSTARTP_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_TSTARTP_OBUF_I,
      O => TSTARTP
    );
  RCVNGP_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => NlwBufferSignal_RCVNGP_OBUF_I,
      O => RCVNGP
    );
  RENABP_IBUF : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 240 ps
    )
    port map (
      O => RENABP_IBUF_152,
      I => RENABP
    );
  ProtoComp29_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 240 ps
    )
    port map (
      I => RENABP_IBUF_152,
      O => RENABP_IBUF_0
    );
  TAVAILP_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 240 ps
    )
    port map (
      O => TAVAILP_IBUF_155,
      I => TAVAILP
    );
  ProtoComp29_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 240 ps
    )
    port map (
      I => TAVAILP_IBUF_155,
      O => TAVAILP_IBUF_0
    );
  CLK10I_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 240 ps
    )
    port map (
      O => CLK10I_BUFGP_IBUFG_158,
      I => CLK10I
    );
  ProtoComp29_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP_IBUFG_158,
      O => CLK10I_BUFGP_IBUFG_0
    );
  RDATAI_0_IBUF : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_0_IBUF_161,
      I => RDATAI(0)
    );
  ProtoComp29_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_0_IBUF_161,
      O => RDATAI_0_IBUF_0
    );
  RDATAI_1_IBUF : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_1_IBUF_164,
      I => RDATAI(1)
    );
  ProtoComp29_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_1_IBUF_164,
      O => RDATAI_1_IBUF_0
    );
  RDATAI_2_IBUF : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_2_IBUF_167,
      I => RDATAI(2)
    );
  ProtoComp29_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_2_IBUF_167,
      O => RDATAI_2_IBUF_0
    );
  TDONEP_OBUF : X_OBUF
    generic map(
      LOC => "PAD177"
    )
    port map (
      I => '1',
      O => TDONEP
    );
  RDONEP_OBUF : X_OBUF
    generic map(
      LOC => "PAD175"
    )
    port map (
      I => NlwBufferSignal_RDONEP_OBUF_I,
      O => RDONEP
    );
  RDATAI_3_IBUF : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_3_IBUF_174,
      I => RDATAI(3)
    );
  ProtoComp29_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_3_IBUF_174,
      O => RDATAI_3_IBUF_0
    );
  TDATAI_0_IBUF : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_0_IBUF_177,
      I => TDATAI(0)
    );
  ProtoComp29_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_0_IBUF_177,
      O => TDATAI_0_IBUF_0
    );
  RDATAI_4_IBUF : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_4_IBUF_180,
      I => RDATAI(4)
    );
  ProtoComp29_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_4_IBUF_180,
      O => RDATAI_4_IBUF_0
    );
  TDATAI_1_IBUF : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_1_IBUF_183,
      I => TDATAI(1)
    );
  ProtoComp29_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_1_IBUF_183,
      O => TDATAI_1_IBUF_0
    );
  RDATAI_5_IBUF : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_5_IBUF_186,
      I => RDATAI(5)
    );
  ProtoComp29_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_5_IBUF_186,
      O => RDATAI_5_IBUF_0
    );
  TDATAI_2_IBUF : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_2_IBUF_189,
      I => TDATAI(2)
    );
  ProtoComp29_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_2_IBUF_189,
      O => TDATAI_2_IBUF_0
    );
  RDATAI_6_IBUF : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_6_IBUF_192,
      I => RDATAI(6)
    );
  ProtoComp29_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_6_IBUF_192,
      O => RDATAI_6_IBUF_0
    );
  TDATAI_3_IBUF : X_BUF
    generic map(
      LOC => "PAD201",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_3_IBUF_195,
      I => TDATAI(3)
    );
  ProtoComp29_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD201",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_3_IBUF_195,
      O => TDATAI_3_IBUF_0
    );
  RDATAI_7_IBUF : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 240 ps
    )
    port map (
      O => RDATAI_7_IBUF_198,
      I => RDATAI(7)
    );
  ProtoComp29_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_7_IBUF_198,
      O => RDATAI_7_IBUF_0
    );
  TDATAI_4_IBUF : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 240 ps
    )
    port map (
      O => TDATAI_4_IBUF_201,
      I => TDATAI(4)
    );
  ProtoComp29_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAI_4_IBUF_201,
      O => TDATAI_4_IBUF_0
    );
  Receiver_ADDRESS_BUFFER_47 : X_SFF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_47_CLK,
      I => Receiver_ADDRESS_BUFFER_47_dpot_207,
      O => Receiver_ADDRESS_BUFFER(47),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_47_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => X"AAAAAAACAAAAAAAA"
    )
    port map (
      ADR1 => RDATAI_7_IBUF_0,
      ADR3 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR0 => Receiver_ADDRESS_BUFFER(47),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_47_dpot_207
    );
  CLKDIV8_UP_192 : X_FF
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CLKDIV8_UP_CLK,
      I => NlwBufferSignal_CLKDIV8_UP_IN,
      O => CLKDIV8_UP_OBUF_1261,
      RST => GND,
      SET => GND
    );
  Receiver_ADDRESS_BUFFER_17 : X_SFF
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_17_CLK,
      I => Receiver_ADDRESS_BUFFER_17_dpot_232,
      O => Receiver_ADDRESS_BUFFER(17),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_17_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"EFFFFFFF40000000"
    )
    port map (
      ADR1 => RDATAI_1_IBUF_0,
      ADR3 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(17),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_17_dpot_232
    );
  Q_n0477_inv1_rstpot_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"000A00AA00000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => RENABP_IBUF_0,
      ADR2 => Receiver_RCOUNT_2_1_1271,
      ADR4 => Receiver_RCOUNT_1_1_1267,
      ADR3 => S_RSMATIP_1220,
      ADR5 => S_RCVNGP_1219,
      O => Q_n0477_inv1_rstpot1
    );
  Receiver_ADDRESS_BUFFER_16 : X_SFF
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_16_CLK,
      I => Receiver_ADDRESS_BUFFER_16_dpot_248,
      O => Receiver_ADDRESS_BUFFER(16),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_16_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"AACAAAAAAAAAAAAA"
    )
    port map (
      ADR1 => RDATAI_0_IBUF_0,
      ADR5 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR0 => Receiver_ADDRESS_BUFFER(16),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_16_dpot_248
    );
  Receiver_ADDRESS_BUFFER_15 : X_SFF
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_15_CLK,
      I => Receiver_ADDRESS_BUFFER_15_dpot_223,
      O => Receiver_ADDRESS_BUFFER(15),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"FEFFFFFF02000000"
    )
    port map (
      ADR0 => RDATAI_7_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(15),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_15_dpot_223
    );
  Q_n0340_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"FFFF00FFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => S_RSMATIP_1220,
      ADR3 => Receiver_RCOUNT(2),
      ADR5 => Receiver_RCOUNT(1),
      O => N14
    );
  TDATAO_4_dpot : X_MUX2
    generic map(
      LOC => "SLICE_X2Y6"
    )
    port map (
      IA => N24,
      IB => N25,
      O => TDATAO_4_dpot_272,
      SEL => Transmitter_TADR_SENT_1158
    );
  TDATAO_4_dpot_F : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"00000000F5FFE4CC"
    )
    port map (
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR3 => Transmitter_ADRCOUNT(1),
      ADR1 => TDATAI_4_IBUF_0,
      ADR4 => Transmitter_DADR_SENT_1152,
      ADR0 => Transmitter_ADRCOUNT(2),
      ADR2 => TDATAO_4_1166,
      O => N24
    );
  TDATAO_4 : X_SFF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => N2_0,
      CLK => NlwBufferSignal_TDATAO_4_CLK,
      I => TDATAO_4_dpot_272,
      O => TDATAO_4_1166,
      SRST => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  TDATAO_4_dpot_G : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"000000000CFF0C00"
    )
    port map (
      ADR0 => '1',
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR3 => Transmitter_DADR_SENT_1152,
      ADR4 => TDATAO_4_1166,
      ADR2 => TLASTP_IBUF_0,
      ADR1 => TDATAI_4_IBUF_0,
      O => N25
    );
  Mmux_TDATAO_7_PWR_5_o_mux_129_OUT6 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"FFFFFFFFE0FAEFFA"
    )
    port map (
      ADR2 => Transmitter_TADR_SENT_1158,
      ADR3 => Transmitter_DADR_SENT_1152,
      ADR1 => TLASTP_IBUF_0,
      ADR0 => TDATAI_5_IBUF_0,
      ADR4 => N10,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => TDATAO_7_PWR_5_o_mux_129_OUT_5_Q
    );
  TDATAO_5 : X_SFF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '1'
    )
    port map (
      CE => N2_0,
      CLK => NlwBufferSignal_TDATAO_5_CLK,
      I => TDATAO_5_dpot_267,
      O => TDATAO_5_1281,
      SSET => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  TDATAO_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => TDATAO_5_1281,
      ADR4 => TDATAO_7_PWR_5_o_mux_129_OUT_5_Q,
      ADR5 => Q_n0583_inv_rstpot_1286,
      O => TDATAO_5_dpot_267
    );
  TDATAO_0_dpot : X_MUX2
    generic map(
      LOC => "SLICE_X2Y8"
    )
    port map (
      IA => N22,
      IB => N23,
      O => TDATAO_0_dpot_286,
      SEL => Transmitter_TADR_SENT_1158
    );
  TDATAO_0_dpot_F : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"0000C0000000CAAA"
    )
    port map (
      ADR4 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR0 => TDATAI_0_IBUF_0,
      ADR5 => Transmitter_DADR_SENT_1152,
      ADR2 => Transmitter_ADRCOUNT(2),
      ADR3 => Transmitter_ADRCOUNT(1),
      ADR1 => TDATAO_0_1162,
      O => N22
    );
  TDATAO_0 : X_SFF
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '1'
    )
    port map (
      CE => N2_0,
      CLK => NlwBufferSignal_TDATAO_0_CLK,
      I => TDATAO_0_dpot_286,
      O => TDATAO_0_1162,
      SSET => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  TDATAO_0_dpot_G : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"00000000FAFFFA00"
    )
    port map (
      ADR1 => '1',
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR3 => Transmitter_DADR_SENT_1152,
      ADR4 => TDATAO_0_1162,
      ADR2 => TDATAI_0_IBUF_0,
      ADR0 => TLASTP_IBUF_0,
      O => N23
    );
  Mmux_TDATAO_7_PWR_5_o_mux_129_OUT2 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"FFFAFFCCFFFFFFAA"
    )
    port map (
      ADR4 => Transmitter_TADR_SENT_1158,
      ADR5 => Transmitter_DADR_SENT_1152,
      ADR2 => TLASTP_IBUF_0,
      ADR0 => TDATAI_1_IBUF_0,
      ADR1 => N10,
      ADR3 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => TDATAO_7_PWR_5_o_mux_129_OUT_1_Q
    );
  TDATAO_1 : X_SFF
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '1'
    )
    port map (
      CE => N2_0,
      CLK => NlwBufferSignal_TDATAO_1_CLK,
      I => TDATAO_1_dpot_312,
      O => TDATAO_1_1269,
      SSET => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  TDATAO_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => TDATAO_1_1269,
      ADR4 => TDATAO_7_PWR_5_o_mux_129_OUT_1_Q,
      ADR5 => Q_n0583_inv_rstpot_1286,
      O => TDATAO_1_dpot_312
    );
  TDATAO_3_dpot : X_MUX2
    generic map(
      LOC => "SLICE_X2Y9"
    )
    port map (
      IA => N18,
      IB => N19,
      O => TDATAO_3_dpot_317,
      SEL => Transmitter_TADR_SENT_1158
    );
  TDATAO_3_dpot_F : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"FFC0FF00FFE2FFAA"
    )
    port map (
      ADR0 => TDATAI_3_IBUF_0,
      ADR5 => Transmitter_DADR_SENT_1152,
      ADR1 => Transmitter_ADRCOUNT(1),
      ADR4 => Transmitter_ADRCOUNT(2),
      ADR3 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR2 => TDATAO_3_1154,
      O => N18
    );
  TDATAO_3 : X_SFF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '1'
    )
    port map (
      CE => N2_0,
      CLK => NlwBufferSignal_TDATAO_3_CLK,
      I => TDATAO_3_dpot_317,
      O => TDATAO_3_1154,
      SSET => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  TDATAO_3_dpot_G : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"FFFFFFFFEFEFE0E0"
    )
    port map (
      ADR3 => '1',
      ADR2 => Transmitter_DADR_SENT_1152,
      ADR1 => TDATAI_3_IBUF_0,
      ADR4 => TDATAO_3_1154,
      ADR0 => TLASTP_IBUF_0,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => N19
    );
  Mmux_TDATAO_7_PWR_5_o_mux_129_OUT3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"000044000000F0CC"
    )
    port map (
      ADR0 => TLASTP_IBUF_0,
      ADR1 => TDATAI_2_IBUF_0,
      ADR3 => Transmitter_DADR_SENT_1152,
      ADR5 => Transmitter_TADR_SENT_1158,
      ADR2 => N4,
      ADR4 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => TDATAO_7_PWR_5_o_mux_129_OUT_2_Q
    );
  TDATAO_2 : X_SFF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => N2_0,
      CLK => NlwBufferSignal_TDATAO_2_CLK,
      I => TDATAO_2_dpot_343,
      O => TDATAO_2_1273,
      SRST => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  TDATAO_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => TDATAO_2_1273,
      ADR4 => TDATAO_7_PWR_5_o_mux_129_OUT_2_Q,
      ADR5 => Q_n0583_inv_rstpot_1286,
      O => TDATAO_2_dpot_343
    );
  TDATAO_7_dpot : X_MUX2
    generic map(
      LOC => "SLICE_X2Y10"
    )
    port map (
      IA => N20,
      IB => N21,
      O => TDATAO_7_dpot_355,
      SEL => Transmitter_TADR_SENT_1158
    );
  TDATAO_7_dpot_F : X_LUT6
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"FFFFFFFFC0E200AA"
    )
    port map (
      ADR0 => TDATAI_7_IBUF_0,
      ADR3 => Transmitter_DADR_SENT_1152,
      ADR1 => Transmitter_ADRCOUNT(1),
      ADR4 => Transmitter_ADRCOUNT(2),
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      ADR2 => TDATAO_7_1165,
      O => N20
    );
  TDATAO_7 : X_SFF
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '1'
    )
    port map (
      CE => N2_0,
      CLK => NlwBufferSignal_TDATAO_7_CLK,
      I => TDATAO_7_dpot_355,
      O => TDATAO_7_1165,
      SSET => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  TDATAO_7_dpot_G : X_LUT6
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"FFFFFFFFFAFFFA00"
    )
    port map (
      ADR1 => '1',
      ADR3 => Transmitter_DADR_SENT_1152,
      ADR2 => TDATAI_7_IBUF_0,
      ADR4 => TDATAO_7_1165,
      ADR0 => TLASTP_IBUF_0,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => N21
    );
  Mmux_TDATAO_7_PWR_5_o_mux_129_OUT7 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"0000000053030F00"
    )
    port map (
      ADR0 => TLASTP_IBUF_0,
      ADR3 => TDATAI_6_IBUF_0,
      ADR4 => Transmitter_DADR_SENT_1152,
      ADR2 => Transmitter_TADR_SENT_1158,
      ADR1 => N6,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => TDATAO_7_PWR_5_o_mux_129_OUT_6_Q
    );
  TDATAO_6 : X_SFF
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '0'
    )
    port map (
      CE => N2_0,
      CLK => NlwBufferSignal_TDATAO_6_CLK,
      I => TDATAO_6_dpot_350,
      O => TDATAO_6_1283,
      SRST => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  TDATAO_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => TDATAO_6_1283,
      ADR4 => TDATAO_7_PWR_5_o_mux_129_OUT_6_Q,
      ADR5 => Q_n0583_inv_rstpot_1286,
      O => TDATAO_6_dpot_350
    );
  Receiver_ADDRESS_BUFFER_31 : X_SFF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_31_CLK,
      I => Receiver_ADDRESS_BUFFER_31_dpot_382,
      O => Receiver_ADDRESS_BUFFER(31),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_31_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => X"FFFD0008FFFF0000"
    )
    port map (
      ADR1 => RDATAI_7_IBUF_0,
      ADR2 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(31),
      ADR0 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_31_dpot_382
    );
  Receiver_ADDRESS_BUFFER_30 : X_SFF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_30_CLK,
      I => Receiver_ADDRESS_BUFFER_30_dpot_390,
      O => Receiver_ADDRESS_BUFFER(30),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_30_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => X"FFFFEFFF10000000"
    )
    port map (
      ADR4 => RDATAI_6_IBUF_0,
      ADR0 => Receiver_RCOUNT(0),
      ADR1 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(30),
      ADR2 => Receiver_RCOUNT(1),
      ADR3 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_30_dpot_390
    );
  Receiver_ADDRESS_BUFFER_10 : X_SFF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_10_CLK,
      I => Receiver_ADDRESS_BUFFER_10_dpot_399,
      O => Receiver_ADDRESS_BUFFER(10),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"CCCCCACCCCCCCCCC"
    )
    port map (
      ADR0 => RDATAI_2_IBUF_0,
      ADR2 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR1 => Receiver_ADDRESS_BUFFER(10),
      ADR4 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_10_dpot_399
    );
  Receiver_ADDRESS_BUFFER_9 : X_SFF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_9_CLK,
      I => Receiver_ADDRESS_BUFFER_9_dpot_409,
      O => Receiver_ADDRESS_BUFFER(9),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"F0E4F0F0F0F0F0F0"
    )
    port map (
      ADR1 => RDATAI_1_IBUF_0,
      ADR3 => Receiver_RCOUNT(0),
      ADR5 => Receiver_RCOUNT(2),
      ADR2 => Receiver_ADDRESS_BUFFER(9),
      ADR0 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_9_dpot_409
    );
  Receiver_ADDRESS_BUFFER_8 : X_SFF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_8_CLK,
      I => Receiver_ADDRESS_BUFFER_8_dpot_417,
      O => Receiver_ADDRESS_BUFFER(8),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"AAAAAAAAACAAAAAA"
    )
    port map (
      ADR1 => RDATAI_0_IBUF_0,
      ADR5 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR0 => Receiver_ADDRESS_BUFFER(8),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_8_dpot_417
    );
  Receiver_ADDRESS_BUFFER_7 : X_SFF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_7_CLK,
      I => Receiver_ADDRESS_BUFFER_7_dpot_425,
      O => Receiver_ADDRESS_BUFFER(7),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"ACAAAAAAAAAAAAAA"
    )
    port map (
      ADR1 => RDATAI_7_IBUF_0,
      ADR3 => Receiver_RCOUNT(0),
      ADR4 => Receiver_RCOUNT(2),
      ADR0 => Receiver_ADDRESS_BUFFER(7),
      ADR2 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_7_dpot_425
    );
  Mmux_TDATAO_7_PWR_5_o_mux_129_OUT2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"FFFFFF00FFFF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Transmitter_ADRCOUNT(0),
      ADR3 => Transmitter_ADRCOUNT(2),
      ADR4 => Transmitter_ADRCOUNT(1),
      O => N10
    );
  Mmux_TDATAO_7_PWR_5_o_mux_129_OUT3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => X"FFFF00FFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_ADRCOUNT(0),
      ADR5 => Transmitter_ADRCOUNT(1),
      ADR4 => Transmitter_ADRCOUNT(2),
      O => N4
    );
  Mmux_TDATAO_7_PWR_5_o_mux_129_OUT7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => X"FFFF00FFFF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Transmitter_ADRCOUNT(0),
      ADR3 => Transmitter_ADRCOUNT(2),
      ADR4 => Transmitter_ADRCOUNT(1),
      O => N6
    );
  CLKDIV_clk_count_0_CLKDIV_clk_count_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLKDIV_clk_count_1_pack_5,
      O => CLKDIV_clk_count(1)
    );
  PWR_5_o_CLKDIV_clk_count_2_equal_4_o_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"8800008888000088"
    )
    port map (
      ADR2 => '1',
      ADR1 => CLKDIV_clk_count(0),
      ADR0 => CLKDIV_clk_count(1),
      ADR4 => R_REQUEST_CK_SYNC_1214,
      ADR3 => T_REQUEST_CK_SYNC_1213,
      ADR5 => '1',
      O => PWR_5_o_CLKDIV_clk_count_2_equal_4_o
    );
  Madd_CLKDIV_clk_count_2_GND_5_o_add_2_OUT_xor_1_11 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"66000066"
    )
    port map (
      ADR2 => '1',
      ADR1 => CLKDIV_clk_count(0),
      ADR0 => CLKDIV_clk_count(1),
      ADR4 => R_REQUEST_CK_SYNC_1214,
      ADR3 => T_REQUEST_CK_SYNC_1213,
      O => CLKDIV_clk_count_2_GND_5_o_add_2_OUT_1_Q
    );
  CLKDIV_clk_count_1 : X_SFF
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CLKDIV_clk_count_1_CLK,
      I => CLKDIV_clk_count_2_GND_5_o_add_2_OUT_1_Q,
      O => CLKDIV_clk_count_1_pack_5,
      SRST => PWR_5_o_CLKDIV_clk_count_2_equal_4_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLKDIV_clk_count_0 : X_SFF
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CLKDIV_clk_count_0_CLK,
      I => CLKDIV_clk_count_2_GND_5_o_add_2_OUT_0_Q,
      O => CLKDIV_clk_count(0),
      SRST => PWR_5_o_CLKDIV_clk_count_2_equal_4_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Madd_CLKDIV_clk_count_2_GND_5_o_add_2_OUT_xor_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"0F0FF0F0FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => CLKDIV_clk_count(0),
      ADR2 => T_REQUEST_CK_SYNC_1213,
      ADR4 => R_REQUEST_CK_SYNC_1214,
      O => CLKDIV_clk_count_2_GND_5_o_add_2_OUT_0_Q
    );
  T_REQUEST_CK_SYNC_T_REQUEST_CK_SYNC_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N2,
      O => N2_0
    );
  T_REQUEST_CK_SYNC : X_FF
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_T_REQUEST_CK_SYNC_CLK,
      I => TAVAILP_Transmitter_TRON_AND_6_o,
      O => T_REQUEST_CK_SYNC_1213,
      RST => GND,
      SET => GND
    );
  TAVAILP_Transmitter_TRON_AND_6_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => TAVAILP_IBUF_0,
      ADR3 => Transmitter_TRON_1150,
      ADR5 => '1',
      O => TAVAILP_Transmitter_TRON_AND_6_o
    );
  Q_n0583_inv_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => CLKDIV_UP_1_1296,
      ADR4 => '1',
      ADR3 => Transmitter_TRON_1150,
      O => N2
    );
  CLKDIV_UP_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CLKDIV_UP_1_CLK,
      I => NlwBufferSignal_CLKDIV_UP_1_IN,
      O => CLKDIV_UP_1_1296,
      RST => GND,
      SET => GND
    );
  Transmitter_TADR_SENT : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_TADR_SENT_CLK,
      I => Transmitter_TADR_SENT_rstpot_470,
      O => Transmitter_TADR_SENT_1158,
      RST => GND,
      SET => GND
    );
  Transmitter_TADR_SENT_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"00000000EAAAAAAA"
    )
    port map (
      ADR3 => Transmitter_ADRCOUNT(2),
      ADR1 => Transmitter_ADRCOUNT(1),
      ADR4 => Transmitter_DADR_SENT_1152,
      ADR0 => Transmitter_TADR_SENT_1158,
      ADR2 => TREADDP_rstpot,
      ADR5 => Q_n0397,
      O => Transmitter_TADR_SENT_rstpot_470
    );
  Transmitter_ADRCOUNT_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_ADRCOUNT_2_CLK,
      I => Transmitter_ADRCOUNT_2_glue_rst_479,
      O => Transmitter_ADRCOUNT(2),
      SET => GND,
      RST => GND
    );
  Transmitter_ADRCOUNT_2_glue_rst : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"3C14F0503010F050"
    )
    port map (
      ADR0 => TAVAILP_IBUF_0,
      ADR5 => Transmitter_ADRCOUNT(0),
      ADR1 => Transmitter_ADRCOUNT(1),
      ADR2 => Transmitter_ADRCOUNT(2),
      ADR3 => Transmitter_TRON_1150,
      ADR4 => Q_n0499_inv,
      O => Transmitter_ADRCOUNT_2_glue_rst_479
    );
  Transmitter_ADRCOUNT_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_ADRCOUNT_1_CLK,
      I => Transmitter_ADRCOUNT_1_glue_rst_487,
      O => Transmitter_ADRCOUNT(1),
      SET => GND,
      RST => GND
    );
  Transmitter_ADRCOUNT_1_glue_rst : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"33113F15CC440000"
    )
    port map (
      ADR0 => TAVAILP_IBUF_0,
      ADR3 => Transmitter_TRON_1150,
      ADR4 => Transmitter_ADRCOUNT(0),
      ADR5 => Transmitter_ADRCOUNT(1),
      ADR2 => Transmitter_ADRCOUNT(2),
      ADR1 => Q_n0499_inv,
      O => Transmitter_ADRCOUNT_1_glue_rst_487
    );
  Transmitter_DADR_SENT : X_SFF
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_DADR_SENT_CLK,
      I => Transmitter_DADR_SENT_glue_set_497,
      O => Transmitter_DADR_SENT_1152,
      SRST => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Transmitter_DADR_SENT_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => X"00FF00FF08080000"
    )
    port map (
      ADR1 => Transmitter_ADRCOUNT(1),
      ADR4 => Transmitter_ADRCOUNT(2),
      ADR2 => Transmitter_TADR_SENT_1158,
      ADR5 => Transmitter_DADR_SENT_1152,
      ADR0 => TREADDP_rstpot,
      ADR3 => Q_n0397,
      O => Transmitter_DADR_SENT_glue_set_497
    );
  Receiver_ADDRESS_BUFFER_21 : X_SFF
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_21_CLK,
      I => Receiver_ADDRESS_BUFFER_21_dpot_506,
      O => Receiver_ADDRESS_BUFFER(21),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_21_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"CCCCACCCCCCCCCCC"
    )
    port map (
      ADR0 => RDATAI_5_IBUF_0,
      ADR3 => Receiver_RCOUNT(0),
      ADR4 => Receiver_RCOUNT(2),
      ADR1 => Receiver_ADDRESS_BUFFER(21),
      ADR2 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_21_dpot_506
    );
  Receiver_ADDRESS_BUFFER_20 : X_SFF
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_20_CLK,
      I => Receiver_ADDRESS_BUFFER_20_dpot_516,
      O => Receiver_ADDRESS_BUFFER(20),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_20_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"EFFF4000FFFF0000"
    )
    port map (
      ADR1 => RDATAI_4_IBUF_0,
      ADR2 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(20),
      ADR3 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_20_dpot_516
    );
  Receiver_ADDRESS_BUFFER_19 : X_SFF
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_19_CLK,
      I => Receiver_ADDRESS_BUFFER_19_dpot_524,
      O => Receiver_ADDRESS_BUFFER(19),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_19_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"FFDF0080FFFF0000"
    )
    port map (
      ADR1 => RDATAI_3_IBUF_0,
      ADR2 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(19),
      ADR0 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_19_dpot_524
    );
  Receiver_ADDRESS_BUFFER_18 : X_SFF
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_18_CLK,
      I => Receiver_ADDRESS_BUFFER_18_dpot_532,
      O => Receiver_ADDRESS_BUFFER(18),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_18_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"FFDFFFFF00800000"
    )
    port map (
      ADR1 => RDATAI_2_IBUF_0,
      ADR0 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(18),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_18_dpot_532
    );
  Receiver_ADDRESS_BUFFER_6 : X_SFF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_6_CLK,
      I => Receiver_ADDRESS_BUFFER_6_dpot_541,
      O => Receiver_ADDRESS_BUFFER(6),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"FFFF0000DFFF8000"
    )
    port map (
      ADR1 => RDATAI_6_IBUF_0,
      ADR2 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(6),
      ADR5 => Receiver_RCOUNT(1),
      ADR3 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_6_dpot_541
    );
  Receiver_ADDRESS_BUFFER_5 : X_SFF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_5_CLK,
      I => Receiver_ADDRESS_BUFFER_5_dpot_557,
      O => Receiver_ADDRESS_BUFFER(5),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"FF40FF00BF00FF00"
    )
    port map (
      ADR5 => RDATAI_5_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(5),
      ADR0 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_5_dpot_557
    );
  Receiver_ADDRESS_BUFFER_4 : X_SFF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_4_CLK,
      I => Receiver_ADDRESS_BUFFER_4_dpot_565,
      O => Receiver_ADDRESS_BUFFER(4),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"CACCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => RDATAI_4_IBUF_0,
      ADR5 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR1 => Receiver_ADDRESS_BUFFER(4),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_4_dpot_565
    );
  Receiver_ADDRESS_BUFFER_3 : X_SFF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_3_CLK,
      I => Receiver_ADDRESS_BUFFER_3_dpot_573,
      O => Receiver_ADDRESS_BUFFER(3),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"FFF7FFFF08000000"
    )
    port map (
      ADR3 => RDATAI_3_IBUF_0,
      ADR4 => Receiver_RCOUNT(0),
      ADR1 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(3),
      ADR2 => Receiver_RCOUNT(1),
      ADR0 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_3_dpot_573
    );
  Receiver_ADDRESS_BUFFER_34 : X_SFF
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_34_CLK,
      I => Receiver_ADDRESS_BUFFER_34_dpot_575,
      O => Receiver_ADDRESS_BUFFER(34),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_34_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"FEFFFFFF10000000"
    )
    port map (
      ADR2 => RDATAI_2_IBUF_0,
      ADR3 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(34),
      ADR1 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_34_dpot_575
    );
  Q_n0477_inv1_rstpot_2 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"00000A000A000A00"
    )
    port map (
      ADR1 => '1',
      ADR0 => RENABP_IBUF_0,
      ADR4 => Receiver_RCOUNT_2_1_1271,
      ADR5 => Receiver_RCOUNT_1_1_1267,
      ADR2 => S_RSMATIP_1220,
      ADR3 => S_RCVNGP_1219,
      O => Q_n0477_inv1_rstpot2
    );
  Receiver_ADDRESS_BUFFER_33 : X_SFF
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_33_CLK,
      I => Receiver_ADDRESS_BUFFER_33_dpot_591,
      O => Receiver_ADDRESS_BUFFER(33),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_33_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"FFEF0040FFFF0000"
    )
    port map (
      ADR1 => RDATAI_1_IBUF_0,
      ADR2 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(33),
      ADR0 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_33_dpot_591
    );
  Receiver_ADDRESS_BUFFER_32 : X_SFF
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_32_CLK,
      I => Receiver_ADDRESS_BUFFER_32_dpot_599,
      O => Receiver_ADDRESS_BUFFER(32),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_32_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"FFFDFFFF00080000"
    )
    port map (
      ADR1 => RDATAI_0_IBUF_0,
      ADR0 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(32),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_32_dpot_599
    );
  CLKDIV_UP_CLKDIV_UP_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLKDIV8_pack_1,
      O => CLKDIV8_1297
    );
  CLKDIV_UP : X_FF
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CLKDIV_UP_CLK,
      I => GND_5_o_CLKDIV8_AND_1_o,
      O => CLKDIV_UP_1145,
      RST => GND,
      SET => GND
    );
  GND_5_o_CLKDIV8_AND_1_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => X"0133330101333301"
    )
    port map (
      ADR1 => CLKDIV8_1297,
      ADR4 => R_REQUEST_CK_SYNC_1214,
      ADR3 => T_REQUEST_CK_SYNC_1213,
      ADR2 => CLKDIV_clk_count(0),
      ADR0 => CLKDIV_clk_count(1),
      ADR5 => '1',
      O => GND_5_o_CLKDIV8_AND_1_o
    );
  CLKDIV8_rstpot1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => X"6C00006C"
    )
    port map (
      ADR1 => CLKDIV8_1297,
      ADR4 => R_REQUEST_CK_SYNC_1214,
      ADR3 => T_REQUEST_CK_SYNC_1213,
      ADR2 => CLKDIV_clk_count(0),
      ADR0 => CLKDIV_clk_count(1),
      O => CLKDIV8_rstpot1_610
    );
  CLKDIV8 : X_FF
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CLKDIV8_CLK,
      I => CLKDIV8_rstpot1_610,
      O => CLKDIV8_pack_1,
      RST => GND,
      SET => GND
    );
  Q_n0499_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y8",
      INIT => X"0000000033000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => CLKDIV_UP_1145,
      ADR4 => Transmitter_TRON_1150,
      ADR1 => Transmitter_TADR_SENT_1158,
      ADR5 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => Q_n0499_inv
    );
  Transmitter_ADRCOUNT_0 : X_SFF
    generic map(
      LOC => "SLICE_X5Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_ADRCOUNT_0_CLK,
      I => Transmitter_ADRCOUNT_0_rstpot_626,
      O => Transmitter_ADRCOUNT(0),
      SRST => TAVAILP_Transmitter_TRON_AND_6_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Transmitter_ADRCOUNT_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y8",
      INIT => X"0000FFFF55FF0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => Transmitter_ADRCOUNT(1),
      ADR5 => Transmitter_ADRCOUNT(0),
      ADR3 => Transmitter_ADRCOUNT(2),
      ADR4 => Q_n0499_inv,
      O => Transmitter_ADRCOUNT_0_rstpot_626
    );
  Receiver_ADDRESS_BUFFER_38 : X_SFF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_38_CLK,
      I => Receiver_ADDRESS_BUFFER_38_dpot_658,
      O => Receiver_ADDRESS_BUFFER(38),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_38_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"FFFF0000FBFF4000"
    )
    port map (
      ADR2 => RDATAI_6_IBUF_0,
      ADR3 => Receiver_RCOUNT(0),
      ADR5 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(38),
      ADR0 => Receiver_RCOUNT(1),
      ADR1 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_38_dpot_658
    );
  Receiver_ADDRESS_BUFFER_37 : X_SFF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_37_CLK,
      I => Receiver_ADDRESS_BUFFER_37_dpot_633,
      O => Receiver_ADDRESS_BUFFER(37),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_37_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"FF00FF00EF40FF00"
    )
    port map (
      ADR1 => RDATAI_5_IBUF_0,
      ADR2 => Receiver_RCOUNT(0),
      ADR5 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(37),
      ADR0 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_37_dpot_633
    );
  Receiver_ADDRESS_BUFFER_36 : X_SFF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_36_CLK,
      I => Receiver_ADDRESS_BUFFER_36_dpot_641,
      O => Receiver_ADDRESS_BUFFER(36),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_36_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"FFFF1000EFFF0000"
    )
    port map (
      ADR5 => RDATAI_4_IBUF_0,
      ADR2 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(36),
      ADR1 => Receiver_RCOUNT(1),
      ADR3 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_36_dpot_641
    );
  Receiver_ADDRESS_BUFFER_35 : X_SFF
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_35_CLK,
      I => Receiver_ADDRESS_BUFFER_35_dpot_649,
      O => Receiver_ADDRESS_BUFFER(35),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_35_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"FFFFFBFF00000800"
    )
    port map (
      ADR0 => RDATAI_3_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(35),
      ADR4 => Receiver_RCOUNT(1),
      ADR3 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_35_dpot_649
    );
  Receiver_ADDRESS_BUFFER_42 : X_SFF
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_42_CLK,
      I => Receiver_ADDRESS_BUFFER_42_dpot_668,
      O => Receiver_ADDRESS_BUFFER(42),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_42_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"FFFEFFFF00100000"
    )
    port map (
      ADR2 => RDATAI_2_IBUF_0,
      ADR0 => Receiver_RCOUNT(0),
      ADR1 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(42),
      ADR3 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_42_dpot_668
    );
  Receiver_ADDRESS_BUFFER_41 : X_SFF
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_41_CLK,
      I => Receiver_ADDRESS_BUFFER_41_dpot_678,
      O => Receiver_ADDRESS_BUFFER(41),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_41_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"FF00FF00FE02FF00"
    )
    port map (
      ADR0 => RDATAI_1_IBUF_0,
      ADR5 => Receiver_RCOUNT(0),
      ADR1 => Receiver_RCOUNT(2),
      ADR3 => Receiver_ADDRESS_BUFFER(41),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_41_dpot_678
    );
  Receiver_ADDRESS_BUFFER_40 : X_SFF
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_40_CLK,
      I => Receiver_ADDRESS_BUFFER_40_dpot_686,
      O => Receiver_ADDRESS_BUFFER(40),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_40_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"FFFF0000FEFF1000"
    )
    port map (
      ADR2 => RDATAI_0_IBUF_0,
      ADR0 => Receiver_RCOUNT(0),
      ADR5 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(40),
      ADR1 => Receiver_RCOUNT(1),
      ADR3 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_40_dpot_686
    );
  Receiver_ADDRESS_BUFFER_39 : X_SFF
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_39_CLK,
      I => Receiver_ADDRESS_BUFFER_39_dpot_694,
      O => Receiver_ADDRESS_BUFFER(39),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_39_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"FFFDFFFF00200000"
    )
    port map (
      ADR2 => RDATAI_7_IBUF_0,
      ADR4 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(39),
      ADR1 => Receiver_RCOUNT(1),
      ADR0 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_39_dpot_694
    );
  Q_n0477_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"0200220000000000"
    )
    port map (
      ADR0 => RENABP_IBUF_0,
      ADR1 => S_RSMATIP_1220,
      ADR5 => S_RCVNGP_1219,
      ADR4 => Receiver_RCOUNT(2),
      ADR2 => Receiver_RCOUNT(1),
      ADR3 => CLKDIV_UP_1145,
      O => Q_n0477_inv
    );
  Receiver_RCOUNT_1_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_RCOUNT_1_1_CLK,
      I => Receiver_RCOUNT_1_glue_rst_1268,
      O => Receiver_RCOUNT_1_1_1267,
      SET => GND,
      RST => GND
    );
  Receiver_RCOUNT_1_glue_rst : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"000F00F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv,
      ADR3 => Q_n0322,
      O => Receiver_RCOUNT_1_glue_rst_1268
    );
  Q_n03221 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"0000000003000300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => Q_n0466_inv1_1218,
      ADR3 => RENABP_IBUF_0,
      ADR1 => S_RCVNGP_1219,
      ADR5 => S_RSMATIP_1220,
      O => Q_n0322
    );
  S_RCVNGP : X_FF
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_S_RCVNGP_CLK,
      I => S_RCVNGP_rstpot_721,
      O => S_RCVNGP_1219,
      RST => GND,
      SET => GND
    );
  S_RCVNGP_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"5454FCFC5454FC5C"
    )
    port map (
      ADR0 => RENABP_IBUF_0,
      ADR4 => Q_n03401,
      ADR3 => n0079,
      ADR2 => S_RCVNGP_1219,
      ADR5 => N14,
      ADR1 => Q_n0322,
      O => S_RCVNGP_rstpot_721
    );
  Receiver_RCOUNT_2 : X_FF
    generic map(
      LOC => "SLICE_X6Y5",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_RCOUNT_2_CLK,
      I => Receiver_RCOUNT_2_glue_rst_1272,
      O => Receiver_RCOUNT(2),
      SET => GND,
      RST => GND
    );
  Receiver_RCOUNT_2_glue_rst : X_LUT6
    generic map(
      LOC => "SLICE_X6Y5",
      INIT => X"003F00C000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Receiver_RCOUNT(2),
      ADR5 => Q_n0477_inv,
      ADR3 => Q_n0322,
      O => Receiver_RCOUNT_2_glue_rst_1272
    );
  Receiver_RCOUNT_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_RCOUNT_0_CLK,
      I => Receiver_RCOUNT_0_rstpot_737,
      O => Receiver_RCOUNT(0),
      RST => GND,
      SET => GND
    );
  Receiver_RCOUNT_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y5",
      INIT => X"00000000FFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => CLKDIV_UP_1145,
      ADR3 => Receiver_RCOUNT(0),
      ADR5 => Q_n03221_1174,
      ADR4 => Receiver_RCOUNT_0_dpot_1274,
      O => Receiver_RCOUNT_0_rstpot_737
    );
  Receiver_RCOUNT_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y5",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_RCOUNT_1_CLK,
      I => NlwBufferSignal_Receiver_RCOUNT_1_IN,
      O => Receiver_RCOUNT(1),
      SET => GND,
      RST => GND
    );
  Q_n03221_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y5",
      INIT => X"00000000000000AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => Q_n0466_inv1_1218,
      ADR0 => RENABP_IBUF_0,
      ADR3 => S_RCVNGP_1219,
      ADR5 => S_RSMATIP_1220,
      O => Q_n03221_1174
    );
  Q_n03971 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => X"0080000000000000"
    )
    port map (
      ADR0 => TLASTP_IBUF_0,
      ADR4 => Transmitter_DADR_SENT_1152,
      ADR2 => Transmitter_TRON_1150,
      ADR5 => CLKDIV_UP_1145,
      ADR1 => Transmitter_TADR_SENT_1158,
      ADR3 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => Q_n0397
    );
  Transmitter_TRON : X_FF
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_TRON_CLK,
      I => Transmitter_TRON_rstpot_754,
      O => Transmitter_TRON_1150,
      RST => GND,
      SET => GND
    );
  Transmitter_TRON_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => X"00CC00CC004C00CC"
    )
    port map (
      ADR2 => Transmitter_COUNT4(1),
      ADR5 => Transmitter_COUNT4(2),
      ADR4 => Transmitter_COUNT4(0),
      ADR1 => Transmitter_TRON_glue_set_1237,
      ADR0 => Mcount_Transmitter_COUNT4_val11,
      ADR3 => Q_n0397,
      O => Transmitter_TRON_rstpot_754
    );
  Receiver_RCOUNT_2_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_RCOUNT_2_1_CLK,
      I => NlwBufferSignal_Receiver_RCOUNT_2_1_IN,
      O => Receiver_RCOUNT_2_1_1271,
      SET => GND,
      RST => GND
    );
  Receiver_ADDRESS_BUFFER_46 : X_SFF
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_46_CLK,
      I => Receiver_ADDRESS_BUFFER_46_dpot_781,
      O => Receiver_ADDRESS_BUFFER(46),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_46_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"FFFEFFFF00040000"
    )
    port map (
      ADR1 => RDATAI_6_IBUF_0,
      ADR2 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(46),
      ADR3 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_46_dpot_781
    );
  Receiver_ADDRESS_BUFFER_45 : X_SFF
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_45_CLK,
      I => Receiver_ADDRESS_BUFFER_45_dpot_791,
      O => Receiver_ADDRESS_BUFFER(45),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_45_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"F0F0F0F0F1E0F0F0"
    )
    port map (
      ADR3 => RDATAI_5_IBUF_0,
      ADR5 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR2 => Receiver_ADDRESS_BUFFER(45),
      ADR1 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_45_dpot_791
    );
  Receiver_ADDRESS_BUFFER_44 : X_SFF
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_44_CLK,
      I => Receiver_ADDRESS_BUFFER_44_dpot_799,
      O => Receiver_ADDRESS_BUFFER(44),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_44_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"FFFF0000FEFF0200"
    )
    port map (
      ADR0 => RDATAI_4_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(44),
      ADR5 => Receiver_RCOUNT(1),
      ADR3 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_44_dpot_799
    );
  Receiver_ADDRESS_BUFFER_43 : X_SFF
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_43_CLK,
      I => Receiver_ADDRESS_BUFFER_43_dpot_772,
      O => Receiver_ADDRESS_BUFFER(43),
      SRST => Q_n03221_1174,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_43_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"FFFFFFFB00040000"
    )
    port map (
      ADR4 => RDATAI_3_IBUF_0,
      ADR2 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(43),
      ADR0 => Receiver_RCOUNT(1),
      ADR1 => Q_n0477_inv1_rstpot2,
      O => Receiver_ADDRESS_BUFFER_43_dpot_772
    );
  Receiver_ADDRESS_BUFFER_14 : X_SFF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_14_CLK,
      I => Receiver_ADDRESS_BUFFER_14_dpot_804,
      O => Receiver_ADDRESS_BUFFER(14),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"FFFDFFFF00080000"
    )
    port map (
      ADR1 => RDATAI_6_IBUF_0,
      ADR3 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(14),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_14_dpot_804
    );
  Receiver_ADDRESS_BUFFER_13 : X_SFF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_13_CLK,
      I => Receiver_ADDRESS_BUFFER_13_dpot_814,
      O => Receiver_ADDRESS_BUFFER(13),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"FFEF0040FFFF0000"
    )
    port map (
      ADR1 => RDATAI_5_IBUF_0,
      ADR0 => Receiver_RCOUNT(0),
      ADR2 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(13),
      ADR3 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_13_dpot_814
    );
  Receiver_ADDRESS_BUFFER_12 : X_SFF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_12_CLK,
      I => Receiver_ADDRESS_BUFFER_12_dpot_822,
      O => Receiver_ADDRESS_BUFFER(12),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"FFFF0000FFF70080"
    )
    port map (
      ADR2 => RDATAI_4_IBUF_0,
      ADR3 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(12),
      ADR5 => Receiver_RCOUNT(1),
      ADR1 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_12_dpot_822
    );
  Receiver_ADDRESS_BUFFER_11 : X_SFF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_11_CLK,
      I => Receiver_ADDRESS_BUFFER_11_dpot_830,
      O => Receiver_ADDRESS_BUFFER(11),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"FFFFEFFF00004000"
    )
    port map (
      ADR1 => RDATAI_3_IBUF_0,
      ADR4 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(11),
      ADR0 => Receiver_RCOUNT(1),
      ADR2 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_11_dpot_830
    );
  Receiver_ADDRESS_BUFFER_2 : X_SFF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_2_CLK,
      I => Receiver_ADDRESS_BUFFER_2_dpot_858,
      O => Receiver_ADDRESS_BUFFER(2),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"FFF7FFFF08000000"
    )
    port map (
      ADR3 => RDATAI_2_IBUF_0,
      ADR4 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(2),
      ADR2 => Receiver_RCOUNT(1),
      ADR1 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_2_dpot_858
    );
  Receiver_ADDRESS_BUFFER_1 : X_SFF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_1_CLK,
      I => Receiver_ADDRESS_BUFFER_1_dpot_868,
      O => Receiver_ADDRESS_BUFFER(1),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"FDFF0800FFFF0000"
    )
    port map (
      ADR1 => RDATAI_1_IBUF_0,
      ADR5 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(1),
      ADR2 => Receiver_RCOUNT(1),
      ADR3 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_1_dpot_868
    );
  Q_n0477_inv1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"000A00AA00000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => RENABP_IBUF_0,
      ADR4 => Receiver_RCOUNT_2_1_1271,
      ADR2 => Receiver_RCOUNT_1_1_1267,
      ADR3 => S_RSMATIP_1220,
      ADR5 => S_RCVNGP_1219,
      O => Q_n0477_inv1_rstpot_1201
    );
  Receiver_ADDRESS_BUFFER_0 : X_SFF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_0_CLK,
      I => Receiver_ADDRESS_BUFFER_0_dpot_849,
      O => Receiver_ADDRESS_BUFFER(0),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"FBFFFFFF40000000"
    )
    port map (
      ADR2 => RDATAI_0_IBUF_0,
      ADR1 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(0),
      ADR0 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot_1201,
      O => Receiver_ADDRESS_BUFFER_0_dpot_849
    );
  Receiver_RCOUNT_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y5",
      INIT => X"C9CCCCCCC3CCCCCC"
    )
    port map (
      ADR4 => RENABP_IBUF_0,
      ADR2 => S_RSMATIP_1220,
      ADR3 => S_RCVNGP_1219,
      ADR1 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR5 => Receiver_RCOUNT(1),
      O => Receiver_RCOUNT_0_dpot_1274
    );
  TREADDP_OBUF_TREADDP_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Transmitter_COUNT4_2_pack_8,
      O => Transmitter_COUNT4(2)
    );
  Transmitter_TRON_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => X"FFFFF0F0FFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_TRON_1150,
      ADR2 => TAVAILP_IBUF_0,
      ADR5 => '1',
      O => Transmitter_TRON_glue_set_1237
    );
  Transmitter_COUNT4_2_glue_rst : X_LUT5
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => X"CCCC0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => Transmitter_COUNT4(2),
      ADR4 => Transmitter_TRON_1150,
      ADR2 => TAVAILP_IBUF_0,
      O => Transmitter_COUNT4_2_glue_rst_878
    );
  Transmitter_COUNT4_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_COUNT4_2_CLK,
      I => Transmitter_COUNT4_2_glue_rst_878,
      O => Transmitter_COUNT4_2_pack_8,
      SET => GND,
      RST => GND
    );
  TREADDP_380 : X_FF
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_TREADDP_CLK,
      I => TREADDP_rstpot,
      O => TREADDP_OBUF_1195,
      RST => GND,
      SET => GND
    );
  Q_n038211 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => X"F0000000C0100000"
    )
    port map (
      ADR0 => TABORTP_IBUF_0,
      ADR1 => Transmitter_COUNT4(1),
      ADR5 => Transmitter_COUNT4(0),
      ADR3 => Transmitter_COUNT4(2),
      ADR2 => Transmitter_TRON_1150,
      ADR4 => CLKDIV_UP_1145,
      O => TREADDP_rstpot
    );
  TABORTP_Transmitter_COUNT4_2_AND_7_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => X"0F0F0F0F0FFF0FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => TABORTP_IBUF_0,
      ADR5 => Transmitter_COUNT4(1),
      ADR2 => Transmitter_COUNT4(2),
      ADR3 => Transmitter_COUNT4(0),
      O => TABORTP_Transmitter_COUNT4_2_AND_7_o
    );
  Q_n0583_inv_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => X"FFFFF0F0FFFF55FF"
    )
    port map (
      ADR1 => '1',
      ADR5 => Transmitter_TADR_SENT_1158,
      ADR3 => Transmitter_ADRCOUNT(2),
      ADR0 => Transmitter_ADRCOUNT(1),
      ADR2 => Transmitter_DADR_SENT_1152,
      ADR4 => TABORTP_Transmitter_COUNT4_2_AND_7_o,
      O => Q_n0583_inv_rstpot_1286
    );
  RDATAO_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => Q_n0466_inv,
      CLK => NlwBufferSignal_RDATAO_7_CLK,
      I => NlwBufferSignal_RDATAO_7_IN,
      O => RDATAO_7_1279,
      RST => GND,
      SET => GND
    );
  RDATAO_6 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => Q_n0466_inv,
      CLK => NlwBufferSignal_RDATAO_6_CLK,
      I => NlwBufferSignal_RDATAO_6_IN,
      O => RDATAO_6_1277,
      RST => GND,
      SET => GND
    );
  RDATAO_5 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => Q_n0466_inv,
      CLK => NlwBufferSignal_RDATAO_5_CLK,
      I => NlwBufferSignal_RDATAO_5_IN,
      O => RDATAO_5_1270,
      RST => GND,
      SET => GND
    );
  RDATAO_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      CE => Q_n0466_inv,
      CLK => NlwBufferSignal_RDATAO_4_CLK,
      I => NlwBufferSignal_RDATAO_4_IN,
      O => RDATAO_4_1266,
      RST => GND,
      SET => GND
    );
  RCLEANP_OBUF_RCLEANP_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_REQUEST_CK_SYNC_pack_3,
      O => R_REQUEST_CK_SYNC_1214
    );
  Reset_OR_DriverANDClockEnable11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"FF330000FF330000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => RENABP_IBUF_0,
      ADR1 => S_RCVNGP_1219,
      ADR3 => S_RSMATIP_1220,
      ADR5 => '1',
      O => Reset_OR_DriverANDClockEnable1
    );
  R_REQUEST_CK_SYNC_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"0003AAAA"
    )
    port map (
      ADR2 => Q_n0466_inv1_1218,
      ADR0 => R_REQUEST_CK_SYNC_1214,
      ADR4 => RENABP_IBUF_0,
      ADR1 => S_RCVNGP_1219,
      ADR3 => S_RSMATIP_1220,
      O => R_REQUEST_CK_SYNC_rstpot_916
    );
  R_REQUEST_CK_SYNC : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_REQUEST_CK_SYNC_CLK,
      I => R_REQUEST_CK_SYNC_rstpot_916,
      O => R_REQUEST_CK_SYNC_pack_3,
      RST => GND,
      SET => GND
    );
  RCLEANP_391 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_RCLEANP_CLK,
      I => RCLEANP_rstpot1_924,
      O => RCLEANP_OBUF_1234,
      RST => GND,
      SET => GND
    );
  RCLEANP_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"040404040E040404"
    )
    port map (
      ADR0 => RENABP_IBUF_0,
      ADR4 => Receiver_RCOUNT(2),
      ADR3 => Receiver_RCOUNT(1),
      ADR1 => RCLEANP_OBUF_1234,
      ADR2 => Reset_OR_DriverANDClockEnable1,
      ADR5 => n0079,
      O => RCLEANP_rstpot1_924
    );
  Transmitter_COUNT4_0_glue_rst : X_MUX2
    generic map(
      LOC => "SLICE_X8Y6"
    )
    port map (
      IA => N16,
      IB => N17,
      O => Transmitter_COUNT4_0_glue_rst_932,
      SEL => Transmitter_TRON_1150
    );
  Transmitter_COUNT4_0_glue_rst_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => Transmitter_COUNT4(0),
      ADR3 => TAVAILP_IBUF_0,
      O => N16
    );
  Transmitter_COUNT4_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_COUNT4_0_CLK,
      I => Transmitter_COUNT4_0_glue_rst_932,
      O => Transmitter_COUNT4(0),
      SET => GND,
      RST => GND
    );
  Transmitter_COUNT4_0_glue_rst_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => X"FF550AAAFF550AA0"
    )
    port map (
      ADR1 => '1',
      ADR0 => CLKDIV_UP_1145,
      ADR2 => Transmitter_COUNT4(1),
      ADR4 => Transmitter_COUNT4(0),
      ADR3 => Transmitter_COUNT4(2),
      ADR5 => TABORTP_IBUF_0,
      O => N17
    );
  Mcount_Transmitter_COUNT4_val111 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => X"1100FE0000000000"
    )
    port map (
      ADR2 => TABORTP_IBUF_0,
      ADR1 => Transmitter_COUNT4(1),
      ADR4 => Transmitter_COUNT4(2),
      ADR0 => Transmitter_COUNT4(0),
      ADR3 => Transmitter_TRON_1150,
      ADR5 => CLKDIV_UP_1145,
      O => Mcount_Transmitter_COUNT4_val11
    );
  Transmitter_COUNT4_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_COUNT4_1_CLK,
      I => Transmitter_COUNT4_1_rstpot1_953,
      O => Transmitter_COUNT4(1),
      RST => GND,
      SET => GND
    );
  Transmitter_COUNT4_1_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => X"8DAFAFAF22000000"
    )
    port map (
      ADR0 => Transmitter_TRON_1150,
      ADR1 => Transmitter_COUNT4(2),
      ADR4 => CLKDIV_UP_1145,
      ADR5 => Transmitter_COUNT4(1),
      ADR3 => Transmitter_COUNT4(0),
      ADR2 => TAVAILP_IBUF_0,
      O => Transmitter_COUNT4_1_rstpot1_953
    );
  Receiver_ADDRESS_BUFFER_29 : X_SFF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_29_CLK,
      I => Receiver_ADDRESS_BUFFER_29_dpot_962,
      O => Receiver_ADDRESS_BUFFER(29),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_29_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"FFEFFFFF00400000"
    )
    port map (
      ADR1 => RDATAI_5_IBUF_0,
      ADR3 => Receiver_RCOUNT(0),
      ADR0 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(29),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_29_dpot_962
    );
  Receiver_ADDRESS_BUFFER_28 : X_SFF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_28_CLK,
      I => Receiver_ADDRESS_BUFFER_28_dpot_972,
      O => Receiver_ADDRESS_BUFFER(28),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_28_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"AAAAAAAAAACAAAAA"
    )
    port map (
      ADR1 => RDATAI_4_IBUF_0,
      ADR3 => Receiver_RCOUNT(0),
      ADR5 => Receiver_RCOUNT(2),
      ADR0 => Receiver_ADDRESS_BUFFER(28),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_28_dpot_972
    );
  Receiver_ADDRESS_BUFFER_27 : X_SFF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_27_CLK,
      I => Receiver_ADDRESS_BUFFER_27_dpot_980,
      O => Receiver_ADDRESS_BUFFER(27),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_27_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"FFFD0008FFFF0000"
    )
    port map (
      ADR1 => RDATAI_3_IBUF_0,
      ADR2 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(27),
      ADR0 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_27_dpot_980
    );
  Receiver_ADDRESS_BUFFER_26 : X_SFF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_26_CLK,
      I => Receiver_ADDRESS_BUFFER_26_dpot_988,
      O => Receiver_ADDRESS_BUFFER(26),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_26_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"FFFFEFFF00002000"
    )
    port map (
      ADR0 => RDATAI_2_IBUF_0,
      ADR4 => Receiver_RCOUNT(0),
      ADR1 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(26),
      ADR2 => Receiver_RCOUNT(1),
      ADR3 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_26_dpot_988
    );
  Receiver_ADDRESS_BUFFER_25 : X_SFF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_25_CLK,
      I => Receiver_ADDRESS_BUFFER_25_dpot_997,
      O => Receiver_ADDRESS_BUFFER(25),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_25_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"CCCCCCACCCCCCCCC"
    )
    port map (
      ADR0 => RDATAI_1_IBUF_0,
      ADR3 => Receiver_RCOUNT(0),
      ADR4 => Receiver_RCOUNT(2),
      ADR1 => Receiver_ADDRESS_BUFFER(25),
      ADR2 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_25_dpot_997
    );
  Receiver_ADDRESS_BUFFER_24 : X_SFF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_24_CLK,
      I => Receiver_ADDRESS_BUFFER_24_dpot_1007,
      O => Receiver_ADDRESS_BUFFER(24),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_24_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"FFFF0000EFFF4000"
    )
    port map (
      ADR1 => RDATAI_0_IBUF_0,
      ADR0 => Receiver_RCOUNT(0),
      ADR5 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(24),
      ADR2 => Receiver_RCOUNT(1),
      ADR3 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_24_dpot_1007
    );
  Receiver_ADDRESS_BUFFER_23 : X_SFF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_23_CLK,
      I => Receiver_ADDRESS_BUFFER_23_dpot_1015,
      O => Receiver_ADDRESS_BUFFER(23),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_23_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"FFDF0080FFFF0000"
    )
    port map (
      ADR1 => RDATAI_7_IBUF_0,
      ADR2 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR4 => Receiver_ADDRESS_BUFFER(23),
      ADR0 => Receiver_RCOUNT(1),
      ADR5 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_23_dpot_1015
    );
  Receiver_ADDRESS_BUFFER_22 : X_SFF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      CE => CLKDIV_UP_1145,
      CLK => NlwBufferSignal_Receiver_ADDRESS_BUFFER_22_CLK,
      I => Receiver_ADDRESS_BUFFER_22_dpot_1023,
      O => Receiver_ADDRESS_BUFFER(22),
      SRST => Q_n0322,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_ADDRESS_BUFFER_22_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"FFDFFFFF00800000"
    )
    port map (
      ADR1 => RDATAI_6_IBUF_0,
      ADR0 => Receiver_RCOUNT(0),
      ADR3 => Receiver_RCOUNT(2),
      ADR5 => Receiver_ADDRESS_BUFFER(22),
      ADR2 => Receiver_RCOUNT(1),
      ADR4 => Q_n0477_inv1_rstpot1,
      O => Receiver_ADDRESS_BUFFER_22_dpot_1023
    );
  Reset_OR_DriverANDClockEnable_Reset_OR_DriverANDClockEnable_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RECEIVING_pack_1,
      O => RECEIVING_1227
    );
  Reset_OR_DriverANDClockEnable2 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"0000CC0C0000CC0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => RENABP_IBUF_0,
      ADR4 => S_RSMATIP_1220,
      ADR2 => Q_n0466_inv1_1218,
      ADR3 => S_RCVNGP_1219,
      ADR5 => '1',
      O => Reset_OR_DriverANDClockEnable
    );
  RECEIVING_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"AAAAAAAE"
    )
    port map (
      ADR0 => RECEIVING_1227,
      ADR1 => RENABP_IBUF_0,
      ADR4 => S_RSMATIP_1220,
      ADR2 => Q_n0466_inv1_1218,
      ADR3 => S_RCVNGP_1219,
      O => RECEIVING_glue_set_1033
    );
  RECEIVING : X_SFF
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_RECEIVING_CLK,
      I => RECEIVING_glue_set_1033,
      O => RECEIVING_pack_1,
      SRST => Q_n0354_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RDONEP_OBUF_RDONEP_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Q_n0354,
      O => Q_n0354_0
    );
  RDONEP_432 : X_SFF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => RENABP_IBUF_0,
      CLK => NlwBufferSignal_RDONEP_CLK,
      I => Q_n03401,
      O => RDONEP_OBUF_1280,
      SRST => Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Q_n034011 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"0F00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Q_n0466_inv1_1218,
      ADR4 => S_RCVNGP_1219,
      ADR3 => S_RSMATIP_1220,
      ADR5 => CLKDIV_UP_1145,
      O => Q_n03401
    );
  Q_n0466_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"FFFFFFFFFFBFFFFF"
    )
    port map (
      ADR0 => RDATAI_4_IBUF_0,
      ADR4 => RDATAI_7_IBUF_0,
      ADR3 => N0,
      ADR1 => RDATAI_5_IBUF_0,
      ADR5 => RDATAI_6_IBUF_0,
      ADR2 => RDATAI_3_IBUF_0,
      O => Q_n0466_inv1_1218
    );
  Q_n0466_inv2 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"8800000000000000"
    )
    port map (
      ADR2 => '1',
      ADR3 => Q_n0466_inv1_1218,
      ADR0 => RENABP_IBUF_0,
      ADR5 => S_RCVNGP_1219,
      ADR1 => S_RSMATIP_1220,
      ADR4 => CLKDIV_UP_1145,
      O => Q_n0466_inv
    );
  RBYTEP_428 : X_SFF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => RENABP_IBUF_0,
      CLK => NlwBufferSignal_RBYTEP_CLK,
      I => GND_5_o_GND_5_o_MUX_140_o,
      O => RBYTEP_OBUF_1222,
      SRST => Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mmux_GND_5_o_GND_5_o_MUX_140_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"C0000000C0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Q_n0466_inv1_1218,
      ADR2 => S_RCVNGP_1219,
      ADR3 => S_RSMATIP_1220,
      ADR4 => CLKDIV_UP_1145,
      ADR5 => '1',
      O => GND_5_o_GND_5_o_MUX_140_o
    );
  Q_n03541 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"20000000"
    )
    port map (
      ADR0 => RENABP_IBUF_0,
      ADR1 => Q_n0466_inv1_1218,
      ADR2 => S_RCVNGP_1219,
      ADR3 => S_RSMATIP_1220,
      ADR4 => CLKDIV_UP_1145,
      O => Q_n0354
    );
  RDATAO_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => '0'
    )
    port map (
      CE => Q_n0466_inv,
      CLK => NlwBufferSignal_RDATAO_3_CLK,
      I => NlwBufferSignal_RDATAO_3_IN,
      O => RDATAO_3_1265,
      RST => GND,
      SET => GND
    );
  RDATAO_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => '0'
    )
    port map (
      CE => Q_n0466_inv,
      CLK => NlwBufferSignal_RDATAO_2_CLK,
      I => NlwBufferSignal_RDATAO_2_IN,
      O => RDATAO_2_1264,
      RST => GND,
      SET => GND
    );
  RDATAO_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => '0'
    )
    port map (
      CE => Q_n0466_inv,
      CLK => NlwBufferSignal_RDATAO_1_CLK,
      I => NlwBufferSignal_RDATAO_1_IN,
      O => RDATAO_1_1263,
      RST => GND,
      SET => GND
    );
  RDATAO_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => '0'
    )
    port map (
      CE => Q_n0466_inv,
      CLK => NlwBufferSignal_RDATAO_0_CLK,
      I => NlwBufferSignal_RDATAO_0_IN,
      O => RDATAO_0_1262,
      RST => GND,
      SET => GND
    );
  SENDING : X_FF
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SENDING_CLK,
      I => NlwBufferSignal_SENDING_IN,
      O => SENDING_1230,
      RST => GND,
      SET => GND
    );
  N0_N0_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => TSOCOLP_OBUF_1088,
      O => TSOCOLP_OBUF_0
    );
  Q_n0466_inv1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"BBFFBBFFBBFFBBFF"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => RDATAI_1_IBUF_0,
      ADR3 => RDATAI_0_IBUF_0,
      ADR0 => RDATAI_2_IBUF_0,
      ADR5 => '1',
      O => N0
    );
  TSOCOLP_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"F0F00000"
    )
    port map (
      ADR2 => RECEIVING_1227,
      ADR4 => SENDING_1230,
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => '1',
      O => TSOCOLP_rstpot_1087
    );
  TSOCOLP_441 : X_FF
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_TSOCOLP_CLK,
      I => TSOCOLP_rstpot_1087,
      O => TSOCOLP_OBUF_1088,
      RST => GND,
      SET => GND
    );
  NlwBufferBlock_CLK10I_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK10I_BUFGP_BUFG_IN
    );
  NlwBufferBlock_S_RSMATIP_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_S_RSMATIP_CLK
    );
  NlwBufferBlock_TSOCOLP_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => TSOCOLP_OBUF_0,
      O => NlwBufferSignal_TSOCOLP_OBUF_I
    );
  NlwBufferBlock_RSMATIP_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => S_RSMATIP_1220,
      O => NlwBufferSignal_RSMATIP_OBUF_I
    );
  NlwBufferBlock_CLKDIV8_UP_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLKDIV8_UP_OBUF_1261,
      O => NlwBufferSignal_CLKDIV8_UP_OBUF_I
    );
  NlwBufferBlock_RBYTEP_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RBYTEP_OBUF_1222,
      O => NlwBufferSignal_RBYTEP_OBUF_I
    );
  NlwBufferBlock_RDATAO_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAO_0_1262,
      O => NlwBufferSignal_RDATAO_0_OBUF_I
    );
  NlwBufferBlock_RDATAO_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAO_1_1263,
      O => NlwBufferSignal_RDATAO_1_OBUF_I
    );
  NlwBufferBlock_RDATAO_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAO_2_1264,
      O => NlwBufferSignal_RDATAO_2_OBUF_I
    );
  NlwBufferBlock_RDATAO_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAO_3_1265,
      O => NlwBufferSignal_RDATAO_3_OBUF_I
    );
  NlwBufferBlock_TDATAO_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAO_0_1162,
      O => NlwBufferSignal_TDATAO_0_OBUF_I
    );
  NlwBufferBlock_RDATAO_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAO_4_1266,
      O => NlwBufferSignal_RDATAO_4_OBUF_I
    );
  NlwBufferBlock_TDATAO_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAO_1_1269,
      O => NlwBufferSignal_TDATAO_1_OBUF_I
    );
  NlwBufferBlock_RDATAO_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAO_5_1270,
      O => NlwBufferSignal_RDATAO_5_OBUF_I
    );
  NlwBufferBlock_TDATAO_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAO_2_1273,
      O => NlwBufferSignal_TDATAO_2_OBUF_I
    );
  NlwBufferBlock_RCLEANP_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RCLEANP_OBUF_1234,
      O => NlwBufferSignal_RCLEANP_OBUF_I
    );
  NlwBufferBlock_RDATAO_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAO_6_1277,
      O => NlwBufferSignal_RDATAO_6_OBUF_I
    );
  NlwBufferBlock_TDATAO_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAO_3_1154,
      O => NlwBufferSignal_TDATAO_3_OBUF_I
    );
  NlwBufferBlock_RDATAO_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAO_7_1279,
      O => NlwBufferSignal_RDATAO_7_OBUF_I
    );
  NlwBufferBlock_TDATAO_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAO_4_1166,
      O => NlwBufferSignal_TDATAO_4_OBUF_I
    );
  NlwBufferBlock_TDATAO_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAO_5_1281,
      O => NlwBufferSignal_TDATAO_5_OBUF_I
    );
  NlwBufferBlock_TDATAO_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAO_6_1283,
      O => NlwBufferSignal_TDATAO_6_OBUF_I
    );
  NlwBufferBlock_TDATAO_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => TDATAO_7_1165,
      O => NlwBufferSignal_TDATAO_7_OBUF_I
    );
  NlwBufferBlock_TRNSMTP_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => T_REQUEST_CK_SYNC_1213,
      O => NlwBufferSignal_TRNSMTP_OBUF_I
    );
  NlwBufferBlock_TREADDP_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => TREADDP_OBUF_1195,
      O => NlwBufferSignal_TREADDP_OBUF_I
    );
  NlwBufferBlock_TSTARTP_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => T_REQUEST_CK_SYNC_1213,
      O => NlwBufferSignal_TSTARTP_OBUF_I
    );
  NlwBufferBlock_RCVNGP_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => S_RCVNGP_1219,
      O => NlwBufferSignal_RCVNGP_OBUF_I
    );
  NlwBufferBlock_RDONEP_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDONEP_OBUF_1280,
      O => NlwBufferSignal_RDONEP_OBUF_I
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_47_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_47_CLK
    );
  NlwBufferBlock_CLKDIV8_UP_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_CLKDIV8_UP_CLK
    );
  NlwBufferBlock_CLKDIV8_UP_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLKDIV_UP_1145,
      O => NlwBufferSignal_CLKDIV8_UP_IN
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_17_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_16_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_15_CLK
    );
  NlwBufferBlock_TDATAO_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_TDATAO_4_CLK
    );
  NlwBufferBlock_TDATAO_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_TDATAO_5_CLK
    );
  NlwBufferBlock_TDATAO_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_TDATAO_0_CLK
    );
  NlwBufferBlock_TDATAO_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_TDATAO_1_CLK
    );
  NlwBufferBlock_TDATAO_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_TDATAO_3_CLK
    );
  NlwBufferBlock_TDATAO_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_TDATAO_2_CLK
    );
  NlwBufferBlock_TDATAO_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_TDATAO_7_CLK
    );
  NlwBufferBlock_TDATAO_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_TDATAO_6_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_31_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_31_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_30_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_10_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_9_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_8_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_7_CLK
    );
  NlwBufferBlock_CLKDIV_clk_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_CLKDIV_clk_count_1_CLK
    );
  NlwBufferBlock_CLKDIV_clk_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_CLKDIV_clk_count_0_CLK
    );
  NlwBufferBlock_T_REQUEST_CK_SYNC_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_T_REQUEST_CK_SYNC_CLK
    );
  NlwBufferBlock_CLKDIV_UP_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_CLKDIV_UP_1_CLK
    );
  NlwBufferBlock_CLKDIV_UP_1_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_5_o_CLKDIV8_AND_1_o,
      O => NlwBufferSignal_CLKDIV_UP_1_IN
    );
  NlwBufferBlock_Transmitter_TADR_SENT_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Transmitter_TADR_SENT_CLK
    );
  NlwBufferBlock_Transmitter_ADRCOUNT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Transmitter_ADRCOUNT_2_CLK
    );
  NlwBufferBlock_Transmitter_ADRCOUNT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Transmitter_ADRCOUNT_1_CLK
    );
  NlwBufferBlock_Transmitter_DADR_SENT_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Transmitter_DADR_SENT_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_21_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_20_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_19_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_18_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_6_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_5_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_4_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_3_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_34_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_34_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_33_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_33_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_32_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_32_CLK
    );
  NlwBufferBlock_CLKDIV_UP_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_CLKDIV_UP_CLK
    );
  NlwBufferBlock_CLKDIV8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_CLKDIV8_CLK
    );
  NlwBufferBlock_Transmitter_ADRCOUNT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Transmitter_ADRCOUNT_0_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_38_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_38_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_37_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_37_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_36_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_36_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_35_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_35_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_42_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_42_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_41_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_41_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_40_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_40_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_39_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_39_CLK
    );
  NlwBufferBlock_Receiver_RCOUNT_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_RCOUNT_1_1_CLK
    );
  NlwBufferBlock_S_RCVNGP_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_S_RCVNGP_CLK
    );
  NlwBufferBlock_Receiver_RCOUNT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_RCOUNT_2_CLK
    );
  NlwBufferBlock_Receiver_RCOUNT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_RCOUNT_0_CLK
    );
  NlwBufferBlock_Receiver_RCOUNT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_RCOUNT_1_CLK
    );
  NlwBufferBlock_Receiver_RCOUNT_1_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Receiver_RCOUNT_1_glue_rst_1268,
      O => NlwBufferSignal_Receiver_RCOUNT_1_IN
    );
  NlwBufferBlock_Transmitter_TRON_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Transmitter_TRON_CLK
    );
  NlwBufferBlock_Receiver_RCOUNT_2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_RCOUNT_2_1_CLK
    );
  NlwBufferBlock_Receiver_RCOUNT_2_1_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Receiver_RCOUNT_2_glue_rst_1272,
      O => NlwBufferSignal_Receiver_RCOUNT_2_1_IN
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_46_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_46_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_45_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_45_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_44_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_44_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_43_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_43_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_14_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_13_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_12_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_11_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_2_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_1_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_0_CLK
    );
  NlwBufferBlock_Transmitter_COUNT4_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Transmitter_COUNT4_2_CLK
    );
  NlwBufferBlock_TREADDP_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_TREADDP_CLK
    );
  NlwBufferBlock_RDATAO_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_RDATAO_7_CLK
    );
  NlwBufferBlock_RDATAO_7_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_7_IBUF_0,
      O => NlwBufferSignal_RDATAO_7_IN
    );
  NlwBufferBlock_RDATAO_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_RDATAO_6_CLK
    );
  NlwBufferBlock_RDATAO_6_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_6_IBUF_0,
      O => NlwBufferSignal_RDATAO_6_IN
    );
  NlwBufferBlock_RDATAO_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_RDATAO_5_CLK
    );
  NlwBufferBlock_RDATAO_5_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_5_IBUF_0,
      O => NlwBufferSignal_RDATAO_5_IN
    );
  NlwBufferBlock_RDATAO_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_RDATAO_4_CLK
    );
  NlwBufferBlock_RDATAO_4_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_4_IBUF_0,
      O => NlwBufferSignal_RDATAO_4_IN
    );
  NlwBufferBlock_R_REQUEST_CK_SYNC_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_R_REQUEST_CK_SYNC_CLK
    );
  NlwBufferBlock_RCLEANP_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_RCLEANP_CLK
    );
  NlwBufferBlock_Transmitter_COUNT4_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Transmitter_COUNT4_0_CLK
    );
  NlwBufferBlock_Transmitter_COUNT4_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Transmitter_COUNT4_1_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_29_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_28_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_27_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_26_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_25_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_24_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_23_CLK
    );
  NlwBufferBlock_Receiver_ADDRESS_BUFFER_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_Receiver_ADDRESS_BUFFER_22_CLK
    );
  NlwBufferBlock_RECEIVING_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_RECEIVING_CLK
    );
  NlwBufferBlock_RDONEP_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_RDONEP_CLK
    );
  NlwBufferBlock_RBYTEP_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_RBYTEP_CLK
    );
  NlwBufferBlock_RDATAO_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_RDATAO_3_CLK
    );
  NlwBufferBlock_RDATAO_3_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_3_IBUF_0,
      O => NlwBufferSignal_RDATAO_3_IN
    );
  NlwBufferBlock_RDATAO_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_RDATAO_2_CLK
    );
  NlwBufferBlock_RDATAO_2_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_2_IBUF_0,
      O => NlwBufferSignal_RDATAO_2_IN
    );
  NlwBufferBlock_RDATAO_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_RDATAO_1_CLK
    );
  NlwBufferBlock_RDATAO_1_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_1_IBUF_0,
      O => NlwBufferSignal_RDATAO_1_IN
    );
  NlwBufferBlock_RDATAO_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_RDATAO_0_CLK
    );
  NlwBufferBlock_RDATAO_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => RDATAI_0_IBUF_0,
      O => NlwBufferSignal_RDATAO_0_IN
    );
  NlwBufferBlock_SENDING_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_SENDING_CLK
    );
  NlwBufferBlock_SENDING_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Transmitter_TRON_1150,
      O => NlwBufferSignal_SENDING_IN
    );
  NlwBufferBlock_TSOCOLP_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK10I_BUFGP,
      O => NlwBufferSignal_TSOCOLP_CLK
    );
  NlwBlock_Core_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_Core_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

