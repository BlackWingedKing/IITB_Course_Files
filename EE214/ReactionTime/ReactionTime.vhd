library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- The only thing this entity cares for is the button input and the output it will give to the LCD controller
-- clock is 50MHz
entity ReactionTime is
	port(btnClick, clock, reset: in std_logic; 
		ledLight, readWrite, enable, datCom, b11, b12 : out std_logic; lcdOut : out std_logic_vector(7 downto 0));
end entity; 

-- Architecture of the top level entity... 
architecture intelli of ReactionTime is 
	-- Declare all the components used in the game
--	component debounce is
--		port(inputval, clock, rst : in std_logic; 
--			debOutput : out std_logic);	
--	end component;
	component randm is 
		port(switch, clk : in std_logic; 
			outval : out std_logic_vector(10 downto 0));
	end component;
	component lowCLK is
		port(clk : in std_logic;
			outclk : out std_logic);
	end component;
	component lighter is 
		port(clk, click, reset : in std_logic; rand : in std_logic_vector(10 downto 0);
			lightUp : out std_logic);
	end component;
	component calculateTime is 
		port(clk, reset, ledSignal : in std_logic;
			calcTime : out std_logic_vector(10 downto 0));
	end component;
	component validation is 
		port(timeIn : in std_logic_vector(10 downto 0);
			valid : out std_logic);
	end component;
	component runMultiple is 
		port(clk, ledIn : in std_logic;
			complete : out std_logic);
	end component;
	component lcd_controller is
		port (clk    : in std_logic;                          
      rst    : in std_logic;                          -- reset
      erase : in std_logic;                  --- clear position
      put_char : in std_logic;
      write_data : in std_logic_vector(7 downto 0) ;
      write_row : in std_logic_vector(0 downto 0);
      write_column : in std_logic_vector(3 downto 0);
      ack : out std_logic;
      lcd_rw : out std_logic;                         --read & write control
      lcd_en : out std_logic;                         --enable control
      lcd_rs : out std_logic;                         --data or command control
      lcd1  : out std_logic_vector(7 downto 0);
      b11 : out std_logic;
      b12 : out std_logic);     --data line
	end component;

	
	-- Declare all the signals needed
	signal debOut, tempClock, lightOut, validated: std_logic := '1';
	signal complete : std_logic := '0';
	signal randOut, timeOut : std_logic_vector(10 downto 0);

	-- Signals for the LCD Controller based on it's entity declaration
	signal erase, putIn : std_logic := '0';
	signal wrData : std_logic_vector(7 downto 0);
	signal wrRow : std_logic_vector(0 downto 0);
	signal wrCol : std_logic_vector(3 downto 0);
	signal acknow : std_logic;
	signal rst : std_logic := (not reset);
	signal tmpl : std_logic;
begin
--	cmp1 : debounce port map(btnClick, clock, reset, debOut);
	cmp2 : lowCLK port map(clock, tempClock);
	cmp3 : randm port map(btnClick, clock, randOut);
	cmp4 : lighter port map(tempClock, btnClick, reset, randOut, lightOut);
	cmp5 : calculateTime port map(tempClock, reset, lightOut, timeOut);
	-- cmp6 : validation port map(timeOut, validated);
	cmp7 : runMultiple port map(clock, lightOut, complete);
	ledLight <= lightOut and (not complete);
	tmpl <= lightOut and (not complete);
	-- LCD Controller Code
	cmp8 : lcd_controller port map(tempClock, rst, erase, putIn, wrData, wrRow, wrCol, acknow, readWrite, enable, datCom, lcdOut, b11, b12);  
	process(tempClock)
		variable remaind : integer;
		variable oldNum : integer;
		variable newNum : integer := 0;
		variable st, nst : integer := 1;
		variable toChange : integer := 0;
		begin
		if rising_edge(tempClock) then
			erase <= '0';
			if(tmpl = '1') then 
				oldNum := to_integer(unsigned(timeOut));
			end if;
			oldNum := newNum;				
			newNum := oldNum/10;
			remaind := oldNum - 10*(newNum);
			if(toChange = 0) then
				wrData <= std_logic_vector(to_unsigned(remaind + 48, 8));
			elsif(toChange = 1) then
				wrData <= std_logic_vector(to_unsigned(remaind + 48, 8));
			elsif(toChange = 2) then
				wrData <= std_logic_vector(to_unsigned(remaind + 48, 8));
			elsif(toChange = 3) then
				wrData <= std_logic_vector(to_unsigned(remaind + 48, 8));
			end if;
			wrRow <= std_logic_vector(to_unsigned(1,1));
			wrCol <= std_logic_vector(to_unsigned(3-toChange,4));
			if(st = 1) then
				putIn <= '1';
				toChange := toChange + 1;
				if(toChange = 4) then
					toChange := 0;
				end if;
				nst := 0;
			end if;
			if(st = 0) then
			 putIn <= '0';
			 if(acknow <= '1') then
			  nst := 1;
			 end if;
			end if;
			st := nst; 
		end if;
	end process;
end intelli;
