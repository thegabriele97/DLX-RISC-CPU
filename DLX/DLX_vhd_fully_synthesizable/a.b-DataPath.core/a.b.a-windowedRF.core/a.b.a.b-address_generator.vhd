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
        push_notfill: in std_logic;
        done:       out std_logic;
        working:    out std_logic;
        addr:       out std_logic_vector(N-1 downto 0)
    );
end address_generator;


architecture fsm of address_generator is

    type fsm_state is (INIT, STAND_BY, WORKING_STATE, LAST_STATE);

    signal curr_state, next_state: fsm_state;
    signal curr_addr, next_addr: std_logic_vector(N-1 downto 0);

begin


    addr <= next_addr when (push_notfill = '1') else curr_addr;

    process(curr_state, curr_addr, enable, ram_ready)
    begin

        next_addr <= curr_addr;
        next_state <= curr_state;
        done <= '0';
        working <= '0';

        case curr_state is
            
            when INIT =>
                next_addr <= std_logic_vector(to_unsigned(1, next_addr'length));
                next_state <= STAND_BY;

            when STAND_BY =>

                if (enable = '1') then
                    next_state <= WORKING_STATE;
                    if (ram_ready = '1') then
                        -- next_addr <= (curr_addr(N-2 downto 0) & curr_addr(N-1));

                        -- next_addr <= std_logic_vector(to_unsigned(1, next_addr'length));
                    end if;
                end if;

            when WORKING_STATE =>
                working <= '1';
                if(curr_addr(N-1) /= '1' and ram_ready = '1') then
                    next_addr <= (curr_addr(N-2 downto 0) & curr_addr(N-1));
                elsif(next_addr(N-1) = '1' and ram_ready = '1') then
                    working <= '1';
                    next_state <= LAST_STATE;
                    done <= '1';
                end if;

            when LAST_STATE =>
                working <= '0';
                next_addr <= std_logic_vector(to_unsigned(1, next_addr'length));
                next_state <= STAND_BY;
                   
        end case;

    end process;

    process(clk)
    begin
        if(rising_edge(clk)) then
            if(rst = '1') then
                curr_state <= INIT;
                curr_addr <= std_logic_vector(to_unsigned(1, next_addr'length));
            else
                curr_state <= next_state;
                curr_addr <= next_addr;
            end if;   
        end if;
    end process;
    

end fsm;








-- architecture struct of address_generator is

--     signal curr_addr: std_logic_vector(N-1 downto 0);
--     signal next_addr: std_logic_vector(N-1 downto 0);
--     signal curr_addr2: std_logic_vector(N-1 downto 0);
--     signal next_addr2: std_logic_vector(N-1 downto 0);
--     signal curr_working_status: std_logic;
--     signal next_working_status: std_logic;

-- begin

--     addr <= curr_addr;

--     -- done = '1' if msb = '1'
--     done <= curr_addr(N-1) and ram_ready;
--     -- working <= not curr_addr(0);
--     -- working <= curr_working_status;
--     working <= not curr_addr2(0);

--     process(curr_addr, curr_addr2, curr_working_status, enable, ram_ready)
--     begin

--         next_addr <= (others => '0');
--         next_addr(0) <= '1';

--         if (enable = '1' or (curr_addr(0) = '0' and not (curr_addr(N-1) = '1'))) then
--             next_addr <= (curr_addr(N-2 downto 0) & curr_addr(N-1));
--         end if;


--         next_addr2 <= (others => '0');
--         next_addr2(0) <= '1';

--         if (enable = '1' or (curr_addr2(0) = '0' and not (curr_addr2(N-1) = '1'))) then
            
--             if (curr_addr(0) = '1') then
--                 next_addr2 <= (curr_addr2(N-2 downto 0) & curr_addr2(N-1));
--             else
--                 next_addr2 <= (curr_addr(N-2 downto 0) & curr_addr(N-1));
--             end if;

--         end if;

--         next_working_status <= curr_working_status;
--         if (enable = '1') then
--             next_working_status <= '1';
--             if (curr_addr(N-1) = '1' and ram_ready = '1') then
--                 next_working_status <= '0';
--             end if;
--         end if;

--     end process;

--     process(clk)
--     begin

--         if (rising_edge(clk)) then
--             if (rst = '1') then
--                 curr_addr <= (others => '0');
--                 curr_addr(0) <= '1';
--                 curr_addr2(0) <= '1';
--                 curr_working_status <= '0';
--             else
--                 -- curr_working_status <= next_working_status;
--                 curr_addr2 <= next_addr2;
--                 if (ram_ready = '1') then
--                     curr_addr <= next_addr;
--                 end if;
--             end if;
--         end if;

--     end process;

-- end struct;