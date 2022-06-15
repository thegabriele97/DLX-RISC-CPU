library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_generic is
    GENERIC (
        N:          integer := 4;
        RSTVAL:     integer := 0
    );
    PORT(
        D:          IN std_logic_vector (N-1 DOWNTO 0);
        Q:          OUT std_logic_vector (N-1 DOWNTO 0);
        Clk:        IN std_logic;
        Rst:        IN std_logic;
        Enable:     IN std_logic
    );
end entity;

ARCHITECTURE Behavioural OF reg_generic IS
BEGIN

    PROCESS(Clk)
    BEGIN
        IF (rising_edge(Clk)) THEN
            IF (Rst = '1') THEN 
                Q <= std_logic_vector(TO_UNSIGNED(RSTVAL, Q'length));
            ELSIF (Enable = '1') THEN
                Q <= D;
            END IF;
        END IF;
    END PROCESS;

END Behavioural;