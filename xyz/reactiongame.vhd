library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reactiongame is
	port (CLK,nreact,nreset : in std_logic;
			LED : out std_logic;
			rs,rw,en : out std_logic;
			data : out std_logic_vector(7 downto 0);
			b11,b12 : out std_logic;
			bintime : out std_logic_vector(9 downto 0));
end entity;
architecture struct of reactiongame is

component slowclk is
	port (inclk : in std_logic;
			outclk : out std_logic);
end component;

component randgen is
	port (clk,stop : in std_logic;
			output : out std_logic_vector(10 downto 0));
end component;

component ledctrl is
	port (sclk,react,rst : in std_logic;
			random : in std_logic_vector(10 downto 0);
			toled : out std_logic);
end component;

component looper is
	port (React,Reset,sclk : in std_logic;
			newrst : out std_logic);
end component;

component timer is
	port (led,sclk,Reset : in std_logic;
			tottime : out std_logic_vector(9 downto 0));
end component;
--
--component over is
--	port (led,React,sclk : in std_logic;
--			over : out std_logic);
--end component;
	
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
      b11 : out std_ulogic;
      b12 : out std_ulogic);     --data line
end component;

	
signal sclk,led_sig,newrst : std_logic;
signal randsig : std_logic_vector(10 downto 0);
signal React,Reset : std_logic;
signal timeout : std_logic_vector(9 downto 0);

signal erase,put_char : std_logic := '0';
signal write_data : std_logic_vector(7 downto 0);
signal write_row : std_logic_vector(0 downto 0);
signal write_column : std_logic_vector(3 downto 0);
signal ack : std_logic;

begin
	React <= not nreact;
	Reset <= not nreset;
	LED <= led_sig;
	bintime <= timeout;
--	gover <= over_sig;
	
	s1 : slowclk port map (inclk=>CLK, outclk=>sclk);
	s2 : randgen port map (clk=>CLK, stop=>React, output=>randsig);
	s3 : ledctrl port map (sclk=>sclk, react=>React, rst=>newrst, random=>randsig, toled=>led_sig);
	s4 : timer port map (led=>led_sig, Reset=>Reset, sclk=>sclk, tottime=>timeout);
	s5 : looper port map(React=>React, Reset=>Reset, sclk=>sclk, newrst=>newrst);
--	s6 : over port map (led=>led_sig, React=>React, sclk=>sclk, over=>over_sig);
	s6 : lcd_controller port map (clk=>sclk, rst=>Reset, erase=>erase, put_char=>put_char,
											write_data=>write_data, write_row=>write_row, write_column=>write_column,
											ack=>ack, lcd_rw=>rw, lcd_en=>en, lcd_rs=>rs, lcd1=>data, b11=>b11, b12=>b12);
	
	process(sclk)
	variable state,nstate : integer := 1;				--1 = write; 0 = wait for ack;
	variable mytime,digit0,digit1,digit2,digit3 : integer;
	variable d : integer := 0;
	begin
		if(rising_edge(sclk)) then
			erase <= '0';
			
			if(led_sig = '0') then
			mytime := to_integer(unsigned(timeout));
			end if;

			digit3 := (mytime/1000) - (mytime/10000);
			digit2 := (mytime/100) - 10*digit3;			
			digit1 := (mytime/10) - 100*digit3 - 10*digit2;
			digit0 := mytime - 1000*digit3 - 100*digit2 - 10*digit1;

			if(d=0) then
			write_data<=std_logic_vector(to_unsigned(digit0 + 48,8));
			end if;

			if(d=1) then
			write_data<=std_logic_vector(to_unsigned(digit1 + 48,8));
			end if;
			
			if(d=2) then
			write_data<=std_logic_vector(to_unsigned(digit2 + 48,8));
			end if;
			
			if(d=3) then
			write_data<=std_logic_vector(to_unsigned(digit3 + 48,8));
			end if;			
			
			write_row<=std_logic_vector(to_unsigned(1,1));
			write_column<=std_logic_vector(to_unsigned(3-d,4));
			
			
			if (state = 1) then
				put_char <= '1';
				d := d+1;
				if (d = 4) then
					d:=0;
				end if;
				nstate := 0;
			end if;
			if (state = 0) then
--				put_char <= '0';
				if (ack = '1') then
					nstate := 1;
				end if;
			end if;
			
			state:=nstate;
			
		end if;
	end process;
end struct;
