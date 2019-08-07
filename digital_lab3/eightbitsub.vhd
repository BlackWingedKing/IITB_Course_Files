library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
-- package of component declarations..
use work.EE224_Components.all;
--eightbitsub is the name of the eightbit subractor
--inputs are 2 vectors x0, x1
--ouput is a eight bit vector s
--no need to worry about the b1 output its just a borrow bit.
entity eightbitsub is
   port(x0,x1: in std_logic_vector(7 downto 0);
        s: out std_logic_vector(7 downto 0);
		  b1: out std_logic);
end entity;
architecture Struct of eightbitsub is

component fullsub is
      port(x0,x1,b: in std_logic;
        s,b1: out std_logic);
end component;

	signal  c1: std_logic_vector(7 downto 0);
begin
   --starting borrow bit is 0
	f_1: fullsub port map (x0 => x0(0), x1 => x1(0), b => '0',s => s(0), b1 => c1(0));
	g_1: for i in 0 to 6 generate
		begin
		f_1: fullsub port map(x0=> x0(i+1), x1 => x1(i+1), b => c1(i), s => s(i+1), b1 => c1(i+1) );
		end generate g_1;
		b1 <= c1(6);
		
end Struct;
