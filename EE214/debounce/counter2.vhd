library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;


entity counter2 is
    port (CLK,reset: in std_logic; cout: out std_logic);
end entity counter2;
architecture Behave of counter2 is

component dff_new is
  port (D, CLK: in std_logic; Q: out std_logic);
end component;
signal d,q: std_logic;
begin
  d <= not(q);
  d_1: dff_new port map (D => d, CLK => CLK, Q => q);
  cout <= not(reset) and q;
end Behave;