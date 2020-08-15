library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;
--modifiedrightshift is the name of the eight bit right shift
--inputs are 2 eight bit vectors ,a as a number and b for selection.
--output is c which is the shifted numbers.
entity modifiedrightshift is
   port(a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(7 downto 0);
		  c: out std_logic_vector(7 downto 0));
end entity;

architecture Struct of modifiedrightshift is
--used multiplexor
component multiplexor is
  port(x0,x1,s: in std_logic;
        o: out std_logic);
end component;
--used ebitrightshift
component ebitrightshift is
   port(a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(7 downto 0);
		  c: out std_logic_vector(7 downto 0));
end component;

	signal y1 : std_logic_vector(7 downto 0);
	signal x0,x1,x2,x3 : std_logic;
begin
--here I have orred all the bits from b(7) to b(3)
	o_1: OR_2 port map (a => b(3), b => b(4), c => x0);
	o_2: OR_2 port map (a => x0, b => b(5), c => x1);
	o_3: OR_2 port map (a => x1, b => b(6), c => x2);
	o_4: OR_2 port map (a => x2, b => b(7), c => x3);

	r_1: ebitrightshift port map(a => a, b => b, c => y1);
--and with each bit of the final output using multiplexors.
	g_1: for i in 0 to 7 generate
		begin
		m_8: multiplexor port map (x0 => y1(i), x1 => '0', s => x3, o => c(i));
		end generate g_1;
end Struct;