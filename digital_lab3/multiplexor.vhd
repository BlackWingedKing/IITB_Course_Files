library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;
--defined the multiplexor
entity multiplexor is
--inputs are x0,x1 and a select bit s
--output is o
   port(x0,x1,s: in std_logic;
        o: out std_logic);
end entity;

architecture Struct of multiplexor is
   signal y,y1,w: std_logic;

begin
	--just implemented x0.s'+x1.s
	a_1: AND_2 port map (a => x1, b => s, c => w);
	n_1: INVERTER port map (a => s, b => y1);
	a_2: AND_2 port map (a => y1, b => x0, c => y);
	o_1: OR_2 port map (a => y, b => w, c => o);
end Struct;