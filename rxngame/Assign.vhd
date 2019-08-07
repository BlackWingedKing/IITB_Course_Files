library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Assign is
	port(X: in unsigned (3 downto 0); 
		C: in std_logic; Y: out std_logic_vector(7 downto 0));
end Assign;

architecture Behave of Assign is
	signal tmp : std_logic_vector(7 downto 0);
	signal X1 : std_logic_vector (3 downto 0);
begin
	tmp(7 downto 4) <= "0011";
	X1 <= std_logic_vector(X);
	process(C)
	begin
		if C = '0' then
			tmp(3 downto 0) <= X1;
		else
			tmp(3 downto 0) <= "0000";
		end if;
	end process;
	Y <= tmp;
end Behave;