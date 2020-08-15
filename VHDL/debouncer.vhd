library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;

entity debouncer is 
	port (X, RESET, CLK: in std_logic; W: out std_logic);
end entity;

architecture Behave of debouncer is
component HighToLower is
  port (CLK, Reset: in std_logic; LowOut: out std_logic);
end component;
----include dflipflop for the saving the states
component dflipflop is
  port (D, CLK, RESET: in std_logic; Q, notQ: out std_logic);
end component;
----define necessary signals 
signal ps1, ps0, ns1, ns0, clkinsig: std_logic;
begin
co1 : HighToLower port map (CLK, RESET, clkinsig);
----next states and output is defined according to the state table
ns1 <= X and ps0;

ns0 <= X or (ps1 and ps0);

W <= (ps1 or X) and ps0;

dff1: dflipflop port map (D => ns1, Q => ps1, CLK => clkinsig, RESET => RESET);

dff2: dflipflop port map (D => ns0, Q => ps0, CLK => clkinsig, RESET => RESET);

end Behave;
