library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux21_generic is
    generic (NBIT: integer:= 4);
	Port (	
        a:	in	std_logic_vector(NBIT - 1 downto 0) ;
        b:	in	std_logic_vector(NBIT - 1 downto 0);
        s: 	in	std_logic;
        y:	out	std_logic_vector(NBIT - 1 downto 0)
    );
end entity mux21_generic;

architecture behavioural of mux21_generic is
    
begin

    pmux: process(a, b, s)
	begin
		if s = '1' then
			y <= a;
		else
			y <= b;
		end if;
	end process;
end architecture Behavioural;

