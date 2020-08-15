library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity dut is
     port(input_vector: in std_logic_vector(3 Downto 0);
        output_vector: out std_logic_vector(1 Downto 0));
end entity;

architecture DutWrap of dut is	
component encoder is 
   port(x: in std_logic_vector(3 Downto 0);
        o: out std_logic_vector(1 Downto 0));
end component; 

begin
dut1: encoder port map(x => input_vector, o => output_vector);
end DutWrap;
