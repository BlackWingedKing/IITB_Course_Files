library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;

entity EdgeFSM is
	port (Xin, CLK, Reset: in std_logic; W: out std_logic);
end entity;

architecture Behave of EdgeFSM is

type state_type is (s0, s1);  --type of state machine.
signal current_s,next_s: state_type;  --current and next state declaration.

begin

process (CLK, Reset)
begin
 if (reset='1') then
  current_s <= s0;  --default state on reset.
elsif (CLK'event and (CLK = '1')) then
  current_s <= next_s ;  --state change.
end if;
end process;

	
--state machine process.
process (current_s, Xin)
begin

  case current_s is
    when s0 =>        --when current state is "s0"
		if(Xin = '0') then
			W <= '0';
			next_s <= s0;
		else 
			W <= '1';
			next_s <= s1;
		end if;
	  
    when s1 =>        --when current state is "s0"
		if(Xin = '0') then
			W <= '0';
			next_s <= s0;
		else 
			W <= '0';
			next_s <= s1;
		end if;
	end case;
end process;

end behave;