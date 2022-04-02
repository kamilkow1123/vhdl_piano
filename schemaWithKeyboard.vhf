--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schemaWithKeyboard.vhf
-- /___/   /\     Timestamp : 04/02/2022 17:30:52
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/kamil/Desktop/STUDIA/VI SEMESTR/UCiSW2/organs/schemaWithKeyboard.vhf" -w "C:/Users/kamil/Desktop/STUDIA/VI SEMESTR/UCiSW2/organs/schemaWithKeyboard.sch"
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
          SPI_MISO    : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          Busy        : out   std_logic; 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          SF_CE0      : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic);
end schemaWithKeyboard;

architecture BEHAVIORAL of schemaWithKeyboard is
   signal XLXN_6                  : std_logic_vector (7 downto 0);
   signal XLXN_7                  : std_logic;
   signal XLXN_8                  : std_logic;
   signal XLXN_9                  : std_logic;
   signal XLXN_10                 : std_logic_vector (3 downto 0);
   signal XLXN_11                 : std_logic;
   signal XLXN_12                 : std_logic_vector (11 downto 0);
   signal XLXN_26                 : std_logic_vector (3 downto 0);
   signal XLXN_27                 : std_logic_vector (3 downto 0);
   signal XLXI_4_Reset_openSignal : std_logic;
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
   
begin
   XLXN_26(3 downto 0) <= x"3";
   XLXN_27(3 downto 0) <= x"F";
   XLXI_1 : PS2_Kbd
      port map (Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_6(7 downto 0),
                DO_Rdy=>XLXN_7,
                E0=>XLXN_8,
                F0=>XLXN_9);
   
   XLXI_2 : KeyboardMapper
      port map (Clk=>Clk,
                Data_In(7 downto 0)=>XLXN_6(7 downto 0),
                Data_In_Ready=>XLXN_7,
                E0=>XLXN_8,
                F0=>XLXN_9,
                Code_Out(3 downto 0)=>XLXN_10(3 downto 0));
   
   XLXI_3 : SawGenerator
      port map (Clk=>Clk,
                Code(3 downto 0)=>XLXN_10(3 downto 0),
                Sample(11 downto 0)=>XLXN_12(11 downto 0),
                Sample_Rdy=>XLXN_11);
   
   XLXI_4 : DACWrite
      port map (Addr(3 downto 0)=>XLXN_27(3 downto 0),
                Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                Cmd(3 downto 0)=>XLXN_26(3 downto 0),
                DATA(11 downto 0)=>XLXN_12(11 downto 0),
                Reset=>XLXI_4_Reset_openSignal,
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
   
end BEHAVIORAL;


