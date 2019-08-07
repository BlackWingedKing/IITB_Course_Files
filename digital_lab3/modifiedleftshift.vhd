library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;
--modified leftshift is the name for the final leftshift.
--input and ouput structure is same as right shift.
entity modifiedleftshift is
   port(a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(7 downto 0);
		  c: out std_logic_vector(7 downto 0));
end entity;

architecture Struct of modifiedleftshift is
--used right shift
component modifiedrightshift is
   port(a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(7 downto 0);
		  c: out std_logic_vector(7 downto 0));
end component;
--used inputinverter
component inputinverter is
   port(a: in std_logic_vector(7 downto 0);
        r: in std_logic;
		  b: out std_logic_vector(7 downto 0));
end component;

	signal y1,y2 : std_logic_vector(7 downto 0);
	begin	
--invert the inputs
	in_1: inputinverter port map (a => a, r => '1',b => y1);
--right shift
	r_1: modifiedrightshift port map (a => y1, b => b, c => y2);
--invert the ouput of the right shift
	in_2: inputinverter port map (a => y2, r => '1',b => c);
end Struct;