library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity DP is

    generic (
        N_BIT_DATA          : integer := 32;    -- generic data path bit width
        N_BIT_ADDR_RF       : integer := 5;     -- address bit number
        N_OPSEL             : integer := 2;     -- number of bit needed for the ALU operations
        N_BIT_MEM_ADDR      : integer := 10;    -- number of bit needed for the address of the Data Memory
        N_BIT_RF_MEM_ADDR   : integer := 10     -- number of bit needed for the address of the memory used to PUSH/POP data from the register file. We call this memory, RF memory
    );

    port (
        
        Clk :   in std_logic;     -- CLock
        Rst :   in std_logic;     -- Reset: Active-Low


        EN1 :  in std_logic;     -- Enable stage 1 of the pipeline
        EN2 :  in std_logic;     -- Enable stage 2 of the pipeline
        EN3 :  in std_logic;     -- Enable stage 3 of the pipeline

        -- Bus to DATA MEMORY
        DATAMEM_BUS_TOMEM:  out std_logic_vector(N_BIT_DATA - 1 downto 0); -- Data bus from the datapath to the data memory
        DATAMEM_BUS_FROMEM: in std_logic_vector(N_BIT_DATA - 1 downto 0); -- Data bus from the data memory to the datapath
        DATAMEM_ADDR:       out std_logic_vector(N_BIT_MEM_ADDR-1 downto 0); -- Address of the data memory

        --
        --          REGISTER FILE
        --
        RS1 :   in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);      -- address PORT 1 of the register file
        RS2 :   in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);      -- address PORT 2 of the register file
        WS1 :   in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);      -- Address used for the write back
        RD1 :   out std_logic_vector(N_BIT_DATA-1 downto 0);
        RD2 :   out std_logic_vector(N_BIT_DATA-1 downto 0);        -- RD1 & RD2 towards the DECODE unit

        -- Our RF has two reading port and one writing port

        RF1 :   in std_logic;     -- Read enable port 1 of the register file
        RF2 :   in std_logic;     -- Read enable port 2 of the register file 
        WF  :   in std_logic;     -- Write enable of the register file
    
        -- RF PROC MEMORY
        RF_BUS_TOMEM:  out std_logic_vector(N_BIT_DATA - 1 downto 0); -- Data bus from the datapath to the RF memory
        RF_BUS_FROMEM: in std_logic_vector(N_BIT_DATA - 1 downto 0); -- Data bus from the RF memory to the datapath
        RF_MEM_ADDR:   out std_logic_vector(N_BIT_RF_MEM_ADDR-1 downto 0); -- Address of the RF memory
        RF_MEM_RM: out std_logic;       -- Register file memory enable read signal
        RF_MEM_WM: out std_logic;       -- Register file memory enable write signal
        RWM: in std_logic;              -- Data memory read/write enable signal: 1 read, 0 write
        DATA_SIZE: in std_logic_vector(1 downto 0);     -- Signal to decide how many bits to extend the data for the load/store
        UNSIG_SIGN_N: in std_logic;                     -- Signal to decide if the load/store is unsigned or not: 1 unsigned, 0 signed
        
        -- Used to manage the procedure call
        CALL:       in std_logic;
        RET:        in std_logic;
        FILL:       out std_logic;
        SPILL:      out std_logic;

        -- Immediate value for the datapath 
        
        INP1:   in std_logic_vector(N_BIT_DATA - 1 downto 0); -- immediate 1
        INP2:   in std_logic_vector(N_BIT_DATA - 1 downto 0); -- immediate 2
        
        -- mux selector for ALU inputs
        S1: in std_logic; -- Selector for top mux, called mux A
        S2: in std_logic; -- Selector for bottom mux, called mux B
        

        -- ALU 
        ALU_OP: in std_logic_vector(N_OPSEL + 3 - 1 downto 0); -- Control signal for the ALU in order to decide the operation
        ALU_COUT: out std_logic;    -- Carry out of the operation made by the ALU

        -- Comparator results coming from the datapath
        SEL_ALU_SETCMP: in std_logic;
        LGET:   in std_logic_vector(1 downto 0);
        SEL_LGET:   in std_logic_vector(2 downto 0);
        
        -- Mux selector for stage 3 of the pipeline
        S3: in std_logic; -- Selector for mux of stage 3

        ADD_WB: out std_logic_vector(N_BIT_ADDR_RF-1 downto 0)      -- Adress that goes into the hazard table that tells that we can execute the other operation

    );
