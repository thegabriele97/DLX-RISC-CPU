library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY decoder IS
    GENERIC (
        N: integer := 4
    );
    PORT(
        Q:      IN std_logic_vector(N-1 downto 0);
        Y:      OUT std_logic_vector(2**N-1 downto 0)
    );
END ENTITY;

ARCHITECTURE Behavioural OF decoder IS

BEGIN
    
    process(Q)
    begin

        Y <= (others => '0');
        Y(TO_INTEGER(unsigned(Q))) <= '1';

    end process;
    
END ARCHITECTURE;