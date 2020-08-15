library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity gun is
--inputs are reset->r, 5 bit input vector, clk.
--o is the output
  port (r: in std_logic;
        x: in std_logic_vector(4 downto 0);
		  CLK: in std_logic;
		  o: out std_logic);
end entity gun;
architecture Behave of gun is
--used a dflip flop named dff_new
component dff_new is
  port (D, CLK: in std_logic; Q: out std_logic);
end component;
--q and nq are the 2 bit states 
--since the number of states in the gun are 3 
--they are encoded using 2 bit vectors.
	signal  q,nq: std_logic_vector(1 downto 0);
	signal  y,z: std_logic; 
	signal  a,b: std_logic;
begin
--state encoding => 00-start, 01- g,10-gu 
--output is 1 only when reset low, and the transition is from the state gu to start
--ie it should be in state gu and the input is n=>(14)  
  o <= (not r) and (q(1) and (not q(0)) ) and (not x(4)) and (x(3)) and (x(2)) and (x(1)) and (not x(0));
  y <= (not r) and(not q(1)) and (q(0)) and (x(4)) and (not x(3)) and (x(2)) and (not x(1)) and (x(0));
  z <= (not r) and (q(1)) and (not q(0)) and ( x(4) or (not x(3)) or (not x(2)) or (not x(1)) or x(0) );
  nq(1) <= y or z;
  a <= (not r) and(not q(1)) and (not q(0)) and (not x(4)) and (not x(3)) and (x(2)) and (x(1)) and (x(0));
  b <= (not r) and (not q(1)) and (q(0)) and ( (not x(4)) or (x(3)) or (not x(2)) or (x(1)) or (not x(0)) );
  nq(0) <= a or b;
-- nq is the input for the flipflop and the ouput is q
  d_1: dff_new port map (D => nq(0), CLK => CLK, Q => q(0));
  d_2: dff_new port map (D => nq(1), CLK => CLK, Q => q(1));
end Behave;
