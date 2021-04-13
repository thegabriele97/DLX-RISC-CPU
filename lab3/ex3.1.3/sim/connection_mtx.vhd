library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity connection_mtx is
    generic(
        M:          integer := 8; -- number of global register
        N:          integer := 8; -- number of registers in each IN, OUT, LOCAL
        F:          integer := 5  -- number of windows
    );
    port(
        dec:            in std_logic_vector((M + N*3)-1 downto 0);
        win:            in std_logic_vector(F-1 downto 0);
        sel:            out std_logic_vector((M + (N*2) * F)-1 downto 0)
    );
end connection_mtx;


architecture struct of connection_mtx is

    subtype bus_glob_t is std_logic_vector(M-1 downto 0); -- the bus type for the global register
    subtype bus_proc_t is std_logic_vector(N-1 downto 0); -- the bus type for the procedure specific register

    type bus_array_t is array(0 to F-1, 0 to 1) of bus_proc_t; -- first index is the window, second index is the level of logic
    type win_array_t is array(0 to F-1) of bus_proc_t;

    -- Single buses signals initialization
    signal bus_global: bus_glob_t;
    signal bus_in: bus_proc_t;
    signal bus_local: bus_proc_t;
    signal bus_out: bus_proc_t;

    -- Array of buses signals initialization
    signal bus_arr_io: bus_array_t; -- the buses bus_in, bus_out will become one bus_arr_io with an OR gate
    signal bus_arr_local: bus_array_t;


    -- Array of window-buses 
    -- first index is the window. 
    -- The result is a std_logic_vector (7 downto 0), each bit is the same (expanded bus from 1 bit of the window to many bits)
    signal bus_win: win_array_t;


begin

    
    -- Dispatching the decoder output to the correct bus
    bus_global <= dec(M-1 downto 0);
    bus_in <= dec(M+(N-1) downto M);
    bus_local <= dec(M+(2*N)-1 downto M+N);
    bus_out <= dec(M+(3*N)-1 downto M+(2*N));
    
    
    -- Dispatching the window to its bus
    DISP_WINi: for i in 0 to F-1 generate
        bus_win(i) <= (others => win(i)); -- (7 downto 0) <= win(i);
    end generate DISP_WINi;

    -- Dispatching the LOCAL, IN, OUT buses into their array
    -- beucase for each bus we have #_WINDOW of them
    -- IN and OUT are in OR so single bus after that (towards layer 0)
    DISP_BUS_2_ARRi: for i in 0 to F-1 generate

        bus_arr_local(i, 0) <= bus_local;
        
        logic_eq0: if (i = 0) generate
            bus_arr_io(i, 0) <= (bus_in and bus_win(i)) or (bus_out and bus_win(F-1));
        end generate logic_eq0;

        logic_gt0: if (i > 0) generate
            bus_arr_io(i, 0) <= (bus_in and bus_win(i)) or (bus_out and bus_win(i-1));
        end generate logic_gt0;

    end generate DISP_BUS_2_ARRi;



    -- Connecting the LOCAL bus, layer 0 ==> layer 1
    LOGIC_BUS_LOCALi: for i in 0 to F-1 generate

        -- An AND with the current window
        bus_arr_local(i, 1) <= bus_arr_local(i, 0) and bus_win(i);

    end generate LOGIC_BUS_LOCALi;


    -- Connecting the IO bus, layer 0 ==> layer 1
    -- Layer 1 exists only for possible future additions to add some logic to the BUS
    LOGIC_BUS_IOi: for i in 0 to F-1 generate

        bus_arr_io(i, 1) <= bus_arr_io(i, 0);

    end generate LOGIC_BUS_IOi;


    
    -- Dispatching all the buses (layer 1) to the final output
    sel(M-1 downto 0) <= bus_global;
    
    END_BUS_WINi: for i in 0 to F-1 generate
        sel(M + i * (2*N) + N - 1 downto M + i * (2*N)) <= bus_arr_io(i, 1);
        sel((M+N) + i * (2*N) + N - 1 downto (M+N) + i * (2*N)) <= bus_arr_local(i, 1);
    end generate END_BUS_WINi;


end struct;