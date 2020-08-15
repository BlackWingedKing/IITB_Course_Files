library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
--inputs are 7 bits reset,clk,encoded alphabet
   port(input: in std_logic_vector(6 downto 0); 
       	output: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is	
component string is 
  port (reset: in std_logic;
        x: in std_logic_vector(4 downto 0);
		  CLK: in std_logic;
		  o: out std_logic);
end component; 

begin
--a proper mapping of the inputs
dut: string port map(reset => input(6), x => input(4 downto 0), CLK => input(5), o => output(0));
end DutWrap;