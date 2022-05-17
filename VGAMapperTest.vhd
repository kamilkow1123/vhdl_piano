--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:05:11 04/27/2022
-- Design Name:   
-- Module Name:   C:/Users/kamil/Desktop/STUDIA/VI SEMESTR/UCiSW2/ucisw26.04/organs/VGAMapperTest.vhd
-- Project Name:  organs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGAMapper
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY VGAMapperTest IS
END VGAMapperTest;
 
ARCHITECTURE behavior OF VGAMapperTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGAMapper
    PORT(
         F0 : IN  std_logic;
         Code : IN  std_logic_vector(3 downto 0);
         Clk : IN  std_logic;
         Data_In_Ready : IN  std_logic;
         Char_Out : OUT  std_logic_vector(7 downto 0);
         Char_Ready : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal F0 : std_logic := '0';
   signal Code : std_logic_vector(3 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal Data_In_Ready : std_logic := '0';

 	--Outputs
   signal Char_Out : std_logic_vector(7 downto 0);
   signal Char_Ready : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGAMapper PORT MAP (
          F0 => F0,
          Code => Code,
          Clk => Clk,
          Data_In_Ready => Data_In_Ready,
          Char_Out => Char_Out,
          Char_Ready => Char_Ready
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
	
	vga_process: process
	begin
		F0 <= '1';
		Data_In_Ready <= '1';		
		wait for 200ns;
		Code <= "0001"; --"c", ascii "01100011"
		wait for 200ns;
		Data_In_Ready <= '0';	
		Code <= "0010"; --"C", ascii "01000011"	
		wait for 200ns;
		Data_In_Ready <= '1';	
		F0 <= '0';
		wait for 200ns;
		Code <= "0011"; --"d", ascii "01100100"
		wait for 200ns;		
		Code <= "0100"; --"D", ascii "01000100"
		wait for 200ns;
		Code <= "0101"; --"e", ascii "01100101"
		wait for 200ns;		
		Code <= "0110"; --"f", ascii "01100110"
		wait for 200ns;
		Code <= "0111"; --"F", ascii "01000110"
		wait for 200ns;
		Code <= "1000"; --"g", ascii "01100111"
		wait for 200ns;
		Code <= "1001"; --"G", ascii "01000111"
		wait for 200ns;
		Code <= "1110"; --other
		wait;
	end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
