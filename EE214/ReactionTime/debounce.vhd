library ieee;
use ieee.std_logic_1164.all;

-- Debouncer to check for actual number of inputs given
-- Give this one 50MHz clock
entity debounce is
	port(inputval, clock, rst : in std_logic; 
		debOutput : out std_logic);	
end entity debounce;
architecture debcntr of debounce is
	component divider is
		port(clk, reset : in std_logic; 
			output : out std_logic);
	end component;
	component debounceFSM is
		port(fsmin, clk, reset : in std_logic; 
			fsmout : out std_logic);
	end component;
	signal divclk, sigout : std_logic;
begin
	m1: divider port map(clock, rst, divclk);
	m2: debounceFSM port map(inputval, divclk, rst, sigout);
	debOutput <= sigout;
end debcntr;
