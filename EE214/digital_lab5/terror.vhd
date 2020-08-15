library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;


entity terror is
--inputs are reset->reset, 5 bit input vector, clk.
--o is the output
  port (reset: in std_logic;
        x: in std_logic_vector(4 downto 0);
		  CLK: in std_logic;
		  o: out std_logic);
end entity terror;
architecture Behave of terror is
--used a dflip flop named dff_new
component dff_new is
  port (D, CLK: in std_logic; Q: out std_logic);
end component;
--q and nq are the 3 bit states 
--since the number of states in the terror are 6
--they are encoded using 3 bit vectors.
	signal  q,nq: std_logic_vector(2 downto 0);
--signals t,e,r,a reperesent the inputs t,e,r,o respectively 
--so they are 1 when the inputs are t,e,r,o respectively
--signals nt,ne,nr,na represent the inputs which arent not t, not e
--, not r, not o respectively
--signals ss,st,ste,ster,sterr,sterro represent the states start,t,te,ter,terr,terro respectively
--state encoding is 000-start,001-t,010-te,011-ter,100-terr,101-terro
--rbar is 1 when reset is low
	signal  t,e,r,a,nt,ne,nr,na,ss,st,ste,ster,sterr,sterro,rbar: std_logic; 
begin
  t <= (x(4)) and (not x(3)) and (x(2)) and (not x(1)) and (not x(0));
  nt <= not t;
  e <= (not x(4)) and (not x(3)) and (x(2)) and (not x(1)) and (x(0));
  ne <= not e;
  r <= (x(4)) and (not x(3)) and (not x(2)) and (x(1)) and (not x(0));
  nr <= not r;
  a <= (not x(4)) and (x(3)) and (x(2)) and (x(1)) and (x(0));
  na <= not a;
  
  rbar <= not reset;
  
  ss <= (not q(2)) and (not q(1)) and (not q(0));
  st <= (not q(2)) and (not q(1)) and (q(0));
  ste <= (not q(2)) and (q(1)) and (not q(0));
  ster <= (not q(2)) and (q(1)) and (q(0));
  sterr <= (q(2)) and (not q(1)) and (not q(0));
  sterro <= (q(2)) and (not q(1)) and (q(0));
--output is high when the transition is from state terro to start
--so output will be just the and of rbar,sterro,r
  o <= (rbar) and (sterro) and r;
--similary i have defined then nq(2), nq(1) and nq(0) 
  nq(2) <= (rbar) and ((ster and r) or (sterr and na) or (sterr and a) or (sterro and nr));
  nq(1) <= (rbar) and ((st and e) or (ste and nr) or (ste and r) or (ster and nr));
  nq(0) <= (rbar) and ((ss and t) or (st and ne) or (ste and r) or (ster and nr) or (sterr and a) or (sterro and nr));
-- nq is the input for the flipflop and the ouput is q 
  d_1: dff_new port map (D => nq(0), CLK => CLK, Q => q(0));
  d_2: dff_new port map (D => nq(1), CLK => CLK, Q => q(1));
  d_3: dff_new port map (D => nq(2), CLK => CLK, Q => q(2));
end Behave;