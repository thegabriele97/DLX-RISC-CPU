library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity addr_mask is
    generic (
        N_BIT_MEM_ADDR: integer := 32
    );
    port (
        ADDR_IN: in std_logic_vector(N_BIT_MEM_ADDR-1 downto 0);
        DATA_SIZE: in std_logic_vector(1 downto 0);
        ADDR_OUT: out std_logic_vector(N_BIT_MEM_ADDR-1 downto 0)
    );
end entity;

architecture behavioral of addr_mask is

begin

    with DATA_SIZE select
        ADDR_OUT <= ADDR_IN(ADDR_IN'length-1 downto 2) & "00" when "00",
                    ADDR_IN(ADDR_IN'length-1 downto 1) & "0"  when "01",
                    ADDR_IN when others;

end architecture;