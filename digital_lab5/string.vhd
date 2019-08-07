library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;


entity string is
--inputs are reset->reset, 5 bit input vector, clk.
--o is the output
  port (reset: in std_logic;
        x: in std_logic_vector(4 downto 0);
		  CLK: in std_logic;
		  o: out std_logic);
end entity string;
architecture Behave of string is
--used dflipflop
component dff_new is
  port (D, CLK: in std_logic; Q: out std_logic);
end component;
--used gun
component gun is
  port (r: in std_logic;
        x: in std_logic_vector(4 downto 0);
		  CLK: in std_logic;
		  o: out std_logic);
end component;
--used bomb
component bomb is
  port (r: in std_logic;
        x: in std_logic_vector(4 downto 0);
		  CLK: in std_logic;
		  o: out std_logic);
end component;
--used knife
component knife is
  port (r: in std_logic;
        x: in std_logic_vector(4 downto 0);
		  CLK: in std_logic;
		  o: out std_logic);
end component;
--used terror
component terror is
  port (reset: in std_logic;
        x: in std_logic_vector(4 downto 0);
		  CLK: in std_logic;
		  o: out std_logic);
end component;
--a,b,c,d are just the intermediary signals which are assigned as the outputs for the sub fsms
  signal  a,b,c,d: std_logic;
begin
g: gun port map (r => reset, x => x, CLK => CLK, o =>a);
k: knife port map (r => reset, x => x, CLK => CLK, o =>b);
p: bomb port map (r => reset, x => x, CLK => CLK, o =>c);
t: terror port map (reset => reset, x => x, CLK => CLK, o =>d);
--finally i have orred or added all the ouputs from the above fsm's
o <= a or b or c or d;
end Behave;