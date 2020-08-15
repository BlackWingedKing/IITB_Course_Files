library ieee;
use ieee.std_logic_1164.all;

entity  df is
  port (D, CLK: in std_logic; Q: out std_logic);
end entity;

architecture behave of df is
begin 
   process (CLK) 
   begin
	if CLK'event and (CLK = '1') then
	     Q <= D;
	end if;
   end process;
end behave;