-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  two-bit righter.
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity dutright is
   port(input_vector: in std_logic_vector(15 downto 0); ---Note: for alu testing (17 downto 0) for others (15 downto 0)
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of dutright is
component modifiedrightshift is
   port(a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(7 downto 0);
		  c: out std_logic_vector(7 downto 0));
end component;

begin

a: modifiedrightshift port map(a => input_vector(15 downto 8), b =>input_vector(7 downto 0) , c=> output_vector);
end DutWrap;

