library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity fsm is
    Port ( CLK,reset,react : in  STD_LOGIC;
            led,gameover,finish :out  STD_LOGIC);
end fsm;
 
 
architecture Behavioral of fsm is
--include 1scount and 2scount
component counter1 is
	Port ( CLK,reset : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC);
end component; 

component counter2 is
	Port ( CLK,reset : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC);
end component;

component random is
    Port ( CLK,reset,x: in  STD_LOGIC;
            o: out  STD_LOGIC);
end component;
type state_type is (sstart, sled,swait2,swait1,sgameover,sfinish);
signal state, next_state : state_type;
signal ledtrig, ldone, done1s, done2s, onestrig, twostrig, c2out, c1out, ranout : STD_LOGIC;

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

NEXT_STATE_DECODE : process (state, reset, ldone, done2s, done1s, react)
begin
	ledtrig <= '0';
	case (state) is
		when sstart =>
			if (reset = '0') then
				next_state <= sled;
				ledtrig <= '0';
				gameover <= '0';
				finish <= '0';
				twostrig <= '0';
				onestrig <= '0';
			end if;	
		when sled =>
			ledtrig <= '1';
			if (ldone = '1' and react = '0') then
				next_state <= swait2;
				twostrig <= '1';
			end if;
			if (ldone = '0' and react = '1') then
				next_state <= sgameover;
			end if;
		
		when swait2 =>
			if (done2s = '0' and react = '1') then
				next_state <= swait1;
				ledtrig <= '0';
				twostrig <= '0';
				onestrig <= '1';
			end if;
			if (done2s = '1' and react = '0') then
				next_state <= sgameover;
				ledtrig <= '0';
				twostrig <= '0';
			end if;	
		
		when swait1 =>
			if (done1s = '1' and react = '0') then
				next_state <= sfinish;
				onestrig <= '0';
			end if;
			if (done2s = '0' and react = '1') then
				next_state <= sgameover;
				onestrig <= '0';
			end if;
		when sgameover =>
			gameover <= '1';
		when sfinish =>
			finish <= '1';	
	end case;
end process;
done2s <= c2out;
done1s <= c1out;
c_2: counter2 port map (CLK => CLK,reset => not(twostrig) ,OUTPUT => c2out);
c_1: counter1 port map (CLK => CLK,reset => not(onestrig) ,OUTPUT => c1out);
C_3: counter1 port map (CLK => CLK,reset => reset, OUTPUT => ranout);
r_1: random port map (CLK => CLK, reset => not(ledtrig), x => ranout, o => led);

end Behavioral;