end entity;

architecture structural of DP is

    component windowing_rf is
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
    end component;

    component reg_generic is
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
    end component;

    component mux2_1 is
        generic (NBIT: integer:= 32);
        Port (	
            a:	in	std_logic_vector(NBIT - 1 downto 0); -- pass with s = 1
            b:	in	std_logic_vector(NBIT - 1 downto 0); -- pass with s = 0
            s: 	in	std_logic;
            y:	out	std_logic_vector(NBIT - 1 downto 0)
        );
    end component;

    component ALU is

        generic (
            N_BIT_DATA      : integer := 32;        -- generic data bit width
            N_OPSEL         : integer := 2          -- number of bit needed for the ALU operations
        );
    
        port (
    
            INA:    in std_logic_vector(N_BIT_DATA-1 downto 0);
            INB:    in std_logic_vector(N_BIT_DATA-1 downto 0);
    
            OP:     in std_logic_vector(N_OPSEL+3-1 downto 0);
            -- AVAILABLE OPERATIONS
            -- OP := 000 00 -> ADD
            -- OP := 001 00 -> SUB
            -- OP := 000 01 -> MUL
    
            -- OP := 000 10 -> AND
            -- OP := 001 10 -> NAND
            -- OP := 010 10 -> OR
            -- OP := 011 10 -> NOR
            -- OP := 100 10 -> XOR
            -- OP := 101 10 -> XNOR
    
            -- OP := 000 11 -> SHIFT LEFT
            -- OP := 001 11 -> SHIFT RIGHT
            -- OP := 010 11 -> ARITH SHIFT LEFT
            -- OP := 011 11 -> ARITH SHIFT RIGHT
            -- OP := 100 11 -> ROTATE LEFT
            -- OP := 101 11 -> ROTATE RIGHT
    
    
            -- ....
    
            Y:      out std_logic_vector(N_BIT_DATA-1 downto 0);
            
            COUT:   out std_logic    
        );
    
    end component;

    component wRF_CU is
    
        generic (
            N_BIT_MEM_ADDR: integer := 10;
            MEM_DATAWIDTH: integer := 32
        );
    
        port(
            CLK:    in std_logic;
            RST:    in std_logic;
            SPILL:  in std_logic;
            FILL:   in std_logic;
    
            FROMEM:  in std_logic_vector(MEM_DATAWIDTH-1 downto 0);
            TOMEM:   out std_logic_vector(MEM_DATAWIDTH-1 downto 0);
            MEMADDR: out std_logic_vector(N_BIT_MEM_ADDR-1 downto 0);
    
            RM: out std_logic;
            WM: out std_logic
    
        );
    
    end component;

    component set_comparator is
        generic(
            N_BIT_DATA: integer := 32
        );
        port(
            LGET:       in std_logic_vector(1 downto 0);
            SEL_LGET:   in std_logic_vector(2 downto 0);
            SET_OUT:    out std_logic_vector(N_BIT_DATA-1 downto 0)
        );
    end component;

    component datamem_ldstr is 
        generic(
            N_BIT_DATA: integer := 32 
        );
        port(

            DATA_RAW    : in std_logic_vector(N_BIT_DATA-1 downto 0);
            
            -- 00 -> N_BIT_DATA bit     (lw/sw)
            -- 01 -> N_BIT_DATA/2 bit   (lh/sh)
            -- 10 -> 8 bit              (lb/sb)
            DATA_SIZE   : in std_logic_vector(1 downto 0); 
            UNSIG_SIGN_N: in std_logic;                                 -- 0 is signed, 1 is unsigned
                        
            DATA_OUT    : out std_logic_vector(N_BIT_DATA-1 downto 0)
        );
    end component;


    --
    -- PIPELINE STAGE 1
    --
    signal i_WF: std_logic;

    signal i_RF_DATA_IN: std_logic_vector(N_BIT_DATA-1 downto 0); -- WRITE BACK into RF
    signal i_RF_DATA_O1: std_logic_vector(N_BIT_DATA-1 downto 0); -- output 1 of the register file that goes into register A
    signal i_RF_DATA_O2: std_logic_vector(N_BIT_DATA-1 downto 0); -- output 2 of the register file that goes into register B
    
    signal i_RFFILL: std_logic; -- POP towards memory
    signal i_RFSPILL: std_logic; -- PUSH towards memory
    
    signal i_PIPLIN_A: std_logic_vector(N_BIT_DATA-1 downto 0); -- output of the register A that goes into MUX_IN1_A
    signal i_PIPLIN_B: std_logic_vector(N_BIT_DATA-1 downto 0); -- output of the register B that goes into MUX_IN1_B
    signal i_PIPLIN_IN1: std_logic_vector(N_BIT_DATA-1 downto 0); -- output of the register IN1 that goes into MUX_IN1_A
    signal i_PIPLIN_IN2: std_logic_vector(N_BIT_DATA-1 downto 0); -- output of the register IN2 that goes into MUX_IN1_B
    signal i_PIPLIN_WRB1: std_logic_vector(N_BIT_ADDR_RF-1 downto 0);
    signal i_PIPLIN_WRB2: std_logic_vector(N_BIT_ADDR_RF-1 downto 0);
    
    
    --
    -- PIPELINE STAGE 2
    --
    signal i_RF_WS: std_logic_vector(N_BIT_ADDR_RF-1 downto 0); -- Write address for the register file
    
    signal i_SETCMP_OUT: std_logic_vector(N_BIT_DATA-1 downto 0);
    signal i_ALU_IN_A: std_logic_vector(N_BIT_DATA-1 downto 0); -- output of the multiplexer A that goes into the ALU
    signal i_ALU_IN_B: std_logic_vector(N_BIT_DATA-1 downto 0); -- output of the multiplexer B that goes into the ALU
    signal i_ALU_OUT: std_logic_vector(N_BIT_DATA-1 downto 0); -- output of the ALU that goes into the REG_ALU_OUT
    signal i_MUX_ALU_SETCMP: std_logic_vector(N_BIT_DATA-1 downto 0);
    signal i_REG_ALU_OUT_ADDRESS_DATAMEM: std_logic_vector(N_BIT_DATA-1 downto 0); -- output of the REG_ALU_OUT that goes into the address of the DATA_MEMORY
    signal i_REG_ME_DATA_DATAMEM: std_logic_vector(N_BIT_DATA-1 downto 0); -- output of the REG_ME that goes into the data of the DATA_MEMORY

    signal i_LGET: std_logic_vector(1 downto 0);


    --
    -- PIPELINE STAGE 3
    --
    signal i_REG_MEM_ALUOUT: std_logic_vector(N_BIT_DATA-1 downto 0);
    signal i_MUX_STAGE3_REG_OUT: std_logic_vector(N_BIT_DATA-1 downto 0);
    signal i_REG_DATAOUT: std_logic_vector(N_BIT_DATA-1 downto 0);
    signal i_DATA_RAW: std_logic_vector(N_BIT_DATA-1 downto 0);
    signal i_LDSTR_OUT: std_logic_vector(N_BIT_DATA-1 downto 0);
    signal i_REG_LDSTR_OUT: std_logic_vector(N_BIT_DATA-1 downto 0);


