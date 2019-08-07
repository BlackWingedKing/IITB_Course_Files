library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

entity fbitadder is
   port(a,b: in std_logic_vector(3 Downto 0);
        c: out std_logic_vector(3 Downto 0));
end entity;

architecture struct of fbitadder is
component fulladder is 
   port(x0,x1,c: in std_logic;
        s0,s1: out std_logic);
end component;
 
 signal w: std_logic_vector(3 Downto 0);
begin
	f_2: fulladder port map (x0 => a(0), x1 => b(0),c => '0', s0 => c(0) , s1 => w(0) );
	g_1: for i in 0 to 2 generate
		begin
		f_1: fulladder port map(x0=> a(i+1), x1 => b(i+1), c => w(i), s0 => c(i+1), s1 => w(i+1) );
		end generate g_1;
		
end struct;