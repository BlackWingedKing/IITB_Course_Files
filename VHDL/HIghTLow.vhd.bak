library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity HighTLow is
  port (CLK, Reset: in std_logic;
         LowOut: out std_logic);
end entity HighTLow;
architecture Behave of HighTLow is
signal Output : std_logic:='0';

--package EE224_Components is
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
--end EE224_Components;

begin

LowOut <= Output;

process(CLK, Reset)
	variable c: integer :=0;
begin
	if(Reset = '1') then
		c := 0;
		Output<='0';
	else
		if(rising_edge(CLK)) then
			c := c + 1;
			if (c = 50000) then
				if (Output = '1') then
					Output<='0';
				else
					Output<='1';
				end if;
				c := 0;
			end if;
		end if;
	end if;
end process;

end Behave;