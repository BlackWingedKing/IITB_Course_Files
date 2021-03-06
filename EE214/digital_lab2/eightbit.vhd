library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
-- package of component declarations..
use work.EE224_Components.all;

entity eightbit is
   port(x0,x1: in std_logic_vector(7 downto 0);
        s0: out std_logic_vector(7 downto 0);
		  c: out std_logic);
end entity;
architecture Struct of eightbit is

component fulladder is
   port(x0,x1,c: in std_logic;
        s0,s1: out std_logic);
end component;

	signal  c1: std_logic_vector(7 downto 0);
begin
   f_1: fulladder port map (x0 => x0(0), x1 => x1(0), c => '0',s0 => s0(0), s1 => c1(0));
	g_1: for i in 0 to 6 generate
		begin
		f_1: fulladder port map(x0=> x0(i+1), x1 => x1(i+1), c => c1(i), s0 => s0(i+1), s1 => c1(i+1) );
		end generate g_1;
		c <= c1(6) xor c1(5);
		
end Struct;
