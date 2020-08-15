library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity fsmrandom is
    Port ( CLK,reset: in  STD_LOGIC;
            led:out  STD_LOGIC);
end fsmrandom;
 
 
architecture Behavioral of fsmrandom is
--include 1scount and 2scount

component counter1 is
	Port ( CLK,reset : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC);
end component; 

component counter2 is
	Port ( CLK,reset : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC);
end component; 

type state_type is (sstart, swait1s, sled, sledon);
signal state, next_state : state_type;
signal ledtrig,onestrig, ldone, done1s, freeout,c1out: STD_LOGIC;

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

NEXT_STATE_DECODE : process (state, reset, ldone, done1s)
begin
	led <= '0';
	ledtrig <= '0';
	onestrig <= '0';
--	done1s = '0';
--	ldone = '0';
	case (state) is

		when sstart => 
			led <= '0';
			ledtrig <= '0';
			--ldone = '0';
			onestrig <= '0';
			if(reset = '0') then
				onestrig <= '1';
				next_state <= swait1s;
			end if;
			
			if(reset = '1') then
				next_state <= sstart;
				onestrig <= '0';
			end if;
		
		when swait1s =>
			led <= '0';
			ledtrig <= '0';
			onestrig <= '1';
			--ldone = '0';
			if (done1s = '1') then
				ledtrig <= '1';
				onestrig <= '0';
				next_state <= sled;
			end if;
			if (done1s = '0') then
				next_state <= swait1s;
				ledtrig <= '0';
			end if;
			if(reset = '1') then
				next_state <= sstart;
			end if;
		when sled =>
			led <= '0';
			ledtrig <= '1';
			onestrig <= '0';
			
			if (ldone = '1') then
				led <= '1';
				ledtrig <= '1';
				next_state <= sledon;
			end if;
			
			if (ldone = '0') then
				led <= '0';
				ledtrig <= '1';
				next_state <= sled;
			end if;
			
			if(reset = '1') then
				next_state <= sstart;
			end if;
			
		when sledon =>
			ledtrig <= '0';
			led <= '1';
			next_state <= sledon;
			
			if(reset = '1') then
				next_state <= sstart;
			end if;
	end case;
end process;
free : counter2 port map(CLK => CLK,reset => '0' ,OUTPUT => freeout);
ranfsm : random port map (CLK => CLK, reset => not(ledtrig), x => freeout, o => ldone);
onescount : counter2 port map (CLK => CLK,reset => not(onestrig) ,OUTPUT => c1out);
led1strig <= onestrig;

end Behavioral;