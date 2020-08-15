library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;


entity counter4 is
    port (reset,CLK: in std_logic; cout: out std_logic);
end entity counter4;
architecture Behave of counter4 is

component dff_new is
  port (D,reset,CLK: in std_logic; Q: out std_logic);
end component;
signal d,q,d1,q1,q11,q12,nreset: std_logic;
begin
  nreset <= not(reset);
  d <= not(q11);
  d1 <= not(q12);
  d_1: dff_new port map (reset => reset,D => d, CLK => CLK, Q => q);
  q11 <= nreset and q;
  d_2: dff_new port map (reset => reset,D => d1, CLK => q, Q => q1);
  q12 <= nreset and q1;
  cout <= nreset and q1;
end Behave;