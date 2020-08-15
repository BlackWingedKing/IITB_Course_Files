library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity counter2 is
    Port ( CLK,reset : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0));
end counter2;
 
 
architecture Behavioral of counter2 is
 
signal counter2 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
 
 
begin
 
OUTPUT <= counter2;
 
count_process: process(CLK)
 begin
  if rising_edge(CLK) then
   counter2 <= counter2 + 1;
	if (counter2 = 200000000 or reset = '1') then
		counter2 <= "00000000";
	end if;
  end if;
 end process;
  
end Behavioral;