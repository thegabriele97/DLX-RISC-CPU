library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity set_comparator is
    generic(
        N_BIT_DATA: integer := 32
    );
    port(
        LGET:       in std_logic_vector(1 downto 0);
        SEL_LGET:   in std_logic_vector(2 downto 0);
        SET_OUT:    out std_logic_vector(N_BIT_DATA-1 downto 0)
    );
end entity;

architecture mix of set_comparator is

begin
    
    process(LGET, SEL_LGET)
    begin

        SET_OUT <= (others => '0');

        if (SEL_LGET = "000") then -- SEQ
            SET_OUT(0) <= not LGET(0);
        elsif (SEL_LGET = "001") then -- SNE
            SET_OUT(0) <= LGET(0);
        elsif (SEL_LGET = "010") then -- SLE
            if (LGET(1) = '0') then
                SET_OUT(0) <= '1';
            end if;
        elsif (SEL_LGET = "011") then -- SLT
            if (LGET = "01") then
                SET_OUT(0) <= '1';
            end if;
        elsif (SEL_LGET = "100") then -- SGE
            if (LGET(1) = '1') then
                SET_OUT(0) <= '1';
            end if;
        elsif (SEL_LGET = "101") then -- SGT
            if (LGET = "11") then
                SET_OUT(0) <= '1';
            end if;
        end if;

    end process;

end mix;