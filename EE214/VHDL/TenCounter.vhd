library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity TenCounter is
  port (CLK, Reset: in std_logic;
         Count: out std_logic_vector(3 downto 0);
			Carry: out std_logic);
end entity TenCounter;
architecture Behave of TenCounter is
signal Output : std_logic_vector(3 downto 0):="0000";
signal no: integer:=0;
signal car: std_logic:='0';

begin

Count <= Output;
Carry <= car;

process(CLK, Reset)
	--variable c: integer :=0;
begin
	if(Reset = '1') then
		no <= 0;
	else
		if(rising_edge(CLK)) then
			no <= no + 1;
			if(no = 9) then
				car <= '1';
				no <= 0;
			else
				car <= '0';
			end if;
		end if;
	end if;
end process;

process(no)
begin
	if(no = 0) then
		Output<="0000";
	elsif(no = 1) then
		Output<="0001";
	elsif(no = 2) then
		Output<="0010";
	elsif(no = 3) then
		Output<="0011";
	elsif(no = 4) then
		Output<= "0100";
	elsif(no = 5) then
		Output<="0101";
	elsif(no = 6) then
		Output<="0110";
	elsif(no = 7) then
		Output<="0111";
	elsif(no = 8) then
		Output<="1000";
	elsif(no = 9) then
		Output<="1001";
	else
		Output<="1111";
	end if;
end process;

end Behave;
		