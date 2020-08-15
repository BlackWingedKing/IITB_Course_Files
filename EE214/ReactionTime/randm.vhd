library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- This will take clk input as 50 MHz and output a random value which will later be sampled as a clock of that duration
entity randm is 
	port(switch, clk : in std_logic; 
		outval : out std_logic_vector(10 downto 0));
end entity;
architecture behave of randm is
	signal count:unsigned(10 downto 0):= to_unsigned(1000,11);
	constant lower:unsigned(10 downto 0):= to_unsigned(1000,11);
	constant upper:unsigned(10 downto 0):= to_unsigned(2000,11);
	constant step:unsigned(10 downto 0):= to_unsigned(100,11);
begin
	process(switch,clk)
	begin 
		if rising_edge(clk) then
			count <= count + step;
			if(count = upper) then
				count <= lower;
			end if;
			if(switch = '1') then
				outval <= std_logic_vector(count);
			end if;
		end if;
	end process;
end behave;
		
		
		
