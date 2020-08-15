-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  two-bit adder.
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity dutadd is
   port(input_vector: in std_logic_vector(15 downto 0); ---Note: for alu testing (17 downto 0) for others (15 downto 0)
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of dutadd is
component eightbit is
   port(x0,x1: in std_logic_vector(7 downto 0);
        s0: out std_logic_vector(7 downto 0);
		  c: out std_logic);
end component;

begin

a: eightbit port map(x0 => input_vector(15 downto 8), x1 =>input_vector(7 downto 0) , s0=> output_vector);
end DutWrap;

