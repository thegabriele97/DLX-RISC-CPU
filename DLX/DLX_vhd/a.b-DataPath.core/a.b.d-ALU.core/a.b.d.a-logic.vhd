library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity logic_generic is 
	generic (NBIT: integer := 16);
	Port (	
        A:	In	std_logic_vector((NBIT-1) downto 0);
		B:	In	std_logic_vector((NBIT-1) downto 0);
		S:	In	std_logic_vector(2 downto 0);
		Y: Out std_logic_vector((NBIT-1) downto 0)
    );
end logic_generic; 

architecture behavioural of logic_generic is

	signal i_SEL: std_logic_vector(3 downto 0);

	signal s0: std_logic_vector(NBIT-1 downto 0);
	signal s1: std_logic_vector(NBIT-1 downto 0);
	signal s2: std_logic_vector(NBIT-1 downto 0);
	signal s3: std_logic_vector(NBIT-1 downto 0);

begin

	with S select
		i_SEL <= "0001" when "000",
				 "1110" when "001",
				 "0111" when "010",
				 "1000" when "011",
				 "0110" when "100",
				 "1001" when "101",
				 "0000" when others;

	s0 <= (others => i_SEL(3));
	s1 <= (others => i_SEL(2));
	s2 <= (others => i_SEL(1));
	s3 <= (others => i_SEL(0));

	Y <= ((not(A) and not(B)) and s0) or ((not(A) and B) and s1) or ((A and not(B)) and s2) or ((A and B) and s3);

end behavioural; 

