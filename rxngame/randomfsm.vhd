library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use ieee.numeric_std.all;
 
entity randomfsm is
    Port ( CLK,reset1,react2: in  STD_LOGIC;
            led,gameover,finish,pause1:out  STD_LOGIC;
				D0,D1,D2,D3: out unsigned(3 downto 0));
end randomfsm;
 
architecture Behavioral of randomfsm is
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

component global_counter is
	port ( CLK,reset,pause: in std_logic;
			outin: out unsigned(15 downto 0));
end component;

component msclock is
	port ( CLK,reset: in std_logic;
			OUTPUT: out std_logic);
end component;

component debouncer is
   port (CLK,r,x: in std_logic; 
			o: out std_logic);
end component;

type state_type is (sstart, swait1s, sled, swait2s, swait1s2, sgameover, scountadd, sfinish);
signal state, next_state : state_type;
signal clk2,reset, pause, react,ledtrig, onestrig, ldone, done1s, wait1sedge,done2s, twostrig, c1out, c2out, c3out, nonestrig, ntwostrig, nledtrig, temp, react1: STD_LOGIC;
signal count: integer:=0;
signal outin: unsigned(15 downto 0);

begin
pause1 <= pause;
NEXT_STATE_DECODE : process (CLK,state, reset, done1s,pause, ldone, react, done2s)

begin
--CLK Sampling
	if rising_edge(CLK) then
		if (reset = '1') then
			state <= sstart;
		else
			state <= next_state;
		end if;
		if(react = '1') then
			pause<= '1';
		end if;
		if(ldone='1' and react ='0') then
			pause <= '0';
		end if;
	end if;
	
	if rising_edge(ldone) then
		count <= count + 1;
	end if;	
