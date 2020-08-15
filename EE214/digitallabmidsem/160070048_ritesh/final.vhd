library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

entity final is
   port(a: in std_logic_vector(7 Downto 0);
        o: out std_logic_vector(3 Downto 0));
end entity;

architecture struct of final is
component ffbit is 
    port(a,b,c,d,e,f,g,h: in std_logic_vector(3 Downto 0);
        o: out std_logic_vector(3 Downto 0));
end component;
 
 signal x0,x1,x2,x3,x4,x5,x6,x7: std_logic_vector(3 Downto 0);
begin
	x0(0) <= a(0);
	x1(0) <= a(1);
	x2(0) <= a(2);
	x3(0) <= a(3);	
	x4(0) <= a(4);
	x5(0) <= a(5);
	x6(0) <= a(6);
	x7(0) <= a(7);
	
	x0(1) <= '0';
	x1(1) <= '0';
	x2(1) <= '0';
	x3(1) <= '0';
	x4(1) <= '0';
	x5(1) <= '0';
	x6(1) <= '0';
	x7(1) <= '0';
	
	x0(2) <= '0';
	x1(2) <= '0';
	x2(2) <= '0';
	x3(2) <= '0';
	x4(2) <= '0';
	x5(2) <= '0';
	x6(2) <= '0';
	x7(2) <= '0';
	
	x0(3) <= '0';
	x1(3) <= '0';
	x2(3) <= '0';
	x3(3) <= '0';
	x4(3) <= '0';
	x5(3) <= '0';
	x6(3) <= '0';
	x7(3) <= '0';
	
	f_1: ffbit port map (a => x0, b => x1, c => x2, d => x3, e => x4, f => x5, g => x6, h => x7, o <= o);
end struct;