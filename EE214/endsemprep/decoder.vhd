library ieee;
-- std_logic type and associated functions.
use ieee.std_logic_1164.all;

library work;
-- package of component declarations..
use work.EE224_Components.all;

entity decoder is
	port(a: in std_logic_vector(2 downto 0);
		  b : out std_logic_vector(7 downto 0));
end entity;

architecture Struct of decoder is

signal na0,na1,na2,a0,a1,a2 : std_logic;

begin
a0 <= a(0);
a1 <= a(1);
a2 <= a(2);
na0 <= not(a0);
na1 <= not(a1);
na2 <= not(a2);

b(0) <= na0 and na1 and na2;
b(1) <= na0 and na1 and a2;
b(2) <= na0 and a1 and na2;
b(3) <= na0 and a1 and a2;
b(4) <= a0 and na1 and na2;
b(5) <= a0 and na1 and a2;
b(6) <= a0 and a1 and na2;
b(7) <= a0 and a1 and a2;

end Struct;