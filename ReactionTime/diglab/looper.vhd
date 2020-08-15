library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity looper is
	port (React,Reset,sclk : in std_logic;
			newrst : out std_logic);
end entity;
architecture behave of looper is 
signal rst_sig : std_logic := '0';
signal count_sig : unsigned(3 downto 0) := to_unsigned(0,4);
signal delay : unsigned(11 downto 0) := to_unsigned(0,12);

begin
	process(React,Reset,sclk)
	begin
	if rising_edge(sclk) then
	if (Reset = '1') then
			delay <= to_unsigned(0,12);
			count_sig <= to_unsigned(0,4);
	end if;
	
	if(Reset = '0') then
		if (React='1') then
			delay <= to_unsigned(0,12);
		end if;
	
		if (React='0' and count_sig < to_unsigned(8,4)) then
			if (delay < 100) then
				delay <= delay + 1;
			end if;
				
			if (delay = to_unsigned(10,12)) then
				rst_sig <= '1';
			end if;
			if (delay = to_unsigned(50,12)) then
				rst_sig <= '0';
				count_sig <= count_sig + 1;
			end if;
		
		end if;
		
		if (count_sig = to_unsigned(9,4)) then
			rst_sig <= '1';
		end if;
		
	end if;
	
	newrst <= rst_sig;
	end if;
	end process;
end behave;