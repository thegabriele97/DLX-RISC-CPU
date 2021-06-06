library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity latch_generic is
    generic (
        NBIT: integer := 8
    );
    port (
        EN:     in std_logic;
        RST:    in std_logic;
        D:      in std_logic_vector(NBIT-1 downto 0);
        Q:      out std_logic_vector(NBIT-1 downto 0)
    );
end entity;

architecture behav of latch_generic is

    signal q_mem: std_logic_vector(NBIT-1 downto 0); 

begin

    Q <= q_mem;

    process(EN, RST, D)
    begin

        if (RST = '1') then
            q_mem <= (others => '0');
        elsif (EN = '1') then
            q_mem <= D;
        end if;

    end process;

end behav;