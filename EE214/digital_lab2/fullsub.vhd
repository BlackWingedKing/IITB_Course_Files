library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

entity fullsub is
   port(x0,x1,b: in std_logic;
        s,b1: out std_logic);
end entity;
architecture Struct of fullsub is
   signal w,x2,y1,y2,y3,y4: std_logic;
begin
   x_1: XOR_2 port map (a => x0, b => x1, c => w);
	x_2: XOR_2 port map (a => w, b => b, c => s);
   n_1: INVERTER port map (a=> x0, b=> x2);
	a_1: AND_2 port map (a => x2, b => b, c => y1);
	a_2: AND_2 port map (a => x2, b => x1, c => y2);
	a_3: AND_2 port map (a => x1, b => b, c => y3);
	o_3: OR_2 port map (a => y1, b => y2, c => y4);
	o_4: OR_2 port map (a => y4, b => y3, c => b1);
end Struct;
