library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity reg_async_generic is
	Generic (NBIT: integer:= numBit);
	Port (	D:	In	std_logic_vector(NBIT - 1 downto 0);
		CK:	In	std_logic;
		RESET:	In	std_logic;
		ENABLE: In 	std_logic;
		Q:	Out	std_logic_vector(NBIT - 1 downto 0));
end reg_async_generic;

architecture structural_async of reg_async_generic is
	component FD_async is
		Port (	D:	In	std_logic;
			CK:	In	std_logic;
			RESET:	In	std_logic;
			ENABLE: In 	std_logic;
			Q:	Out	std_logic);
	end component;
begin
	fds2: for i in 0 to NBIT - 1 generate
		fdi2: FD_async port map(D => D(i), CK => CK, RESET => RESET, ENABLE => ENABLE, Q => Q(i));
	end generate fds2;
end structural_async;
