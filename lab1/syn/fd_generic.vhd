library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity fd_generic is
	Generic (NBIT: integer:= numBit);
	Port (	D:	In	std_logic_vector(NBIT - 1 downto 0);
					CK:	In	std_logic;
					RESET:	In	std_logic;
					ENABLE: In std_logic;
					Q:	Out	std_logic_vector(NBIT - 1 downto 0));
end fd_generic;


architecture structural of fd_generic is
	component FD is
		Port (	D:	In	std_logic;
						CK:	In	std_logic;
						RESET:	In	std_logic;
						Q:	Out	std_logic);
	end component;

	fds: for i in 0 to NBIT - 1 generate
			fdi: FD port map(D => D(i), CK => (CK AND ENABLE), RESET => RESET, Q => Q(i));
	end generate fds;
end struct_sync;


configuration CFG_FD_GENERIC_SYNC of fd_generic is
	for structural
				for all: FD
						use configuration WORK.CFG_FD_PIPPO;
				end for;
	end for;
end CFG_IV_GENERIC_BEHAVIORAL;

configuration CFG_FD_GENERIC_ASYNC of fd_generic is
	for structural
			for all: FD
					use configuration WORK.CFG_FD_PLUTO;
			end for;
		end for;
end CFG_IV_GENERIC_STRUCTURAL;
