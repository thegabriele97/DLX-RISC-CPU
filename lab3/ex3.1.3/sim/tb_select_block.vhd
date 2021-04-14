library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_select_block is
end tb_select_block;

architecture behav of tb_select_block is
    
    component select_block is
        generic(
            N:          integer := 8; -- number of registers in each IN, OUT, LOCAL
            F:          integer := 5  -- number of windows
        );
        port(
            regs:           in std_logic_vector(2*N*F-1 downto 0); -- the order is (LSB first): INx - LOCALx ; INx+1 - LOCALx+1, ...
            win:            in std_logic_vector(F-1 downto 0);
            curr_proc_regs: out std_logic_vector(3*N-1 downto 0) -- the order is (LSB first): IN, LOCAL, OUT
        );
    end component;

    signal regs: std_logic_vector(2*8*5-1 downto 0);
    signal win: std_logic_vector(5-1 downto 0);
    signal cpr: std_logic_vector(3*8-1 downto 0);

begin

    DUT: select_block generic map(8, 5) port map(regs, win, cpr);

    process
    begin

        for j in 0 to (2*8*5)-1 loop
            for i in 0 to 4 loop

                --regs <= std_logic_vector(TO_UNSIGNED(j, regs'length));
                regs <= (others => '0');
                regs(j) <= '1';

                win <= (others => '0');
                win(i) <= '1';

                wait for 1 ns;

            end loop;
        end loop;

    end process;

end behav;