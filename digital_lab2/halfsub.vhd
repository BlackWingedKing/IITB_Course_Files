library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
-- package of component declarations..
use work.EE224_Components.all;

entity halfsub is
   port(x0,x1: in std_logic;
        s,b: out std_logic);
end entity;
architecture Struct of halfsub is
   signal w: std_logic;
begin
   x_1: XOR_2 port map (a => x0, b => x1, c => s);
   n_1: INVERTER port map (a=> x0, b=> w);
	a_1: AND_2 port map (a => w, b => x1, c => b);
end Struct;
