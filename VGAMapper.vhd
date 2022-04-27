----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:17:29 04/26/2022 
-- Design Name: 
-- Module Name:    VGAMapper - Behavioral 
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

entity VGAMapper is
    Port ( F0 : in  STD_LOGIC;
           Code : in  STD_LOGIC_VECTOR (3 downto 0);
           Clk : in  STD_LOGIC;
           Data_In_Ready : in  STD_LOGIC;
           Char_Out : out  STD_LOGIC_VECTOR (7 downto 0);
           Char_Ready : out  STD_LOGIC);
end VGAMapper;

architecture Behavioral of VGAMapper is

	type State_Type is (Silence, C, C_Sharp, D, D_Sharp, E, F, F_Sharp, G, G_Sharp, A, A_Sharp, B);
	signal State, Next_State : State_Type;
	signal Temp_Char : std_logic_vector(7 downto 0) := "00000000";

begin

Ready_Process : process(Clk)
	begin
		if rising_edge(Clk) then
			if Data_In_Ready = '1' then
				State <= Next_State;
			end if;
		end if;
	end process Ready_Process;
	
Map_Next_State : process(State, Code, F0)
	begin
		Next_State <= State;
		if F0 = '0' then
			case Code is
				 when "0001" => Next_State <= C; 			
				 when "0010" => Next_State <= C_Sharp;	
				 when "0011" => Next_State <= D;			
				 when "0100" => Next_State <= D_Sharp;  
				 when "0101" => Next_State <= E;			
				 when "0110" => Next_State <= F;			
				 when "0111" => Next_State <= F_Sharp;	
				 when "1000" => Next_State <= G;			
				 when "1001" => Next_State <= G_Sharp;  
				 when "1010" => Next_State <= A;			
				 when "1011" => Next_State <= A_Sharp;  
				 when "1100" => Next_State <= B;			
				 when others => Next_State <= Silence;
         end case;
		else
			Next_State <= Silence;
		end if;
	end process Map_Next_State;
	
Map_Char : process(State)
	begin
		case State is
			when Silence => 	Temp_Char <= "00100000"; --" "
			when C => 			Temp_Char <= "01100011"; --"c"
			when C_Sharp => 	Temp_Char <= "01000011"; --"C"
			when D => 			Temp_Char <= "01100100"; --"d"
			when D_Sharp => 	Temp_Char <= "01000100"; --"D"
			when E => 			Temp_Char <= "01100101"; --"e"
			when F => 			Temp_Char <= "01100110"; --"f"
			when F_Sharp => 	Temp_Char <= "01000110"; --"F"
			when G => 			Temp_Char <= "01100111"; --"g"
			when G_Sharp => 	Temp_Char <= "01000111"; --"G"
			when A => 			Temp_Char <= "01100001"; --"a"
			when A_Sharp => 	Temp_Char <= "01000001"; --"A"
			when B => 			Temp_Char <= "01100010"; --"b"
      end case;
	end process Map_Char;
	
	Char_Out <= Temp_Char;
	
Char_Ready_Process : process(Data_In_Ready)
	begin
		if Data_In_Ready = '0' then
			Char_Ready <= '0';	
		else
			Char_Ready <= '1';
		end if;
	end process Char_Ready_Process;

end Behavioral;

