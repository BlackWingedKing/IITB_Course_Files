library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

  
entity global_counter is
	port ( CLK,reset,pause: in std_logic;
			outin: out unsigned(15 downto 0));
end global_counter;
  
architecture bhv of global_counter is
  
signal count: unsigned(15 downto 0);

begin

process(CLK,reset,pause)
begin

	if(reset='1') then
	count <= "0000000000000000";
	elsif(CLK'event and CLK='1') then
		if(pause = '0') then
			count <= count+1;
		end if;
	end if;	
	
end process;
outin <= count;  
end bhv;