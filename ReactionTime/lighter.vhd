library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.standard.all;
-- Code to decide the lighting of the LED signal
entity lighter is 
	port(clk, click, reset : in std_logic; rand : in std_logic_vector(10 downto 0);
		lightUp : out std_logic);
end entity;
architecture letsee of lighter is 
	-- Note that here it starts from 0 and now 1000 because we want actual time now. 
	signal count : unsigned(10 downto 0) := to_unsigned(0,11);
	signal initialVal : unsigned(10 downto 0) := to_unsigned(0,11);
	signal light : std_logic := '1';
begin
	process(clk, click, reset, rand)
	begin
		-- If resetted, start counting from 0
		if rising_edge(clk) then
			count <= count+1;
			if (reset = '1') then
				count <= initialVal;
				light <= '0';
			end if;
			-- If the counter has reached the sampled value, light the LED up
			if(count = unsigned(rand)) then
				light <= '1';	
			end if;
			-- As soon as person clicks, turn the light off
			if(click = '1') then
				light <= '0';
			end if;
			lightUp <= light;
		end if;
	end process;
end letsee;
