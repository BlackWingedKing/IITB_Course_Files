library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ledctrl is
	port (sclk,react,rst : in std_logic;
			random : in std_logic_vector(10 downto 0);
			toled : out std_logic);
end entity;
architecture Behave of ledctrl is

signal random_sig : unsigned(10 downto 0);
signal count : unsigned(10 downto 0) := to_unsigned(0,11);
constant starthere : unsigned(10 downto 0) := to_unsigned(0,11);
--constant endhere : unsigned(10 downto 0) := to_unsigned(2000,11);

signal ledsig : std_logic := '0';

begin
	process(sclk,react,rst,random)
	
	begin
	if rising_edge(sclk) then
	count <= count+1;

--	if (count = endhere) then
--		count <= starthere;
--	end if;
	
	if (rst = '1') then
		count <= starthere;
		ledsig <= '0';
	end if;
	
	random_sig <= unsigned(random);
	if (count = random_sig) then
		ledsig <= '1';
	end if;
	
	if (react = '1') then
		ledsig <= '0';
	end if;
	
	toled <= ledsig;
	end if;
	end process;
end Behave;	
