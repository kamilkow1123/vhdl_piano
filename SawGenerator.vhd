----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:41 03/26/2022 
-- Design Name: 
-- Module Name:    SawGenerator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SawGenerator is
    Port ( Clk : in  STD_LOGIC;
           Code : in  STD_LOGIC_VECTOR (3 downto 0);
           Sample : out  STD_LOGIC_VECTOR (11 downto 0);
           Sample_Rdy : out  STD_LOGIC);
end SawGenerator;

architecture Behavioral of SawGenerator is

	SIGNAL Step_Counter : INTEGER := 0;
	SIGNAL Sample_Counter : UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');
	SIGNAL Cycle_Counter : INTEGER := 0;
	
	SIGNAL Cycles_Per_Step : INTEGER := 0; --clk cycles per one step

begin
	
frequency_out : process(Code, Cycles_Per_Step)
begin

	if Code = "0001" then
		Cycles_Per_Step <= 1493; --c 50 000 000 : 32 : 1046,5
	elsif Code = "0010" then
		Cycles_Per_Step <= 1409; --c# 50 000 000 : 32 : 1108,7
	elsif Code = "0011" then
		Cycles_Per_Step <= 1330; --d 50 000 000 : 32 : 1174,7
	elsif Code = "0100" then
		Cycles_Per_Step <= 1256; --d# 50 000 000 : 32 : 1244,5
	elsif Code = "0101" then
		Cycles_Per_Step <= 1185; --e 50 000 000 : 32 : 1318,5
	elsif Code = "0110" then
		Cycles_Per_Step <= 1119; --f 50 000 000 : 32 : 1396,9
	elsif Code = "0111" then
		Cycles_Per_Step <= 1056; --f# 50 000 000 : 32 : 1480,0
	elsif Code = "1000" then
		Cycles_Per_Step <= 997; --g 50 000 000 : 32 : 1568,0
	elsif Code = "1001" then
		Cycles_Per_Step <= 941; --g# 50 000 000 : 32 : 1661,2
	elsif Code = "1010" then
		Cycles_Per_Step <= 888; --a 50 000 000 : 32 : 1760
	elsif Code = "1011" then
		Cycles_Per_Step <= 838; --a# 50 000 000 : 32 : 1865
	elsif Code = "1100" then
		Cycles_Per_Step <= 791; --b 50 000 000 : 32 : 1976
	else
		Cycles_Per_Step <= 0;

	end if;
		
end process frequency_out;

One_Step_Iteration : process(Clk, Sample_Counter)
	begin
	if(rising_edge(Clk)) then
		Cycle_Counter <= Cycle_Counter + 1;
		Sample_Rdy <= '0';
		if(Cycle_Counter = Cycles_Per_Step and Cycles_Per_Step /=0 ) then
			Cycle_Counter <= 0;
			Sample_Counter <= Sample_Counter + 1;
			Sample_Rdy <= '1';
			end if;
	end if;
	
	Sample <= STD_LOGIC_VECTOR(Sample_Counter) & x"0";
end process One_Step_Iteration;


Saw_Iteration : process(Clk)

	begin
	if(rising_edge(Clk)) then
		 if(Step_Counter = 31) then
			  Step_Counter <= 0;
		 else
			  Step_Counter <= Step_Counter + 1;
		 end if;
	end if;

end process Saw_Iteration;

end Behavioral;
