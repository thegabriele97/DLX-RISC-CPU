library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity wRF_CU is
    generic (
        N_BIT_MEM_ADDR: integer := 10
    );
    port(
        CLK:    in std_logic;
        RST:    in std_logic;
        SPILL:  in std_logic;
        FILL:   in std_logic;
        MEMADDR: out std_logic_vector(N_BIT_MEM_ADDR-1 downto 0);

        RM: out std_logic;
        WM: out std_logic

    );
end entity;


architecture mix of wRF_CU is

    type fsm_state is (INIT, STAND_BY, PUSHING, POPPING);

    signal curr_state, next_state: fsm_state;
    signal curr_addr, next_addr: std_logic_vector(MEMADDR'length-1 downto 0);

begin

    MEMADDR <= next_addr;
    RM <= FILL;
    WM <= SPILL;

    process(curr_state, curr_addr, SPILL, FILL)
    begin

        next_state <= curr_state;
        next_addr <= curr_addr;

        case curr_state is

            when INIT =>
                next_addr <= std_logic_vector(TO_UNSIGNED(2**MEMADDR'length-1, next_addr'length));
                next_state <= STAND_BY;

            when STAND_BY =>
                if (SPILL = '1') then
                    next_addr <= std_logic_vector(unsigned(curr_addr) + 1);
                    next_state <= PUSHING;
                elsif (FILL = '1') then
                    next_state <= POPPING;
                end if;

            when PUSHING =>
                next_addr <= std_logic_vector(unsigned(curr_addr) + 1);
                
                if (FILL = '1') then
                    next_addr <= curr_addr;
                    next_state <= POPPING;
                elsif (SPILL = '0') then
                    next_addr <= curr_addr;
                    next_state <= STAND_BY;
                end if;

            when POPPING =>
                next_addr <= std_logic_vector(unsigned(curr_addr) - 1);
                
                if (SPILL = '1') then
                    next_addr <= curr_addr;
                    next_state <= PUSHING;
                elsif (FILL = '0') then
                    next_addr <= std_logic_vector(unsigned(curr_addr) - 1);
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
                curr_addr <= std_logic_vector(TO_UNSIGNED(2**MEMADDR'length-1, next_addr'length));
            else
                curr_state <= next_state;
                curr_addr <= next_addr;
            end if;

        end if;

    end process;

    
    -- process(CLK)

    --     variable v_cptr: integer;

    -- begin

    --     if (rising_edge(CLK)) then
    --         if (RST = '1') then
    --             curr_ptr <= 0;
    --         else
    --             v_cptr := curr_ptr;
    --             if (SPILL = '1') then
    --                 v_cptr := v_cptr + 1;
    --                 if (v_cptr = 2**N_BIT_MEM_ADDR) then
    --                     v_cptr := 0;
    --                 end if;
    --                 RM <= '1';
    --                 curr_ptr <= v_cptr;
    --             else
    --                 if (v_cptr >= 0) then
    --                     if (FILL = '1') then
    --                         v_cptr := v_cptr - 1;
    --                         if (v_cptr = -1) then
    --                             v_cptr := 2**N_BIT_MEM_ADDR-1;
    --                         end if;
    --                         curr_ptr <= v_cptr;
    --                     end if;
    --                     WM <= '1';
    --                 end if;
    --             end if;
    --         end if;
    --     end if;
    -- end process;

end mix;