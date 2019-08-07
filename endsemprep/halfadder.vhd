library ieee;
-- std_logic type and associated functions.
use ieee.std_logic_1164.all;

library work;
-- package of component declarations..
use work.EE224_Components.all;

entity halfadder is
	port(a,b : in std_logic;
			s,c : out std_logic);
end entity;
architecture Struct of halfadder is

begin
x1 : XOR_2 port map(a => a, b=> b, c => s);
a1 : AND_2 port map(a => a, b=> b, c => c);
end Struct;