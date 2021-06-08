library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity DLX is
	generic (
		IR_SIZE      : integer := 32;       -- Instruction Register Size
		PC_SIZE      : integer := 32;       -- Program Counter Size
		RAM_DEPTH	 : integer := 10
	);       -- ALU_OPC_SIZE if explicit ALU Op Code Word Size
	port (
		Clk : in std_logic;
		Rst : in std_logic
	);                -- Active Low
end DLX;


-- This architecture is currently not complete
-- it just includes:
-- instruction register (complete)
-- program counter (complete)
-- instruction ram memory (complete)
-- control unit (UNCOMPLETE)
--
architecture dlx_rtl of DLX is

 --------------------------------------------------------------------
 -- Components Declaration
 --------------------------------------------------------------------
  
  --Instruction Ram
    component IRAM
--     generic (
--       RAM_DEPTH : integer;
--       I_SIZE    : integer);
	    port (
		    Rst  : in  std_logic;
		    Addr : in  std_logic_vector(PC_SIZE - 1 downto 0);
		    Dout : out std_logic_vector(IR_SIZE - 1 downto 0)
	    );
    end component;

  -- Data Ram (MISSING!You must include it in your final project!)
  
  -- Control Unit
    component dlx_cu
        generic (
            MICROCODE_MEM_SIZE :     integer := 10;  -- Microcode Memory Size
            FUNC_SIZE          :     integer := 11;  -- Func Field Size for R-Type Ops
            OP_CODE_SIZE       :     integer := 6;  -- Op Code Size
            --ALU_OPC_SIZE       :     integer := 6;  -- ALU Op Code Word Size
            IR_SIZE            :     integer := 32;  -- Instruction Register Size    
            CW_SIZE            :     integer := 15
        );  -- Control Word Size
        port (
            Clk                : in  std_logic;  -- Clock
            Rst                : in  std_logic;  -- Reset:Active-Low
            -- Instruction Register
            IR_IN              : in  std_logic_vector(IR_SIZE - 1 downto 0);
            -- IF Control Signal
            IR_LATCH_EN        : out std_logic;  -- Instruction Register Latch Enable
            NPC_LATCH_EN       : out std_logic;
            -- ID Control Signals
            RegA_LATCH_EN      : out std_logic;  -- Register A Latch Enable
            RegB_LATCH_EN      : out std_logic;  -- Register B Latch Enable
            RegIMM_LATCH_EN    : out std_logic;  -- Immediate Register Latch Enable
            -- EX Control Signals
            MUXA_SEL           : out std_logic;  -- MUX-A Sel
            MUXB_SEL           : out std_logic;  -- MUX-B Sel
            ALU_OUTREG_EN      : out std_logic;  -- ALU Output Register Enable
            EQ_COND            : out std_logic;  -- Branch if (not) Equal to Zero
            -- ALU Operation Code
            ALU_OPCODE         : out aluOp; -- choose between implicit or exlicit coding, like std_logic_vector(ALU_OPC_SIZE -1 downto 0);
            -- MEM Control Signals
            DRAM_WE            : out std_logic;  -- Data RAM Write Enable
            LMD_LATCH_EN       : out std_logic;  -- LMD Register Latch Enable
            JUMP_EN            : out std_logic;  -- JUMP Enable Signal for PC input MUX
            PC_LATCH_EN        : out std_logic;  -- Program Counte Latch Enable
            -- WB Control signals
            WB_MUX_SEL         : out std_logic;  -- Write Back MUX Sel
            RF_WE              : out std_logic
        );  -- Register File Write Enable

    end component;
  
	component decode is
		generic (
			N_BIT_INSTR:    integer := 32;
			N_BIT_ADDR_RF:  integer := 5;
			N_BIT_DATA:     integer := 32;            
			OPCODE_SIZE:    integer := 6;  -- Operation Code Size
			PC_SIZE      : integer := 32
		);
		port (
			CLK:        in std_logic;
			RST:        in std_logic;
			INSTR:      in std_logic_vector(N_BIT_INSTR - 1 downto 0);      -- Instruction
			ADD_WB:     in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);      -- 
			CPC:        in std_logic_vector(PC_SIZE-1 downto 0);
			HAZARD_SIG: out std_logic;
			ADD_RS1:    out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address 1 that goes in the register file
			ADD_RS2:    out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address 2 that goes in the register file
			ADD_WS1:    out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address for the write back that goes in the register file
			IMM:       	out std_logic_vector(N_BIT_DATA-1 downto 0);
			NPC:        out std_logic_vector(PC_SIZE-1 downto 0)
		);
	end component;


	component DP is 
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

			-- Our RF has two reading port and one writing port

			RF1 :   in std_logic;     -- Read enable port 1 of the register file
			RF2 :   in std_logic;     -- Read enable port 2 of the register file 
			WF  :   in std_logic;     -- Write enable of the register file

			-- RF PROC MEMORY
			RF_BUS_TOMEM:  out std_logic_vector(N_BIT_DATA - 1 downto 0); -- Data bus from the datapath to the RF memory
			RF_BUS_FROMEM: in std_logic_vector(N_BIT_DATA - 1 downto 0); -- Data bus from the RF memory to the datapath
			RF_MEM_ADDR:   out std_logic_vector(N_BIT_RF_MEM_ADDR-1 downto 0); -- Address of the RF memory
			RF_MEM_RM: out std_logic;
			RF_MEM_WM: out std_logic; -- TODO: comments here
			
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
			A_LE_B: out std_logic;      -- A less equal B 
			A_LT_B: out std_logic;      -- A less than B
			A_GT_B: out std_logic;      -- A greater that B
			A_GE_B: out std_logic;      -- A greater equal B
			A_EQ_B: out std_logic;      -- A equal B

			-- Mux selector for stage 3 of the pipeline
			S3: in std_logic; -- Selector for mux of stage 3

			ADD_WB: out std_logic_vector(N_BIT_ADDR_RF-1 downto 0)      -- Adress that goes into the hazard table that tells that we can execute the other operation
		);
    end component;

	----------------------------------------------------------------
	-- Constants Declaration
	----------------------------------------------------------------
	
	constant N_BIT_ADDR_RF: integer := 5; 
	constant OPCODE_SIZE: integer := 6;
	

	----------------------------------------------------------------
	-- Signals Declaration
	----------------------------------------------------------------
	
	-- Instruction Register (IR) and Program Counter (PC) declaration
	signal IR : std_logic_vector(IR_SIZE - 1 downto 0);
	signal PC : std_logic_vector(PC_SIZE - 1 downto 0);

	-- Instruction Ram Bus signals
	signal IRam_DOut : std_logic_vector(IR_SIZE - 1 downto 0);

	-- Datapath Bus signals
	signal PC_BUS : std_logic_vector(PC_SIZE -1 downto 0);
	signal i_ADD_WB: std_logic_vector(N_BIT_ADDR_RF-1 downto 0);
	signal i_ADD_RS1: std_logic_vector(N_BIT_ADDR_RF-1 downto 0);
	signal i_ADD_RS2: std_logic_vector(N_BIT_ADDR_RF-1 downto 0);
	signal i_ADD_WS1: std_logic_vector(N_BIT_ADDR_RF-1 downto 0);
	signal i_IMM: std_logic_vector(IR_SIZE - 1 downto 0);

	
	-- Control Unit Bus signals
	signal i_HAZARD_SIG_CU: std_logic;
	signal i_ALU_OP: std_logic_vector(ALU_ADD'length-1 downto 0);
	signal i_ALU_COUT: std_logic;
	signal i_IR_LATCH_EN: std_logic;
	signal i_PC_LATCH_EN: std_logic;

	-- -- Pipeline Enable Signals
    signal i_EN1: std_logic;
    signal i_EN2: std_logic; 
    signal i_EN3: std_logic;

	-- -- RF Control Signals
	signal i_RF1: std_logic;
	signal i_RF2: std_logic;
	signal i_WF: std_logic;

	-- -- ALU Status Signals
    signal i_A_EQ_B: std_logic;
    signal i_A_GE_B: std_logic; 
    signal i_A_GT_B: std_logic;
    signal i_A_LT_B: std_logic; 
    signal i_A_LE_B: std_logic;

    -- -- Multiplexer selector
    signal i_S1: std_logic; 
    signal i_S2: std_logic; 
    signal i_S3: std_logic;

	-- -- Data Memory Bus Signals
    signal i_DATAMEM_BUS_FROMEM: std_logic_vector(IR_SIZE - 1 downto 0);
    signal i_DATAMEM_BUS_TOMEM: std_logic_vector(IR_SIZE - 1 downto 0);
    signal i_RF_BUS_FROMEM: std_logic_vector(IR_SIZE - 1 downto 0);
    signal i_RF_BUS_TOMEM: std_logic_vector(IR_SIZE - 1 downto 0); 
    signal i_DATAMEM_ADDR: std_logic_vector(RAM_DEPTH - 1 downto 0);
    signal i_RF_MEM_ADDR: std_logic_vector(RAM_DEPTH - 1 downto 0);
    signal i_RF_MEM_RM: std_logic;
    signal i_RF_MEM_WM: std_logic;
    
	-- -- Data Memory signal
	signal i_FILL: std_logic;
	signal i_SPILL: std_logic;

begin  -- DLX

	-- TODO: to remove
	i_IR_LATCH_EN <= '1';
	i_PC_LATCH_EN <= '1';

    -- This is the input to program counter: currently zero 
    -- so no uptade of PC happens
    -- TO BE REMOVED AS SOON AS THE DATAPATH IS INSERTED!!!!!
    -- a proper connection must be made here if more than one
    -- instruction must be executed
    
	--PC_BUS <= (others => '0'); 
	--PC_BUS <= (others => '0'); 


    -- purpose: Instruction Register Process
    -- type   : sequential
    -- inputs : Clk, Rst, IRam_DOut, IR_LATCH_EN_i
    -- outputs: IR_IN_i
    IR_P: process (Clk, Rst)
    begin  -- process IR_P
		if Rst = '1' then
			IR <= (others => '0');
		elsif rising_edge(Clk) then  -- rising clock edge
			if (i_IR_LATCH_EN = '1') then
				IR <= IRam_DOut;
			end if;
		end if;
    end process IR_P;


    -- purpose: Program Counter Process
    -- type   : sequential
    -- inputs : Clk, Rst, PC_BUS
    -- outputs: IRam_Addr
    PC_P: process (Clk, Rst)
    begin  -- process PC_P
		if Rst = '1' then
			PC <= (others => '0');
		elsif rising_edge(Clk) then  -- rising clock edge
			if (i_PC_LATCH_EN = '1') then
				PC <= PC_BUS;
			end if;
		end if;
    end process PC_P;

    -- Control Unit Instantiation
    -- CU_I: dlx_cu port map (
	-- 	Clk             => Clk,
	-- 	Rst             => Rst,
	-- 	IR_IN           => IR,
	-- 	IR_LATCH_EN     => IR_LATCH_EN_i,
	-- 	NPC_LATCH_EN    => NPC_LATCH_EN_i,
	-- 	RegA_LATCH_EN   => RegA_LATCH_EN_i,
	-- 	RegB_LATCH_EN   => RegB_LATCH_EN_i,
	-- 	RegIMM_LATCH_EN => RegIMM_LATCH_EN_i,
	-- 	MUXA_SEL        => MUXA_SEL_i,
	-- 	MUXB_SEL        => MUXB_SEL_i,
	-- 	ALU_OUTREG_EN   => ALU_OUTREG_EN_i,
	-- 	EQ_COND         => EQ_COND_i,
	-- 	ALU_OPCODE      => ALU_OPCODE_i,
	-- 	DRAM_WE         => DRAM_WE_i,
	-- 	LMD_LATCH_EN    => LMD_LATCH_EN_i,
	-- 	JUMP_EN         => JUMP_EN_i,
	-- 	PC_LATCH_EN     => PC_LATCH_EN_i,
	-- 	WB_MUX_SEL      => WB_MUX_SEL_i,
	-- 	RF_WE           => RF_WE_i
	-- );

    -- Instruction Ram Instantiation
    IRAM_I: IRAM port map (
		Rst  => Rst,
		Addr => PC,
		Dout => IRam_DOut
	);

	DECODEhw: decode generic map(
		N_BIT_INSTR => IR_SIZE,
		N_BIT_ADDR_RF => N_BIT_ADDR_RF,
		N_BIT_DATA => IR_SIZE,  
		OPCODE_SIZE => OPCODE_SIZE,
		PC_SIZE => PC_SIZE
	) port map (
        CLK => Clk,       
        RST => Rst,        
        INSTR => IR,      
        ADD_WB => i_ADD_WB,
		CPC => PC,
        HAZARD_SIG => i_HAZARD_SIG_CU, 
        ADD_RS1 => i_ADD_RS1,    
        ADD_RS2 => i_ADD_RS2,    
        ADD_WS1 => i_ADD_WS1,    
        IMM => i_IMM,
		NPC => PC_BUS
	);


    DataPath: DP generic map(
        N_BIT_DATA => IR_SIZE,    
        N_BIT_ADDR_RF => N_BIT_ADDR_RF,
        N_OPSEL => ALU_OPSEL,
        N_BIT_MEM_ADDR => RAM_DEPTH,
        N_BIT_RF_MEM_ADDR => RAM_DEPTH
    ) port map(
        Clk => Clk,
        Rst => Rst,
        EN1 => i_EN1,
        EN2 => i_EN2,
        EN3 => i_EN3,
        DATAMEM_BUS_TOMEM => i_DATAMEM_BUS_TOMEM,
        DATAMEM_BUS_FROMEM => i_DATAMEM_BUS_FROMEM,
        DATAMEM_ADDR => i_DATAMEM_ADDR,
        RS1 => i_ADD_RS1,
        RS2 => i_ADD_RS2,
        WS1 => i_ADD_WS1,
        RF1 => i_RF1,
        RF2 => i_RF2,
        WF => i_WF,
        RF_BUS_TOMEM => i_RF_BUS_TOMEM,
        RF_BUS_FROMEM => i_RF_BUS_FROMEM,
        RF_MEM_ADDR => i_RF_MEM_ADDR,
        RF_MEM_RM => i_RF_MEM_RM,
        RF_MEM_WM => i_RF_MEM_WM,
        CALL => '0', -- TODO
        RET => '0', -- TODO
        FILL => i_FILL,
        SPILL => i_SPILL,
        INP1 => i_IMM,
        INP2 => i_IMM,
        S1 => i_S1,
        S2 => i_S2,
        ALU_OP => i_ALU_OP,
        ALU_COUT => i_ALU_COUT,
        A_LE_B => i_A_LE_B,
        A_LT_B => i_A_LT_B,
        A_GT_B => i_A_GT_B,
        A_GE_B => i_A_GE_B,
        A_EQ_B => i_A_EQ_B,
        S3 => i_S3,
        ADD_WB => i_ADD_WB
    );

end dlx_rtl;
