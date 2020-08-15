



entity comp is
port (a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1: in bit;
      a2,b2,c2,d2,e2,f2,g2,h2,i2,j2,k2: out bit);
end entity;

architecture Behave of comp is
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




entity full_adder is
port (a,b,c: in bit;
         d,e: out bit);
end entity;

architecture Behave of full_adder is
begin
  d <= (a and b and c) or ((not a) and b and (not c)) or ((not a) and (not b) and c) or (a and (not b) and (not c)) ;
  e <= (a and b) or (c and b) or (c and a);
end Behave;



entity ctr2 is
     port (CLK: in bit; Y1: out bit);
end entity;


architecture behave of ctr2 is

component DFF3 is
  port (D, CLK: in bit; Q: out bit);
end component;

signal q0: bit ;
signal nq0: bit;

begin

nq0 <= not q0;

dut11: DFF3 port map (D => nq0, CLK => CLK, Q => q0);

Y1 <= nq0;
end behave;


entity final1 is 
        port (CLK: in bit; Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0: out bit);
end entity;

architecture behave of final1 is

component final is 
        port (CLK: in bit; Y: out bit);
end component;

component comp is
port (a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1: in bit;
      a2,b2,c2,d2,e2,f2,g2,h2,i2,j2,k2: out bit);
end component;

component full_adder is
port (a,b,c: in bit;
         d,e: out bit);
end component;

component ctr4 is
     port (CLK: in bit; Y1,Y2: out bit);
end component;

component ctr2 is
     port (CLK: in bit;Y1: out bit );
end component;

signal b1: bit;
signal b2: bit;
signal b3: bit;
signal b4: bit;
signal b5: bit;
signal b6: bit;
signal b7: bit;
signal b8: bit;
signal b9: bit;
signal b10: bit;
signal b11: bit;
signal b12: bit;
signal b13: bit;
signal bb1: bit;
signal bb2: bit;
signal bb3: bit;
signal bb4: bit;
signal bb5: bit;
signal bb6: bit;
signal pb1: bit;
signal pb2: bit;
signal pb3: bit;
signal pb4: bit;
signal pb5: bit;
signal pb6: bit;

signal a1: bit;
signal a2: bit;
signal a3: bit;
signal a4: bit;
signal a5: bit;
signal a6: bit;
signal a7: bit;
signal a8: bit;
signal a9: bit;
signal a10: bit;
signal a11: bit;
signal a12: bit;
signal a13: bit;
signal a14: bit;
signal aa1: bit;
signal aa2: bit;
signal aa3: bit;
signal aa4: bit;
signal aa5: bit;

signal pa1: bit;
signal pa2: bit;
signal pa3: bit;
signal pa4: bit;
signal pa5: bit;

signal clk1: bit;
signal p: bit_vector(10 downto 0);
signal z1: bit_vector(10 downto 0);

begin

dutz: final port map (CLK => CLK, Y => clk1);

dutf: ctr2 port map ( CLK => clk1,Y1 => pa1);
dutf1: ctr2 port map ( CLK => pa1,Y1 => pb1);
dutf2: ctr2 port map ( CLK => pb1,Y1 => pa2);
dutf3: ctr2 port map ( CLK => pa2,Y1 => pb2);
dutf4: ctr2 port map ( CLK => pb2,Y1 => pa3);
dutf5: ctr2 port map ( CLK => pa3,Y1 => pb3);
dutf6: ctr2 port map ( CLK => pb3,Y1 => pa4);
dutf7: ctr2 port map ( CLK => pa4,Y1 => pb4);
dutf8: ctr2 port map ( CLK => pb4,Y1 => pa5);
dutf9: ctr2 port map ( CLK => pa5,Y1 => pb5);
dutf10: ctr2 port map ( CLK => pb5,Y1 => pb6);
--dutg: ctr4 port map ( CLK => b6,reset=>reset, Y2 => b7 ,Y1 => a7);
--duth: ctr4 port map ( CLK => b7,reset=>reset,Y2 => Y ,Y1 => a8);
--duti: ctr4 port map ( CLK => b8, Y2 => b9,Y1 => a9 );
--dutk: ctr4 port map ( CLK => b9, Y2 => b10 ,Y1 => a10);
--dutl: ctr4 port map ( CLK => b10, Y2 => b11,Y1 => a11 );
--dutm: ctr4 port map ( CLK => b11, Y2 => b12 ,Y1 => a12);
--dutn: ctr4 port map ( CLK => b12, Y2 => b13 ,Y1 => a13);
--duto: ctr4 port map ( CLK => b13, Y2 => b ,Y1 => a14);

a1 <= not pa1;
b1 <= not pb1;
a2 <= not pa2;
b2 <= not pb2;
a3 <= not pa3;
b3 <= not pb3;
a4 <= not pa4;
b4 <= not pb4;
a5 <= not pa5;
b5 <= not pb5;
b6 <= not pb6;




 dut13: comp port map (a1 => a1, b1 => b1, c1 => a2,d1 => b2 , e1 => a3,f1 => b3,g1 => a4,h1 => b4,i1 => a5,j1 => b5,k1 => b6,
                     a2 => aa1, b2 => bb1, c2 => aa2,d2 => bb2 , e2 => aa3,f2 => bb3,g2 => aa4,h2 => bb4,i2 => aa5 ,j2 => bb5, k2 => bb6);

							


 dut12: full_adder port map (b => aa1, a => '1', c => '1',d => z1(0) , e => p(0) );
 dut22: full_adder port map (b => bb1, a => '1', c => p(0),d => z1(1) , e => p(1) );
 dut32: full_adder port map (b => aa2, a => '1', c => p(1),d => z1(2) , e => p(2) );
 dut42: full_adder port map (b => bb2, a => '1', c => p(2),d => z1(3) , e => p(3) );
 dut52: full_adder port map (b => aa3, a => '1', c => p(3),d => z1(4) , e => p(4) );
 dut62: full_adder port map (b => bb3, a => '1', c => p(4),d => z1(5) , e => p(5) );
 dut72: full_adder port map (b => aa4, a => '1', c => p(5),d => z1(6) , e => p(6) );
 dut82: full_adder port map (b => bb4, a => '1', c => p(6),d => z1(7) , e => p(7) );
 dut92: full_adder port map (b => aa5, a => '1', c => p(7),d => z1(8) , e => p(8) );
 dut102: full_adder port map (b => bb5, a => '1', c => p(8),d => z1(9) , e => p(9) );
 dut112: full_adder port map (b => bb6, a => '1', c => p(9),d => z1(10) , e => p(10) );

Y10 <= (b6 and b6) or ((not b6) and z1(10)) ;
Y9 <= (b6 and b5) or ((not b6) and z1(9)) ;
Y8 <= (b6 and a5) or ((not b6)and z1(8)) ;
Y7 <= (b6 and b4) or ((not b6)and z1(7)) ;
Y6 <= (b6 and a4) or ((not b6)and z1(6)) ;
Y5 <= (b6 and b3) or ((not b6)and z1(5)) ;
Y4 <= (b6 and a3) or ((not b6)and z1(4)) ;
Y3 <= (b6 and b2) or ((not b6)and z1(3)) ;
Y2 <= (b6 and a2) or ((not b6)and z1(2));
Y1 <= (b6 and b1) or ((not b6)and z1(1)) ;
Y0 <= (b6 and a1) or ((not b6)and z1(0)) ;




end behave;



	  
