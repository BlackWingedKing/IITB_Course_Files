library ieee;
use ieee.std_logic_1164.all;
-- For debouncing purposes
entity  divider is
  port (clk,reset:in std_logic; output:out std_logic);
end entity;
architecture behave of divider is
	component divider2 is
		port(clk, reset : in std_logic; 
			output : out std_logic);
	end component;
	component divider4 is
		port(clk, reset : in std_logic; 
			output : out std_logic);
	end component;
	signal p : std_logic_vector(8 downto 0);
begin 
	f1	: divider4 port map(clk, reset, p(0));
	f2	: divider4 port map(p(0), reset, p(1));
	f3	: divider4 port map(p(1), reset, p(2));
	f4	: divider4 port map(p(2), reset, p(3));
	f5	: divider4 port map(p(3), reset, p(4));
	f6	: divider4 port map(p(4), reset, p(5));
	f7	: divider4 port map(p(5), reset, p(6));
	f8	: divider4 port map(p(6), reset, p(7));
	f9	: divider4 port map(p(7), reset, p(8));
	f10 : divider2 port map(p(8), reset, output);
end behave;