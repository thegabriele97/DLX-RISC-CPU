library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use WORK.constants.all; -- libreria WORK user-defined

entity nd2 is
	port (	
		a:	in	std_logic;
		b:	in	std_logic;
		y:	out	std_logic
	);
end nd2;


architecture arch1 of nd2 is
begin
	y <= not(a and b); --  after NDDELAY;
end arch1;

configuration CFG_ND2_ARCH1 of ND2 is
	for arch1
	end for;
end CFG_ND2_ARCH1;
