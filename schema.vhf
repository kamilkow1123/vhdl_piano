--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schema.vhf
-- /___/   /\     Timestamp : 04/21/2022 09:18:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/organs/schema.vhf -w C:/Users/lab/Desktop/organs/schema.sch
--Design Name: schema
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

entity schema is
   port ( Clk         : in    std_logic; 
          Res         : in    std_logic; 
          SPI_MISO    : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          SF_CE0      : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic);
end schema;

architecture BEHAVIORAL of schema is
   signal XLXN_3      : std_logic_vector (3 downto 0);
   signal XLXN_4      : std_logic_vector (3 downto 0);
   signal XLXN_6      : std_logic_vector (3 downto 0);
   signal XLXN_8      : std_logic;
   signal XLXN_9      : std_logic_vector (11 downto 0);
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
   
   component SawGenerator
      port ( Clk        : in    std_logic; 
             Code       : in    std_logic_vector (3 downto 0); 
             Sample_Rdy : out   std_logic; 
             Sample     : out   std_logic_vector (11 downto 0));
   end component;
   
begin
   XLXN_3(3 downto 0) <= x"3";
   XLXN_4(3 downto 0) <= x"F";
   XLXN_6(3 downto 0) <= x"2";
   XLXI_4 : DACWrite
      port map (Addr(3 downto 0)=>XLXN_4(3 downto 0),
                Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                Cmd(3 downto 0)=>XLXN_3(3 downto 0),
                DATA(11 downto 0)=>XLXN_9(11 downto 0),
                Reset=>Res,
                SPI_MISO=>SPI_MISO,
                Start=>XLXN_8,
                AD_CONV=>AD_CONV,
                AMP_CS=>AMP_CS,
                Busy=>open,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>SF_CE0,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
   XLXI_5 : SawGenerator
      port map (Clk=>Clk,
                Code(3 downto 0)=>XLXN_6(3 downto 0),
                Sample(11 downto 0)=>XLXN_9(11 downto 0),
                Sample_Rdy=>XLXN_8);
   
end BEHAVIORAL;