--	if rising_edge(react) then
--		pause <= '1';
--	end if;
--default values	
	led <= '0';
	ledtrig <= '0';
	onestrig <= '0';
	twostrig <= '0';
	gameover <= '0';
	finish <= '0';
	pause <= '0';
	--print <= '0';
	case (state) is
		--sstart
		when sstart => 
			--default values in start
			led <= '0';
			ledtrig <= '0';
			onestrig <= '0';
			twostrig <= '0';
			gameover <= '0';
			finish <= '0';
			count <= 0;
			pause <= '1';
			--print <= '0';
			
			if(reset = '0') then
				onestrig <= '1';
				next_state <= swait1s;
			end if;
			
			if(reset = '1') then
				next_state <= sstart;
			end if;
		
		--swait 1s
		when swait1s =>
			--default values in wait1s state
			led <= '0';
			ledtrig <= '0';
			onestrig <= '1';
			twostrig <= '0';
			finish <= '0';
			gameover <= '0';
			--pause<= '1';
			--print <= '0';
			
			if (done1s = '1') then
				ledtrig <= '1';
				next_state <= sled;
			end if;
			
			if (done1s = '0' and react = '1') then
				--pause <= '1';
				next_state <= sgameover;
				led <= '0';
				ledtrig <= '0';
			end if;
			
			if (done1s = '0' and react = '0') then
				next_state <= swait1s;
				led <= '0';
				ledtrig <= '0';
			end if;
		
		-- srandom turn on led	
		when sled =>
			--default values in led state
			led <= '0';
			ledtrig <= '1';
			onestrig <= '0';
			twostrig <= '0';
			finish <= '0';
			gameover <= '0';
			--pause <= '1';
			--print <= '0';
			
			if (ldone = '1') then
				led <= '1';
				--pause <= '0';
				twostrig <= '1';
				next_state <= swait2s;
			end if;
			
			if (ldone = '0' and react = '1') then
				led <= '0';
				twostrig <= '0';
				--pause <= '1';
				next_state <= sgameover;
			end if;
			
			if (ldone = '0' and react = '0') then
				led <= '0';
				twostrig <= '0';
				next_state <= sled;
			end if;
			
		-- wait for 2s till react	
		when swait2s =>
			--default values in wait2s state
			led <= '1';
			ledtrig <= '0';
			onestrig <= '0';
			twostrig <= '1';
			finish <= '0';
			gameover <= '0';
			--print <= '0';

			if (done2s = '0' and react = '1') then
				gameover <= '0';
				pause <= '1';
				next_state <= swait1s2;		
			end if;
			
			if (done2s = '0' and react = '0') then
				finish <= '0';
				gameover <= '0';
				next_state <= swait2s;
			end if;
			
			if (done2s = '1' and react = '0') then
				gameover <= '1';
				next_state <= sgameover;
			--extra condition not needed
			elsif (done2s = '1' and react = '1') then
				gameover <= '1';
				next_state <= sgameover;
			end if;
			
		when swait1s2 =>
			--default values in wait1s2 state
			led <= '0';
			ledtrig <= '0';
			onestrig <= '1';
			twostrig <= '0';
			finish <= '0';
			gameover <= '0';
			--print <= '0';

			--extra maynot be needed after debouncing
			if(wait1sedge = '1') then
				if (done1s = '1' and react = '0') then
					gameover <= '0';
					next_state <= scountadd;
				end if;

				if(done1s = '0') then
					if(react = '0') then
						gameover <= '0';
						next_state <= swait1s2;
					end if;

					if(react = '1') then
						gameover <= '1';
					--pause <= '1';
					next_state <= sgameover;
					end if;
				end if;
			
				if(done1s = '1') then
					if(react = '0') then
						gameover <= '0';
						next_state <= scountadd;
					end if;

					if(react = '1') then
						gameover <= '0';
						pause <= '1';
						next_state <= scountadd;
					end if;
				end if;
			
			end if;
			
			if(wait1sedge = '0') then
				if(done1s = '1') then
					gameover <= '1';
					next_state <= sgameover;
				end if;
				if(done1s = '0') then
					gameover <= '0';
					next_state <= swait1s2;
				end if;	
			end if;	
		--countadd state
		when scountadd =>
			led <= '0';
			ledtrig <= '0';
			onestrig <= '0';
			twostrig <= '0';
			finish <= '0';
			gameover <= '0';
			--print <= '0';
			
			if(count = 8) then
				gameover <= '0';
				finish <= '1';
				next_state <= sfinish;
				
				else
				onestrig <= '1';
				next_state <= swait1s;
			end if;
			
		-- gameover state
		when sgameover =>
			led <= '0';
			gameover <= '1';
			finish <= '0';
			next_state <= sgameover;
			pause <= '1';
			-- finalin <= x"0000";
			--print <= '1';
		-- finish state
		when sfinish =>
			led <= '0';
			gameover <= '0';
			finish <= '1';
			next_state <= sfinish;	
			pause <= '1';
			-- finalin <= outin;			
			--print <= '1';
	end case;
end process;

--non process and the fsm port maps
reset <= not (reset1);
react <= not (react1);
nonestrig <= not(onestrig);
nledtrig <= not(ledtrig);
ntwostrig <= not(twostrig);
--edge detection
D0 <= outin(3 downto 0);
D1 <= outin(7 downto 4);
D2 <= outin(11 downto 8);
D3 <= outin(15 downto 12);

onescount1 : counter1 port map (CLK => CLK,reset => nonestrig ,OUTPUT => c1out);
ranfsm1 : random port map (CLK => CLK, reset => nonestrig, x => c1out, o => done1s);

freecount : counter1 port map (CLK => CLK,reset => '0',OUTPUT => c2out);
ranfsm2 : random port map (CLK => CLK, reset => nledtrig, x => c2out, o => ldone);

twoscount : counter2 port map (CLK => CLK,reset => ntwostrig ,OUTPUT => c3out);
ranfsm3 : random port map (CLK => CLK, reset => ntwostrig, x => c3out, o => done2s);

ranfsm4 : random port map (CLK => CLK, reset => nonestrig, x => react, o => wait1sedge);

global1 : global_counter port map(CLK => clk2, reset => reset, pause => pause, outin => outin);

msclock1 : msclock port map (CLK => CLK,reset => reset ,OUTPUT => clk2);

debouncereact : debouncer port map (CLK => CLK, r => reset, x => react2, o => react1 );

end Behavioral;