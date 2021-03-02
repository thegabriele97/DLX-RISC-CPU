library IEEE;

use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity TBMUX21 is
end TBMUX21;

architecture TEST of TBMUX21 is

	signal	inputA1:	std_logic :='0';
	signal	inputB1:	std_logic :='0';
	signal	inputS1:	std_logic :='0';
	signal	output1:	std_logic;
	signal	inputA2:	std_logic :='0';
	signal	inputB2:	std_logic :='0';
	signal	inputS2:	std_logic :='0';
	signal	output2:	std_logic;
	signal	inputA3:	std_logic :='0';
	signal	inputB3:	std_logic :='0';
	signal	inputS3:	std_logic :='0';
	signal	output3:	std_logic;
	signal	inputA4:	std_logic :='0';
	signal	inputB4:	std_logic :='0';
	signal	inputS4:	std_logic :='0';
	signal	output4:	std_logic;
	
	component MUX21
	
	Port (	A:	In	std_logic;
		B:	In	std_logic;
		S:	In	std_logic;
		Y:	Out	std_logic);
	end component;

begin 
		
	U1 : MUX21
	Port Map ( inputA1, inputB1, inputS1, output1); -- vedi sotto per la configuration

	U2 : MUX21
	Port Map ( inputA2, inputB2, inputS2, output2); -- vedi sotto per la configuration
		
	U3 : MUX21
	Port Map ( inputA3, inputB3, inputS3, output3); -- vedi sotto per la configuration

	U4 : MUX21
	Port Map ( inputA4, inputB4, inputS4, output4); -- vedi sotto per la configuration


	inputA1 <= '0' after 1 ns, '1' after 2 ns, '0' after 10 ns;
	inputB1 <= '0', '1' after 12 ns, '0' after 12.05 ns, '1' after 13 ns, '0' after 13.11 ns, '1' after 15 ns, '0' after 15.3 ns ;
	inputS1 <= '0' after 1 ns, '1' after 3 ns, '0' after 11 ns;
	
	inputA2 <= '0' after 1 ns, '1' after 2 ns, '0' after 10 ns;
	inputB2 <= '0', '1' after 12 ns, '0' after 12.05 ns, '1' after 13 ns, '0' after 13.11 ns, '1' after 15 ns, '0' after 15.3 ns ;
	inputS2 <= '0' after 1 ns, '1' after 3 ns, '0' after 11 ns;

	inputA3 <= '0' after 1 ns, '1' after 2 ns, '0' after 10 ns;
	inputB3 <= '0', '1' after 12 ns, '0' after 12.05 ns, '1' after 13 ns, '0' after 13.11 ns, '1' after 15 ns, '0' after 15.3 ns ;
	inputS3 <= '0' after 1 ns, '1' after 3 ns, '0' after 11 ns;
	
	inputA4 <= '0' after 1 ns, '1' after 2 ns, '0' after 10 ns;
	inputB4 <= '0', '1' after 12 ns, '0' after 12.05 ns, '1' after 13 ns, '0' after 13.11 ns, '1' after 15 ns, '0' after 15.3 ns ;
	inputS4 <= '0' after 1 ns, '1' after 3 ns, '0' after 11 ns;


end TEST;

configuration MUX21TEST of TBMUX21 is
   for TEST
      for U1: MUX21
         use configuration WORK.CFG_MUX21_BEHAVIORAL_1; -- usa il primo modello
      end for;

      for U2: MUX21
         use configuration WORK.CFG_MUX21_BEHAVIORAL_2; -- usa il primo modello
      end for;

      for U3: MUX21
         use configuration WORK.CFG_MUX21_BEHAVIORAL_3; -- usa il primo modello
      end for;

      for U4: MUX21
         use configuration WORK.CFG_MUX21_STRUCTURAL; -- usa il secondo modello
      end for;

   end for;
end MUX21TEST;

