library ieee;
use ieee.std_logic_1164.all;

entity debounceFSM is
	port(fsmin,clk,reset:in std_logic; fsmout:out std_logic);
end entity;
architecture behave of debounceFSM is
	component divider is
		port(clk,reset:in std_logic; output:out std_logic);
	end component;
	component df is
		port(D, CLK: in std_logic; Q: out std_logic);
	end component;

-- Initializing interior signals
	signal p0,p1:std_logic;
	signal n0,n1:std_logic;
begin
	n0 <= ((fsmin and p1 and p0) or (fsmin and (not p0)) or (fsmin and p0 and (not p1))) and (not reset); -- p0 new
	n1 <= ((fsmin and (not p1) and p0) or (p1 and p0) or (fsmin and p1 and (not p0))) and (not reset); -- p1 new
	fsmout <= (fsmin and p1 and (not p0)) or (p1 and p0) or (fsmin and p0 and (not p1));
	q0 : df port map(n0,clk,p0);
	q1 : df port map(n1,clk,p1);
end behave;