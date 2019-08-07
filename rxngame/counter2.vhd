library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity counter2 is
	port ( CLK,reset: in std_logic;
			OUTPUT: out std_logic);
end counter2;
  
architecture bhv of counter2 is
  
signal count: integer:=1;
signal tmp : std_logic := '0';
  
begin
  
process(CLK,reset)
begin
if(reset='1') then
count<=1;
tmp<='0';

elsif(CLK'event and CLK='1') then
count <=count+1;
if (count = 50000000) then
tmp <= NOT tmp;
count <= 1;
end if;
end if;
OUTPUT <= tmp;
end process;
  
end bhv;