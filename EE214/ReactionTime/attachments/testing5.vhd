

library ieee;
use ieee.std_logic_1164.all;

entity D_FFp is
  port (D, CLK,rst: in std_logic; Q: out std_logic);
end entity;
architecture WhatDoYouCare of D_FFp is
begin 
   process (CLK,rst) 
   begin
   	if rst = '1' then
   		Q <= '0';
	elsif CLK'event and (CLK = '1') then
	     Q <= D;
	end if;
   end process;
 end WhatDoYouCare; 
 
 
library ieee;
use ieee.std_logic_1164.all;
 
 
entity debouncer is
  port (CLK,rst,inp: in std_logic; Q: out std_logic);
end entity;
architecture WhatDoYouCare of debouncer is

component D_FFp port (D, CLK,rst: in std_logic; Q: out std_logic);
end component;
signal w,q0,q1,nq0,nq1,w1,w4:std_logic;
begin 

w1 <= (q0 and q1)or((not q0) and (not q1));

w4 <= (q1 and (not inp))or((not q1) and (inp));

nq0 <= inp;
nq1 <= (w1 and q1)or((not w1) and inp);

x2 : D_FFp port map (D => nq0,CLK => CLK,rst => rst,Q => q0);
x3 : D_FFp port map (D => nq1,CLK => CLK,rst => rst,Q => q1);

Q <= (q1 and q0) or ((not w1) and inp);
end WhatDoYouCare; 


library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;


entity LEDJ is
  port (sw10,reset10,CLK: in std_logic; Y: out std_logic; a7: out std_logic_vector(14 downto 0));
end entity;

architecture behave of LEDJ is


component seqadd is
  port (sw,CLK,reset,LED: in std_logic; z: out std_logic_vector(14 downto 0));
end component;

component debouncer is
  port (CLK,rst,inp: in std_logic; Q: out std_logic);
end component;

component DFF3 is
  port (D, CLK: in bit; Q: out bit);
end component;

component DFF1 is
  port (D, CLK,reset: in std_logic; Q: out std_logic);
end component;


component ctrr4 is
     port (CLK,reset: in std_logic; Y1,Y2: out std_logic);
end component;


component ctrr2 is
     port (CLK,reset: in std_logic;Y1: out std_logic );
end component;


component ctrrr2 is
     port (CLK,reset: in std_logic;Y1: out std_logic );
end component;

component final3 is 
        port (CLK,reset: in std_logic; Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0: out std_logic);
end component;


component final2 is 
        port (CLK,reset: in std_logic; Y: out std_logic);
end component;


component DFF2 is
  port (D, CLK,reset: in std_logic; Q: out std_logic);
end component;


component final is 
        port (CLK: in bit; Y: out bit);
end component;

component final1 is 
        port (CLK: in bit; Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0: out bit);
end component;


signal l: bit_vector(10 downto 0);
signal m: std_logic_vector(10 downto 0);
signal n: bit_vector(10 downto 0);
signal l2: bit_vector(10 downto 0);

signal l1: std_logic_vector(10 downto 0);
signal hk:bit;
signal chk: std_logic;
signal rst: std_logic;
signal nq1:std_logic;
signal nq0:std_logic;
signal q1:std_logic;
signal q0:std_logic;


signal a11: std_logic;
signal a12: std_logic;
signal a13: std_logic;
signal a14: std_logic;
signal a15: std_logic;
signal a16: std_logic;
signal a111: std_logic;

signal b11: std_logic;
signal b12: std_logic;
signal b13: std_logic;
signal b14: std_logic;
signal b15: std_logic;
signal b16: std_logic;
signal b111: std_logic;
signal b121: std_logic;
signal b122: std_logic;


signal clk5: std_logic;
signal clk6: bit;
signal dop: std_logic;
signal sw2: std_logic;
signal swa: bit;
signal reseta: bit;
signal dop1:std_logic;
signal sw: std_logic;
signal reset: std_logic;
signal sw11: std_logic;
signal reset11: std_logic;
signal clk7: bit_vector(0 downto 0);
signal clk8: std_logic_vector(0 downto 0);
signal u8: std_logic;

signal ws4 : unsigned(3 downto 0);
signal ws5 : unsigned(3 downto 0) := to_unsigned(0,4);
signal ws6: std_logic_vector(3 downto 0);
constant wr2 : unsigned(3 downto 0) := to_unsigned(0,4);
signal sw4: std_logic;
signal reset4: std_logic;
signal pun: std_logic;

begin

dutz: final port map (CLK => clk6, Y => clk7(0));

clk8 <= to_stdlogicvector(clk7);
sw11 <= not sw10;
reset11 <= not reset10;

deb3 : debouncer port map (CLK => clk8(0),rst => '0',inp => sw11,Q => sw4);
deb4 : debouncer port map (CLK => clk8(0),rst => '0',inp =>  reset11,Q => reset4);
    
sw <= not sw10;
reset <= not reset10;

clk6 <= to_bit(CLK);

dutd1: final1 port map (CLK => clk6, Y10 => n(10),Y9 => n(9),Y8 => n(8),Y7 => n(7),Y6 => n(6),
								  Y5 => n(5),Y4 => n(4),Y3 => n(3),Y2 => n(2),Y1 => n(1),Y0 => n(0) );
								  
