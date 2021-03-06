library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity encoder is
   port(x: in std_logic_vector(3 Downto 0);
        o: out std_logic_vector(1 Downto 0));
end entity;

architecture behave of encoder is
begin
	o(1) <= x(2) or x(1);
	o(0) <= x(2) or (not(x(1)) and x(0));
end behave;
