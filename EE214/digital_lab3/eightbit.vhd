library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
-- package of component declarations..
use work.EE224_Components.all;
-- eightbit is the name of eight bit adder
entity eightbit is
--inputs x0,x1 vectors output is s0 vector of sums.!!
   port(x0,x1: in std_logic_vector(7 downto 0);
        s0: out std_logic_vector(7 downto 0);
		  c: out std_logic);
-- extra ouput c just kept to track the overflow bit not needed.   
end entity;
architecture Struct of eightbit is
--used fulladder
component fulladder is
   port(x0,x1,c: in std_logic;
        s0,s1: out std_logic);
end component;

	signal  c1: std_logic_vector(7 downto 0);
begin
--The first adder among the cascade set has carry as zero
   f_1: fulladder port map (x0 => x0(0), x1 => x1(0), c => '0',s0 => s0(0), s1 => c1(0));
-- for loop for casading the seven such adders.
	g_1: for i in 0 to 6 generate
		begin
		f_1: fulladder port map(x0=> x0(i+1), x1 => x1(i+1), c => c1(i), s0 => s0(i+1), s1 => c1(i+1) );
		end generate g_1;
		c <= c1(6) xor c1(5);
		
end Struct;