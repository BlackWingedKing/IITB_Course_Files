library ieee;
use ieee.std_logic_1164.all;
-- Takes the 50 Mhz clock as input clock, passes it to the randm component to get the sampled value of the time.
-- outCLK is the random time when the LED will turn on now 
entity randomGen is
	port(keyPress, clock : in std_logic;
		outCLK : out std_logic);
end entity;
architecture gen of randomGen is
	component randm is 
		port(switch, clk : in std_logic; 
			outval : out std_logic_vector(10 downto 0));
	end component;
begin
	
end gen;