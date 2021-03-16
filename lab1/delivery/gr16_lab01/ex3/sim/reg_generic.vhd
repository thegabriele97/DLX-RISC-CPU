library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity reg_generic is
	Generic (NBIT: integer:= numBit);
	Port (	D:	In	std_logic_vector(NBIT - 1 downto 0);
		CK:	In	std_logic;
		RESET:	In	std_logic;
		ENABLE: In 	std_logic;
		Q:	Out	std_logic_vector(NBIT - 1 downto 0));
end reg_generic;

architecture structural_sync of reg_generic is
	component FD is
		Port (	D:	In	std_logic;
			CK:	In	std_logic;
			RESET:	In	std_logic;
			ENABLE: In 	std_logic;
			Q:	Out	std_logic);
	end component;
begin
	fds1: for i in 0 to NBIT - 1 generate
		fdi1: FD port map(D => D(i), CK => CK, RESET => RESET, ENABLE => ENABLE, Q => Q(i));
	end generate fds1;
end structural_sync;

architecture structural_async of reg_generic is
	component FD is
		Port (	D:	In	std_logic;
			CK:	In	std_logic;
			RESET:	In	std_logic;
			ENABLE: In 	std_logic;
			Q:	Out	std_logic);
	end component;
begin
	fds2: for i in 0 to NBIT - 1 generate
		fdi2: FD port map(D => D(i), CK => CK, RESET => RESET, ENABLE => ENABLE, Q => Q(i));
	end generate fds2;
end structural_async;


configuration CFG_REG_GENERIC_SYNC of reg_generic is
	for structural_sync
		for fds1
			for fdi1: FD
				use configuration WORK.CFG_FD_PIPPO;
			end for;
		end for;
	end for;
end CFG_REG_GENERIC_SYNC;

configuration CFG_REG_GENERIC_ASYNC of reg_generic is
	for structural_async
		for fds2
			for fdi2: FD
				use configuration WORK.CFG_FD_PLUTO;
			end for;
		end for;
	end for;
end CFG_REG_GENERIC_ASYNC;
