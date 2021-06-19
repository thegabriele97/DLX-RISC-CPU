library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.utils.all;

entity address_generator is
    generic(
        N:          integer := 8
    );
    port(
        clk:        in std_logic;
        rst:        in std_logic;
        enable:     in std_logic;
        ram_ready:  in std_logic;
        done:       out std_logic;
        working:    out std_logic;
        addr:       out std_logic_vector(N-1 downto 0)
    );
end address_generator;

architecture struct of address_generator is

    signal curr_addr: std_logic_vector(N-1 downto 0);
    signal next_addr: std_logic_vector(N-1 downto 0);

begin

    addr <= curr_addr;

    -- done = '1' if msb = '1'
    done <= curr_addr(N-1) and ram_ready;
    working <= not curr_addr(0);

    process(curr_addr, enable)
    begin

        next_addr <= (others => '0');
        next_addr(0) <= '1';

        if (enable = '1' or (curr_addr(0) = '0' and not (curr_addr(N-1) = '1'))) then
            next_addr <= (curr_addr(N-2 downto 0) & curr_addr(N-1));
        end if;

    end process;

    process(clk)
    begin

        if (rising_edge(clk)) then
            if (rst = '1') then
                curr_addr <= (others => '0');
                curr_addr(0) <= '1';
            elsif (ram_ready = '1') then
                curr_addr <= next_addr;
            end if;
        end if;

    end process;

end struct;