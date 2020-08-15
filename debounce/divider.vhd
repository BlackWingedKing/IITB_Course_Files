library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;


entity divider is
    port (CLK,reset: in std_logic; cout: out std_logic);
end entity divider;
architecture Behave of divider is

component counter4 is
    port (CLK,reset: in std_logic; cout: out std_logic);
end component;
--cascade 10 counters to form this
signal q: std_logic_vector(8 Downto 0);
begin
	c_1: counter4 port map(CLK => CLK, reset => reset, cout => q(0));
	g_1: for i in 0 to 7 generate
		begin
		c_2: counter4 port map(CLK => q(i), reset => reset,cout => q(i+1));
		end generate g_1;
	cout <= q(8);
end Behave;