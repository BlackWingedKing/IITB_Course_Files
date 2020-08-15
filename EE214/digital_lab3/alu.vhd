
-----------------------------------------------
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
-----------------------------------------------
entity alu is 
	port( X,Y : in std_logic_vector(7 downto 0); x0,x1 : in std_logic ; Z : out std_logic_vector(7 downto 0));
end entity;

architecture behave of alu is 
	signal sig1,sig2,sig3,sig4,sig5 : std_logic_vector(7 downto 0);

	component eightbit is 
		port(x0,x1: in std_logic_vector(7 downto 0);
        s0: out std_logic_vector(7 downto 0);
		  c: out std_logic);
	end component;
	
	component eightbitsub is 
		port(x0,x1: in std_logic_vector(7 downto 0);
        s: out std_logic_vector(7 downto 0);
		  b1: out std_logic);
	end component;

	component modifiedleftshift is 
		port(a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(7 downto 0);
		  c: out std_logic_vector(7 downto 0));
	end component;
	
	component modifiedrightshift is 
		port(a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(7 downto 0);
		  c: out std_logic_vector(7 downto 0));
	end component; 
-----------------------------------------------			
begin 
a: eightbit       		 port map(x0 => X, x1 => Y, s0 => sig1, c => sig5(0));
b: modifiedleftshift	       port map(a => X, b => Y, c => sig4);
c: modifiedrightshift    port map(a => X, b => Y, c => sig3);
d: eightbitsub  			 port map(x0 => X, x1 => Y, s => sig2, b1 => sig5(1));
-----------------------------------------------

process(x0, x1,sig1, sig2, sig3, sig4)
begin
------------------------------
if (x0 = '0' and x1 = '0') then
z<= sig1;
elsif(x0 = '1') and (x1 = '0') then
z<= sig2;
elsif(x0 = '0') and (x1 = '1') then
z<= sig3;
else
z<= sig4;
end if;
------------------------------
end process;

end behave;
