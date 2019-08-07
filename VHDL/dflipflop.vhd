library ieee;
use ieee.std_logic_1164.all;

entity dflipflop is
  port (D, CLK, RESET: in std_logic; Q, notQ: out std_logic);
end entity;

architecture Behave of dflipflop is
begin 

   process (CLK) 
   begin
	if (RESET = '1') then
		Q <= '0'; 
		notQ <= '1';
	elsif (CLK'event and (CLK = '1')) then
		Q <= D;
		notQ <= (not D);
	end if;
   end process;

end Behave;
