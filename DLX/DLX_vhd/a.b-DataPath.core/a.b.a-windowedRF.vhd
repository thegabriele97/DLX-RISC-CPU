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
        SPILL:      OUT std_logic; -- PUSH towards memory

        -- TO MEMORY
        BUS_TOMEM:  OUT std_logic_vector(NBIT_DATA - 1 downto 0);
        BUS_FROMEM:  IN std_logic_vector(NBIT_DATA - 1 downto 0)

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
            M: integer := 2  -- log of number of port
        );
        PORT(
            S:      IN std_logic_vector(M-1 downto 0);
            Q:      IN std_logic_vector((2**M)*N-1 downto 0);
            Y:      OUT std_logic_vector(N-1 downto 0)
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
            addr_pop:       in std_logic_vector(2*N-1 downto 0);
            win:            in std_logic_vector(F-1 downto 0);
            swp:            in std_logic_vector(F-1 downto 0);
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

    component nwin_calc is
        generic(
            F:          integer := 8
        );
        port(
            c_win:           in std_logic_vector(F-1 downto 0);
            sel:            in std_logic_vector(1 downto 0);         
            n_win:           out std_logic_vector(F-1 downto 0)
        );
    end component;

    component in_loc_selblock is
        generic(
            NBIT_DATA:  integer := 64;
            N:          integer := 8; -- number of registers in each IN, OUT, LOCAL
            F:          integer := 5  -- number of windows
        );
        port(
            regs:           in std_logic_vector(NBIT_DATA*2*N*F-1 downto 0); -- the order is (LSB first): INx - LOCALx ; INx+1 - LOCALx+1, ...
            win:            in std_logic_vector(F-1 downto 0);
            curr_proc_regs: out std_logic_vector(NBIT_DATA*2*N-1 downto 0) -- the order is (LSB first): IN, LOCAL, OUT
        );
    end component;

    component address_generator is
        generic(
            N:          integer := 8
        );
        port(
            clk:        in std_logic;
            rst:        in std_logic;
            enable:     in std_logic;
            done:       out std_logic;
            working:    out std_logic;
            addr:       out std_logic_vector(N-1 downto 0)
        );
    end component;

    component addr_encoder is
        generic(
            N:          integer := 3 -- log of N bits (output size)
        );
        port(
            Q:           in std_logic_vector(2**N-1 downto 0); 
            Y:           out std_logic_vector(N-1 downto 0)
        );
    end component;

    component latch_generic is
        generic (
            NBIT: integer := 8
        );
        port (
            EN:     in std_logic;
            RST:    in std_logic;
            D:      in std_logic_vector(NBIT-1 downto 0);
            Q:      out std_logic_vector(NBIT-1 downto 0)
        );
    end component;

    type word_array_t is array(0 to F-1) of std_logic_vector(NBIT_DATA-1 downto 0);
    type sel_1bit_t is array(0 to F-1) of std_logic_vector(0 downto 0);

    signal dec_output: std_logic_vector(3*N+M-1 downto 0);
    signal writeen_ext: std_logic_vector(3*N+M-1 downto 0);
    signal dec_out_with_wen: std_logic_vector(3*N+M-1 downto 0);
    signal c_win: std_logic_vector(F-1 downto 0);
    signal c_win_mux: std_logic_vector(F-1 downto 0);
    signal en_regi: std_logic_vector(M+2*N*F-1 downto 0);
    signal int_pop_ret_encoding: std_logic_vector(1 downto 0);
    signal out_nwin_in_mux: std_logic_vector(F-1 downto 0);
    signal bus_mux_tcwp: std_logic_vector((2*F-1) downto 0);
    signal mux_tcwp_sel: std_logic_vector(0 downto 0);

    signal bus_reg_dataout: std_logic_vector(NBIT_DATA*2*N*F-1 downto 0);
    signal bus_global_dataout: std_logic_vector(NBIT_DATA*M-1 downto 0);

    signal bus_selected_win_data: std_logic_vector(NBIT_DATA*3*N-1 downto 0);
    signal bus_complete_win_data: std_logic_vector(NBIT_DATA*(M + 3*N)-1 downto 0);

    signal internal_out1: std_logic_vector(NBIT_DATA-1 downto 0);
    signal internal_out2: std_logic_vector(NBIT_DATA-1 downto 0);

    signal call_ret_encoding: std_logic_vector(1 downto 0);
    signal next_cwp: std_logic_vector(F-1 downto 0);

    signal int_WR: std_logic;
    signal int_RD1: std_logic;
    signal int_RD2: std_logic;

    signal donespill_donefill_encoding: std_logic_vector(1 downto 0);
    signal next_swp: std_logic_vector(F-1 downto 0);

    signal cwin_minus2: std_logic_vector(F-1 downto 0);
    signal cwin_plus2: std_logic_vector(F-1 downto 0); 
    signal swin_minus1: std_logic_vector(F-1 downto 0);
    signal c_swin: std_logic_vector(F-1 downto 0);
    signal c_swin_masked: std_logic_vector(F-1 downto 0);
    signal c_swin_masked_1bit: sel_1bit_t;
    signal filleq: std_logic;
    signal spilleq: std_logic;

    signal bus_fromem_indata: std_logic_vector(2*NBIT_DATA - 1 downto 0);
    signal internal_inloc_data: word_array_t;

    signal int_POP: std_logic;
    signal int_PUSH: std_logic;
    signal trigger_PUSH: std_logic;
    signal trigger_POP: std_logic;
    signal working_PUSH: std_logic;
    signal working_POP: std_logic;

    signal bus_sel_savedwin_data: std_logic_vector(NBIT_DATA*2*N-1 downto 0);
    
    signal spill_address_ext: std_logic_vector(2*N-1 downto 0);
    signal spill_address: std_logic_vector(f_log2(2*N)-1 downto 0);

    signal fill_address_ext: std_logic_vector(2*N-1 downto 0);

    signal done_spill: std_logic;
    signal done_fill: std_logic;

begin

    int_WR <= ENABLE and WR;
    int_RD1 <= ENABLE and RD1;
    int_RD2 <= ENABLE and RD2;


    call_ret_encoding <= ((RET and not filleq) or done_fill) & ((CALL and not spilleq) or done_spill);
    
    CWP_NEXT_CALC: nwin_calc generic map(F => F) 
        port map(
            c_win => c_win,
            sel => call_ret_encoding,
            n_win => next_cwp
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


    RDPORT0: mux generic map(N => NBIT_DATA, M => f_log2(M + 3*N))
        port map(
            S => ADD_RD1,
            Q => bus_complete_win_data,
            Y => internal_out1
        );

    RDPORT0_OUTLATCH: latch_generic generic map(NBIT => NBIT_DATA)
        port map(
            RST => RESET,
            EN => int_RD1,
            D => internal_out1,
            Q => OUT1
        );


    RDPORT1: mux generic map(N => NBIT_DATA, M => f_log2(M + 3*N))
        port map(
            S => ADD_RD2,
            Q => bus_complete_win_data,
            Y => internal_out2
        );

    RDPORT1_OUTLATCH: latch_generic generic map(NBIT => NBIT_DATA)
        port map(
            RST => RESET,
            EN => int_RD2,
            D => internal_out2,
            Q => OUT2
        );


    bus_fromem_indata <= BUS_FROMEM & DATAIN;

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

            MUX_DATAIN: if ((i-M) mod 2*N = 0) generate

                c_swin_masked_1bit((i-M) / (2*N))(0) <= c_swin_masked((i-M) / (2*N));

                MUX_SELINPUT: mux generic map(N => NBIT_DATA, M => f_log2(2))
                    port map(
                        S => c_swin_masked_1bit((i-M) / (2*N)),
                        Q => bus_fromem_indata,
                        Y => internal_inloc_data((i-M) / (2*N))
                    );

            end generate MUX_DATAIN;

            BLOCKi: reg_generic generic map(N => NBIT_DATA, RSTVAL => 0)
                port map(
                    Clk => CLK,
                    Rst => RESET,
                    Enable => en_regi(i),
                    D => internal_inloc_data((i-M) / (2*N)),
                    Q => bus_reg_dataout((i-M)*NBIT_DATA+NBIT_DATA-1 downto (i-M)*NBIT_DATA)
                );
        end generate PROC_BLOCKSi;

    end generate REGS;


    --------------------------------------------------------------------------------------------
    --------------------------------------------------------------------------------------------
    --------------------------------------------------------------------------------------------
    --------------------------------------------------------------------------------------------


    int_pop_ret_encoding <= int_POP & int_PUSH;

    TCWP_NEXT_CALC: nwin_calc generic map(F => F) 
    port map(
        c_win => c_win,
        sel => int_pop_ret_encoding,
        n_win => out_nwin_in_mux
    );

    mux_tcwp_sel(0) <= int_POP or int_PUSH;
    bus_mux_tcwp <= out_nwin_in_mux & c_win;
    TCWP_MUX: mux generic map(N => F, M => f_log2(2))
    port map(
        S => mux_tcwp_sel,
        Q => bus_mux_tcwp,
        Y => c_win_mux
    );
    --------------------------------------------------------------------------------------------
    --------------------------------------------------------------------------------------------
    --------------------------------------------------------------------------------------------
    --------------------------------------------------------------------------------------------



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
            addr_pop => fill_address_ext,
            win => c_win_mux,
            swp => c_swin_masked,
            sel => en_regi
        );


    --TODO: a day it will be: done_fill & done_spill
    donespill_donefill_encoding <= done_fill & done_spill;
    
    SWP_NEXT_CALC: nwin_calc generic map(F => F) 
        port map(
            c_win => c_swin,
            sel => donespill_donefill_encoding,
            n_win => next_swp
        );

    -- SWP
    SWP: reg_generic generic map(N => F, RSTVAL => 1)
        port map(
            Clk => CLK,
            Rst => RESET,
            Enable => '1',
            D => next_swp,
            Q => c_swin
        );

    cwin_plus2 <= c_win(F-3 downto 0) & c_win(F-1 downto F-2);
    SPILL <= int_PUSH;    

    EQ_CHECK: equal_check generic map(N => F)
        port map(
            A => cwin_plus2,
            B => c_swin,
            EQUAL => spilleq
        );


    trigger_PUSH <= spilleq and CALL;
    int_PUSH <= trigger_PUSH or working_PUSH;

    SELBLOCK_INLOC: in_loc_selblock generic map(NBIT_DATA, N, F) 
        port map(
            regs => bus_reg_dataout,
            win => c_swin,
            curr_proc_regs => bus_sel_savedwin_data
        );

    PUSH_ADDRGEN: address_generator generic map(N => 2*N)
        port map(
            clk => CLK,
            rst => RESET,
            enable => int_PUSH,
            done => done_spill,
            working => working_PUSH,
            addr => spill_address_ext
        );

    SPILLADDR_ENC: addr_encoder generic map(N => f_log2(2*N))
        port map(
            Q => spill_address_ext,
            Y => spill_address
        );

    RDPORT_SPILL: mux generic map(N => NBIT_DATA, M => f_log2(2*N))
        port map(
            S => spill_address,
            Q => bus_sel_savedwin_data,
            Y => BUS_TOMEM
        );


    
    
    --cwin_minus2 <= c_win(1 downto 0) & c_win(F-1 downto 2);
    FILL <= int_POP;
    
    EQ_CHECK_POP: equal_check generic map(N => F)
    port map(
        A => c_win,
        B => c_swin,
        EQUAL => filleq
        );
    
    trigger_POP <= filleq and RET;
    int_POP <= working_POP or trigger_POP;
    
    POP_ADDRGEN: address_generator generic map(N => 2*N)
        port map(
            clk => CLK,
            rst => RESET,
            enable => int_POP,
            done => done_fill,
            working => working_POP,
            addr => fill_address_ext
        );

    
    swin_minus1 <= c_swin(0) & c_swin(F-1 downto 1);

    CSWIN_MASK: for i in c_swin'range generate
        c_swin_masked(i) <= swin_minus1(i) and int_POP;
    end generate CSWIN_MASK;

    
end mix;