l <= n;

swa <= to_bit(sw);
reseta <= to_bit(reset);
								  
hk <= swa or reseta;
								 
dutp: DFF3 port map (D => l(0), CLK => hk, Q => l2(0)); 
dutp1: DFF3 port map (D => l(1), CLK => hk, Q => l2(1)); 
dutp2: DFF3 port map (D => l(2), CLK => hk, Q => l2(2)); 
dutp3: DFF3 port map (D => l(3), CLK => hk, Q => l2(3)); 
dutp4: DFF3 port map (D => l(4), CLK => hk, Q => l2(4)); 
dutp5: DFF3 port map (D => l(5),CLK => hk, Q => l2(5)); 
dutp6: DFF3 port map (D => l(6), CLK => hk, Q => l2(6)); 
dutp7: DFF3 port map (D => l(7), CLK => hk, Q => l2(7)); 
dutp8: DFF3 port map (D => l(8), CLK => hk, Q => l2(8)); 
dutp9: DFF3 port map (D => l(9),CLK => hk, Q => l2(9)); 
dutp10: DFF3 port map (D => l(10), CLK => hk, Q => l2(10)); 

								  
l1 <= to_stdlogicvector(l2);



rst <= reset or sw or dop1;


dutq1: final3 port map(CLK => CLK,reset => rst, Y10 => m(10),Y9 => m(9),Y8 => m(8),Y7 => m(7),Y6 => m(6),
								Y5 => m(5),Y4 => m(4),Y3 => m(3),Y2 => m(2),Y1 => m(1),Y0 => m(0) );


chk <= not((m(0) xor l1(0)) or (m(1) xor l1(1)) or (m(2) xor l1(2)) or (m(3) xor l1(3)) or (m(4) xor l1(4)) or (m(5) xor l1(5)) or 
		 (m(6) xor l1(6)) or (m(7) xor l1(7)) or (m(8) xor l1(8)) or
		 (m(9) xor l1(9)) or (m(10) xor l1(10)));
		 
	

--
--duta: ctrr4 port map ( CLK => CLK,reset => reset, Y2 => a11,Y1 => b11);
--dutb: ctrr4 port map ( CLK => a11,reset => reset,Y2 => a12,Y1 => b12 );
--dutc: ctrr4 port map ( CLK => a12,reset => reset, Y2 => a13 ,Y1 => b13);
--dutd: ctrr4 port map ( CLK => a13,reset => reset, Y2 => a14,Y1 => b14 );
--dute: ctrr4 port map ( CLK => a14,reset => reset, Y2 => a15 ,Y1 => b15);
--dutf: ctrr4 port map ( CLK => a15,reset => reset, Y2 => clk5 ,Y1 => b16);

dutza1: final2 port map (CLK => CLK,reset => reset, Y => clk5);
dutr2: DFF2 port map (D => nq0,reset => reset, CLK => clk5, Q => q0); 
dutr3: DFF2 port map (D => nq1,reset => reset, CLK => clk5, Q => q1); 

nq0 <= (not reset) and ((not sw) and (q0 or chk));
nq1 <= (not reset) and (sw and (q0 or q1));

dop <= (not reset) and ((chk and (not sw)) or ((not q1) and q0) or (q1 and sw));

--sw2 <= not sw;

--
--dutb5: ctrrr2 port map ( CLK => sw,reset => reset,Y1 => b111 );
--dutb6: ctrrr2 port map ( CLK => b111,reset => reset,Y1 => a111 );
--dutb7: ctrrr2 port map ( CLK => a111,reset => reset,Y1 => b121 );
--dutb8: ctrrr2 port map ( CLK => b121,reset => reset,Y1 => b122 );
--
--a7(14) <= b122;
--a7(13) <= b121;
--a7(12) <= a111;
--a7(11) <= b111;



	process(dop,reset)
	
	begin
	
	if reset='1' then 
   ws5 <= "0000";	
	
	
	elsif rising_edge(dop) and ws5<9
   then
	ws5 <= ws5+1;
	
	elsif rising_edge(dop) and ws5>8 then
	    ws5(3) <= '1';
		 ws5(2) <= '0';
		 ws5(1) <= '0';
		 ws5(0) <= '1'; 
		 end if;	
	end process;
	ws6 <= std_logic_vector(ws5);
   
	

dutyi: DFF1 port map (D => dop,reset => reset, CLK => clk5, Q => dop1);

--u8 <= dop and (b122 or (not b121) or (not a111) or (not b111));
u8 <= dop and ((not ws6(3)) or ( ws6(2)) or (ws6(1)) or (not ws6(0)));
--
--a7(14) <= ws6(3);
--a7(13) <= ws6(2);
--a7(12) <= ws6(1);
--a7(11) <= ws6(0);

--Y <= dop ;

--Y <= u8 and (not pun);
Y <= u8;
duthg: seqadd port map (sw => sw4, reset => reset4, CLK => CLK,LED => u8,z => a7);

--z1 <= pun;



end behave;
