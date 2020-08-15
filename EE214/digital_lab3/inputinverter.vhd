library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;
--this inverts the eight bit input provided to it
--input is an eight bit number
--theres an r which when made 1 the input is inverted else the it remains the same.
entity inputinverter is
   port(a: in std_logic_vector(7 downto 0);
        r: in std_logic;
		  b: out std_logic_vector(7 downto 0));
end entity;
architecture Struct of inputinverter is

component multiplexor is
  port(x0,x1,s: in std_logic;
        o: out std_logic);
end component;
begin
--multiplexors with inputs a(i), a(7-i)
	g_1: for i in 0 to 7 generate
		begin
		m_1: multiplexor port map (x0 => a(i), x1 => a(7-i), s => r, o => b(i));
		end generate g_1;
end Struct;