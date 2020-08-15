library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;


library work;
-- package of component declarations..
use work.EE224_Components.all;

entity endsem is

  port (r: in std_logic;
        x: in std_logic;
		  CLK: in std_logic;
		  y: out std_logic);
end entity endsem;
architecture Behave of endsem is

component dff_new is
  port (D, CLK: in std_logic; Q: out std_logic);
end component;

	signal q,nq : std_logic_vector(1 downto 0);
	signal nr,nx,nq1,nq0,l,m,n,p,s,t,u,v, w,z,a,b,c,d : std_logic;
begin
	in1 : INVERTER port map(a => r,b => nr );
	in2 : INVERTER port map(a => x,b => nx );
	in3 : INVERTER port map(a => q(1),b => nq1 );
	in4 : INVERTER port map(a => q(0), b => nq0);
	
	--for y
	a1 : AND_2 port map (a => nr, b => q(1), c => l);
	a2 : AND_2 port map (a => x, b => q(0), c => m);
	a3 : AND_2 port map (a => nx, b => nq0, c => n);
	
	o1 : OR_2 port map (a => m, b => n, c => p);
	a4 : AND_2 port map (a => l, b => p, c => y);
	
	-- for nq(0)
	a5 : AND_2 port map (a => nr, b => nq0, c => s);
	a6 : AND_2 port map (a => nx, b => nq1, c => t);
	a7 : AND_2 port map (a => x, b => q(1), c => u);
	
	o2 : OR_2 port map (a => t, b => u, c => v);
	a8 : AND_2 port map (a => s, b => v, c => nq(0));
	
	--for nq(1)
	a9 : AND_2 port map (a => nx, b => q(1), c => w);
	a10 : AND_2 port map (a => w, b => q(0), c => a);
	a11 : AND_2 port map (a => x, b => nq0, c => z);
	a12 : AND_2 port map (a => nq1, b => nq0, c => b);
	
	o3 : OR_2 port map (a => a, b => z, c => c);
	o4 : OR_2 port map (a => c, b => b, c => d);
	a13 : AND_2 port map (a => nr, b => d, c => nq(1));
	
	d_1: dff_new port map (D => nq(0), CLK => CLK, Q => q(0));
	d_2: dff_new port map (D => nq(1), CLK => CLK, Q => q(1));
end Behave;