library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mcu is
    generic (
        N_BIT_ADDR: integer := 32
    );
    port (

        Clk: in std_logic;
        Rst: in std_logic;

        CPU_ADDR: in std_logic_vector(N_BIT_ADDR-1 downto 0);
        -- CPU_TOMEM: in std_logic_vector(N_BIT_DATA-1 downto 0);
        -- CPU_FROMEM: out std_logic_vector(N_BIT_DATA-1 downto 0);
        CPU_ENABLE: in std_logic;
        CPU_RDNOTWR: in std_logic;
        CPU_MAS: in std_logic_vector(1 downto 0);
        CPU_VALID: out std_logic;

        MEM_ISSUE: out std_logic;
        MEM_RDNOTWR: out std_logic;
        MEM_MAS: out std_logic_vector(1 downto 0);
        MEM_READY: in std_logic
    );
end entity;

architecture mix of mcu is

    signal prev_enable: std_logic;
    signal prev_ready: std_logic;
    signal prev_addr: std_logic_vector(N_BIT_ADDR-1 downto 0);

begin

    MEM_ISSUE <= CPU_ENABLE;
    MEM_RDNOTWR <= CPU_RDNOTWR;
    MEM_MAS <= CPU_MAS;

    CPU_VALID <= '0' when (CPU_ENABLE = '0' or (prev_enable = '0' and prev_ready = '1') or prev_addr /= CPU_ADDR) else MEM_READY;    

    process(Clk)
    begin

        if (rising_edge(Clk)) then

            if (Rst = '1') then
                prev_enable <= '0';
                prev_ready <= '1';
                prev_addr <= (others => '0');
            else
                prev_enable <= CPU_ENABLE;
                prev_ready <= MEM_READY;
                prev_addr <= CPU_ADDR;
            end if;

        end if;

    end process;

end architecture;
