library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

entity shiftleft is
   port(a: in std_logic_vector(7 downto 0);
        b: out std_logic_vector(7 downto 0));
end entity;
architecture Struct of shiftleft is

begin
	g_1: for i in 0 to 6 generate
		begin
		b(i+1) <= a(i);
		end generate g_1;
		b(0) <= '0';
end Struct;