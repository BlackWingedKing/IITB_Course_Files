library ieee;
use ieee.std_logic_1164.all;
-- 11 bit counter to count the time
entity counter is 
	port(clk, rst : in std_logic;
		count: out std_logic_vector(10 downto 0));
end entity;
architecture arch of counter is
component dflip is
  port(D, CLK, RST : in std_logic; 
		Q, Qbar : out std_logic);
end component;
signal q : std_logic_vector(10 downto 0);
begin
	m1 : dflip port map('0',clk,rst,count(0),q(0));
	m2 : dflip port map('0',q(0),rst,count(1),q(1));
	m3 : dflip port map('0',q(1),rst,count(2),q(2));
	m4 : dflip port map('0',q(2),rst,count(3),q(3));
	m5 : dflip port map('0',q(3),rst,count(4),q(4));
	m6 : dflip port map('0',q(4),rst,count(5),q(5));
	m7 : dflip port map('0',q(5),rst,count(6),q(6));
	m8 : dflip port map('0',q(6),rst,count(7),q(7));
	m9 : dflip port map('0',q(7),rst,count(8),q(8));
	m10 : dflip port map('0',q(8),rst,count(9),q(9));
	m11 : dflip port map('0',q(9),rst,count(10),q(10));
end arch;