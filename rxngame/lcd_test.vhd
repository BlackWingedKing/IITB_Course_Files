-- USE CLOCK BETWEEN 100 HZ TO 10K

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity lcd_test is
port (
		clk    : in std_logic;                          --use clock between 100hz to 10khz 
      reset:in std_logic;
      react:in std_logic;
      lcd_rw : out std_logic;                         --read & write control
      lcd_en : out std_logic;                         --enable control
      lcd_rs : out std_logic;                         --data or command control
      lcd1  : out std_logic_vector(7 downto 0);		 --see pin planning in krypton manual 
		b11 : out std_logic;
		b12 : out std_logic;
		led : out std_logic;
		finish:out std_logic;
		gameover:out std_logic;
		s : in std_logic);     --data line
end lcd_test;

architecture behave of lcd_test is 
component lcd_controller is
port ( clk    : in std_logic;                          --clock i/p
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
end component lcd_controller;

component randomfsm is
   Port ( CLK,reset1,react2: in  STD_LOGIC;
            led,gameover,finish,print:out  STD_LOGIC;
				finalin : out unsigned(15 downto 0));
end component;

component msclock is
	port ( CLK,reset: in std_logic;
			OUTPUT: out std_logic);
end component;

type dataarr1 is array (0 to 15) of std_logic_vector(7 downto 0);

--arrayfor displaying abcd... in asciii
constant lcd_data1 : dataarr1 := (x"30",x"31",x"32",x"33",x"34",x"35",x"36",x"37",x"38",x"39",x"41",x"42",x"43",x"44",x"45",x"46"); 


signal erase : std_logic := '0';                  --- clear position
signal put_char :  std_logic := '1';
signal write_data :  unsigned(15 downto 0) ;
signal write_row : std_logic_vector( 0 downto 0) := "0";
signal write_column : std_logic_vector(3 downto 0) := "0000";
signal rst: std_logic;
signal clock_slow : std_logic; 
signal s1,s11 : std_logic_vector ( 3 downto 0) := "0000"; -- S1 IS WRITE_COLUMN
signal i,j : integer := 0; 
signal ack,o2: std_logic;
signal print: std_logic; --To check if print or not

begin
	rst<= not (reset);
	erase<= not print;
	put_char<= print;
	msclock1 : msclock port map (CLK => CLK,reset => reset ,OUTPUT => clock_slow);

lcd_instance1 : lcd_controller port map (clk => clock_slow, rst => rst, erase => erase , put_char => put_char , write_data => lcd_data1(i),
 				write_row => write_row,	write_column => s1 , ack => ack, lcd_rw => lcd_rw, lcd_en => lcd_en, lcd_rs => lcd_rs,
					lcd1 => lcd1, b11 => b11, b12 => b12);

randomfsm1: randomfsm port map(CLK=>CLK, reset1 => reset ,react2 => react, finish=>finish, gameover=>gameover, led => led, print =>print, finalin=>write_data);


process(ack,rst,clock_slow)
begin


if (rising_edge(clock_slow)) then	
	if (rst = '0') then
		i <=0;
		--erase <= '0';
		write_row <= "0";
		s1 <= "0000";
		--put_char <= '1';
	end if;

	if(ack = '1') then 
        if (j=3) then
             j<=0;
             write_row<="0";
             s1<="0000";
             i<=to_integer(write_data((15) downto (12))); 
        else
	         write_row<="0";
	         s1<=s1+1;
	         j<=j+1;
	         i<=to_integer(write_data((11-4*j) downto (8-4*j)));
        end if;
	
		      
	end if;
end if;

end process;
end behave;

