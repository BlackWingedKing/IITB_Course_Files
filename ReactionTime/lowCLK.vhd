library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- This component is supposed to step down from 50MHz to 1kHz
entity lowCLK is
	port(clk : in std_logic;
			outclk : out std_logic);
end entity;
architecture behave of lowCLK is
	signal count : unsigned(15 downto 0) := to_unsigned(0,16);
	constant start : unsigned(15 downto 0) := to_unsigned(0,16);
	constant half : unsigned(15 downto 0) := to_unsigned(25000,16);
	constant full : unsigned(15 downto 0) := to_unsigned(50000,16);
	signal outputSignal : std_logic := '0';	
begin
	process(clk)
	begin
		if rising_edge(clk) then
			count <= count + 1;
			if (count < half) then
				outputSignal <= '0';
			else
				outputSignal <= '1';
			end if;
			if (count = full) then
				count <= start;
			end if;
			outclk <= outputSignal;
		end if;
	end process;
end behave;