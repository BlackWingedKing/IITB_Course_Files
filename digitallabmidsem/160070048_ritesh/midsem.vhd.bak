library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

entity nfbit is
   port(a0,a1,a2,a3,b0,b1,b2,b3: in std_logic;
        c0,c1,c2,c3: out std_logic);
end entity;

architecture struct of nfbit is
component fulladder is 
   port(x0,x1,c: in std_logic;
        s0,s1: out std_logic);
end component;
 
 signal w0,w1,w2,w3: std_logic;
begin
	f_0: fulladder port map (x0 => a0, x1 => b0,c => '0', s0 => c0 , s1 => w0 );
	f_1: fulladder port map (x0 => a1, x1 => b1,c => w0, s0 => c1 , s1 => w1 );
	f_2: fulladder port map (x0 => a2, x1 => b2,c => w1, s0 => c2 , s1 => w2 );
	f_3: fulladder port map (x0 => a3, x1 => b3,c => w2, s0 => c3 , s1 => w3 );

--	g_1: for i in 0 to 2 generate
--		begin
--		f_1: fulladder port map(x0=> a(i+1), x1 => b(i+1), c => w(i), s0 => c(i+1), s1 => w(i+1) );
--		end generate g_1;
		
end struct;