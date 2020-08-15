library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
-- package of component declarations..
use work.EE224_Components.all;
--entity defined here.
entity fulladder is
   port(x0,x1,c: in std_logic;
        s0,s1: out std_logic);
end entity;
architecture Struct of fulladder is
--used half adder
component halfadder is
   port(x0,x1: in std_logic;
        s0,s1: out std_logic);
end component;

	signal w,z,c1: std_logic;
begin
-- sum of full adder is sum( sum( x0 half adder x1) half adder c)
-- carry of full adder is or of both of carrys of the half adders below
   h_1: halfadder port map (x0 => x0, x1 => x1, s0 => w, s1 => z);
   h_2: halfadder port map (x1 => w, x0 => c, s0 => s0, s1 => c1);
	o_1: OR_2 port map (a =>c1, b => z, c => s1);
end Struct;
