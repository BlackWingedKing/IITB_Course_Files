library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity counting is
  port (LED,sw,reset,CLK: in std_logic; Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0: out std_logic);
end entity;

architecture behave of counting is


component ctrr2 is
     port (CLK,reset: in std_logic;Y1: out std_logic );
end component;

component final2 is 
        port (CLK,reset: in std_logic; Y: out std_logic);
end component;

component ctrr4 is
     port (CLK,reset: in std_logic; Y1,Y2: out std_logic);
end component;

signal clk1: std_logic;
signal reset1:std_logic;

signal e1: std_logic;
signal e2: std_logic;
signal e3: std_logic;
signal e4: std_logic;
signal e5: std_logic;
signal e6: std_logic;

signal f1: std_logic;
signal f2: std_logic;
signal f3: std_logic;
signal f4: std_logic;
signal f5: std_logic;
signal f6: std_logic;

    
begin 

dutz1: final2 port map (CLK => CLK,reset => reset, Y => clk1);

reset1 <= reset or (not LED) ;

duto: ctrr2 port map ( CLK => clk1,reset => reset1, Y1 => f1);
duto1: ctrr2 port map ( CLK => f1,reset => reset1, Y1 => e1);
duto2: ctrr2 port map ( CLK => e1,reset => reset1, Y1 => f2);
duto3: ctrr2 port map ( CLK => f2,reset => reset1, Y1 => e2);
duto4: ctrr2 port map ( CLK => e2,reset => reset1, Y1 => f3);
duto5: ctrr2 port map ( CLK => f3,reset => reset1, Y1 => e3);
duto6: ctrr2 port map ( CLK => e3,reset => reset1, Y1 => f4);
duto7: ctrr2 port map ( CLK => f4,reset => reset1, Y1 => e4);
duto8: ctrr2 port map ( CLK => e4,reset => reset1, Y1 => f5);
duto9: ctrr2 port map ( CLK => f5,reset => reset1, Y1 => e5);
duto10: ctrr2 port map ( CLK => e5,reset => reset1, Y1 => f6);
duto11: ctrr2 port map ( CLK => f6,reset => reset1, Y1 => e6);



Y11 <= not e6 ;
Y10 <=  not f6 ;
Y9 <=  not e5 ;
Y8 <=  not f5 ;
Y7 <=  not e4 ;
Y6 <=  not f4 ;
Y5 <=  not e3 ;
Y4 <=  not f3 ;
Y3 <=  not e2 ;
Y2 <=  not f2 ;
Y1 <=  not e1 ;
Y0 <=  not f1 ; 



end behave;
