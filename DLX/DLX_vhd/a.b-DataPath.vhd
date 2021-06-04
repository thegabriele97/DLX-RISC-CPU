library ieee;
use ieee.std_logic_1164.all;

entity DP is

    generic (
        N_BIT_DATA      : integer := 32;    -- generic data path bit width
        N_BIT_ADDR_RF   : integer := 5;     -- address bit number
        N_OPSEL         : integer := 2      -- number of bit needed for the ALU operations
    );

    port (
        
        Clk :   in std_logic;     -- CLock
        Rst :   in std_logic;     -- Reset: Active-Low


        EN1 :  in std_logic     -- Enable stage 1 of the pipeline
        EN2 :  in std_logic     -- Enable stage 2 of the pipeline
        EN3 :  in std_logic     -- Enable stage 3 of the pipeline

        --
        --          REGISTER FILE
        --

        RS1 :   in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);    -- address PORT 1 of the register file
        RS2 :   in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);    -- address PORT 2 of the register file

        -- Our RF has two reading port and one writing port

        RF1 :   in std_logic;     -- Read enable port 1 of the register file
        RF2 :   in std_logic;     -- Read enable port 2 of the register file 
        WF  :   in std_logic;     -- Write enable of the register file
        

        -- Immediate value for the datapath 
        
        INP1:   in std_logic_vector(N_BIT_DATA - 1 downto 0); -- immediate 1
        INP2:   in std_logic_vector(N_BIT_DATA - 1 downto 0); -- immediate 2

        -- Used to manage the procedure call
        CALL:       in std_logic;
        RET:        in std_logic;
        RFFILL:     out std_logic; -- POP towards memory
        RFSPILL:    out std_logic; -- PUSH towards memory
        
        -- Bus to RF memory
        RF_BUS_TOMEM:   out std_logic_vector(NBIT_DATA - 1 downto 0); -- Data bus from the datapath to the memory
        RF_BUS_FROMEM:  in std_logic_vector(NBIT_DATA - 1 downto 0) -- Data bus from the memory to the datapath
    
        -- mux selector for ALU inputs
        S1: in std_logic; -- Selector for top mux, called mux A
        S2: in std_logic; -- Selector for bottom mux, called mux B
        
        --
        --  ALU
        --
        
        ALU: in std_logic_vector(N_OPSEL - 1 downto 0); -- Control signal for the ALU in order to decide the operation

        -- Mux selector for stage 3 of the pipeline
        S3: in std_logic; -- Selector for mux of stage 3

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

    --
    -- PIPELINE STAGE 1
    --
    signal i_RF_WS: std_logic_vector(N_BIT_ADDR_RF-1 downto 0); -- Write address for the register file
    signal i_RF_DATA_IN: std_logic_vector(NBIT_DATA-1 downto 0); -- WRITE BACK into RF
    signal i_RF_DATA_O1: std_logic_vector(NBIT_DATA-1 downto 0); -- output 1 of the register file that goes into register A
    signal i_RF_DATA_O2: std_logic_vector(NBIT_DATA-1 downto 0); -- output 2 of the register file that goes into register B

    signal i_PIPLIN_A: std_logic_vector(NBIT_DATA-1 downto 0); -- output of the register A that goes into MUX_IN1_A
    signal i_PIPLIN_B: std_logic_vector(NBIT_DATA-1 downto 0); -- output of the register B that goes into MUX_IN1_B
    signal i_PIPLIN_IN1: std_logic_vector(NBIT_DATA-1 downto 0); -- output of the register IN1 that goes into MUX_IN1_A
    signal i_PIPLIN_IN2: std_logic_vector(NBIT_DATA-1 downto 0); -- output of the register IN2 that goes into MUX_IN1_B

    --
    -- PIPELINE STAGE 2
    --
    signal i_ALU_IN_A: std_logic_vector(NBIT_DATA-1 downto 0); -- output of the multiplexer A that goes into the ALU
    signal i_ALU_IN_B: std_logic_vector(NBIT_DATA-1 downto 0); -- output of the multiplexer B that goes into the ALU
    signal i_ALU_OUT: std_logic_vector(NBIT_DATA-1 downto 0); -- output of the ALU that goes into the REG_ALU_OUT
    signal i_REG_ALU_OUT_ADDRESS_DATAMEM: std_logic_vector(NBIT_DATA-1 downto 0); -- output of the REG_ALU_OUT that goes into the address of the DATA_MEMORY
    signal i_REG_ME_DATA_DATAMEM: std_logic_vector(NBIT_DATA-1 downto 0); -- output of the REG_ME that goes into the data of the DATA_MEMORY


    --
    -- PIPELINE STAGE 3
    --
    signal i_MUX_STAGE3_REG_OUT: std_logic_vector(NBIT_DATA-1 downto 0);
    

begin


    -- R0....R7     GLOBAL
    -- R7....R15    IN
    -- R16...R24    LOCAL
    -- R25...R31    OUT

    -- 
    -- REGISTER FILE --
    --
    RF: windowing_rf generic map( 
        NBIT_DATA => N_BIT_DATA, 
        NBIT_ADD => N_BIT_ADDR_RF,  
        M => 8,          
        N => (2**N_BIT_ADDR_RF - 8)/3,      -- 8 if N_BIT_ADDR_RF=32
        F => 5
    ) port map(
        CLK => Clk,
        RESET => Rst,
        ENABLE => EN1,
        RD1 => RF1,
        RD2 => RF2,
        WR => WF,
        ADD_WR => i_RF_WS,
        ADD_RD1 => RS1, 
        ADD_RD2 => RS2,
        DATAIN => i_RF_DATA_IN,
        OUT1 => i_RF_DATA_O1,
        OUT2 => i_RF_DATA_O2,
        CALL => CALL,
        RET => RET,
        FILL => RFFILL,
        SPILL => RFSPILL,
        BUS_TOMEM => RF_BUS_TOMEM,
        BUS_FROMEM => RF_BUS_FROMEM
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
    -- REGISTER ALU_OUT --
    --
    REG_ALU_OUT: reg_generic generic map(
        N => N_BIT_DATA,
        RSTVAL => 0
    ) port map(
        D => i_ALU_OUT,        
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


        
    --
    --  MUX STAGE 3
    --
    MUX_STAGE_3: mux2_1 generic map(
        NBIT => N_BIT_DATA
    ) port map(
        a => i_REG_ALU_OUT_ADDRESS_DATAMEM,
        b => i_REG_ME_DATA_DATAMEM,
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
        Q => DATA_OUT,                  -- TODO: ????????? Check if correct
        Clk => Clk,       
        Rst => Rst,     
        Enable => EN3
    );



end structural;
