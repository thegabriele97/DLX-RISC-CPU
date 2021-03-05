library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use WORK.constants.all; -- libreria WORK user-defined

entity iv_generic is
	Generic (NBIT: integer:= numBit);
	Port (	
		A:	In	std_logic_vector(NBIT - 1 downto 0);
		Y:	Out	std_logic_vector(NBIT - 1 downto 0)
	);
end iv_generic;


architecture BEHAVIORAL of iv_generic is

begin
	Y <= not(A) after IVDELAY;
	-- Y <= not(A);

end BEHAVIORAL;

configuration CFG_IV_BEHAVIORAL of iv_generic is
	for BEHAVIORAL
	end for;
end CFG_IV_BEHAVIORAL;
