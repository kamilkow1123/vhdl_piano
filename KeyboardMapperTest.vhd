--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:48:29 04/02/2022
-- Design Name:   
-- Module Name:   C:/Users/kamil/Desktop/STUDIA/VI SEMESTR/UCiSW2/organs/KeyboardMapperTest.vhd
-- Project Name:  organs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: KeyboardMapper
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
 
ENTITY KeyboardMapperTest IS
END KeyboardMapperTest;
 
ARCHITECTURE behavior OF KeyboardMapperTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT KeyboardMapper
    PORT(
         Clk : IN  std_logic;
         E0 : IN  std_logic;
         F0 : IN  std_logic;
         Data_In : IN  std_logic_vector(7 downto 0);
         Data_In_Ready : IN  std_logic;
         Code_Out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal E0 : std_logic := '0';
   signal F0 : std_logic := '0';
   signal Data_In : std_logic_vector(7 downto 0) := (others => '0');
   signal Data_In_Ready : std_logic := '0';

 	--Outputs
   signal Code_Out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: KeyboardMapper PORT MAP (
          Clk => Clk,
          E0 => E0,
          F0 => F0,
          Data_In => Data_In,
          Data_In_Ready => Data_In_Ready,
          Code_Out => Code_Out
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

	keyboard_process: process
	begin
		F0 <= '1';
		Data_In_Ready <= '1';		
		wait for 200ns;
		Data_In <= X"1C"; --A key, C note, 0001 code
		wait for 200ns;	
		Data_In <= X"1D"; --W key, C# note, 0010 code	
		wait for 200ns;
		F0 <= '0';
		wait for 200ns;
		Data_In <= X"1B"; --S key, D note, 0011 code
		wait for 200ns;		
		--Rdy <= '0';
		Data_In <= X"24"; --E key, D# note, 0100 code
		wait for 200ns;
		Data_In <= X"23"; --D key, E note, 0101 code
		wait for 200ns;		
		--Rdy <= '1';
		Data_In <= X"2B"; --F key, F note, 0110 code
		wait for 200ns;
		Data_In <= X"2C"; --T key, F# note, 0111 code
		wait for 200ns;
		Data_In <= X"34"; --G key, G note, 1000 code
		wait for 200ns;
		Data_In <= X"35"; --Y key, G# note, 1001 code
		wait for 200ns;
		Data_In <= X"31"; --other
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
