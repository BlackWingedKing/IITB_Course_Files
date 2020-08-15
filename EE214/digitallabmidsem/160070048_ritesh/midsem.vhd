library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.EE224_Components.all;

entity midsem is
   port(a0,a1,a2,a3,a4,a5,a6,a7: in std_logic;
        o0,o1,o2,o3: out std_logic);
end entity;

architecture struct of midsem is
component nfbit is 
   port(a0,a1,a2,a3,b0,b1,b2,b3: in std_logic;
        c0,c1,c2,c3: out std_logic);
end component;
 
 signal m0,m1,m2,m3, n0,n1,n2,n3, p0,p1,p2,p3, q0,q1,q2,q3, r0,r1,r2,r3, s0,s1,s2,s3: std_logic;
begin
	n_1: nfbit port map(a0 => a0, a1 => '0',a2 => '0', a3 => '0', b0 => a1, b1 => '0',b2 => '0', b3 => '0', c0 => m0, c1 => m1, c2 => m2, c3 => m3 );
	n_2: nfbit port map(a0 => m0, a1 => m1,a2 => m2, a3 => m3, b0 => a2, b1 => '0',b2 => '0', b3 => '0', c0 => n0, c1 => n1, c2 => n2, c3 => n3 );
	n_3: nfbit port map(a0 => n0, a1 => n1,a2 => n2, a3 => n3, b0 => a3, b1 => '0',b2 => '0', b3 => '0', c0 => p0, c1 => p1, c2 => p2, c3 => p3 );
	n_4: nfbit port map(a0 => p0, a1 => p1,a2 => p2, a3 => p3, b0 => a4, b1 => '0',b2 => '0', b3 => '0', c0 => q0, c1 => q1, c2 => q2, c3 => q3 );
	n_5: nfbit port map(a0 => q0, a1 => q1,a2 => q2, a3 => q3, b0 => a5, b1 => '0',b2 => '0', b3 => '0', c0 => r0, c1 => r1, c2 => r2, c3 => r3 );
	n_6: nfbit port map(a0 => r0, a1 => r1,a2 => r2, a3 => r3, b0 => a6, b1 => '0',b2 => '0', b3 => '0', c0 => s0, c1 => s1, c2 => s2, c3 => s3 );
	n_7: nfbit port map(a0 => s0, a1 => s1,a2 => s2, a3 => s3, b0 => a7, b1 => '0',b2 => '0', b3 => '0', c0 => o0, c1 => o1, c2 => o2, c3 => o3 );	
end struct;