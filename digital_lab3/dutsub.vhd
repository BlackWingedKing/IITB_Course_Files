-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  two-bit adder.
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity dutsub is
   port(input_vector: in std_logic_vector(15 downto 0); ---Note: for alu testing (17 downto 0) for others (15 downto 0)
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of dutsub is
component eightbitsub is
  port(x0,x1: in std_logic_vector(7 downto 0);
        s: out std_logic_vector(7 downto 0);
		  b1: out std_logic);
end component;

begin

a: eightbitsub port map(x0 => input_vector(15 downto 8), x1 =>input_vector(7 downto 0) , s=> output_vector);
end DutWrap;

