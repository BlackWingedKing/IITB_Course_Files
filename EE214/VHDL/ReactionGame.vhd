library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity ReactionGame is
  port (NClick, CLK, NReset: in std_logic;
         LED, LEDOver, LEDEnd: out std_logic;
			--pins of LCD
			LCD: out std_logic_vector(7 downto 0);
			en, rw, rs, b11, b12: out std_logic);
end entity ReactionGame;

architecture Behave of ReactionGame is
	signal clkh, clkl: std_logic;
	signal debounce, debounceEgde: std_logic;
	signal Click,clkh1, Reset: std_logic; 
	signal LEDOverF, LEDEndF: std_logic;
	signal F0, F1, F2, F3, F4: std_logic_vector(3 downto 0);
	signal F00, F11, F22, F33, F44: std_logic_vector(7 downto 0);
	signal GAMEOVER: std_logic:='0';
	--lcd pins
	signal col: std_logic_vector(3 downto 0);
	signal lcd_data: std_logic_vector(7 downto 0);
	signal ack: std_logic;
	
component HighTLow is
	port (CLK, Reset: in std_logic;
         LowOut: out std_logic);
end component;
component HighToLow is
	port (CLK, Reset: in std_logic;
         LowOut: out std_logic);
end component;
component HighTLower is
	port (CLK, Reset: in std_logic;
         LowOut: out std_logic);
end component;
component debouncer is 
	port (X, RESET, CLK: in std_logic; W: out std_logic);
end component;
component EdgeFSM is
	port (Xin, CLK, Reset: in std_logic; W: out std_logic);
end component;
component Assign is
	port(X: in std_logic_vector(3 downto 0); C: std_logic; Y: out std_logic_vector(7 downto 0));
end component;

component Control is
  port (Click, CLK, CLKH, Reset: in std_logic; LED, LEDOver, LEDEnd, GAMEOVER: out std_logic;
			D0, D1, D2, D3, D4: out std_logic_vector(3 downto 0));
end component;


component lcd_controller is
port (clk    : in std_logic;                          
      rst    : in std_logic;                          -- reset
      erase : in std_logic;                  --- clear position
      put_char : in std_logic;
      write_data : in std_logic_vector(7 downto 0) ;
      write_row : in std_logic_vector(0 downto 0);
      write_column : in std_logic_vector(3 downto 0);
      ack : out std_logic;
      lcd_rw : out std_logic;                         --read & write control
      lcd_en : out std_logic;                         --enable control
      lcd_rs : out std_logic;                         --data or command control
      lcd1  : out std_logic_vector(7 downto 0);
      b11 : out std_logic;
      b12 : out std_logic);     --data line
end component;

begin

	Click <= not NClick;
	Reset <= not NReset;
	LEDOver <= LEDOverF;
	LEDEnd <= LEDEndF;
	
	CH: HighTLow port map(CLK, Reset, clkh);
	CH1: HighToLow port map(CLK, Reset, clkh1);
	CL: HighTLower port map(CLK, Reset, clkl);
	
	Deb: debouncer port map(Click, Reset, clkl, debounce);
	Edge: EdgeFSM port map(Click, clkl, Reset, debounceEgde);
	
	Con: Control port map(Click => debounceEgde, CLK => CLK, CLKH => clkh1, Reset => Reset, 
					LED => LED, LEDOver => LEDOverF, LEDEnd => LEDEndF, GAMEOVER => GAMEOVER,
					D0 => F0, D1 => F1, D2 => F2, D3 => F3, D4 => F4);
					
	A0: Assign port map(F0, LEDOverF, F00);
	A1: Assign port map(F1, LEDOverF, F11);
	A2: Assign port map(F2, LEDOverF, F22);
	A3: Assign port map(F3, LEDOverF, F33);
	A4: Assign port map(F4, LEDOverF, F44);
					
	LCD1: lcd_controller port map(clk => clkh, rst => Reset, erase => '0', put_char => '1',
					write_data => lcd_data, write_row => "0", write_column => col,
					ack => ack, lcd_rw => rw, lcd_en => en, lcd_rs => rs, lcd1 => LCD,
					b11 => b11, b12 => b12);
					
					
	process(ack, Reset, clkh)
	begin
	
		if(rising_edge(clkh)) then
		if(LEDOverF = '0') then
			if(Reset = '1') then
				col <= "1100";
				lcd_data <= F44;
			elsif(ack = '1') then
				if(col = "1100") then
					col <= "1011";
					lcd_data <= "00100000"; -- Space
				elsif(col = "1011") then
					col <= "1010";
					lcd_data <= "00100000"; -- Space
				elsif(col = "1010") then
					col <= "1001";
					lcd_data <= "00100000"; -- Space
				elsif(col = "1001") then
					col <= "1000";
					lcd_data <= "00100000"; -- Space
				elsif(col = "1000") then
					col <= "0111";
					lcd_data <= "00100000"; -- Space
				elsif(col = "0111") then
					col <= "0110";
					lcd_data <= "00100000"; -- Space
				elsif(col = "0110") then
					col <= "0101";
					lcd_data <= F00; 
				elsif(col = "0101") then
					col <= "0100";
					lcd_data <= F11; 
				elsif(col = "0100") then
					col <= "0011";
					lcd_data <= F22; 
				elsif(col = "0011") then
					col <= "0010";
					lcd_data <= F33; 
				elsif(col = "0010") then
					col <= "0001";
					lcd_data <= F44; 
				elsif(col = "0001") then
					col <= "0000";
					lcd_data <= "00100000"; -- Space
				else
					col <= "1100";
					lcd_data <= "00100000"; -- Space
				end if;
			end if;

			
		else
			
			if(Reset = '1') then
				col <= "1100";
				lcd_data <= F44;
			elsif(ack = '1') then
				if(col = "1100") then
					col <= "1011";
					lcd_data <= "01010010"; -- R
				elsif(col = "1011") then
					col <= "1010";
					lcd_data <= "01000101"; -- E
				elsif(col = "1010") then
					col <= "1001";
					lcd_data <= "01010011"; -- S
				elsif(col = "1001") then
					col <= "1000";
					lcd_data <= "01001111"; -- O
				elsif(col = "1000") then
					col <= "0111";
					lcd_data <= "01001100"; -- L
				elsif(col = "0111") then
					col <= "0110";
					lcd_data <= "00100000"; -- Space
				elsif(col = "0110") then
					col <= "0101";
					lcd_data <= "01011001"; -- Y
				elsif(col = "0101") then
					col <= "0100";
					lcd_data <= "01010010"; -- R
				elsif(col = "0100") then
					col <= "0011";
					lcd_data <= "01010010"; -- R
				elsif(col = "0011") then
					col <= "0010";
					lcd_data <= "01001111"; -- O
				elsif(col = "0010") then
					col <= "0001";
					lcd_data <= "01010011"; -- S
				elsif(col = "0001") then
					col <= "0000";
					lcd_data <= "00100000"; -- Space
				else
					col <= "1100";
					lcd_data <= "00100000"; -- Space
				end if;
			end if;
				
		end if;
		end if;
	end process;
	
end Behave;