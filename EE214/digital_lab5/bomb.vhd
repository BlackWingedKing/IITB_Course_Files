library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;


entity bomb is
--inputs are reset->r, 5 bit input vector, clk.
--o is the output
  port (r: in std_logic;
        x: in std_logic_vector(4 downto 0);
		  CLK: in std_logic;
		  o: out std_logic);
end entity bomb;
architecture Behave of bomb is
--used a dflip flop named dff_new
component dff_new is
  port (D, CLK: in std_logic; Q: out std_logic);
end component;
--q and nq are the 2 bit states 
--since the number of states in the bomb are 4
--they are encoded using 2 bit vectors.
	signal  q,nq: std_logic_vector(1 downto 0);
--signals b,a,m reperesent the inputs b,o,m respectively 
--so they are 1 when the inputs are b,o,m respectively
--signals nb,na,nm represent the inputs which arent not b, not a 
--, not m respectively
--signals ss,sb,sbo,sbom represent the states start,b,bo,bom respectively
--state encoding is 00-start,01-b,10-bo,11-bom
--rbar is 1 when reset is low
	signal  b,a,m,nb,na,nm,ss,sb,sbo,sbom,rbar: std_logic; 
begin
  b <= (not x(4)) and (not x(3)) and (not x(2)) and (x(1)) and (not x(0));
  nb <= not b;
  a <= (not x(4)) and (x(3)) and (x(2)) and (x(1)) and (x(0));
  na <= not a;
  m <= (not x(4)) and (x(3)) and (x(2)) and (not x(1)) and (x(0));
  nm <= not m;
  rbar <= not r;
  ss <= (not q(1)) and (not q(0));
  sb <= (not q(1)) and (q(0));
  sbo <= (q(1)) and (not q(0));
  sbom <= (q(1)) and (q(0));
--output is high when the transition is from state bom to start
--so output will be just the and of sbo,rbar,b
  o <= (rbar) and (sbom) and b;
--similary i have defined the nq(1) and nq(0)
  nq(1) <= (rbar) and ((sb and a) or (sbo and m) or (sbo and nm) or (sbom and nb));
  nq(0) <= (rbar) and ((ss and b) or (sbo and m) or (sb and na) or (sbom and nb));
-- nq is the input for the flipflop and the ouput is q  
  d_1: dff_new port map (D => nq(0), CLK => CLK, Q => q(0));
  d_2: dff_new port map (D => nq(1), CLK => CLK, Q => q(1));
end Behave;