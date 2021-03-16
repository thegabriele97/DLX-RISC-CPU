library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity TBREG_GENERIC is
end TBREG_GENERIC;

architecture TEST of TBREG_GENERIC is

	constant NBIT: integer := 16;
	signal	CK:		std_logic :='0';
	signal	RESET:		std_logic :='0';
	signal	ENABLE:		std_logic :='0';
	signal	D:		std_logic_vector(NBIT-1 downto 0) := (others => '0');
	signal	QSYNCH:		std_logic_vector(NBIT-1 downto 0);
	signal	QASYNCH:	std_logic_vector(NBIT-1 downto 0);

	component reg_generic is
		generic (NBIT : integer := NumBit);
        	Port (  D:	In	std_logic_vector(NBIT-1 downto 0);
                	CK:     In	std_logic;
                	RESET:  In	std_logic;
			ENABLE:	In	std_logic;
               		Q:	Out     std_logic_vector(NBIT-1 downto 0));
	end component;	
begin 
		
	UREG1 : reg_generic
	Generic Map (NBIT)
	Port Map ( D, CK, RESET, ENABLE, QSYNCH); -- sinc

	UREG2 : reg_generic
	Generic Map (NBIT)
	Port Map ( D, CK, RESET, ENABLE, QASYNCH); -- asinc
	
	ENABLE <= '0', '1' after 1.3 ns;
	RESET <= '0', '1' after 0.6 ns, '0' after 1.1 ns, '1' after 2.2 ns, '0' after 3.2 ns;	
	
	
	D <= (others => '0'), (others => '1') after 0.4 ns, (others => '0') after 1.1 ns, (others => '1') after 1.4 ns, (others => '0') after 1.7 ns, (others => '1') after 1.9 ns;

	
	PCLOCK : process(CK)
	begin
		CK <= not(CK) after 0.5 ns;	
	end process;



	

end TEST;

configuration REGGENTEST of TBREG_GENERIC is
   for TEST
      for UREG1 : reg_generic
         use configuration WORK.CFG_REG_GENERIC_SYNC; -- sincrono
      end for;
      for UREG2 : reg_generic
         use configuration WORK.CFG_REG_GENERIC_ASYNC; -- asincrono
      end for;


   end for;
end REGGENTEST;

