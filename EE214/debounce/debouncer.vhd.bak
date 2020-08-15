library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;


entity debounce is
    port (CLK,r,x: in std_logic; o: out std_logic);
end entity debounce;
architecture Behave of debounce is

component dff_new is
  port (D, CLK: in std_logic; Q: out std_logic);
end component;
	signal q,nq: std_logic_vector(1 Downto 0);
	signal s00,s01,s10,s11,rbar,xbar: std_logic;
begin
  s00 <= (not(q(0)) and not(q(1)));
  s01 <= (not(q(0)) and (q(1)));
  s10 <= ((q(0)) and not(q(1)));
  s11 <= ((q(0)) and (q(1)));
  rbar <= not(r);
  xbar <= not(x);
  nq(0) <= (rbar) and ((s11 and xbar) or (s10 and x) or (s11 and x) or (s01 and x));
  nq(1) <= (rbar) and ((s00 and x) or (s10 and x) or (s11 and x) or (s01 and x));
  o <= (rbar) and ((s10 and x) or (s11 and x) or (s01 and x) or (s11 and xbar));
  
  d_1: dff_new port map (D => nq(0), CLK => CLK, Q => q(0));
  d_2: dff_new port map (D => nq(1), CLK => CLK, Q => q(1));
end Behave;