library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity Control is
  port (Click, CLK, CLKH, Reset: in std_logic; LED, LEDOver, LEDEnd, GAMEOVER: out std_logic;
			D0, D1, D2, D3, D4: out std_logic_vector(3 downto 0));
end entity Control;

architecture Behave of Control is
signal C: std_logic_vector(4 downto 0);
signal TimeClk: std_logic;
signal LEDF: std_logic:='0';


component TenCounter is
  port (CLK, Reset: in std_logic;
         Count: out std_logic_vector(3 downto 0);
			Carry: out std_logic);
end component;

type state_type is (GON, GOVER, GEND);  --type of state machine.
--GON for Game active, GOVER for finishing game by error, GEND for end of game after 8 times.
signal state: state_type;  --state declaration.


begin

	TimeCount0:TenCounter port map(TimeClk, Reset, D0, C(0));
	TimeCount1:TenCounter port map(C(0), Reset, D1, C(1));
	TimeCount2:TenCounter port map(C(1), Reset, D2, C(2));
	TimeCount3:TenCounter port map(C(2), Reset, D3, C(3));
	TimeCount4:TenCounter port map(C(3), Reset, D4, C(4));
	
	LED <= LEDF;
	
	process(CLK)
	begin
		if(LEDF = '1') then
			TimeClk <= CLKH;
		else
			TimeClk <= '0';
		end if;
	end process;

	
	process(CLKH, Reset)
		variable Count: integer:= 0;
		variable Random: integer:= 1000;
		variable React: integer:= 0;
	begin
		if(Reset = '1') then
			count := 0;
			LEDF <= '0';
			LEDOver <= '0';
			LEDEnd <= '0';
			React := 0;
			GAMEOVER <= '0';
			Random := 1000;
			state <= GON;
		elsif(rising_edge(CLKH)) then
		case state is
			when GON =>
			LEDOver <= '0';
			LEDEnd <= '0';
			if(LEDF = '0') then
				Count := Count + 1;
				if(Count = Random) then
					LEDF <= '1';
					Count := 0;
				elsif(Click = '1' and Count > 12) then
					state <= GOVER;
				elsif(React = 8) then
					state <= GEND;
				end if;
			else
				Count := Count + 1;
				if(Click = '1') then
					Random := 1000 + (Count/2);
					Count := 0;
					React := React + 1;
					LEDF <= '0';
				elsif(Count > 2000) then
					Count := 0;
					LEDF <= '0';
					state <= GOVER;
				end if;
			end if;
			
			when GOVER =>
			LEDF <= '0';
			LEDOver <= '1';
			LEDEnd <= '0';
			GAMEOVER <= '1';
			
			when GEND =>
			LEDF <= '0';
			LEDOver <= '0';
			LEDEnd <= '1';
			GAMEOVER <= '1';
			end case;
		end if;
	end process;
			
end Behave;