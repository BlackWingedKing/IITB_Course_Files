library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;


entity debouncer is
    port (CLK,r,x: in std_logic; 
			o: out std_logic);
end entity debouncer;
architecture Behave of debouncer is

component dff_new is
  port (D, CLK: in std_logic; Q: out std_logic);
end component;

component debounce is
    port (CLK,r,x: in std_logic; o: out std_logic);
end component;

component divider is
   port (CLK,reset: in std_logic; cout: out std_logic);
 end component;
signal y :std_logic;
begin
d_1: divider port map(CLK => CLK, reset => r, cout => y);
db_1: debounce port map(CLK => y, r => r, x => x, o => o);

end Behave;