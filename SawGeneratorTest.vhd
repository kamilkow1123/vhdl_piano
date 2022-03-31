--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:25:01 03/26/2022
-- Design Name:   
-- Module Name:   C:/Users/kamil/Desktop/STUDIA/VI SEMESTR/UCiSW2/organs/SawGeneratorTest.vhd
-- Project Name:  organs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SawGenerator
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
USE ieee.numeric_std.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY SawGeneratorTest IS
END SawGeneratorTest;
 
ARCHITECTURE behavior OF SawGeneratorTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SawGenerator
    PORT(
         Clk : IN  std_logic;
         Code : IN  std_logic_vector(3 downto 0);
         Sample : OUT  std_logic_vector(11 downto 0);
         Sample_Rdy : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Code : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Sample : std_logic_vector(11 downto 0);
   signal Sample_Rdy : std_logic;

   -- Clock period definitions
   constant Clk_Half_Period : time := 10 ns;
 
BEGIN

   -- Instantiate the Unit Under Test (UUT)
   uut : SawGenerator PORT MAP(
      Clk => Clk,
      Code => Code,
      Sample => Sample,
      Sample_Rdy => Sample_Rdy
   );

clk_process :process
begin
   Clk <= '0';
	wait for Clk_Half_Period/2;
	Clk <= '1';
	wait for Clk_Half_Period/2;
end process;
	
	
code_process :process
begin
	Code <= "0001";
	wait for 10 ms;
	Code <= "0010";
	wait for 10 ms;
	Code <= "0011";
	wait for 10 ms;
	Code <= "0100";
	wait for 10 ms;
	Code <= "0101";
	wait for 10 ms;
	Code <= "0110";
	wait for 10 ms;
	Code <= "0111";
	wait for 10 ms;
	Code <= "1000";
	wait;
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
