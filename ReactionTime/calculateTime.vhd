library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity calculateTime is 
	port(clk, reset, ledSignal : in std_logic;
		calcTime : out std_logic_vector(10 downto 0));
end entity;
architecture notedown of calculateTime is 
	signal tempTime : unsigned(10 downto 0) := to_unsigned(0,11);
	signal initVal : unsigned(10 downto 0) := to_unsigned(0,11);
begin
	process(clk, reset, ledSignal)
	begin
		-- Reset if reset signal is given
		if rising_edge(clk) then
			if(reset = '1') then
				tempTime <= initVal;
			end if;
			-- If bulb is glowing, means the user has not pressed the button so far
			if(ledSignal='0' and reset ='0') then
				tempTime <= tempTime + 1;
			end if;
			calcTime <= std_logic_vector(tempTime);
		end if;
	end process;
end notedown;