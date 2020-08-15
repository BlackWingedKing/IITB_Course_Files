library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.standard.all;

-- This is the core of the entire device
entity core is
	port(debClick, clock : in std_logic;
		timeTaken : out std_logic_vector(7 downto 0));
end entity;

architecture intelli of core is
		
begin
end architecture;