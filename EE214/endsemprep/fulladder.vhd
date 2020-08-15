library ieee;
-- std_logic type and associated functions.
use ieee.std_logic_1164.all;

library work;
-- package of component declarations..
use work.EE224_Components.all;

entity fulladder is
	port(a,b,cin : in std_logic;
			s,c : out std_logic);
end entity;

architecture Struct of fulladder is

component halfadder is
	port(a,b : in std_logic;
			s,c : out std_logic);
end component;

signal x,c1,c2 : std_logic;
begin
	h1 : halfadder port map (a => a, b => b, s => x, c => c1);
	h2 : halfadder port map (a => cin, b => x, s => s, c => c2);
	o1 : OR_2 port map (a => c1, b => c2, c => c);
end Struct;

