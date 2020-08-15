library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity DFF3 is
  port (D, CLK: in bit; Q: out bit);
end entity;

architecture WhatDoYouCare of DFF3 is
begin 

   process (CLK) 
   begin
	if CLK'event and (CLK = '1') then
	     Q <= D;
	end if;
   end process;

end WhatDoYouCare;

library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity ctr4 is
     port (CLK: in bit; Y1,Y2: out bit);
end entity;

architecture behave of ctr4 is

component DFF3 is
  port (D, CLK: in bit; Q: out bit);
end component;

signal q0: bit ;
signal q1: bit ;

signal nq0: bit;
signal nq1: bit;


begin

nq0 <= (not q0);
nq1 <=  (q1 and (not q0)) or (q0 and (not q1));

dut1: DFF3 port map (D => nq0, CLK => CLK, Q => q0);
dut2: DFF3 port map (D => nq1, CLK => CLK, Q => q1);

Y1 <= nq0;
Y2 <= nq1;

end behave;




library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity final is 
        port (CLK: in bit; Y: out bit);
end entity;

architecture behave of final is

component ctr4 is
     port (CLK: in bit; Y1,Y2: out bit);
end component;

signal y1: bit;
signal y2: bit;
signal y3: bit;
signal y4: bit;
signal y5: bit;
signal y6: bit;
signal y7: bit;
signal y8: bit;
signal y9: bit;
signal y10: bit;
signal y11: bit;
signal y12: bit;
signal y13: bit;

signal x1: bit;
signal x2: bit;
signal x3: bit;
signal x4: bit;
signal x5: bit;
signal x6: bit;
signal x7: bit;
signal x8: bit;
signal x9: bit;
signal x10: bit;
signal x11: bit;
signal x12: bit;
signal x13: bit;
signal x14: bit;

signal clk1: bit;


begin


duta: ctr4 port map ( CLK => CLK, Y2 => y1,Y1 => x1);
dutb: ctr4 port map ( CLK => y1,Y2 => y2,Y1 => x2 );
dutc: ctr4 port map ( CLK => y2, Y2 => y3 ,Y1 => x3);
dutd: ctr4 port map ( CLK => y3, Y2 => y4,Y1 => x4 );
dute: ctr4 port map ( CLK => y4, Y2 => y5 ,Y1 => x5);
dutf: ctr4 port map ( CLK => y5, Y2 => y6 ,Y1 => x6);
dutg: ctr4 port map ( CLK => y6, Y2 => y7 ,Y1 => x7);
duth: ctr4 port map ( CLK => y7,Y2 => Y ,Y1 => x8);
--duti: ctr4 port map ( CLK => y8, Y2 => y9,Y1 => x9 );
--dutk: ctr4 port map ( CLK => y9, Y2 => y10 ,Y1 => x10);
--dutl: ctr4 port map ( CLK => y10, Y2 => y11,Y1 => x11 );
--dutm: ctr4 port map ( CLK => y11, Y2 => y12 ,Y1 => x12);
--dutn: ctr4 port map ( CLK => y12, Y2 => y13 ,Y1 => x13);
--duto: ctr4 port map ( CLK => y13, Y2 => Y ,Y1 => x14);



end behave;



	  
