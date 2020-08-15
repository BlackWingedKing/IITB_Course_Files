library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

entity rightshift is
   port(a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(2 downto 0);
		  c: out std_logic_vector(7 downto 0));
end entity;

architecture Struct of rightshift is

component shiftright is
   port(a: in std_logic_vector(7 downto 0);
        b: out std_logic_vector(7 downto 0));
end component;

component multiply is
    port(a: in std_logic_vector(7 downto 0);
        b: in std_logic;
		  c: out std_logic_vector(7 downto 0));
end component;

component add is
    port(a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(7 downto 0);
		  c: out std_logic_vector(7 downto 0));
end component;

component decoder is
     port(a,b,c: in std_logic;
		  d: out std_logic_vector(7 downto 0));
end component;

	signal y1,y2,y3,y4,y5,y6,y7,y8,m,m0,m1,m2,m3,m4,m5,m6,m7,v1,v2,v3,v4,v5,v6: std_logic_vector(7 downto 0);
begin
	s_1: shiftright port map (a => a, b => y1);
	s_2: shiftright port map (a => y1, b => y2);
	s_3: shiftright port map (a => y2, b => y3);
	s_4: shiftright port map (a => y3, b => y4);
	s_5: shiftright port map (a => y4, b => y5);
	s_6: shiftright port map (a => y5, b => y6);
	s_7: shiftright port map (a => y6, b => y7);
	s_8: shiftright port map (a => y7, b => y8);
	
	d_1: decoder port map (a => b(2), b => b(1), c => b(0), d =>m);
	
	m_1: multiply port map (a => a, b => m(0), c => m0);
	m_2: multiply port map (a => y1, b => m(1), c => m1);
	m_3: multiply port map (a => y2, b => m(2), c => m2);
	m_4: multiply port map (a => y3, b => m(3), c => m3);
	m_5: multiply port map (a => y4, b => m(4), c => m4);
	m_6: multiply port map (a => y5, b => m(5), c => m5);
	m_7: multiply port map (a => y6, b => m(6), c => m6);
	m_8: multiply port map (a => y7, b => m(7), c => m7);
	
	ad_1: add port map (a => m0, b => m1, c => v1);
	ad_2: add port map (a => v1, b => m2, c => v2);
	ad_3: add port map (a => v2, b => m3, c => v3);
	ad_4: add port map (a => v3, b => m4, c => v4);
	ad_5: add port map (a => v4, b => m5, c => v5);
	ad_6: add port map (a => v5, b => m6, c => v6);
	ad_7: add port map (a => v6, b => m7, c => c);
	
end Struct;