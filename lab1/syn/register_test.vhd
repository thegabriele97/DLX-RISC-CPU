library IEEE;
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_unsigned.all; 

entity registerFF is
	generic (n: integer);
	Port (	X:	In	std_logic_vector(n-1 downto 0);
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Y:	Out	std_logic_vector(n-1 downto 0));
end registerFF;

architecture structural_sync of registerFF is -- register with synchronous reset

component FD is
	Port (	D:	In	std_logic;
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Q:	Out	std_logic);
end component FD;

begin
	gen1: for i in 0 to n-1 generate
	begin
		FF: FD port map(D=>X(i),CK=>CK,RESET=>RESET,Q=>Y(i));
	end generate;
end architecture structural_sync;	
	

architecture structural_async of registerFF is -- register with asynchronous reset

component FD is
	Port (	D:	In	std_logic;
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Q:	Out	std_logic);
end component FD;

begin
	gen1: for i in 0 to n-1 generate
	begin
		FF: FD port map(D=>X(i),CK=>CK,RESET=>RESET,Q=>Y(i));
	end generate;
end architecture structural_async;



configuration cfg_structural_sync of FD is
	for PIPPO
	end for;
end cfg_structural_sync;


configuration cfg_astructural_sync of FD is
	for PLUTO
	end for;
end cfg_astructural_sync;


 
