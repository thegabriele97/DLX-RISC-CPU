library ieee;
use ieee.std_logic_1164.all;

entity tb_connection_mtx is
end tb_connection_mtx;

architecture behav of tb_connection_mtx is

    component connection_mtx is
        generic(
            M:          integer := 8; -- number of global register
            N:          integer := 8; -- number of registers in each IN, OUT, LOCAL
            F:          integer := 5  -- number of windows
        );
        port(
            dec:            in std_logic_vector((M + N*3)-1 downto 0);
            win:            in std_logic_vector(F-1 downto 0);
            sel:            out std_logic_vector((M + (N*2) * F)-1 downto 0)
        );
    end component;

    signal dec: std_logic_vector(8+3*12-1 downto 0);
    signal win: std_logic_vector(4 downto 0);
    signal sel: std_logic_vector(8 + 12 * 2 * 5 -1 downto 0);

begin

    DUT: connection_mtx generic map(8, 12, 5) port map(dec, win, sel);

    process
    begin

        for i in 0 to 4 loop
            for j in 0 to 8+3*12-1 loop

                dec <= (others => '0');
                dec(j) <= '1';

                win <= (others => '0');
                win(i) <= '1';

                wait for 1 ns;

            end loop;
        end loop;

    end process;

end behav;