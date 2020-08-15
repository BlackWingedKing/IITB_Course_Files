
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;


entity comp1 is
port (a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1: in std_logic;
      a2,b2,c2,d2,e2,f2,g2,h2,i2,j2,k2: out std_logic);
end entity;

architecture Behave of comp1 is
begin
a2 <= not a1;
b2 <= not b1;
c2 <= not c1;
d2 <= not d1;
e2 <= not e1;
f2 <= not f1;
g2 <= not g1;
h2 <= not h1;
i2 <= not i1;
j2 <= not j1;
k2 <= not k1;

end Behave;


library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity full_adder1 is
port (a,b,c: in std_logic;
         d,e: out std_logic);
end entity;

architecture Behave of full_adder1 is
begin
  d <= (a and b and c) or ((not a) and b and (not c)) or ((not a) and (not b) and c) or (a and (not b) and (not c)) ;
  e <= (a and b) or (c and b) or (c and a);
end Behave;

library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity ctrr2 is
     port (CLK,reset: in std_logic; Y1: out std_logic);
end entity;


architecture behave of ctrr2 is

component DFF1 is
  port (D, CLK,reset: in std_logic; Q: out std_logic);
end component;

signal q0: std_logic ;
signal nq0: std_logic;

begin

nq0 <= (not q0) and (not reset);

dut11: DFF1 port map (D => nq0,reset => reset, CLK => CLK, Q => q0);

Y1 <= nq0;
end behave;


library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;


entity ctrrr2 is
     port (CLK,reset: in std_logic; Y1: out std_logic);
end entity;


architecture behave of ctrrr2 is

component DFF2 is
  port (D, CLK,reset: in std_logic; Q: out std_logic);
end component;

signal q0: std_logic ;
signal nq0: std_logic;

begin

nq0 <= (not q0) and (not reset);

dut11: DFF2 port map (D => nq0,reset => reset, CLK => CLK, Q => q0);

Y1 <= nq0;
end behave;


library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity final3 is 
        port (CLK,reset: in std_logic; Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0: out std_logic);
end entity;

architecture behave of final3 is

component final2 is 
        port (CLK,reset: in std_logic; Y: out std_logic);
end component;

component comp1 is
port (a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1: in std_logic;
      a2,b2,c2,d2,e2,f2,g2,h2,i2,j2,k2: out std_logic);
end component;

component full_adder1 is
port (a,b,c: in std_logic;
         d,e: out std_logic);
end component;

component ctrr4 is
     port (CLK,reset: in std_logic; Y1,Y2: out std_logic);
end component;

component ctrr2 is
     port (CLK,reset: in std_logic;Y1: out std_logic );
end component;

signal c1: std_logic;
signal c2: std_logic;
signal c3: std_logic;
signal c4: std_logic;
signal c5: std_logic;
signal c6: std_logic;
signal c7: std_logic;
signal c8: std_logic;
signal c9: std_logic;
signal c10: std_logic;
signal c11: std_logic;
signal c12: std_logic;
signal c13: std_logic;
signal cc1: std_logic;
signal cc2: std_logic;
signal cc3: std_logic;
signal cc4: std_logic;
signal cc5: std_logic;
signal cc6: std_logic;

signal d1: std_logic;
signal d2: std_logic;
signal d3: std_logic;
signal d4: std_logic;
signal d5: std_logic;
signal d6: std_logic;
signal d7: std_logic;
signal d8: std_logic;
signal d9: std_logic;
signal d10: std_logic;
signal d11: std_logic;
signal d12: std_logic;
signal d13: std_logic;
signal d14: std_logic;
signal dd1: std_logic;
signal dd2: std_logic;
signal dd3: std_logic;
signal dd4: std_logic;
signal dd5: std_logic;

signal clk3: std_logic;
signal p1: std_logic_vector(10 downto 0);
signal z2: std_logic_vector(10 downto 0);

begin

dutza: final2 port map (CLK => CLK,reset => reset, Y => clk3);

