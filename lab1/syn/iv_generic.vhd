library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.constants.all;

entity iv_generic is
    generic (NBIT: integer := NumBit);
    port (
        a:	In	std_logic_vector(NBIT - 1 DOWNTO 0);
		y:	Out	std_logic_vector(NBIT - 1 DOWNTO 0)
    );
end entity iv_generic;


architecture behavioural of iv_generic is
    
begin
    process(a)
    begin 
        y <= not(a); -- after IVDELAY;
    end process;
    
    
end architecture behavioural;


architecture structural of iv_generic is
    component iv is 
        port (	
            a:	in	std_logic;
            y:	out	std_logic
        );
    end component;
begin
    
    inverters: for i in 0 to NBIT - 1 generate
        ivi: iv port map(a => a(i), y =>y(i));
    end generate inverters;
    
end architecture structural;


configuration CFG_IV_GENERIC_BEHAVIORAL of iv_generic is
	for behavioural
	end for;
end CFG_IV_GENERIC_BEHAVIORAL;

configuration CFG_IV_GENERIC_STRUCTURAL of iv_generic is
	for structural
        for all: iv
            use configuration WORK.CFG_IV_BEHAVIORAL;
        end for;
	end for;
end CFG_IV_GENERIC_STRUCTURAL;
