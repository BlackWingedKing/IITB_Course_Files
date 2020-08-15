library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity final is
  port (react, CLK, reset: in std_logic;
          led,gameover,finish,x,pause1:out  STD_LOGIC;
			--pins of LCD
			LCD: out std_logic_vector(7 downto 0);
			en, rw, rs, b11, b12: out std_logic);
end entity final;

architecture Behave of final is
	signal clk_low,put,erase1: std_logic;
	signal F0, F1, F2, F3, F4: unsigned(3 downto 0);
	signal F00, F11, F22, F33, F44: std_logic_vector(7 downto 0);
	signal gameover1,finish1: std_logic:='0';
	signal nreset: std_logic;
	--lcd pins
	signal col: std_logic_vector(3 downto 0);
	signal lcd_data: std_logic_vector(7 downto 0);
	signal ack: std_logic;
	
component randomfsm is
     Port ( CLK,reset1,react2: in  STD_LOGIC;
            led,gameover,finish,pause1:out  STD_LOGIC;
				D0,D1,D2,D3: out unsigned(3 downto 0));
end component;

component msclock is
	port ( CLK,reset: in std_logic;
			OUTPUT: out std_logic);
end component;

component Assign is
	port(X: in unsigned (3 downto 0); 
		C: in std_logic; Y: out std_logic_vector(7 downto 0));
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
	--put <= '0';
	nreset <= not (reset);					
	r0: randomfsm port map( CLK => CLK,reset1 => reset,react2 => react,led => led,gameover => gameover1,finish => finish1,
				pause1=> pause1,D0 => F0, D1 => F1, D2 => F2, D3 => F3);
	
	F4 <= "0000";
	
	A0: Assign port map(X => F0,C => gameover1,Y => F00);
	A1: Assign port map(X => F1,C => gameover1,Y => F11);
	A2: Assign port map(X => F2,C => gameover1,Y => F22);
	A3: Assign port map(X => F3,C => gameover1,Y => F33);
	A4: Assign port map(X => F4,C => gameover1,Y => F44);
	
	LCD1: lcd_controller port map(clk => clk_low, rst => reset, erase => erase1, put_char => put,
					write_data => lcd_data, write_row => "0", write_column => col,
					ack => ack, lcd_rw => rw, lcd_en => en, lcd_rs => rs, lcd1 => LCD,
					b11 => b11, b12 => b12);
	
	msclock1 : msclock port map (CLK => CLK,reset => nreset ,OUTPUT => clk_low);		
					
	gameover <= gameover1;
	finish <= finish1;
	x <= clk_low;
	--erase1 <= '0';
	
	process(ack,put, nreset, clk_low)
	begin
		if(rising_edge(clk_low)) then
		if(finish1 = '1') then
			put <= '1';
			if(nreset = '1') then
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

			
		end if;
			if(gameover1 = '1') then 
				put<= '1';
			if(nreset = '1') then
				col <= "1100";
				lcd_data <= F44;
			elsif(ack = '1') then
				if(col = "1100") then
					col <= "1011";
					lcd_data <= "00100011"; -- #
				elsif(col = "1011") then
					col <= "1010";
					lcd_data <= "01010010"; -- R
				elsif(col = "1010") then
					col <= "1001";
					lcd_data <= "01000101"; -- E
				elsif(col = "1001") then
					col <= "1000";
					lcd_data <= "01010110"; -- V
				elsif(col = "1000") then
					col <= "0111";
					lcd_data <= "01001111"; -- O
				elsif(col = "0111") then
					col <= "0110";
					lcd_data <= "00100000"; -- Space
				elsif(col = "0110") then
					col <= "0101";
					lcd_data <= "01000101"; -- E
				elsif(col = "0101") then
					col <= "0100";
					lcd_data <= "01001101"; -- M
				elsif(col = "0100") then
					col <= "0011";
					lcd_data <= "01000001"; -- A
				elsif(col = "0011") then
					col <= "0010";
					lcd_data <= "01000111"; -- G
				elsif(col = "0010") then
					col <= "0001";
					lcd_data <= "00100011"; -- #
				elsif(col = "0001") then
					col <= "0000";
					lcd_data <= "00100000"; -- Space
				else
					col <= "1100";
					lcd_data <= "00100000"; -- Space
				end if;
			end if;
		end if;
		if(gameover1 = '0' and finish1 = '0') then
			put<= '0';
			erase1 <= '1';
		end if;	
		
		if(nreset = '1') then
			erase1 <= '1';
		end if;
		if (nreset = '0') then
			erase1 <= '0';
		end if;
		end if;
	
	end process;
	
end Behave;