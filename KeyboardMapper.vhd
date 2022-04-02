----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:14:30 04/02/2022 
-- Design Name: 
-- Module Name:    KeyboardMapper - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity KeyboardMapper is
    Port ( Clk : in  STD_LOGIC;
           E0 : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           Data_In : in  STD_LOGIC_VECTOR (7 downto 0);
           Data_In_Ready : in  STD_LOGIC;
           Code_Out : out  STD_LOGIC_VECTOR (3 downto 0));
end KeyboardMapper;

architecture Behavioral of KeyboardMapper is
	type State_Type is (Silence, C, C_Sharp, D, D_Sharp, E, F, F_Sharp, G, G_Sharp, A, A_Sharp, B);
	signal State, Next_State : State_Type;
	signal Temp_Code : std_logic_vector(3 downto 0) := "0000";

begin

Ready_Process : process(Clk)
	begin
		if rising_edge(Clk) then
			if Data_In_Ready = '1' then
				State <= Next_State;
			end if;
		end if;
	end process Ready_Process;
	
Map_Next_State : process(State, Data_In, F0)
	begin
		Next_State <= State;
		if F0 = '0' then
			case Data_In is
				 when X"1C" => Next_State <= C; 			--A
				 when X"1D" => Next_State <= C_Sharp;	--W
				 when X"1B" => Next_State <= D;			--S
				 when X"24" => Next_State <= D_Sharp;  --E
				 when X"23" => Next_State <= E;			--D
				 when X"2B" => Next_State <= F;			--F
				 when X"2C" => Next_State <= F_Sharp;	--T
				 when X"34" => Next_State <= G;			--G
				 when X"35" => Next_State <= G_Sharp;  --Y
				 when X"33" => Next_State <= A;			--H
				 when X"3C" => Next_State <= A_Sharp;  --U
				 when X"3B" => Next_State <= B;			--J
				 when others => Next_State <= Silence;
         end case;
		else
			Next_State <= Silence;
		end if;
	end process Map_Next_State;
	
Map_Code : process(State)
	begin
		case State is
			when Silence => 	Temp_Code <= "0000";
			when C => 			Temp_Code <= "0001";
			when C_Sharp => 	Temp_Code <= "0010";
			when D => 			Temp_Code <= "0011";
			when D_Sharp => 	Temp_Code <= "0100";
			when E => 			Temp_Code <= "0101";
			when F => 			Temp_Code <= "0110";
			when F_Sharp => 	Temp_Code <= "0111";
			when G => 			Temp_Code <= "1000";
			when G_Sharp => 	Temp_Code <= "1001";
			when A => 			Temp_Code <= "1010";
			when A_Sharp => 	Temp_Code <= "1011";
			when B => 			Temp_Code <= "1100";
      end case;
	end process Map_Code;
	
	Code_Out <= Temp_Code;

end Behavioral;

