library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

package EE224_Components is
   component INVERTER is
	port (a: in std_logic; b : out std_logic);
   end component;
   component AND_2 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
   component OR_2 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
   component NAND_2 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
   component XOR_2 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
end EE224_Components;

library ieee;
use ieee.std_logic_1164.all;
entity INVERTER is
  port (a: in std_logic;
         b: out std_logic);
end entity INVERTER;
architecture Behave of INVERTER is
begin
  b <= not a;
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity AND_2 is
  port (a, b: in std_logic;
         c: out std_logic);
end entity AND_2;
architecture Behave of AND_2 is
begin
  c <= a and b;
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity OR_2 is
  port (a, b: in std_logic;
         c: out std_logic);
end entity OR_2;
architecture Behave of OR_2 is
begin
  c <= a or b;
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity NAND_2 is
  port (a, b: in std_logic;
         c: out std_logic);
end entity NAND_2;
architecture Behave of NAND_2 is
begin
  c <= not (a and b);
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity XOR_2 is
  port (a, b: in std_logic;
         c: out std_logic);
end entity XOR_2;
architecture Behave of XOR_2 is
begin
  c <= (a xor b);
end Behave;