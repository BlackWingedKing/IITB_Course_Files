library ieee;
-- std_logic type and associated functions.
use ieee.std_logic_1164.all;

library work;
-- package of component declarations..
use work.EE224_Components.all;

entity encoder is
	port(a: in std_logic_vector(7 downto 0);
		  b : out std_logic_vector(2 downto 0));
end entity;

architecture Struct of encoder is

begin
b(2) <= a(7) or a(6) or a(5) or a(4);
b(1) <= a(7) or a(6) or ((not(a(5)) and not(a(4))) and (a(3) or a(2)));
b(0) <= a(7) or (not(a(6)) and ((a(5) or (not(a(4)) and (a(3) or (not(a(2)) and a(1)))))));
end Struct;