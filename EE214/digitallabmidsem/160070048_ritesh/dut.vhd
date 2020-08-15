library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity dut is
     port(input_vector: in std_logic_vector(7 Downto 0);
        output_vector: out std_logic_vector(3 Downto 0));
end entity;

architecture DutWrap of dut is	
component midsem is 
     port(a0,a1,a2,a3,a4,a5,a6,a7: in std_logic;
        o0,o1,o2,o3: out std_logic);
end component; 
signal y:std_logic_vector(7 Downto 0);
signal z:std_logic_vector(3 Downto 0); 
begin
y(0) <= input_vector(0);
y(1) <= input_vector(1);
y(2) <= input_vector(2);
y(3) <= input_vector(3);
y(4) <= input_vector(4);
y(5) <= input_vector(5);
y(6) <= input_vector(6);
y(7) <= input_vector(7);
dut1: midsem port map(a0 => y(0),a1 => y(1),a2 => y(2),a3 => y(3),a4 => y(4),a5 => y(5),a6 => y(6),a7 => y(7), o0 => output_vector(0), o1 => output_vector(1),o2 => output_vector(2),o3 => output_vector(3));
end DutWrap;
