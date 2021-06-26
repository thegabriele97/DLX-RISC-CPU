library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY mux IS
    GENERIC (
        N: integer := 4; -- number of bits per port
        M: integer := 2  -- log of number of port
    );
    PORT(
        S:      IN std_logic_vector(M-1 downto 0);
        Q:      IN std_logic_vector((2**M)*N-1 downto 0);
        Y:      OUT std_logic_vector(N-1 downto 0)
    );
END ENTITY;

architecture behav of mux is
begin

    process(S, Q)

        variable S_dummy : integer := 0;

    begin

        S_dummy := TO_INTEGER(unsigned(S));

        -- we need to assign Y in principle otherwise we have an inferred latch! 
        Y <= (others => '0');

        for i in 0 to 2**M-1 loop
            if (i = S_dummy) then
                Y <= Q(i*N+N-1 downto i*N);
                -- 00: select bits from 7 to 0
                -- 01: select bits from 15 to 8
                -- 10: select bits from 23 to 16
                -- 11: select bits from 31 to 24
            end if;
        end loop;
    end process;

end behav;