dutf: ctrr2 port map ( CLK => clk3,reset => reset,Y1 => d1);
dutf1: ctrr2 port map ( CLK => d1,reset => reset,Y1 => c1);
dutf2: ctrr2 port map ( CLK => c1,reset => reset,Y1 => d2);
dutf3: ctrr2 port map ( CLK => d2,reset => reset,Y1 => c2);
dutf4: ctrr2 port map ( CLK => c2,reset => reset,Y1 => d3);
dutf5: ctrr2 port map ( CLK => d3,reset => reset,Y1 => c3);
dutf6: ctrr2 port map ( CLK => c3,reset => reset,Y1 => d4);
dutf7: ctrr2 port map ( CLK => d4,reset => reset,Y1 => c4);
dutf8: ctrr2 port map ( CLK => c4,reset => reset,Y1 => d5);
dutf9: ctrr2 port map ( CLK => d5,reset => reset,Y1 => c5);
dutf10: ctrr2 port map ( CLK => c5,reset => reset,Y1 => c6);
--dutg: ctrr4 port map ( CLK => b6,reset=>reset, Y2 => b7 ,Y1 => a7);
--duth: ctrr4 port map ( CLK => b7,reset=>reset,Y2 => Y ,Y1 => a8);
--duti: ctrr4 port map ( CLK => b8, Y2 => b9,Y1 => a9 );
--dutk: ctrr4 port map ( CLK => b9, Y2 => b10 ,Y1 => a10);
--dutl: ctrr4 port map ( CLK => b10, Y2 => b11,Y1 => a11 );
--dutm: ctrr4 port map ( CLK => b11, Y2 => b12 ,Y1 => a12);
--dutn: ctrr4 port map ( CLK => b12, Y2 => b13 ,Y1 => a13);
--duto: ctrr4 port map ( CLK => b13, Y2 => b ,Y1 => a14);


--
--
-- dut13: comp1 port map (a1 => d1, b1 => c1, c1 => d2,d1 => c2 , e1 => d3,f1 => c3,g1 => d4,h1 => c4,i1 => d5,j1 => c5,k1 => c6,
--                     a2 => dd1, b2 => cc1, c2 => dd2,d2 => cc2 , e2 => dd3,f2 => cc3,g2 => dd4,h2 => cc4,i2 => dd5 ,j2 => cc5, k2 => cc6);
--
--
-- dut12: full_adder1 port map (b => dd1, a => '1', c => '1',d => z2(0) , e => p1(0) );
-- dut22: full_adder1 port map (b => cc1, a => '1', c => p1(0),d => z2(1) , e => p1(1) );
-- dut32: full_adder1 port map (b => dd2, a => '1', c => p1(1),d => z2(2) , e => p1(2) );
-- dut42: full_adder1 port map (b => cc2, a => '1', c => p1(2),d => z2(3) , e => p1(3) );
-- dut52: full_adder1 port map (b => dd3, a => '1', c => p1(3),d => z2(4) , e => p1(4) );
-- dut62: full_adder1 port map (b => cc3, a => '1', c => p1(4),d => z2(5) , e => p1(5) );
-- dut72: full_adder1 port map (b => dd4, a => '1', c => p1(5),d => z2(6) , e => p1(6) );
-- dut82: full_adder1 port map (b => cc4, a => '1', c => p1(6),d => z2(7) , e => p1(7) );
-- dut92: full_adder1 port map (b => dd5, a => '1', c => p1(7),d => z2(8) , e => p1(8) );
-- dut102: full_adder1 port map (b => cc5, a => '1', c => p1(8),d => z2(9) , e => p1(9) );
-- dut112: full_adder1 port map (b => cc6, a => '1', c => p1(9),d => z2(10) , e => p1(10) );
--
--Y10 <= (c6 and c6) or ((not c6) and z2(10)) ;
--Y9 <= (c6 and c5) or ((not c6) and z2(9)) ;
--Y8 <= (c6 and d5) or ((not c6)and z2(8)) ;
--Y7 <= (c6 and c4) or ((not c6)and z2(7)) ;
--Y6 <= (c6 and d4) or ((not c6)and z2(6)) ;
--Y5 <= (c6 and c3) or ((not c6)and z2(5)) ;
--Y4 <= (c6 and d3) or ((not c6)and z2(4)) ;
--Y3 <= (c6 and c2) or ((not c6)and z2(3)) ;
--Y2 <= (c6 and d2) or ((not c6)and z2(2));
--Y1 <= (c6 and c1) or ((not c6)and z2(1)) ;
--Y0 <= (c6 and d1) or ((not c6)and z2(0)) ;


Y10 <=  not c6 ;
Y9 <=  not c5  ;
Y8 <= not d5;
Y7 <= not c4 ;
Y6 <= not d4 ;
Y5 <= not c3 ;
Y4 <= not d3 ;
Y3 <= not c2  ;
Y2 <= not d2 ;
Y1 <= not c1  ;
Y0 <= not d1 ;



end behave;



	  
