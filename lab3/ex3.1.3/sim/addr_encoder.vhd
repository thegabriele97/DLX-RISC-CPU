library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.utils.all;

entity addr_encoder is
    generic(
        N:          integer := 8
    );
    port(
        Q:           in std_logic_vector(N-1 downto 0); 
        Y:           out std_logic_vector(f_log2(N)-1 downto 0)
    );
end addr_encoder;

architecture behav of addr_encoder is
begin

    process(Q)
    begin

        Y <= (others => '0');

        for i in Q'range loop
            if (Q(i) = '1') then
                Y <= std_logic_vector(TO_UNSIGNED(i, Y'length));
            end if;
        end loop;

    end process;

end behav;