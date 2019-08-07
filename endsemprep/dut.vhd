library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity dut is
     port(input_vector: in std_logic_vector(2 Downto 0);
        output_vector: out std_logic_vector(0 Downto 0));
end entity;

architecture DutWrap of dut is	
component endsem is 
 port (r: in std_logic;
        x: in std_logic;
		  CLK: in std_logic;
		  y: out std_logic);
end component; 

begin
dut1: endsem port map(r => input_vector(2),x => input_vector(1), CLK => input_vector(0), y => output_vector(0));
end DutWrap;
