library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

entity number is
   port(x: in std_logic_vector(7 Downto 0);
        o: out std_logic_vector(3 Downto 0));
end entity;

architecture behave of number is
 signal:
begin
	a_1: AND_2 port map (a => x(0), b => x(1), c => s(0));
end behave;