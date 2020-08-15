library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

entity ffbit is
   port(a,b,c,d,e,f,g,h: in std_logic_vector(3 Downto 0);
        o: out std_logic_vector(3 Downto 0));
end entity;

architecture struct of ffbit is
component fbitadder is 
    port(a,b: in std_logic_vector(3 Downto 0);
        c: out std_logic_vector(3 Downto 0));
end component;
 
 signal w,z,y,m,n,p: std_logic_vector(3 Downto 0);
begin
	f_1: fbitadder port map (a => a, b => b, c => w);
	f_2: fbitadder port map (a => w, b => c, c => z);
	f_3: fbitadder port map (a => z, b => d, c => y);
	f_4: fbitadder port map (a => y, b => e, c => m);
	f_5: fbitadder port map (a => m, b => f, c => n);
	f_6: fbitadder port map (a => n, b => g, c => p);
	f_7: fbitadder port map (a => p, b => h, c => o);
end struct;