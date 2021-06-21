library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity wRF_CU is
    generic (
        N_BIT_MEM_ADDR: integer := 10;
        N_BIT_DATA: integer := 32
    );
    port(
        CLK:        in std_logic;
        RST:        in std_logic;
        SPILL:      in std_logic;
        DONE_SPILL: in std_logic;
        DONE_FILL: in std_logic;
        FILL:       in std_logic;
        RAM_READY:  in std_logic;
        MEMADDR:    out std_logic_vector(N_BIT_MEM_ADDR-1 downto 0);

        DATA_IN_RF:    in std_logic_vector(N_BIT_DATA-1 downto 0);
        DATA_OUT_RF:   out std_logic_vector(N_BIT_DATA-1 downto 0);
        DATA_IN_MEM:    in std_logic_vector(N_BIT_DATA-1 downto 0);
        DATA_OUT_MEM:   out std_logic_vector(N_BIT_DATA-1 downto 0);

        RM:         out std_logic;
        WM:         out std_logic
    );
end entity;


architecture mix of wRF_CU is

    type fsm_state is (INIT, STAND_BY, PUSHING, POPPING);

    signal curr_state, next_state: fsm_state;
    signal curr_addr, next_addr: std_logic_vector(MEMADDR'length-1 downto 0);
    signal curr_data, next_data: std_logic_vector(N_BIT_DATA-1 downto 0);

begin

    MEMADDR <= next_addr;
    RM <= FILL and not DONE_FILL;
    WM <= SPILL and not DONE_SPILL;

    next_data <= curr_data when (RAM_READY = '0') else DATA_IN_MEM;

    DATA_OUT_RF <= DATA_IN_MEM when (RAM_READY = '1') else curr_data;
    DATA_OUT_MEM <= DATA_IN_RF;

    process(curr_state, curr_addr, SPILL, FILL, RAM_READY, DONE_SPILL, DONE_FILL)
    begin

        next_state <= curr_state;
        next_addr <= curr_addr;

        case curr_state is

            when INIT =>
                next_addr <= std_logic_vector(to_unsigned(0, curr_addr'length));
                next_state <= STAND_BY;

            when STAND_BY =>
                if (SPILL = '1' and RAM_READY = '1') then
                    next_addr <= std_logic_vector(unsigned(curr_addr) + 4);
                    next_state <= PUSHING;
                elsif (FILL = '1') then
                    next_state <= POPPING;
                end if;

            when PUSHING =>
                if (RAM_READY = '1') then
                    next_addr <= std_logic_vector(unsigned(curr_addr) + 4);
                end if;

                if (FILL = '1') then
                    next_addr <= curr_addr;
                    next_state <= POPPING;
                elsif (DONE_SPILL = '1') then 
                    next_addr <= curr_addr;
                    next_state <= STAND_BY;
                end if;

            when POPPING =>
                if (RAM_READY = '1') then
                    next_addr <= std_logic_vector(unsigned(curr_addr) - 4);
                end if;
                    
                if (SPILL = '1') then
                    next_addr <= curr_addr;
                    next_state <= PUSHING;
                elsif (DONE_FILL = '1') then
                    --next_addr <= std_logic_vector(unsigned(curr_addr) - 4);
                    next_state <= STAND_BY;
                end if;
            when others =>
                next_state <= INIT;

        end case;

    end process;

    process(CLK)
    begin

        if (rising_edge(CLK)) then

            if (RST = '1') then
                curr_state <= INIT;
                -- curr_addr <= std_logic_vector(TO_UNSIGNED(2**MEMADDR'length-4, next_addr'length));
                curr_addr <= std_logic_vector(to_unsigned(0, curr_addr'length));
                curr_data <= (others => '0');
            else
                curr_data <= next_data;
                curr_state <= next_state;
                curr_addr <= next_addr;
            end if;

        end if;

    end process;

end mix;
