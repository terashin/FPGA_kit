--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: elect_dice_timesim.vhd
-- /___/   /\     Timestamp: WED 25 MAY 3:9:33 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -filter C:/Users/teramoto_2/Documents/works/FPGA/project/elect_dice/iseconfig/filter.filter -intstyle ise -s 4 -pcf elect_dice.pcf -rpw 100 -tpw 0 -ar Structure -tm elect_dice -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim elect_dice.ncd elect_dice_timesim.vhd 
-- Device	: 3s700afg400-4 (PRODUCTION 1.42 2013-10-13)
-- Input file	: elect_dice.ncd
-- Output file	: C:\Users\teramoto_2\Documents\works\FPGA\project\elect_dice\netgen\par\elect_dice_timesim.vhd
-- # of Entities	: 1
-- Design Name	: elect_dice
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
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

entity elect_dice is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    DICE : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end elect_dice;

architecture Structure of elect_dice is
  signal RESET_IBUF_124 : STD_LOGIC; 
  signal Q_and0000 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal RESET_IBUF1_0 : STD_LOGIC; 
  signal Q_0_1_134 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal Q_2_1_140 : STD_LOGIC; 
  signal Q_1_1_141 : STD_LOGIC; 
  signal DEC_or0000_0 : STD_LOGIC; 
  signal DICE_0_O : STD_LOGIC; 
  signal DICE_1_O : STD_LOGIC; 
  signal DICE_2_O : STD_LOGIC; 
  signal DICE_2_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal DICE_2_192 : STD_LOGIC; 
  signal DICE_2_OUTPUT_OTCLK1INV_186 : STD_LOGIC; 
  signal DICE_3_O : STD_LOGIC; 
  signal DICE_4_O : STD_LOGIC; 
  signal DICE_5_O : STD_LOGIC; 
  signal Q_0_O : STD_LOGIC; 
  signal DICE_6_O : STD_LOGIC; 
  signal Q_1_O : STD_LOGIC; 
  signal Q_2_O : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_347 : STD_LOGIC; 
  signal RESET_IBUF1 : STD_LOGIC; 
  signal RESET_IBUF_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal Q_and0000_pack_4 : STD_LOGIC; 
  signal Q_1_1_DYMUX_389 : STD_LOGIC; 
  signal Q_1_1_GYMUX_388 : STD_LOGIC; 
  signal Q_1_1_SRINV_379 : STD_LOGIC; 
  signal Q_1_1_CLKINVNOT : STD_LOGIC; 
  signal Q_1_1_CEINV_377 : STD_LOGIC; 
  signal DEC_or0000 : STD_LOGIC; 
  signal Q_2_1_DYMUX_424 : STD_LOGIC; 
  signal Q_2_1_GYMUX_423 : STD_LOGIC; 
  signal Q_2_1_SRINV_415 : STD_LOGIC; 
  signal Q_2_1_CLKINVNOT : STD_LOGIC; 
  signal Q_2_1_CEINV_413 : STD_LOGIC; 
  signal DEC_1_DEC_1_DXMUX_461 : STD_LOGIC; 
  signal DEC_1_DEC_1_DYMUX_456 : STD_LOGIC; 
  signal DEC_1_DEC_1_GYMUX_455 : STD_LOGIC; 
  signal Mrom_DEC_mux0000 : STD_LOGIC; 
  signal DEC_1_DEC_1_CLKINVNOT : STD_LOGIC; 
  signal DEC_1_DEC_3_DXMUX_486 : STD_LOGIC; 
  signal DEC_1_DEC_3_DYMUX_481 : STD_LOGIC; 
  signal Mrom_DEC_mux00002 : STD_LOGIC; 
  signal DEC_1_DEC_3_CLKINVNOT : STD_LOGIC; 
  signal DEC_1_DEC_5_DXMUX_520 : STD_LOGIC; 
  signal Mrom_DEC_mux00005 : STD_LOGIC; 
  signal DEC_1_DEC_5_DYMUX_508 : STD_LOGIC; 
  signal Mrom_DEC_mux00004 : STD_LOGIC; 
  signal DEC_1_DEC_5_CLKINVNOT : STD_LOGIC; 
  signal Q_0_1_DYMUX_533 : STD_LOGIC; 
  signal Q_0_1_SRINV_531 : STD_LOGIC; 
  signal Q_0_1_CLKINVNOT : STD_LOGIC; 
  signal Q_0_1_CEINV_529 : STD_LOGIC; 
  signal DICE_0_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal DICE_0_158 : STD_LOGIC; 
  signal DICE_0_OUTPUT_OTCLK1INV_152 : STD_LOGIC; 
  signal DICE_1_OUTPUT_OTCLK1INV_169 : STD_LOGIC; 
  signal DICE_1_175 : STD_LOGIC; 
  signal DICE_1_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal DICE_3_OUTPUT_OTCLK1INV_203 : STD_LOGIC; 
  signal DICE_3_209 : STD_LOGIC; 
  signal DICE_3_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal DICE_4_OUTPUT_OTCLK1INV_220 : STD_LOGIC; 
  signal DICE_4_226 : STD_LOGIC; 
  signal DICE_4_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal DICE_5_OUTPUT_OTCLK1INV_237 : STD_LOGIC; 
  signal DICE_5_243 : STD_LOGIC; 
  signal DICE_5_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal Q_0_OUTPUT_OTCLK1INVNOT : STD_LOGIC; 
  signal Q_0_OUTPUT_OFF_OCEINV_274 : STD_LOGIC; 
  signal Q_0_271 : STD_LOGIC; 
  signal Q_0_OUTPUT_OFF_OSR_USED_269 : STD_LOGIC; 
  signal Q_0_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal Q_1_OUTPUT_OTCLK1INVNOT : STD_LOGIC; 
  signal Q_1_OUTPUT_OFF_OCEINV_311 : STD_LOGIC; 
  signal Q_1_308 : STD_LOGIC; 
  signal Q_1_OUTPUT_OFF_OSR_USED_306 : STD_LOGIC; 
  signal Q_1_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal Q_2_OUTPUT_OTCLK1INVNOT : STD_LOGIC; 
  signal Q_2_OUTPUT_OFF_OCEINV_340 : STD_LOGIC; 
  signal Q_2_337 : STD_LOGIC; 
  signal Q_2_OUTPUT_OFF_OSR_USED_335 : STD_LOGIC; 
  signal Q_2_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal DICE_6_OUTPUT_OFF_O1INV_282 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_DICE_2_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_DICE_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_DICE_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_DICE_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_DICE_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_DICE_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_DEC_1_DEC_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_DEC_1_DEC_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_DEC_1_DEC_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_DEC_1_DEC_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_DEC_1_DEC_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_DEC_1_DEC_5_CLK : STD_LOGIC; 
  signal DEC_1_DEC : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 1 ); 
