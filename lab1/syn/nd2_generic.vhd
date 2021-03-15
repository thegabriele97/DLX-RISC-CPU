library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.constants.all;

entity nd2_generic is
    generic (NBIT: integer := NumBit);
    port (
        a:	in	std_logic_vector(NBIT - 1 DOWNTO 0);
		b:	in	std_logic_vector(NBIT - 1 DOWNTO 0);
		y:	out	std_logic_vector(NBIT - 1 DOWNTO 0)
    );
end entity nd2_generic;


architecture behavioural of nd2_generic is
    
begin
    process(a, b)
    begin 
        y <= not(a and b);
    end process;
    
end architecture behavioural;


architecture structural of nd2_generic is
    
    component nd2 is
        port (	
            a:	in	std_logic;
            b:	in	std_logic;
            y:	out	std_logic
        );
    end component;
begin
    
    nands: for i in 0 to NBIT - 1 generate
        ndi: nd2 port map(a => a(i), b => b(i), y =>y(i));
    end generate nands;

end architecture structural;


configuration CFG_ND2_GENERIC_BEHAVIOURAL of nd2_generic is
	for behavioural
	end for;
end CFG_ND2_GENERIC_BEHAVIOURAL;


configuration CFG_ND2_GENERIC_STRUCTURAL of nd2_generic is
	for structural
	for nands
        for ndi: nd2
            use configuration WORK.CFG_ND2_ARCH1;
        end for;
	end for;
	end for;
end CFG_ND2_GENERIC_STRUCTURAL;
