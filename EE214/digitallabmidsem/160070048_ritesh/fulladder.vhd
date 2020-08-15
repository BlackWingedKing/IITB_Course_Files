library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
-- package of component declarations..
use work.EE224_Components.all;

entity fulladder is
   port(x0,x1,c: in std_logic;
        s0,s1: out std_logic);
end entity;
architecture Struct of fulladder is

component halfadder is
   port(x0,x1: in std_logic;
        s0,s1: out std_logic);
end component;

	signal w,z,c1: std_logic;
begin

   h_1: halfadder port map (x0 => x0, x1 => x1, s0 => w, s1 => z);
   h_2: halfadder port map (x1 => w, x0 => c, s0 => s0, s1 => c1);
	o_1: OR_2 port map (a =>c1, b => z, c => s1);
end Struct;
