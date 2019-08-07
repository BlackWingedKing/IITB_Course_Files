

library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity DFF2 is
  port (D, CLK,reset: in std_logic; Q: out std_logic);
end entity;

architecture WhatDoYouCare of DFF2 is
begin 

   process (CLK,reset) 
   begin
	
	   if (reset='1') then
	     Q <= '0';
		  
		else if CLK'event and (CLK = '0') then
		  Q <= D;
		end if;
		  
	end if;
   end process;

end WhatDoYouCare;

library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity seqadd is
  port (sw,CLK,reset,LED: in std_logic; z: out std_logic_vector(14 downto 0));
end entity;

architecture behave of seqadd is

component full_adder1 is
port (a,b,c: in std_logic;
         d,e: out std_logic);
end component;


component final2 is 
        port (CLK,reset: in std_logic; Y: out std_logic);
end component;



component DFF2 is
  port (D, CLK,reset: in std_logic; Q: out std_logic);
end component;

component DFF1 is
  port (D, CLK,reset: in std_logic; Q: out std_logic);
end component;

component counting is
  port (LED,sw,reset,CLK: in std_logic; Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0: out std_logic);
end component;


signal g: std_logic_vector(11 downto 0);
signal h: std_logic_vector(11 downto 0);
signal w: std_logic_vector(14 downto 0);
signal r: std_logic_vector(14 downto 0);
signal v: std_logic_vector(14 downto 0);
signal ck: std_logic;
signal nkj: std_logic_vector(0 downto 0);
signal nkj2 : unsigned(0 downto 0) := to_unsigned(0,1);
signal nkj1: std_logic_vector(14 downto 0);
signal sw1: std_logic_vector(14 downto 0);
signal LED1: std_logic_vector(14 downto 0);
signal cnt : unsigned(0 downto 0) := to_unsigned(0,1);
signal easy: std_logic;
signal easy1: std_logic;
signal easy2: std_logic;
signal easy3: std_logic;
signal easy4: std_logic;
signal easy5: std_logic;
signal clk87: std_logic;

begin 

duti: counting port map (LED => LED, sw => sw, reset => reset,CLK => CLK, 
                          Y11 => h(11),Y10 => h(10),Y9 => h(9),Y8 => h(8),Y7 => h(7),Y6 => h(6),
								  Y5 => h(5),Y4 => h(4),Y3 => h(3),Y2 => h(2),Y1 => h(1),Y0 => h(0));
								 
duts: DFF1 port map (D => h(0),reset => reset, CLK => sw, Q => g(0)); 
duts1: DFF1 port map (D => h(1),reset => reset, CLK => sw, Q => g(1)); 
duts2: DFF1 port map (D => h(2),reset => reset, CLK => sw, Q => g(2)); 
duts3: DFF1 port map (D => h(3),reset => reset, CLK => sw, Q => g(3)); 
duts4: DFF1 port map (D => h(4),reset => reset, CLK => sw, Q => g(4)); 
duts5: DFF1 port map (D => h(5),reset => reset, CLK => sw, Q => g(5)); 
duts6: DFF1 port map (D => h(6),reset => reset, CLK => sw, Q => g(6)); 
duts7: DFF1 port map (D => h(7),reset => reset, CLK => sw, Q => g(7)); 
duts8: DFF1 port map (D => h(8),reset => reset, CLK => sw, Q => g(8)); 
duts9: DFF1 port map (D => h(9),reset => reset, CLK => sw, Q => g(9)); 
duts10: DFF1 port map (D => h(10),reset => reset, CLK => sw, Q => g(10)); 
duts11: DFF1 port map (D => h(11),reset => reset, CLK => sw, Q => g(11)); 

 dut1: full_adder1 port map (a => g(0), b => r(0), c => '0',d => v(0) , e => w(0) );
 dut2: full_adder1 port map (a => g(1), b => r(1), c => w(0),d => v(1) , e => w(1) );
 dut3: full_adder1 port map (a => g(2), b => r(2), c => w(1),d => v(2) , e => w(2) );
 dut4: full_adder1 port map (a => g(3), b => r(3), c => w(2),d => v(3) , e => w(3) );
 dut5: full_adder1 port map (a => g(4), b => r(4), c => w(3),d => v(4) , e => w(4) );
 dut6: full_adder1 port map (a => g(5), b => r(5), c => w(4),d => v(5) , e => w(5) );
 dut7: full_adder1 port map (a => g(6), b => r(6), c => w(5),d => v(6) , e => w(6) );
 dut8: full_adder1 port map (a => g(7), b => r(7), c => w(6),d => v(7) , e => w(7) );
 dut9: full_adder1 port map (a => g(8), b => r(8), c => w(7),d => v(8) , e => w(8) );
 dut10: full_adder1 port map (a => g(9), b => r(9), c => w(8),d => v(9) , e => w(9) );
 dut11: full_adder1 port map (a => g(10), b => r(10), c => w(9),d => v(10) , e => w(10) );
 dut12: full_adder1 port map (a => g(11), b => r(11), c => w(10),d => v(11) , e => w(11) );
 dut13: full_adder1 port map (a => '0', b => r(12), c => w(11),d => v(12) , e => w(12) );
 dut14: full_adder1 port map (a => '0', b => r(13), c => w(12),d => v(13) , e => w(13) );
 dut15: full_adder1 port map (a => '0', b => r(14), c => w(13),d => v(14) , e => w(14) );

