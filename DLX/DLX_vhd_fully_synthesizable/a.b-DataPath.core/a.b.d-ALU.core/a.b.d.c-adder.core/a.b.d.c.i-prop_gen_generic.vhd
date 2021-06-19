library IEEE;
use IEEE.std_logic_1164.all;

entity prop_gen_generic is
    generic(NBIT: integer := 16);
    port (
        a, b: in std_logic_vector(NBIT - 1 DOWNTO 0);
        cin: in std_logic;
        p, g: out std_logic_vector(NBIT - 1 DOWNTO 0)
    );
end entity prop_gen_generic;

architecture structural of prop_gen_generic is
    
    component prop_gen is
        port (
            a, b: in std_logic;
            p, g: out std_logic
        );
    end component;
    
    signal p0, g0: std_logic;

begin

    PG_Network: for i in 0 to NBIT - 1 generate
        
        PG0: if (i = 0) generate
            
            pg_network_i: prop_gen port map(a => a(i), b => b(i), p => p0, g => g0); 
            g(0) <= g0 or (p0 and cin);
            p(0) <= p0;

        end generate PG0;
        
        PGi: if (i > 0) generate
            pg_network_i: prop_gen port map(a => a(i), b => b(i), p => p(i), g => g(i));
        end generate PGi;

    end generate PG_Network;

end architecture structural;