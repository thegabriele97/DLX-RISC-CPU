library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;

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
        FILL:       OUT std_logic; -- POP towards memory
        SPILL:      OUT std_logic  -- PUSH towards memory

    );
end windowing_rf;

architecture mix of windowing_rf is

    component reg_generic IS
        GENERIC (
            N:          integer := 4;
            RSTVAL:     integer := 0
        );
        PORT(
            D:          IN std_logic_vector (N-1 DOWNTO 0);
            Q:          OUT std_logic_vector (N-1 DOWNTO 0);
            Clk:        IN std_logic;
            Rst:        IN std_logic;
            Enable:     IN std_logic
        );
    END component;

    component decoder IS
        GENERIC (
            N: integer := 4
        );
        PORT(
            Q:      IN std_logic_vector(N-1 downto 0);
            Y:      OUT std_logic_vector(2**N-1 downto 0)
        );
    END component;

    component mux IS
        GENERIC (
            N: integer := 4; -- number of bits per port
            M: integer := 2  -- number of port
        );
        PORT(
            S:      IN std_logic_vector(f_log2(M)-1 downto 0);
            Q:      IN std_logic_vector(M*N-1 downto 0);
            Y:      OUT std_logic_vector(N downto 0)
        );
    END component;

    component connection_mtx is
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
    end component;

    component select_block is
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
    end component;

    component equal_check is
        generic(
            N:      integer := 4
        );
        port(
            A:      in std_logic_vector(N-1 downto 0);
            B:      in std_logic_vector(N-1 downto 0);
            EQUAL:     out std_logic
        );
    end component;

    signal dec_output: std_logic_vector(3*N+M-1 downto 0);
    signal writeen_ext: std_logic_vector(3*N+M-1 downto 0);
    signal dec_out_with_wen: std_logic_vector(3*N+M-1 downto 0);
    signal c_win: std_logic_vector(F-1 downto 0);
    signal en_regi: std_logic_vector(M+2*N*F-1 downto 0);

    signal bus_reg_dataout: std_logic_vector(NBIT_DATA*2*N*F-1 downto 0);
    signal bus_global_dataout: std_logic_vector(NBIT_DATA*M-1 downto 0);

    signal bus_selected_win_data: std_logic_vector(NBIT_DATA*3*N-1 downto 0);
    signal bus_complete_win_data: std_logic_vector(NBIT_DATA*(M + 3*N)-1 downto 0);

    signal internal_out1: std_logic_vector(NBIT_DATA-1 downto 0);
    signal internal_out2: std_logic_vector(NBIT_DATA-1 downto 0);

    signal call_ret_encoding: std_logic_vector(1 downto 0);
    signal callret_cwp_mux_input: std_logic_vector(4*F-1 downto 0);
    signal next_cwp: std_logic_vector(F-1 downto 0);

    signal int_WR: std_logic;
    signal int_RD1: std_logic;
    signal int_RD2: std_logic;

    signal cwin_plus2: std_logic_vector(F-1 downto 0); 
    signal c_swin: std_logic_vector(F-1 downto 0); 
    signal int_PUSH: std_logic;

begin

    int_WR <= ENABLE and WR;
    int_RD1 <= ENABLE and RD1;
    int_RD2 <= ENABLE and RD2;


    call_ret_encoding <= RET & CALL;
    
    -- call_ret_encoding = 00 => c_win
    callret_cwp_mux_input(F-1 downto 0) <= c_win;
    callret_cwp_mux_input(4*F-1 downto 3*F) <= c_win;

    -- call_ret_encoding = 01 => (c_win << 1)
    callret_cwp_mux_input(2*F-1 downto F) <= c_win(F-2 downto 0) & c_win(F-1);
    
    -- call_ret_encoding = 10 => (c_win << 1)
    callret_cwp_mux_input(3*F-1 downto 2*F) <= c_win(0) & c_win(F-1 downto 1);
    

    CALLRET_CWP_MUX: mux generic map(N => F, M => 4)
        port map(
            S => call_ret_encoding,
            Q => callret_cwp_mux_input,
            Y => next_cwp
        ); 

    -- CWP
    CWP: reg_generic generic map(N => F, RSTVAL => 1)
        port map(
            Clk => CLK,
            Rst => RESET,
            Enable => '1',
            D => next_cwp,
            Q => c_win
        );


    SEL_BLK: select_block generic map(NBIT_DATA, N, F) 
        port map(
            regs => bus_reg_dataout,
            win => c_win,
            curr_proc_regs => bus_selected_win_data
        );


    bus_complete_win_data <= bus_selected_win_data & bus_global_dataout;


    RDPORT0: mux generic map(N => NBIT_DATA, M => M + 3*N)
        port map(
            S => ADD_RD1,
            Q => bus_complete_win_data,
            Y => internal_out1
        );

    RDPORT0_OUTREG: reg_generic generic map(N => NBIT_DATA, RSTVAL => 0)
        port map(
            Clk => CLK,
            Rst => RESET,
            Enable => int_RD1,
            D => internal_out1,
            Q => OUT1
        );



    RDPORT1: mux generic map(N => NBIT_DATA, M => M + 3*N)
        port map(
            S => ADD_RD2,
            Q => bus_complete_win_data,
            Y => internal_out2
        );

    RDPORT1_OUTREG: reg_generic generic map(N => NBIT_DATA, RSTVAL => 0)
        port map(
            Clk => CLK,
            Rst => RESET,
            Enable => int_RD2,
            D => internal_out2,
            Q => OUT2
        );


    -- Registers STACK
    REGS: for i in 0 to ((M + (N*2) * F)-1) generate

        GLOB_BLK: if (i < M) generate
            BLOCK_GLOB: reg_generic generic map(N => NBIT_DATA, RSTVAL => 0)
                port map(
                    Clk => CLK,
                    Rst => RESET,
                    Enable => en_regi(i),
                    D => DATAIN,
                    Q => bus_global_dataout(i*NBIT_DATA+NBIT_DATA-1 downto i*NBIT_DATA)
                );
        end generate GLOB_BLK;

        PROC_BLOCKSi: if (not (i < M)) generate
            BLOCKi: reg_generic generic map(N => NBIT_DATA, RSTVAL => 0)
                port map(
                    Clk => CLK,
                    Rst => RESET,
                    Enable => en_regi(i),
                    D => DATAIN,
                    Q => bus_reg_dataout((i-M)*NBIT_DATA+NBIT_DATA-1 downto (i-M)*NBIT_DATA)
                );
        end generate PROC_BLOCKSi;

    end generate REGS;


    DEC: decoder generic map(N => NBIT_ADD)
        port map(
            Q => ADD_WR,
            Y => dec_output
        );  

    writeen_ext <= (others => int_WR);
    dec_out_with_wen <= dec_output and writeen_ext;

    ConnMtx: connection_mtx generic map(M, N, F)
        port map(
            dec => dec_out_with_wen,
            win => c_win,
            sel => en_regi
        );


    -- SWP
    SWP: reg_generic generic map(N => F, RSTVAL => 1)
        port map(
            Clk => CLK,
            Rst => RESET,
            Enable => '1',
            D => "00001",
            Q => c_swin
        );

    cwin_plus2 <= c_win(F-3 downto 0) & c_win(F-1 downto F-2);
    SPILL <= int_PUSH;    

    EQ_CHECK: equal_check generic map(N => F)
        port map(
            A => cwin_plus2,
            B => c_swin,
            EQUAL => int_PUSH
        );
    
end mix;