library ieee;
use ieee.std_logic_1164.all;

entity  divider4 is
  port(clk, reset : in std_logic; 
		output : out std_logic);
end entity;
architecture behave of divider4 is
	component divider2 is
		port(clk, reset : in std_logic; 
			output : out std_logic);
	end component;
	signal p0 : std_logic;
begin 
	f1 : divider2 port map(clk, reset, p0);
	f2 : divider2 port map(p0, reset, output);
end behave;