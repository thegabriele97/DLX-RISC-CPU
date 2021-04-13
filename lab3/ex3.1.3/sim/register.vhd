library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY register IS
    GENERIC (
        N: integer := 4
    );
    PORT(
        D:          IN std_logic_vector (N-1 DOWNTO 0);
        Q:          OUT std_logic_vector (N-1 DOWNTO 0);
        Clk:        IN std_logic;
        Rst:        IN std_logic;
        Enable:     IN std_logic
    );
END ENTITY;

ARCHITECTURE Behavioural OF register IS

BEGIN
    PROCESS(Clk)
    BEGIN
        IF (rising_edge(Clk)) THEN
            IF (Rst = '1') THEN 
                Q <= (OTHERS =>'0');
            ELSIF (Enable = '1') THEN
                Q <= D;
            END IF;
        END IF;
    END PROCESS;

END ARCHITECTURE;