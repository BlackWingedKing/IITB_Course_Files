library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

entity shiftright is
   port(a: in std_logic_vector(7 downto 0);
        b: out std_logic_vector(7 downto 0));
end entity;
architecture Struct of shiftright is

begin
	g_1: for i in 1 to 7 generate
		begin
		b(i-1) <= a(i);
		end generate g_1;
		b(7) <= '0';
end Struct;