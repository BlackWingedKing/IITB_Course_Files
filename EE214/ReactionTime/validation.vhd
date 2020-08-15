library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- This will validate if the user has pressed within proper time limits else will terminate the program and declare output as loss
-- Time limit to react is set as 1000 ms
entity validation is 
	port(timeIn : in std_logic_vector(10 downto 0);
		valid : out std_logic);
end entity;
architecture check of validation is
	signal tempTime : unsigned(10 downto 0) := unsigned(timeIn);
	signal upperLimit : unsigned(10 downto 0) := to_unsigned(0,11);
	signal outBit : std_logic := '0';
begin
	outBit <= '1' when (tempTime < upperLimit) else '0';
	valid <= outBit;
end check;