begin

    
    -- 
    -- REGISTER FILE --
    --
    
    -- R0....R7     GLOBAL
    -- R7....R15    IN
    -- R16...R24    LOCAL
    -- R25...R31    OUT

    -- This is used not to avoid writing on the register R0. When we initialize the register file, 
    -- the whole content in 0. After that we cannot touch anymore R0 that will be fixed to 0
    i_WF <= WF when (TO_INTEGER(unsigned(i_RF_WS)) /= 0) else '0';
    ADD_WB <= i_RF_WS;
    RD1 <= i_RF_DATA_O1;
    RD2 <= i_RF_DATA_O2;

    RF: windowing_rf generic map( 
        NBIT_DATA => N_BIT_DATA, 
        NBIT_ADD => N_BIT_ADDR_RF,  
        M => 8,          
        N => (2**N_BIT_ADDR_RF - 8)/3,      -- 8 if N_BIT_ADDR_RF=32
        F => 5
    ) port map(
        CLK => Clk,
        RESET => Rst,
        ENABLE => '1',
        RD1 => RF1,
        RD2 => RF2,
        WR => i_WF,
        ADD_WR => i_RF_WS,
        ADD_RD1 => RS1, 
        ADD_RD2 => RS2,
        DATAIN => i_RF_DATA_IN,
        OUT1 => i_RF_DATA_O1,
        OUT2 => i_RF_DATA_O2,
        CALL => CALL,
        RET => RET,
        FILL => i_RFFILL,
        SPILL => i_RFSPILL,
        BUS_TOMEM => RF_BUS_TOMEM,
        BUS_FROMEM => RF_BUS_FROMEM
    );

    --
    --  WindowRF Control UNIT
    --
    FILL <= i_RFFILL;
    SPILL <= i_RFSPILL;
    
    WRF_CUhw: wRF_CU generic map(
        N_BIT_MEM_ADDR => N_BIT_RF_MEM_ADDR,
        MEM_DATAWIDTH => N_BIT_DATA
    ) port map(
        CLK => Clk,
        RST => Rst,
        FILL => i_RFFILL, 
        SPILL => i_RFSPILL,
        TOMEM => RF_BUS_TOMEM,
        FROMEM => RF_BUS_FROMEM,
        MEMADDR => RF_MEM_ADDR,
        RM => RF_MEM_RM,
        WM => RF_MEM_WM
    );

    -- 
    -- REGISTER A --
    --
    REG_A: reg_generic generic map(
        N => N_BIT_DATA,
        RSTVAL => 0
    ) port map(
        D => i_RF_DATA_O1,
        Q => i_PIPLIN_A,
        Clk => Clk,
        Rst => Rst,
        Enable => EN1
    );

    -- 
    -- REGISTER B --
    --
    REG_B: reg_generic generic map(
        N => N_BIT_DATA,
        RSTVAL => 0
    ) port map(
        D => i_RF_DATA_O2,         
        Q => i_PIPLIN_B, 
        Clk => Clk,       
        Rst => Rst,     
        Enable => EN1
    );

    -- 
    -- REGISTER IN1 --
    --
    REG_IN1: reg_generic generic map(
        N => N_BIT_DATA,
        RSTVAL => 0
    ) port map(
        D => INP1,       
        Q => i_PIPLIN_IN1,
        Clk => Clk,       
        Rst => Rst,      
        Enable => EN1  
    );


    -- 
    -- REGISTER IN2 --
    --
    REG_IN2: reg_generic generic map(
        N => N_BIT_DATA,
        RSTVAL => 0
    ) port map(
        D => INP2,    
        Q => i_PIPLIN_IN2,        
        Clk => Clk,       
        Rst => Rst,        
        Enable => EN1   
    );
    
    
    --
    --  MUX IN1/A
    --
    MUX_IN1_A: mux2_1 generic map(
        NBIT => N_BIT_DATA
    ) port map(
        a => i_PIPLIN_IN1,
        b => i_PIPLIN_A,
        s => S1,
        y => i_ALU_IN_A
    );

    --
    --  MUX IN2/B
    --
    MUX_IN1_B: mux2_1 generic map(
        NBIT => N_BIT_DATA
    ) port map(
        a => i_PIPLIN_IN2,
        b => i_PIPLIN_B,
        s => S2,
        y => i_ALU_IN_B
    );


    --
    --  REG COMPARATOR for seqi, snei, slti, sgti, slei, sge
    --
    REG_CMP: reg_generic generic map(
        N => 2,
        RSTVAL => 0
    ) port map(
        D => LGET,   
        Q => i_LGET,
        Clk => Clk,       
        Rst => Rst,     
        Enable => EN1
    );

    --
    --  SET COMPARATOR for seqi, snei, slti, sgti, slei, sge
    --
    SETCMP: set_comparator generic map(
        N_BIT_DATA => N_BIT_DATA
    ) port map(
        LGET => i_LGET,
        SEL_LGET => SEL_LGET, 
        SET_OUT => i_SETCMP_OUT
    );
    


    --
    --  ALU
    --
    ALUhw: ALU generic map(
        N_BIT_DATA => N_BIT_DATA,
        N_OPSEL => N_OPSEL
    ) port map(
        INA => i_ALU_IN_A,
        INB => i_ALU_IN_B,
        OP => ALU_OP,
        Y => i_ALU_OUT,
        COUT => ALU_COUT
    );

    -- 
    -- MUX ALU/SETCMP --
    --
    MUX_ALU_SETCMP: mux2_1 generic map(
        NBIT => N_BIT_DATA
    ) port map(
        a => i_SETCMP_OUT,
        b => i_ALU_OUT,
        s => SEL_ALU_SETCMP,
        y => i_MUX_ALU_SETCMP
    );

    -- 
    -- REGISTER ALU_OUT --
    --
    DATAMEM_ADDR <= i_REG_ALU_OUT_ADDRESS_DATAMEM(DATAMEM_ADDR'range);

    REG_ALU_OUT: reg_generic generic map(
        N => N_BIT_DATA,
        RSTVAL => 0
    ) port map(
        D => i_MUX_ALU_SETCMP,        
        Q => i_REG_ALU_OUT_ADDRESS_DATAMEM,
        Clk => Clk,       
        Rst => Rst,     
        Enable => EN2
    );


    -- 
    -- REGISTER ME --
    --

    REG_ME: reg_generic generic map(
        N => N_BIT_DATA,
        RSTVAL => 0
    ) port map(
        D => i_PIPLIN_B,   
        Q => i_REG_ME_DATA_DATAMEM,
        Clk => Clk,       
        Rst => Rst,     
        Enable => EN2
    );




    MUX_LDSTR: mux2_1 generic map(
        NBIT => N_BIT_DATA
    ) port map(
        a => DATAMEM_BUS_FROMEM,
        b => i_REG_ME_DATA_DATAMEM,
        s => RWM,
        y => i_DATA_RAW
    );

    -- 
    -- LDSTR
    --
    DATAMEM_BUS_TOMEM <= i_LDSTR_OUT;
    
    LDSTR: datamem_ldstr generic map (
        N_BIT_DATA => N_BIT_DATA
    ) port map( 
        DATA_RAW => i_DATA_RAW,
        DATA_SIZE => DATA_SIZE,
        UNSIG_SIGN_N => UNSIG_SIGN_N,
        DATA_OUT => i_LDSTR_OUT
    );

    
    -- 
    -- PIPELINE: MEM STAGE -- LDSTR OUT --
    --
    REG_MEM_LDSTR_OUT: reg_generic generic map(
        N => N_BIT_DATA,
        RSTVAL => 0
    ) port map(
        D => i_LDSTR_OUT,   
        Q => i_REG_LDSTR_OUT,                  
        Clk => Clk,       
        Rst => Rst,     
        Enable => EN3
    );

    
    -- 
    -- PIPELINE: MEM STAGE -- ALU OUT --
    --
    REG_MEM_ALUOUT: reg_generic generic map(
        N => N_BIT_DATA,
        RSTVAL => 0
    ) port map(
        D => i_REG_ALU_OUT_ADDRESS_DATAMEM,   
        Q => i_REG_MEM_ALUOUT,               
        Clk => Clk,       
        Rst => Rst,     
        Enable => EN3
    );

    
    --
    --  MUX STAGE 3
    --
    i_RF_DATA_IN <= i_MUX_STAGE3_REG_OUT;

    MUX_STAGE_3: mux2_1 generic map(
        NBIT => N_BIT_DATA
    ) port map(
        a => i_REG_LDSTR_OUT,
        b => i_REG_MEM_ALUOUT,
        s => S3,
        y => i_MUX_STAGE3_REG_OUT
    );

    -- 
    -- REGISTER OUT --
    --
    REG_OUT: reg_generic generic map(
        N => N_BIT_DATA,
        RSTVAL => 0
    ) port map(
        D => i_MUX_STAGE3_REG_OUT,   
        Q => i_REG_DATAOUT,                  -- TODO: Check if correct
        Clk => Clk,       
        Rst => Rst,     
        Enable => EN3
    );

    -- 
    -- WRB 1 --
    --
    WRB1: reg_generic generic map(
        N => N_BIT_ADDR_RF,
        RSTVAL => 0
    ) port map(
        D => WS1,   
        Q => i_PIPLIN_WRB1,                  
        Clk => Clk,       
        Rst => Rst,     
        Enable => EN1
    );


    -- 
    -- WRB 2 --
    --
    WRB2: reg_generic generic map(
        N => N_BIT_ADDR_RF,
        RSTVAL => 0
    ) port map(
        D => i_PIPLIN_WRB1,   
        Q => i_PIPLIN_WRB2,                  
        Clk => Clk,
        Rst => Rst,
        Enable => EN2
    );

        -- 
    -- WRB 3 --
    --
    WRB3: reg_generic generic map(
        N => N_BIT_ADDR_RF,
        RSTVAL => 0
    ) port map(
        D => i_PIPLIN_WRB2,   
        Q => i_RF_WS,                  
        Clk => Clk,
        Rst => Rst,
        Enable => EN3
    );


end structural;
