--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schemaWithKeyboard.vhf
-- /___/   /\     Timestamp : 04/27/2022 21:05:09
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/kamil/Desktop/STUDIA/VI SEMESTR/UCiSW2/ucisw26.04/organs/schemaWithKeyboard.vhf" -w "C:/Users/kamil/Desktop/STUDIA/VI SEMESTR/UCiSW2/ucisw26.04/organs/schemaWithKeyboard.sch"
--Design Name: schemaWithKeyboard
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schemaWithKeyboard is
   port ( Clk         : in    std_logic; 
          PS2_Clk     : in    std_logic; 
          PS2_Data    : in    std_logic; 
          Res         : in    std_logic; 
          SPI_MISO    : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          Busy        : out   std_logic; 
          Code_Out    : out   std_logic_vector (3 downto 0); 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          SF_CE0      : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic; 
          VGA_B       : out   std_logic; 
          VGA_G       : out   std_logic; 
          VGA_HS      : out   std_logic; 
          VGA_R       : out   std_logic; 
          VGA_VS      : out   std_logic);
end schemaWithKeyboard;

architecture BEHAVIORAL of schemaWithKeyboard is
   attribute BOX_TYPE   : string ;
   signal XLXN_8                        : std_logic;
   signal XLXN_11                       : std_logic;
   signal XLXN_26                       : std_logic_vector (3 downto 0);
   signal XLXN_27                       : std_logic_vector (3 downto 0);
   signal XLXN_30                       : std_logic_vector (7 downto 0);
   signal XLXN_37                       : std_logic_vector (11 downto 0);
   signal XLXN_55                       : std_logic;
   signal XLXN_62                       : std_logic;
   signal XLXN_63                       : std_logic_vector (7 downto 0);
   signal XLXN_64                       : std_logic;
   signal XLXN_66                       : std_logic;
   signal Code_Out_DUMMY                : std_logic_vector (3 downto 0);
   signal XLXI_7_CursorOn_openSignal    : std_logic;
   signal XLXI_7_Goto00_openSignal      : std_logic;
   signal XLXI_7_Home_openSignal        : std_logic;
   signal XLXI_7_NewLine_openSignal     : std_logic;
   signal XLXI_7_ScrollClear_openSignal : std_logic;
   signal XLXI_7_ScrollEn_openSignal    : std_logic;
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component KeyboardMapper
      port ( Clk           : in    std_logic; 
             E0            : in    std_logic; 
             F0            : in    std_logic; 
             Data_In_Ready : in    std_logic; 
             Data_In       : in    std_logic_vector (7 downto 0); 
             Code_Out      : out   std_logic_vector (3 downto 0));
   end component;
   
   component SawGenerator
      port ( Clk        : in    std_logic; 
             Code       : in    std_logic_vector (3 downto 0); 
             Sample_Rdy : out   std_logic; 
             Sample     : out   std_logic_vector (11 downto 0));
   end component;
   
   component DACWrite
      port ( Reset       : in    std_logic; 
             Start       : in    std_logic; 
             SPI_MISO    : in    std_logic; 
             Cmd         : in    std_logic_vector (3 downto 0); 
             Addr        : in    std_logic_vector (3 downto 0); 
             DATA        : in    std_logic_vector (11 downto 0); 
             DAC_CLR     : out   std_logic; 
             DAC_CS      : out   std_logic; 
             SPI_MOSI    : out   std_logic; 
             SPI_SCK     : out   std_logic; 
             SPI_SS_B    : out   std_logic; 
             AMP_CS      : out   std_logic; 
             AD_CONV     : out   std_logic; 
             SF_CE0      : out   std_logic; 
             FPGA_INIT_B : out   std_logic; 
             Busy        : out   std_logic; 
             Clk_50MHz   : in    std_logic; 
             Clk_Sys     : in    std_logic);
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component VGAMapper
      port ( F0            : in    std_logic; 
             Clk           : in    std_logic; 
             Data_In_Ready : in    std_logic; 
             Code          : in    std_logic_vector (3 downto 0); 
             Char_Ready    : out   std_logic; 
             Char_Out      : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXN_26(3 downto 0) <= x"3";
   XLXN_27(3 downto 0) <= x"F";
   Code_Out(3 downto 0) <= Code_Out_DUMMY(3 downto 0);
   XLXI_1 : PS2_Kbd
      port map (Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_30(7 downto 0),
                DO_Rdy=>XLXN_66,
                E0=>XLXN_8,
                F0=>XLXN_64);
   
   XLXI_2 : KeyboardMapper
      port map (Clk=>Clk,
                Data_In(7 downto 0)=>XLXN_30(7 downto 0),
                Data_In_Ready=>XLXN_66,
                E0=>XLXN_8,
                F0=>XLXN_64,
                Code_Out(3 downto 0)=>Code_Out_DUMMY(3 downto 0));
   
   XLXI_3 : SawGenerator
      port map (Clk=>Clk,
                Code(3 downto 0)=>Code_Out_DUMMY(3 downto 0),
                Sample(11 downto 0)=>XLXN_37(11 downto 0),
                Sample_Rdy=>XLXN_11);
   
   XLXI_4 : DACWrite
      port map (Addr(3 downto 0)=>XLXN_27(3 downto 0),
                Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                Cmd(3 downto 0)=>XLXN_26(3 downto 0),
                DATA(11 downto 0)=>XLXN_37(11 downto 0),
                Reset=>Res,
                SPI_MISO=>SPI_MISO,
                Start=>XLXN_11,
                AD_CONV=>AD_CONV,
                AMP_CS=>AMP_CS,
                Busy=>Busy,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>SF_CE0,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
   XLXI_7 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_63(7 downto 0),
                Char_WE=>XLXN_62,
                Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                CursorOn=>XLXI_7_CursorOn_openSignal,
                Goto00=>XLXI_7_Goto00_openSignal,
                Home=>XLXI_7_Home_openSignal,
                NewLine=>XLXI_7_NewLine_openSignal,
                ScrollClear=>XLXI_7_ScrollClear_openSignal,
                ScrollEn=>XLXI_7_ScrollEn_openSignal,
                Busy=>open,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_55,
                VGA_VS=>VGA_VS);
   
   XLXI_11 : BUF
      port map (I=>XLXN_55,
                O=>VGA_R);
   
   XLXI_12 : BUF
      port map (I=>XLXN_55,
                O=>VGA_G);
   
   XLXI_13 : BUF
      port map (I=>XLXN_55,
                O=>VGA_B);
   
   XLXI_14 : VGAMapper
      port map (Clk=>Clk,
                Code(3 downto 0)=>Code_Out_DUMMY(3 downto 0),
                Data_In_Ready=>XLXN_66,
                F0=>XLXN_64,
                Char_Out(7 downto 0)=>XLXN_63(7 downto 0),
                Char_Ready=>XLXN_62);
   
end BEHAVIORAL;


