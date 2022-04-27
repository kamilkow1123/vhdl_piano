-- Vhdl test bench created from schematic C:\Users\lab\Desktop\organs\schema.sch - Thu Apr 07 09:02:48 2022
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY schema_schema_sch_tb IS
END schema_schema_sch_tb;
ARCHITECTURE behavioral OF schema_schema_sch_tb IS 

   COMPONENT schema
   PORT( SPI_MOSI	:	OUT	STD_LOGIC; 
          SPI_MISO	:	IN	STD_LOGIC; 
          SPI_SCK	:	OUT	STD_LOGIC; 
          DAC_CS	:	OUT	STD_LOGIC; 
          DAC_CLR	:	OUT	STD_LOGIC; 
          SPI_SS_B	:	OUT	STD_LOGIC; 
          AMP_CS	:	OUT	STD_LOGIC; 
          AD_CONV	:	OUT	STD_LOGIC; 
          SF_CE0	:	OUT	STD_LOGIC; 
          FPGA_INIT_B	:	OUT	STD_LOGIC; 
          Busy	:	OUT	STD_LOGIC; 
          Clk	:	IN	STD_LOGIC; 
          Res	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL SPI_MOSI	:	STD_LOGIC;
   SIGNAL SPI_MISO	:	STD_LOGIC;
   SIGNAL SPI_SCK	:	STD_LOGIC;
   SIGNAL DAC_CS	:	STD_LOGIC;
   SIGNAL DAC_CLR	:	STD_LOGIC;
   SIGNAL SPI_SS_B	:	STD_LOGIC;
   SIGNAL AMP_CS	:	STD_LOGIC;
   SIGNAL AD_CONV	:	STD_LOGIC;
   SIGNAL SF_CE0	:	STD_LOGIC;
   SIGNAL FPGA_INIT_B	:	STD_LOGIC;
   SIGNAL Busy	:	STD_LOGIC;
   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL Res	:	STD_LOGIC;
	
	  -- Clock period definitions
   constant Clk_Half_Period : time := 10 ns;

BEGIN

   UUT: schema PORT MAP(
		SPI_MOSI => SPI_MOSI, 
		SPI_MISO => SPI_MISO, 
		SPI_SCK => SPI_SCK, 
		DAC_CS => DAC_CS, 
		DAC_CLR => DAC_CLR, 
		SPI_SS_B => SPI_SS_B, 
		AMP_CS => AMP_CS, 
		AD_CONV => AD_CONV, 
		SF_CE0 => SF_CE0, 
		FPGA_INIT_B => FPGA_INIT_B, 
		Busy => Busy, 
		Clk => Clk, 
		Res => Res
   );


Res <= '1', '0' after 10 ns;

clk_process :process
begin
   Clk <= '0';
	wait for Clk_Half_Period/2;
	Clk <= '1';
	wait for Clk_Half_Period/2;
end process;

stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_Half_Period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
