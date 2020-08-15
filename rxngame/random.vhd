library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity random is
    Port ( CLK,reset,x: in  STD_LOGIC;
            o: out  STD_LOGIC);
end random;
 
architecture Behavioral of random is

type state_type is (sstart, s1,s0);
signal state, next_state : state_type;
--signal : STD_LOGIC;

begin

--sync proc for sampling at the rising edge
SYNC_PROC : process (clk)
begin
 if rising_edge(clk) then
	if (reset = '1') then
		state <= sstart;
	else
		state <= next_state;
	end if;
 end if;
end process;

NEXT_STATE_DECODE : process (state, x)
begin
	case (state) is
		when sstart =>
			o <= '0';
			if (x = '0') then
				o <= '0';
				next_state <= s0;
			end if;
			if (x = '1') then
				o <= '0';
				next_state <= s1;
			end if;
		
		when s1 =>
			if (x = '0') then
				o <= '1';
				next_state <= s1;
			end if;
			if (x = '1') then
				o <= '0';
				next_state <= s1;
			end if;
		when s0 =>
			if (x = '0') then
				o <= '0';
				next_state <= s0;
			end if;
			if (x = '1') then
				o <= '1';
				next_state <= s0;
			end if;
	end case;
end process;
end Behavioral;