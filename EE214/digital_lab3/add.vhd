library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

entity add is
   port(a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(7 downto 0);
		  c: out std_logic_vector(7 downto 0));
end entity;

architecture Struct of add is

begin
	g_1: for i in 0 to 7 generate
		begin
		o_1: OR_2 port map(a => a(i), b => b(i), c => c(i));
		end generate g_1;
end Struct;