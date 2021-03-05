library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use WORK.constants.all; -- libreria WORK user-defined

entity nd2_generic is
	Generic (NBIT: integer:= numBit);
	Port (	
		A:	In	std_logic_vector(NBIT - 1 downto 0);
		B:	In	std_logic_vector(NBIT - 1 downto 0);
		Y:	Out	std_logic_vector(NBIT - 1 downto 0)
	);
end nd2_generic;


architecture ARCH1 of nd2_generic is

begin
	Y <= not( A and B) after NDDELAY; --  

end ARCH1;


-- Chiedere se si può togliere

-- architecture ARCH2 of ND2 is

-- begin
-- 	P1: process(A,B)
-- 	begin
-- 	  if (A ='1') and (B='1') then
-- 	    Y <='0' after NDDELAY;
-- 	  elsif (A='0') or (B='0') then 
-- 	    Y <='1' after NDDELAY;
-- 	  end if;
-- 	end process;

-- end ARCH2;


configuration CFG_ND2_ARCH1 of nd2_generic is
	for ARCH1
	end for;
end CFG_ND2_ARCH1;

-- configuration CFG_ND2_ARCH2 of ND2 is
-- 	for ARCH2
-- 	end for;
-- end CFG_ND2_ARCH2;

