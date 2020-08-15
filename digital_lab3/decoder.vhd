library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

entity decoder is
   port(a,b,c: in std_logic;
		  d: out std_logic_vector(7 downto 0));
end entity;

architecture Struct of decoder is
   signal a1,b1,c1,ab,a1b1,a1b,ab1: std_logic;

begin
	n_1: INVERTER port map (a => a, b => a1);
	n_2: INVERTER port map (a => b, b => b1);
	n_3: INVERTER port map (a => c, b => c1);
	a_1: AND_2 port map (a => a, b => b, c => ab);
	a_2: AND_2 port map (a => a1, b => b1, c => a1b1);
	a_3: AND_2 port map (a => a1, b => b, c => a1b);
	a_4: AND_2 port map (a => a, b => b1, c => ab1);
	
	a_5: AND_2 port map (a => a1b1, b => c1, c => d(0));
	a_6: AND_2 port map (a => a1b1, b => c, c => d(1));
	a_7: AND_2 port map (a => a1b, b => c1, c => d(2));
	a_8: AND_2 port map (a => a1b, b => c, c => d(3));
	a_9: AND_2 port map (a => ab1, b => c1, c => d(4));
	a_10: AND_2 port map (a => ab1, b => c, c => d(5));
	a_11: AND_2 port map (a => ab, b => c1, c => d(6));
	a_12: AND_2 port map (a => ab, b => c, c => d(7));
end Struct;