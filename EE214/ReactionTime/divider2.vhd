library ieee;
use ieee.std_logic_1164.all;

entity  divider2 is
  port(clk, reset : in std_logic; 
		output : out std_logic);
end entity;
architecture behave of divider2 is
	component  dflip is
		port(D, CLK, RST : in std_logic; 
			Q, Qbar: out std_logic);
	end component;
	signal q0 : std_logic:='0'; 
	signal q1, q2 : std_logic;
begin 
	f1 : dflip port map(q0, clk, reset, q1, q2);
	q0 <= q2;
	output <= q1;
end behave;