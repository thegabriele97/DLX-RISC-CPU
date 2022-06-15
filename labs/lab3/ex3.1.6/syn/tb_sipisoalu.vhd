library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; -- we need a conversion to unsigned 

entity TESTSIPISOALU is 
end TESTSIPISOALU; 

architecture TEST of TESTSIPISOALU is

  component SIPISOALU
--	generic (DSUM : 	Time := 0 ns);
	Port (	CLK	:	In	std_logic;
		RESET	:  	In      std_logic;
		STARTA	:  	In 	std_logic;
		A	:	In	std_logic;
		LOADB	:	In 	std_logic;
		B	:	In	std_logic_vector(3 downto 0);
		STARTC	:	Out	std_logic;
		C	:	Out	std_logic);
  end component;
  

  constant Period: time := 1 ns; -- Clock period (1 GHz)
  signal CK : std_logic := '0';
  signal RST : std_logic := '0';

  signal INA 		: std_logic := '0';
  signal STROBEA 	: std_logic := '0';
  signal INB 		: std_logic_vector(3 downto 0) := "0000";
  signal STROBEB 	: std_logic := '0';
  signal OUTC 		: std_logic := '0';
  signal STROBEC	: std_logic := '0'; 	

Begin

  USUM1: SIPISOALU 
--  generic map (DSUM => 0.3 ns)
  port map (CK, RST, STROBEA, INA, STROBEB, INB, STROBEC, OUTC);
  
-- Create the permanent Clock and the Reset pulse
  CK <= not CK after 1 ns;
  RST <= '1', '0' after 1.5 ns;

--	STROBEB <= '0', '1' after (Period*2 + Period/2), '0' after  (Period*3 + Period/2);
	STROBEB <= '0', '1' after 1.5 ns, '0' after 3.5 ns;

--	STROBEA <= '0', '1' after (Period*3 + Period/2), '0' after  (Period*4 + Period/2);
--	STROBEC <= '0', '1' after (Period*7 + Period/2), '0' after  (Period*9 + Period/2);
	STROBEA <= '0', '1' after 4.5 ns, '0' after 6.7 ns;
--	STROBEC <= '0', '1' after 7.5 ns, '0' after 9.5 ns;

	INB <= "0000", "0001"  after 1.5 ns, "0010" after 3.5 ns;	
	INA <= '0', '1' after 4.5 ns, '0' after 6.5 ns, '1' after 8.5 ns, '0' after 10.5 ns;
	
end TEST;

