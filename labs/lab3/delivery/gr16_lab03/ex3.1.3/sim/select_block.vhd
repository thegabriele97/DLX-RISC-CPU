library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity select_block is
    generic(
        NBIT_DATA:  integer := 64;
        N:          integer := 8; -- number of registers in each IN, OUT, LOCAL
        F:          integer := 5  -- number of windows
    );
    port(
        regs:           in std_logic_vector(NBIT_DATA*2*N*F-1 downto 0); -- the order is (LSB first): INx - LOCALx ; INx+1 - LOCALx+1, ...
        win:            in std_logic_vector(F-1 downto 0);
        curr_proc_regs: out std_logic_vector(NBIT_DATA*3*N-1 downto 0) -- the order is (LSB first): IN, LOCAL, OUT
    );
end select_block;

architecture behav of select_block is

    subtype bus_proc_t is std_logic_vector(NBIT_DATA*N-1 downto 0); -- the bus type for the procedure specific register

    type bus_array_t is array(0 to F-1, 0 to 1) of bus_proc_t; -- first index is the window, second index is the level of logic


    -- Array of buses signals initialization
    signal bus_arr_io: bus_array_t; -- the buss_arr_io will become in or out according to its relative functionality inside the curr window
    signal bus_arr_local: bus_array_t;

begin

    DISP_INPUTS_2_ARRi: for i in 0 to F-1 generate

        bus_arr_local(i, 0) <= regs(NBIT_DATA*(N+i*2*N+N) -1 downto (N+i*2*N)*NBIT_DATA);
        bus_arr_io(i, 0) <= regs(NBIT_DATA*(i*2*N+N) -1 downto i*2*N*NBIT_DATA);

    end generate DISP_INPUTS_2_ARRi;

    -- Connecting the IO & LOCAL bus, layer 0 ==> layer 1
    -- Layer 1 exists only for possible future additions to add some logic to the BUS
    LOGIC_BUS_IOLOCi: for i in 0 to F-1 generate

        bus_arr_local(i, 1) <= bus_arr_local(i, 0);
        bus_arr_io(i, 1) <= bus_arr_io(i, 0);

    end generate LOGIC_BUS_IOLOCi;


    SELECT_PROC: process(bus_arr_io, bus_arr_local, win)
    begin

        -- we need to assign it in principle otherwise we have an inferred latch! 
        curr_proc_regs <= (others => '0');

        for i in 0 to F-1 loop   
            if (win(i) = '1') then

                -- output of IN block
                curr_proc_regs(NBIT_DATA*N-1 downto 0) <= bus_arr_io(i, 1);

                -- output of LOCAL block
                curr_proc_regs(NBIT_DATA*2*N-1 downto NBIT_DATA*N) <= bus_arr_local(i, 1);

                -- output of OUT block
                if (i = F-1) then
                    curr_proc_regs(NBIT_DATA*3*N-1 downto NBIT_DATA*2*N) <= bus_arr_io(0, 1);
                else
                    curr_proc_regs(NBIT_DATA*3*N-1 downto NBIT_DATA*2*N) <= bus_arr_io(i+1, 1);
                end if;

            end if;
        end loop;

    end process;

    
end behav;