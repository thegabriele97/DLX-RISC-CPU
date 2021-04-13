library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.all;

entity windowing_rf is
    generic(
        NBIT_DATA:  integer := 64;
        NBIT_ADD:   integer := 5;
        M:          integer := 1; -- number of global register 
        N:          integer := 1; -- number of registers in each IN, OUT, LOCAL
        F:          integer := 1  -- number of windows
    );
    port( 
        
        -- Register File External Interface
        CLK: 		IN std_logic;
        RESET: 	    IN std_logic;
        ENABLE: 	IN std_logic;
        RD1: 		IN std_logic;
        RD2: 		IN std_logic;
        WR: 		IN std_logic;
        ADD_WR: 	IN std_logic_vector(NBIT_ADD - 1 downto 0);
        ADD_RD1: 	IN std_logic_vector(NBIT_ADD - 1 downto 0);
        ADD_RD2: 	IN std_logic_vector(NBIT_ADD - 1 downto 0);
        DATAIN: 	IN std_logic_vector(NBIT_DATA- 1 downto 0);
        OUT1: 		OUT std_logic_vector(NBIT_DATA - 1 downto 0);
	    OUT2: 		OUT std_logic_vector(NBIT_DATA - 1 downto 0);

        -- Other I/O
        CALL:       IN std_logic;
        RET:        IN std_logic;
        FILL:       OUT std_logic; -- PUSH towards memory
        SPILL:      OUT std_logic  -- POP towards memory

    );
end windowing_rf;

architecture mix of windowing_rf is

    component register IS
        GENERIC (
            N: integer := 4
        );
        PORT(
            D:          IN std_logic_vector (N-1 DOWNTO 0);
            Q:          OUT std_logic_vector (N-1 DOWNTO 0);
            Clk:        IN std_logic;
            Rst:        IN std_logic;
            Enable:     IN std_logic
        );
    END component;

    ENTITY decoder IS
        GENERIC (
            N: integer := 4
        );
        PORT(
            Q:      IN std_logic_vector(N-1 downto 0)
            Y:      OUT std_logic_vector(2**N-1 downto 0)
        );
    END ENTITY;

    ENTITY mux IS
        GENERIC (
            N: integer := 4, -- number of bits per port
            M: integer := 2  -- number of port
        );
        PORT(
            S:      IN std_logic_vector(f_log2(M)-1 downto 0)
            Q:      IN std_logic_vector(M*N-1 downto 0)
            Y:      OUT std_logic_vector(N downto 0)
        );
    END ENTITY;

    signal en_regi: std_logic_vector(M + N * (3 + (F - 1) * 2) - 1 downto 0);
    signal en_dec: std_logic_vector(M + N * (3 + (F - 1) * 2) - 1 downto 0);
    signal en_cwp: std_logic_vector(N * (3 + (F - 1) * 2) - 1 downto 0);

begin

    -- SWP
    SWP: register generic map(N => F)
        port map(
            Clk => CLK,
            Rst => RESET,
            ----------------------
        );

    -- CWP
    CWP: register generic map(N => F)
        port map(
            Clk => CLK,
            Rst => RESET,
            Q => ---------
        );


    -- Registers STACK
    REGS: for i in 0 to (M + N * (3 + (F - 1) * 2) - 1) generate

        REGi: register generic map(N => NBIT_DATA)
        port map(
            Clk => CLK,
            Rst => RESET,
            Enable => en_regi(i),
            ---------------------
        );

    end generate REGS;

    DEC: decoder generic map(N => NBIT_ADD)
        port map(
            Q => ADD_WR,
            Y => en_dec(i)
        );

    
    -- global always active: en_regi driven only by decoder
    en_regi(M-1 downto 0) <= en_dec(M-1 downto 0);

    -- in, local, out: en_regi driven by decoder AND cwp
    en_regi <= en_dec(M + N * (3 + (F - 1) * 2) - 1 downto M) and en_cwp(N * (3 + (F - 1) * 2) - 1 downto 0);

    
end mix;