ck <=  sw;

dutk: DFF2 port map (D => v(0),reset => reset, CLK => ck, Q => r(0)); 
dutk1: DFF2 port map (D => v(1),reset => reset, CLK => ck, Q => r(1)); 
dutk2: DFF2 port map (D => v(2),reset => reset, CLK => ck, Q => r(2)); 
dutk3: DFF2 port map (D => v(3),reset => reset, CLK => ck, Q => r(3)); 
dutk4: DFF2 port map (D => v(4),reset => reset, CLK => ck, Q => r(4)); 
dutk5: DFF2 port map (D => v(5),reset => reset, CLK => ck, Q => r(5)); 
dutk6: DFF2 port map (D => v(6),reset => reset, CLK => ck, Q => r(6)); 
dutk7: DFF2 port map (D => v(7),reset => reset, CLK => ck, Q => r(7)); 
dutk8: DFF2 port map (D => v(8),reset => reset, CLK => ck, Q => r(8)); 
dutk9: DFF2 port map (D => v(9),reset => reset, CLK => ck, Q => r(9)); 
dutk10: DFF2 port map (D => v(10),reset => reset, CLK => ck, Q => r(10)); 
dutk11: DFF2 port map (D => v(11),reset => reset, CLK => ck, Q => r(11)); 
dutk12: DFF2 port map (D => v(12),reset => reset, CLK => ck, Q => r(12)); 
dutk13: DFF2 port map (D => v(13),reset => reset, CLK => ck, Q => r(13)); 
dutk14: DFF2 port map (D => v(14),reset => reset, CLK => ck, Q => r(14)); 

--
--sw1(0) <= sw;
--sw1(1) <= sw;
--sw1(2) <= sw;
--sw1(3) <= sw;
--sw1(4) <= sw;
--sw1(5) <= sw;
--sw1(6) <= sw;
--sw1(7) <= sw;
--sw1(8) <= sw;
--sw1(9) <= sw;
--sw1(10) <= sw;
--sw1(11) <= sw;
--sw1(12) <= sw;
--sw1(13) <= sw;
--sw1(14) <= sw;
--
--
--
--LED1(0) <= LED;
--LED1(1) <= LED;
--LED1(2) <= LED;
--LED1(3) <= LED;
--LED1(4) <= LED;
--LED1(5) <= LED;
--LED1(6) <= LED;
--LED1(7) <= LED;
--LED1(8) <= LED;
--LED1(9) <= LED;
--LED1(10) <= LED;
--LED1(11) <= LED;
--LED1(12) <= LED;
--LED1(13) <= LED;
--LED1(14) <= LED;



nkj1(0) <= nkj(0);
nkj1(1) <= nkj(0);
nkj1(2) <= nkj(0);
nkj1(3) <= nkj(0);
nkj1(4) <= nkj(0);
nkj1(5) <= nkj(0);
nkj1(6) <= nkj(0);
nkj1(7) <= nkj(0);
nkj1(8) <= nkj(0);
nkj1(9) <= nkj(0);
nkj1(10) <= nkj(0);
nkj1(11) <= nkj(0);
nkj1(12) <= nkj(0);
nkj1(13) <= nkj(0);
nkj1(14) <= nkj(0);


--dutk15: DFF1 port map (D => '1',reset => reset, CLK => sw and (not LED), Q => nkj);
--
--easy <= h(11) and h(10) and h(9) and h(8) and (not h(7)) and (not sw) ;
--
--easy5 <= not LED;
--
--dutz5: final2 port map(CLK => CLK, reset => reset, Y => clk87);
--
--dutk16: DFF1 port map (D => easy5,reset => reset, CLK => clk87, Q => easy1); 
--dutk17: DFF1 port map (D => easy1,reset => reset, CLK => clk87, Q => easy2); 
--dutk18: DFF1 port map (D => easy2,reset => reset, CLK => clk87, Q => easy3); 
--dutk19: DFF1 port map (D => easy3,reset => reset, CLK => clk87, Q => easy4); 
--
----
--dutk15: DFF1 port map (D => '1',reset => easy4, CLK => easy, Q => nkj(0)); 
--q1 <= nkj(0);

--	process(easy)
--	
--	begin
--		
--	if easy='0' and cnt<1 then
--	nkj2(0)<='0';
--	
--	elsif rising_edge(easy) and cnt<1 then
--	cnt <= cnt+1;
--	
--	elsif cnt>0 then
--	    nkj2(0) <= '1';
--		 
--   
--		 end if;	
--	end process;
--	nkj<= std_logic_vector(nkj2);
	

--z <= r and (not nkj1);
z <= r;

end behave;

