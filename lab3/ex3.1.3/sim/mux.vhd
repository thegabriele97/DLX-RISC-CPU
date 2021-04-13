library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;

ENTITY mux IS
    GENERIC (
        N: integer := 4, -- number of bits per port
        M: integer := 2  -- number of port
    );
    PORT(
        S:      IN std_logic_vector(f_log2(M)-1 downto 0)
        Q:      IN std_logic_vector(M*N-1 downto 0)
        Y:      OUT std_logic_vector(N downto 0)
    );
END ENTITY;

architecture behav of mux is
begin

    process(S, Q)
    begin

        for i in 0 to f_log2(M)-1 loop

            if (i == TO_INTEGER(unsigned(S))) then
                Y <= Q(i*N+N-1 downto i*N);
            end if;

        end loop;

    end process;

end behav;