begin
  DICE_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD262"
    )
    port map (
      I => DICE_0_O,
      O => DICE(0)
    );
  DICE_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD250"
    )
    port map (
      I => DICE_1_O,
      O => DICE(1)
    );
  DICE_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD251"
    )
    port map (
      I => DICE_2_O,
      O => DICE(2)
    );
  DICE_2_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      LOC => "PAD251",
      PATHPULSE => 592 ps
    )
    port map (
      I => DEC_1_DEC(2),
      O => DICE_2_OUTPUT_OFF_ODDRIN1_MUX
    );
  DICE_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD251",
      PATHPULSE => 592 ps
    )
    port map (
      I => DICE_2_192,
      O => DICE_2_O
    );
  DICE_2 : X_LATCHE
    generic map(
      LOC => "PAD251",
      INIT => '0'
    )
    port map (
      I => DICE_2_OUTPUT_OFF_ODDRIN1_MUX,
      GE => VCC,
      CLK => NlwInverterSignal_DICE_2_CLK,
      SET => GND,
      RST => GND,
      O => DICE_2_192
    );
  DICE_2_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD251",
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF_124,
      O => DICE_2_OUTPUT_OTCLK1INV_186
    );
  DICE_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD247"
    )
    port map (
      I => DICE_3_O,
      O => DICE(3)
    );
  DICE_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD246"
    )
    port map (
      I => DICE_4_O,
      O => DICE(4)
    );
  DICE_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD260"
    )
    port map (
      I => DICE_5_O,
      O => DICE(5)
    );
  Q_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD376"
    )
    port map (
      I => Q_0_O,
      O => Q(0)
    );
  DICE_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD230"
    )
    port map (
      I => DICE_6_O,
      O => DICE(6)
    );
  Q_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD375"
    )
    port map (
      I => Q_1_O,
      O => Q(1)
    );
  Q_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD388"
    )
    port map (
      I => Q_2_O,
      O => Q(2)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 592 ps
    )
    port map (
      I => CLK,
      O => CLK_BUFGP_IBUFG_347
    );
  RESET_IBUF : X_BUF
    generic map(
      LOC => "IPAD329",
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET,
      O => RESET_IBUF1
    );
  RESET_IBUF_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y1"
    )
    port map (
      I0 => RESET_IBUF1_0,
      I1 => GND,
      S => RESET_IBUF_BUFG_S_INVNOT,
      O => RESET_IBUF_124
    );
  RESET_IBUF_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y1",
      PATHPULSE => 592 ps
    )
    port map (
      I => '1',
      O => RESET_IBUF_BUFG_S_INVNOT
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y11"
    )
    port map (
      I0 => CLK_BUFGP_IBUFG_0,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => '1',
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  Mcount_Q_xor_1_11 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => Q_1_1_141,
      ADR1 => Q_0_1_134,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result(1)
    );
  Q_1_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_1_1_DYMUX_389,
      CE => Q_1_1_CEINV_377,
      CLK => Q_1_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Q_1_1_SRINV_379,
      O => Q_1_1_141
    );
  Q_and00001 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => RESET_IBUF1_0,
      ADR1 => Q_2_1_140,
      ADR2 => Q_0_1_134,
      ADR3 => Q_1_1_141,
      O => Q_and0000_pack_4
    );
  Q_1_1_XUSED : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_and0000_pack_4,
      O => Q_and0000
    );
  Q_1_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_1_1_GYMUX_388,
      O => Q_1_1_DYMUX_389
    );
  Q_1_1_GYMUX : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Result(1),
      O => Q_1_1_GYMUX_388
    );
  Q_1_1_SRINV : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_and0000,
      O => Q_1_1_SRINV_379
    );
  Q_1_1_CLKINV : X_INV
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_1_1_CLKINVNOT
    );
  Q_1_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF1_0,
      O => Q_1_1_CEINV_377
    );
  Q_2_1_XUSED : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => DEC_or0000,
      O => DEC_or0000_0
    );
  Q_2_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_2_1_GYMUX_423,
      O => Q_2_1_DYMUX_424
    );
  Q_2_1_GYMUX : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Result(2),
      O => Q_2_1_GYMUX_423
    );
  Q_2_1_SRINV : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_and0000,
      O => Q_2_1_SRINV_415
    );
  Q_2_1_CLKINV : X_INV
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_2_1_CLKINVNOT
    );
  Q_2_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF1_0,
      O => Q_2_1_CEINV_413
    );
  DEC_1_DEC_1_DXMUX : X_INV
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_2_1_140,
      O => DEC_1_DEC_1_DXMUX_461
    );
  DEC_1_DEC_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => DEC_1_DEC_1_GYMUX_455,
      O => DEC_1_DEC_1_DYMUX_456
    );
  DEC_1_DEC_1_GYMUX : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Mrom_DEC_mux0000,
      O => DEC_1_DEC_1_GYMUX_455
    );
  DEC_1_DEC_1_CLKINV : X_INV
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => DEC_or0000_0,
      O => DEC_1_DEC_1_CLKINVNOT
    );
  DEC_1_DEC_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => DEC_1_DEC_1_GYMUX_455,
      O => DEC_1_DEC_3_DXMUX_486
    );
  DEC_1_DEC_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Mrom_DEC_mux00002,
      O => DEC_1_DEC_3_DYMUX_481
    );
  DEC_1_DEC_3_CLKINV : X_INV
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => DEC_or0000_0,
      O => DEC_1_DEC_3_CLKINVNOT
    );
  DEC_1_DEC_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Mrom_DEC_mux00005,
      O => DEC_1_DEC_5_DXMUX_520
    );
  DEC_1_DEC_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Mrom_DEC_mux00004,
      O => DEC_1_DEC_5_DYMUX_508
    );
  DEC_1_DEC_5_CLKINV : X_INV
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => DEC_or0000_0,
      O => DEC_1_DEC_5_CLKINVNOT
    );
  Q_0_1_DYMUX : X_INV
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_0_1_134,
      O => Q_0_1_DYMUX_533
    );
  Q_0_1_SRINV : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_and0000,
      O => Q_0_1_SRINV_531
    );
  Q_0_1_CLKINV : X_INV
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_0_1_CLKINVNOT
    );
  Q_0_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF1_0,
      O => Q_0_1_CEINV_529
    );
  DICE_0_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 592 ps
    )
    port map (
      I => DEC_1_DEC(0),
      O => DICE_0_OUTPUT_OFF_ODDRIN1_MUX
    );
  DICE_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 592 ps
    )
    port map (
      I => DICE_0_158,
      O => DICE_0_O
    );
  DICE_0_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF_124,
      O => DICE_0_OUTPUT_OTCLK1INV_152
    );
  DICE_0 : X_LATCHE
    generic map(
      LOC => "PAD262",
      INIT => '0'
    )
    port map (
      I => DICE_0_OUTPUT_OFF_ODDRIN1_MUX,
      GE => VCC,
      CLK => NlwInverterSignal_DICE_0_CLK,
      SET => GND,
      RST => GND,
      O => DICE_0_158
    );
  DICE_1_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD250",
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF_124,
      O => DICE_1_OUTPUT_OTCLK1INV_169
    );
  DICE_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD250",
      PATHPULSE => 592 ps
    )
    port map (
      I => DICE_1_175,
      O => DICE_1_O
    );
  DICE_1_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      LOC => "PAD250",
      PATHPULSE => 592 ps
    )
    port map (
      I => DEC_1_DEC(1),
      O => DICE_1_OUTPUT_OFF_ODDRIN1_MUX
    );
  DICE_1 : X_LATCHE
    generic map(
      LOC => "PAD250",
      INIT => '0'
    )
    port map (
      I => DICE_1_OUTPUT_OFF_ODDRIN1_MUX,
      GE => VCC,
      CLK => NlwInverterSignal_DICE_1_CLK,
      SET => GND,
      RST => GND,
      O => DICE_1_175
    );
  DICE_3_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD247",
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF_124,
      O => DICE_3_OUTPUT_OTCLK1INV_203
    );
  DICE_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD247",
      PATHPULSE => 592 ps
    )
    port map (
      I => DICE_3_209,
      O => DICE_3_O
    );
  DICE_3_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      LOC => "PAD247",
      PATHPULSE => 592 ps
    )
    port map (
      I => DEC_1_DEC(3),
      O => DICE_3_OUTPUT_OFF_ODDRIN1_MUX
    );
  DICE_3 : X_LATCHE
    generic map(
      LOC => "PAD247",
      INIT => '0'
    )
    port map (
      I => DICE_3_OUTPUT_OFF_ODDRIN1_MUX,
      GE => VCC,
      CLK => NlwInverterSignal_DICE_3_CLK,
      SET => GND,
      RST => GND,
      O => DICE_3_209
    );
  DICE_4_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD246",
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF_124,
      O => DICE_4_OUTPUT_OTCLK1INV_220
    );
  DICE_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD246",
      PATHPULSE => 592 ps
    )
    port map (
      I => DICE_4_226,
      O => DICE_4_O
    );
  DICE_4_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      LOC => "PAD246",
      PATHPULSE => 592 ps
    )
    port map (
      I => DEC_1_DEC(4),
      O => DICE_4_OUTPUT_OFF_ODDRIN1_MUX
    );
  DICE_4 : X_LATCHE
    generic map(
      LOC => "PAD246",
      INIT => '0'
    )
    port map (
      I => DICE_4_OUTPUT_OFF_ODDRIN1_MUX,
      GE => VCC,
      CLK => NlwInverterSignal_DICE_4_CLK,
      SET => GND,
      RST => GND,
      O => DICE_4_226
    );
  DICE_5_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF_124,
      O => DICE_5_OUTPUT_OTCLK1INV_237
    );
  DICE_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 592 ps
    )
    port map (
      I => DICE_5_243,
      O => DICE_5_O
    );
  DICE_5_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 592 ps
    )
    port map (
      I => DEC_1_DEC(5),
      O => DICE_5_OUTPUT_OFF_ODDRIN1_MUX
    );
  DICE_5 : X_LATCHE
    generic map(
      LOC => "PAD260",
      INIT => '0'
    )
    port map (
      I => DICE_5_OUTPUT_OFF_ODDRIN1_MUX,
      GE => VCC,
      CLK => NlwInverterSignal_DICE_5_CLK,
      SET => GND,
      RST => GND,
      O => DICE_5_243
    );
  Q_0_OUTPUT_OTCLK1INV : X_INV
    generic map(
      LOC => "PAD376",
      PATHPULSE => 592 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_0_OUTPUT_OTCLK1INVNOT
    );
  Q_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD376",
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_0_271,
      O => Q_0_O
    );
  Q_0_OUTPUT_OFF_OSR_USED : X_BUF
    generic map(
      LOC => "PAD376",
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_and0000,
      O => Q_0_OUTPUT_OFF_OSR_USED_269
    );
  Q_0_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD376",
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF1_0,
      O => Q_0_OUTPUT_OFF_OCEINV_274
    );
  Q_0_OUTPUT_OFF_O1_DDRMUX : X_INV
    generic map(
      LOC => "PAD376",
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_0_1_134,
      O => Q_0_OUTPUT_OFF_ODDRIN1_MUX
    );
  Q_0 : X_SFF
    generic map(
      LOC => "PAD376",
      INIT => '0'
    )
    port map (
      I => Q_0_OUTPUT_OFF_ODDRIN1_MUX,
      CE => Q_0_OUTPUT_OFF_OCEINV_274,
      CLK => Q_0_OUTPUT_OTCLK1INVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Q_0_OUTPUT_OFF_OSR_USED_269,
      O => Q_0_271
    );
  Q_1_OUTPUT_OTCLK1INV : X_INV
    generic map(
      LOC => "PAD375",
      PATHPULSE => 592 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_1_OUTPUT_OTCLK1INVNOT
    );
  Q_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD375",
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_1_308,
      O => Q_1_O
    );
  Q_1_OUTPUT_OFF_OSR_USED : X_BUF
    generic map(
      LOC => "PAD375",
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_and0000,
      O => Q_1_OUTPUT_OFF_OSR_USED_306
    );
  Q_1_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD375",
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF1_0,
      O => Q_1_OUTPUT_OFF_OCEINV_311
    );
  Q_1_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      LOC => "PAD375",
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_1_1_GYMUX_388,
      O => Q_1_OUTPUT_OFF_ODDRIN1_MUX
    );
  Q_1 : X_SFF
    generic map(
      LOC => "PAD375",
      INIT => '0'
    )
    port map (
      I => Q_1_OUTPUT_OFF_ODDRIN1_MUX,
      CE => Q_1_OUTPUT_OFF_OCEINV_311,
      CLK => Q_1_OUTPUT_OTCLK1INVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Q_1_OUTPUT_OFF_OSR_USED_306,
      O => Q_1_308
    );
  Q_2_OUTPUT_OTCLK1INV : X_INV
    generic map(
      LOC => "PAD388",
      PATHPULSE => 592 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_2_OUTPUT_OTCLK1INVNOT
    );
  Q_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD388",
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_2_337,
      O => Q_2_O
    );
  Q_2_OUTPUT_OFF_OSR_USED : X_BUF
    generic map(
      LOC => "PAD388",
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_and0000,
      O => Q_2_OUTPUT_OFF_OSR_USED_335
    );
  Q_2_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD388",
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF1_0,
      O => Q_2_OUTPUT_OFF_OCEINV_340
    );
  Q_2_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      LOC => "PAD388",
      PATHPULSE => 592 ps
    )
    port map (
      I => Q_2_1_GYMUX_423,
      O => Q_2_OUTPUT_OFF_ODDRIN1_MUX
    );
  Q_2 : X_SFF
    generic map(
      LOC => "PAD388",
      INIT => '0'
    )
    port map (
      I => Q_2_OUTPUT_OFF_ODDRIN1_MUX,
      CE => Q_2_OUTPUT_OFF_OCEINV_340,
      CLK => Q_2_OUTPUT_OTCLK1INVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Q_2_OUTPUT_OFF_OSR_USED_335,
      O => Q_2_337
    );
  Mcount_Q_xor_2_11 : X_LUT4
    generic map(
      INIT => X"6C6C"
    )
    port map (
      ADR0 => Q_0_1_134,
      ADR1 => Q_2_1_140,
      ADR2 => Q_1_1_141,
      ADR3 => VCC,
      O => Result(2)
    );
  Q_2_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_2_1_DYMUX_424,
      CE => Q_2_1_CEINV_413,
      CLK => Q_2_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Q_2_1_SRINV_415,
      O => Q_2_1_140
    );
  DEC_or00001 : X_LUT4
    generic map(
      INIT => X"7777"
    )
    port map (
      ADR0 => Q_1_1_141,
      ADR1 => Q_2_1_140,
      ADR2 => VCC,
      ADR3 => VCC,
      O => DEC_or0000
    );
  Mrom_DEC_mux00001 : X_LUT4
    generic map(
      INIT => X"3636"
    )
    port map (
      ADR0 => Q_0_1_134,
      ADR1 => Q_1_1_141,
      ADR2 => Q_2_1_140,
      ADR3 => VCC,
      O => Mrom_DEC_mux0000
    );
  DEC_1_DEC_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => DEC_1_DEC_1_DYMUX_456,
      GE => VCC,
      CLK => NlwInverterSignal_DEC_1_DEC_0_CLK,
      SET => GND,
      RST => GND,
      O => DEC_1_DEC(0)
    );
  DEC_1_DEC_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => DEC_1_DEC_1_DXMUX_461,
      GE => VCC,
      CLK => NlwInverterSignal_DEC_1_DEC_1_CLK,
      SET => GND,
      RST => GND,
      O => DEC_1_DEC(1)
    );
  Mrom_DEC_mux000021 : X_LUT4
    generic map(
      INIT => X"6767"
    )
    port map (
      ADR0 => Q_1_1_141,
      ADR1 => Q_2_1_140,
      ADR2 => Q_0_1_134,
      ADR3 => VCC,
      O => Mrom_DEC_mux00002
    );
  DEC_1_DEC_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => DEC_1_DEC_3_DYMUX_481,
      GE => VCC,
      CLK => NlwInverterSignal_DEC_1_DEC_2_CLK,
      SET => GND,
      RST => GND,
      O => DEC_1_DEC(2)
    );
  DEC_1_DEC_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => DEC_1_DEC_3_DXMUX_486,
      GE => VCC,
      CLK => NlwInverterSignal_DEC_1_DEC_3_CLK,
      SET => GND,
      RST => GND,
      O => DEC_1_DEC(3)
    );
  Mrom_DEC_mux000041 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => Q_1_1_141,
      ADR1 => Q_0_1_134,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Mrom_DEC_mux00004
    );
  DEC_1_DEC_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => DEC_1_DEC_5_DYMUX_508,
      GE => VCC,
      CLK => NlwInverterSignal_DEC_1_DEC_4_CLK,
      SET => GND,
      RST => GND,
      O => DEC_1_DEC(4)
    );
  Mrom_DEC_mux000051 : X_LUT4
    generic map(
      INIT => X"6464"
    )
    port map (
      ADR0 => Q_1_1_141,
      ADR1 => Q_2_1_140,
      ADR2 => Q_0_1_134,
      ADR3 => VCC,
      O => Mrom_DEC_mux00005
    );
  DEC_1_DEC_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => DEC_1_DEC_5_DXMUX_520,
      GE => VCC,
      CLK => NlwInverterSignal_DEC_1_DEC_5_CLK,
      SET => GND,
      RST => GND,
      O => DEC_1_DEC(5)
    );
  Q_0_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_0_1_DYMUX_533,
      CE => Q_0_1_CEINV_529,
      CLK => Q_0_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Q_0_1_SRINV_531,
      O => Q_0_1_134
    );
  DICE_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 592 ps
    )
    port map (
      I => DICE_6_OUTPUT_OFF_O1INV_282,
      O => DICE_6_O
    );
  DICE_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 592 ps
    )
    port map (
      I => '0',
      O => DICE_6_OUTPUT_OFF_O1INV_282
    );
  CLK_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 592 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_347,
      O => CLK_BUFGP_IBUFG_0
    );
  RESET_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD329",
      PATHPULSE => 592 ps
    )
    port map (
      I => RESET_IBUF1,
      O => RESET_IBUF1_0
    );
  NlwBlock_elect_dice_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_DICE_2_CLK : X_INV
    port map (
      I => DICE_2_OUTPUT_OTCLK1INV_186,
      O => NlwInverterSignal_DICE_2_CLK
    );
  NlwBlock_elect_dice_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_DICE_0_CLK : X_INV
    port map (
      I => DICE_0_OUTPUT_OTCLK1INV_152,
      O => NlwInverterSignal_DICE_0_CLK
    );
  NlwInverterBlock_DICE_1_CLK : X_INV
    port map (
      I => DICE_1_OUTPUT_OTCLK1INV_169,
      O => NlwInverterSignal_DICE_1_CLK
    );
  NlwInverterBlock_DICE_3_CLK : X_INV
    port map (
      I => DICE_3_OUTPUT_OTCLK1INV_203,
      O => NlwInverterSignal_DICE_3_CLK
    );
  NlwInverterBlock_DICE_4_CLK : X_INV
    port map (
      I => DICE_4_OUTPUT_OTCLK1INV_220,
      O => NlwInverterSignal_DICE_4_CLK
    );
  NlwInverterBlock_DICE_5_CLK : X_INV
    port map (
      I => DICE_5_OUTPUT_OTCLK1INV_237,
      O => NlwInverterSignal_DICE_5_CLK
    );
  NlwInverterBlock_DEC_1_DEC_0_CLK : X_INV
    port map (
      I => DEC_1_DEC_1_CLKINVNOT,
      O => NlwInverterSignal_DEC_1_DEC_0_CLK
    );
  NlwInverterBlock_DEC_1_DEC_1_CLK : X_INV
    port map (
      I => DEC_1_DEC_1_CLKINVNOT,
      O => NlwInverterSignal_DEC_1_DEC_1_CLK
    );
  NlwInverterBlock_DEC_1_DEC_2_CLK : X_INV
    port map (
      I => DEC_1_DEC_3_CLKINVNOT,
      O => NlwInverterSignal_DEC_1_DEC_2_CLK
    );
  NlwInverterBlock_DEC_1_DEC_3_CLK : X_INV
    port map (
      I => DEC_1_DEC_3_CLKINVNOT,
      O => NlwInverterSignal_DEC_1_DEC_3_CLK
    );
  NlwInverterBlock_DEC_1_DEC_4_CLK : X_INV
    port map (
      I => DEC_1_DEC_5_CLKINVNOT,
      O => NlwInverterSignal_DEC_1_DEC_4_CLK
    );
  NlwInverterBlock_DEC_1_DEC_5_CLK : X_INV
    port map (
      I => DEC_1_DEC_5_CLKINVNOT,
      O => NlwInverterSignal_DEC_1_DEC_5_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

