library ieee;
use ieee.std_logic_1164.all;

entity Assign is
	port(X: in std_logic_vector(3 downto 0); C: std_logic; Y: out std_logic_vector(7 downto 0));
end Assign;

architecture Behave of Assign is
	signal tmp : std_logic_vector(7 downto 0);
begin
	tmp(7 downto 4) <= "0011";
	process(C)
	begin
		if C = '0' then
			tmp(3 downto 0) <= X;
		else
			tmp(3 downto 0) <= "0000";
		end if;
	end process;
	Y <= tmp;
end Behave;