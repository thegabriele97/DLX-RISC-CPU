library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use WORK.constants.all; -- libreria WORK user-defined

entity iv is
	port (	
		a:	in	std_logic;
		y:	out	std_logic
	);
end iv;


architecture behavioural of iv is

begin
	y <= not(a); -- after IVDELAY;
	
end behavioural;

configuration CFG_IV_BEHAVIORAL of iv is
	for behavioural
	end for;
end CFG_IV_BEHAVIORAL;
