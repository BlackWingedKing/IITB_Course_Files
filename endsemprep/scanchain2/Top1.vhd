library ieee;
use ieee.std_logic_1164.all;

--TCLK	Input	PIN_23	1	3.3-V LVTTL (default)		16mA (default)		
--TDI	Input	PIN_5	1	3.3-V LVTTL (default)		16mA (default)		
--TDO	Output	PIN_3	1	3.3-V LVTTL (default)		16mA (default)		
--TMS	Input	PIN_7	1	3.3-V LVTTL (default)		16mA (default)		
--TRST	Input	PIN_21	1	3.3-V LVTTL (default)		16mA (default)		
								

entity Top1 is
  port (
    TDI : in std_logic;  -- Test Data In
    TDO : out std_logic;  -- Test Data Out
    TMS : in std_logic;  -- TAP controller signal
    TCLK : in std_logic;  -- Test clock
    TRST : in std_logic  -- Test reset
  );
end Top1; 

architecture Struct of Top1 is
   -- declare DUT component
component DUT is
   port(input: in std_logic_vector(6 downto 0);
       	output: out std_logic_vector(0 downto 0));
end component;
	
   -- declare Scan-chain component.
   component Scan_Chain is
  	generic (
    	in_pins : integer; -- Number of input pins
    	out_pins : integer -- Number of output pins
  	);
  	port (
    	TDI : in std_logic;  -- Test Data In
    	TDO : out std_logic;  -- Test Data Out
    	TMS : in std_logic;  -- TAP controller signal
    	TCLK : in std_logic;  -- Test clock
    	TRST : in std_logic;  -- Test reset
    	dut_in : out std_logic_vector(in_pins-1 downto 0);  -- Input for the DUT
    	dut_out : in std_logic_vector(out_pins-1 downto 0)  -- Output from the DUT
  	);
   end component;
   -- declare I/O signals to DUT component
	signal input: std_logic_vector(6 downto 0); 
	signal output: std_logic_vector(0 downto 0);
   -- declare signals to Scan-chain component.
   signal scan_chain_parallel_in : std_logic_vector(6 downto 0);
   signal scan_chain_parallel_out: std_logic_vector(0 downto 0);
begin
   scan_instance: Scan_Chain
       generic map(in_pins => 7, out_pins => 1)
       port map (TDI => TDI,
                  TDO => TDO,
                  TMS => TMS,
                  TCLK => TCLK,
                  TRST => TRST,
                  dut_in => scan_chain_parallel_in,
                  dut_out => scan_chain_parallel_out);

  dut1: DUT 
     port map( input => input, output => output);

   -- connections between DUT and Scan_Chain
	input <= scan_chain_parallel_in(6 downto 0);
  
   scan_chain_parallel_out <= output;
end Struct;