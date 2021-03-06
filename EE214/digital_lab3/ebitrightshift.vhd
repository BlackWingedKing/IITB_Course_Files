library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

--inputs are 2 eight bit vectors ,a as a number and b for selection.
--output is c which is the shifted numbers.
entity ebitrightshift is
   port(a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(7 downto 0);
		  c: out std_logic_vector(7 downto 0));
end entity;

architecture Struct of ebitrightshift is

component multiplexor is
  port(x0,x1,s: in std_logic;
        o: out std_logic);
end component;

	signal y1,y2 : std_logic_vector(7 downto 0);
begin
--1st stage shift by 4 if b(2) is 1 
	g_1: for i in 0 to 3 generate
		begin
		m_1: multiplexor port map (x0 => a(i), x1 => a(i+4), s => b(2), o => y1(i));
		end generate g_1;
	g_4: for i in 4 to 7 generate
		begin
		m_2: multiplexor port map (x0 => a(i), x1 => '0' , s => b(2), o => y1(i));
		end generate g_4;
--2nd stage shift by 2 if b(1) is 1	
	g_2: for i in 0 to 5 generate
		begin
		m_3: multiplexor port map (x0 => y1(i), x1 => y1(i+2) , s => b(1), o => y2(i));
		end generate g_2;
		m_4: multiplexor port map (x0 => y1(6), x1 => '0' , s => b(1), o => y2(6));
		m_5: multiplexor port map (x0 => y1(7), x1 => '0' , s => b(1), o => y2(7));
--3rd stage shift by 1 if b(0) is 1	
	g_3: for i in 0 to 6 generate
		begin
		m_6: multiplexor port map (x0 => y2(i), x1 => y2(i+1) , s => b(0), o => c(i));
		end generate g_3;
		m_7: multiplexor port map (x0 => y2(7), x1 => '0' , s => b(0), o => c(7));
end Struct;