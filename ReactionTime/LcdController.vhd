library ieee;
use ieee.std_logic_1164.all;
entity LcdController is
	port(clk, reset: in std_logic;
------------------------------------
-- positive edge triggered on clk,
-- reset is active high.
------------------------------------
------------------------------------
-- user-side interface..
-- you will use this.
------------------------------------
put_char: in std_logic;
erase: in std_logic;
write_data: std_logic_vector(7 downto 0);
write_row : std_logic;
write_column: std_logic_vector(3 downto 0);
ack: out std_logic;
------------------------------------
-- lcd-side interface
-- you dont need to worry about this
-- side.. But you will have to map these
-- signals to the CPLD pins.
------------------------------------
lcdData : out std_logic_vector(7 Downto 0);
rs, rw, en : out std_logic
bl1, bl2 : out std_ulogic
);
end entity LcdController;