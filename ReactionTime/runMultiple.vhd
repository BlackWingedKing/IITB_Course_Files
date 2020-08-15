library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.standard.all;

entity runMultiple is 
	port(clk, reset, ledIn : in std_logic;
		complete : out std_logic);
end entity;
architecture looparound of runMultiple is
	signal numTimes : unsigned(3 downto 0) := to_unsigned(9,4);
	signal countTimes : unsigned(3 downto 0) := to_unsigned(0,4);
begin	
	process(ledIn, reset)
	variable comp : std_logic := '0';
	begin
		if rising_edge(ledIn) and countTimes<numTimes then
			countTimes <= countTimes + 1;
		elsif (rising_edge(ledIn) and countTimes>=numTimes) then
				comp := '1';
				countTimes <= numTimes;
		end if;
		complete <= comp;
	end process;
end looparound;