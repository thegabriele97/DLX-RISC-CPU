library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity DLX is
	generic (
		IR_SIZE      : integer := 32;       -- Instruction Register Size
		PC_SIZE      : integer := 32;       -- Program Counter Size
		RAM_DEPTH	 : integer := 10		-- Number of bits for RAM
	);       -- ALU_OPC_SIZE if explicit ALU Op Code Word Size
	port (
		Clk : in std_logic;
		Rst : in std_logic		-- Active high
	);                
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
		generic (
			RAM_DEPTH : integer := 48;
			I_SIZE : integer := 32
		);
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
			FUNC_SIZE          	: integer := 11; -- Func Field Size for R-Type Ops
			OP_CODE_SIZE       	: integer := 6; -- Op Code Size
			IR_SIZE 			: integer := 32 -- Instruction Register Size    
		);
		port (
			Clk 			: in std_logic; -- Clock
			Rst 			: in std_logic; -- Reset:Active-Low

			-- Instruction Register
			IR_IN 			: in std_logic_vector(IR_SIZE - 1 downto 0);

			HAZARD_SIG		: in std_logic; 	-- Data Hazard signal from ID
			BUSY_WINDOW		: in std_logic;		-- Signal about R8..R31 still not wrote back (instructions still in the pipeline)
			SPILL			: in std_logic;		-- PUSH to memory
			FILL 			: in std_logic;		-- POP from memory


			-- IF Control Signals
			PIPLIN_IF_EN  	: out std_logic; -- Instruction Register Latch Enable
			IF_STALL		: out std_logic;
			PC_EN 			: out std_logic;
			JUMP_EN      	: out std_logic; 	-- JUMP Enable Signal for PC input MUX
			
			-- ID Control Signals
			CALL 			: out std_logic;
			RET				: out std_logic;
			SEL_CMPB		: out std_logic;
			UNSIGNED_ID		: out std_logic;
			NPC_SEL	        : out std_logic;
			HAZARD_TABLE_WR1: out std_logic;		-- Inhibition of Hazard Control on the current DEST ADDRESS of the INSTR
			PIPLIN_ID_EN 	: out std_logic;		-- ID Pipeline Stage Enable
			LGET			: in std_logic_vector(1 downto 0);	-- From Decode Comparator

			-- EX Control Signals
			PIPLIN_EX_EN 	: out std_logic; 	-- ALU Output Register Enable
			MUXA_SEL      	: out std_logic; 	-- MUX-A Sel
			MUXB_SEL      	: out std_logic; 	-- MUX-B Sel
			ALU_OPCODE 	  	: out alu_op_sig_t; -- ALU OP to execute
			SEL_ALU_SETCMP	: out std_logic;
			SEL_LGET		: out std_logic_vector(2 downto 0);

			-- MEM Control Signals
			DRAM_WE      	: out std_logic; 					-- Data RAM Write Enable
			DRAM_RE      	: out std_logic; 					-- Data RAM Read Enable
			DATA_SIZE		: out std_logic_vector(1 downto 0);	-- word, half, byte
			UNSIG_SIGN_N	: out std_logic;
			PIPLIN_MEM_EN   : out std_logic; 					-- LMD Register Latch Enable

			-- WB Control signals
			WB_MUX_SEL 		: out std_logic; 	-- Write Back MUX Sel
			PIPLIN_WB_EN    : out std_logic; 	-- Register File Write Enable

			RF_RD1_EN		: out std_logic;
			RF_RD2_EN		: out std_logic
		);
    end component;
  
	component decode is
		generic (
			N_BIT_INSTR:    integer := 32;
			N_BIT_ADDR_RF:  integer := 5;
			N_BIT_DATA:     integer := 32;
			OPCODE_SIZE:    integer := 6;  -- Operation Code Size
			PC_SIZE:        integer := 32
    	);
    	port (
			CLK:                in std_logic;
			RST:                in std_logic;
			INSTR:              in std_logic_vector(N_BIT_INSTR - 1 downto 0);      -- Instruction
			ADD_WB:             in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);      -- Address for the write back
			CPC:                in std_logic_vector(PC_SIZE-1 downto 0);            -- Current program counter
			RD1:                in std_logic_vector(N_BIT_DATA-1 downto 0);         -- Data coming from the read port 1 of the Data Path
			RD2:                in std_logic_vector(N_BIT_DATA-1 downto 0);         -- Data coming from the read port 2 of the Data Path
			RF2:                in std_logic;                                       -- RF Read Port 2 Enable signal
			HAZARD_TABLE_WR1:   in std_logic;                                       -- CU signal to enable Hazard Ctrl on the current RF WR address    
			WB_EN:              in std_logic;            
			PIPLIN_ID_EN:       in std_logic;
			JUMP_EN:            in std_logic;
			SEL_CMPB:           in std_logic;
        	UNSIGNED_ID:        in std_logic;
			NPC_SEL:            in std_logic;
			BUSY_WINDOW:        out std_logic;
			HAZARD_SIG:         out std_logic;
			ADD_RS1:            out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address 1 that goes in the register file
			ADD_RS2:            out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address 2 that goes in the register file
			ADD_WS1:            out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address for the write back that goes in the register file
			INP1:               out std_logic_vector(N_BIT_DATA-1 downto 0);
			INP2:               out std_logic_vector(N_BIT_DATA-1 downto 0);
			NPC:                out std_logic_vector(PC_SIZE-1 downto 0);           -- Next program counter
			PC_OVF:             out std_logic;                                      -- Signal for PC overflow
			LGET:               out std_logic_vector(1 downto 0)                    -- Comparator output towards CU and DP
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

			-- Data Memory Control Signals
			RWM:            in std_logic;                     -- Data memory read/write enable signal: 1 read, 0 write
			DATA_SIZE:      in std_logic_vector(1 downto 0);  -- Signal to decide how many bits to extend the data for the load/store
			UNSIG_SIGN_N:   in std_logic;                     -- Signal to decide if the load/store is unsigned or not: 1 unsigned, 0 signed
			
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
    end component;

	component DRAM is
		generic (
			N_BIT_DATA: integer := 32;
			LOG_RAM_DEPTH : integer := 48
		);
		port(
			Clk         : in std_logic;
			Rst         : in std_logic;
			RM          : in std_logic;     -- Read memory signal
			WM          : in std_logic;     -- Write memory signal
			EN          : in std_logic;
        	DATA_SIZE   : in std_logic_vector(1 downto 0);    
			address     : in std_logic_vector(LOG_RAM_DEPTH-1 downto 0);        
			data_in     : in std_logic_vector(N_BIT_DATA-1 downto 0);
			data_out    : out std_logic_vector(N_BIT_DATA-1 downto 0)
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
	signal i_INP1: std_logic_vector(IR_SIZE - 1 downto 0);
	signal i_INP2: std_logic_vector(IR_SIZE - 1 downto 0);

	-- -- Control Unit
	signal i_PC_OVF: std_logic;
	signal i_BUSY_WINDOW: std_logic;
	signal i_SEL_ALU_SETCMP: std_logic;
	signal i_HAZARD_TABLE_WR1: std_logic;
	signal i_CALL: std_logic;
	signal i_RET: std_logic;
	signal i_NPC_SEL: std_logic;
	signal i_UNSIGNED_ID: std_logic;
    signal i_SEL_CMPB: std_logic;

	-- -- Control Unit Bus signals
	signal i_ALU_OP: std_logic_vector(ALU_ADD'length-1 downto 0);
	signal i_HAZARD_SIG_CU: std_logic;
	signal i_ALU_COUT: std_logic;
	signal i_IR_LATCH_EN: std_logic;
	signal i_IR_STALL: std_logic;
	signal i_PC_LATCH_EN: std_logic;
	signal i_SEL_LGET: std_logic_vector(set_op_sig_t'length-1 downto 0);

	-- -- Pipeline Enable Signals
    signal i_EN1: std_logic;
    signal i_EN2: std_logic; 
    signal i_EN3: std_logic;

	-- -- RF Control Signals
	signal i_RF1: std_logic;
	signal i_RF2: std_logic;
	signal i_WF: std_logic;

	-- -- JUMP / BRANCH Control Signals
	signal i_JUMP_EN: std_logic;
	signal i_LGET: std_logic_vector(1 downto 0);

	-- -- RF Data Signals
	signal i_RD1: std_logic_vector(IR_SIZE-1 downto 0);
	signal i_RD2: std_logic_vector(IR_SIZE-1 downto 0);

    -- -- Multiplexer selector
    signal i_S1: std_logic; 
    signal i_S2: std_logic; 
    signal i_S3: std_logic;

	-- -- Data Memory Bus Signals
    signal i_DATAMEM_ADDR: std_logic_vector(RAM_DEPTH - 1 downto 0);
    signal i_DATAMEM_BUS_FROMEM: std_logic_vector(IR_SIZE - 1 downto 0);
    signal i_DATAMEM_BUS_TOMEM: std_logic_vector(IR_SIZE - 1 downto 0);
    
	signal i_DATAMEM_RM: std_logic;
	signal i_DATAMEM_WM: std_logic;
	
	signal i_RF_MEM_ADDR: std_logic_vector(RAM_DEPTH - 1 downto 0);
    signal i_RF_BUS_FROMEM: std_logic_vector(IR_SIZE - 1 downto 0);
    signal i_RF_BUS_TOMEM: std_logic_vector(IR_SIZE - 1 downto 0); 
    
	signal i_RF_MEM_RM: std_logic;
    signal i_RF_MEM_WM: std_logic;

	signal i_DATA_SIZE: std_logic_vector(1 downto 0);
	signal i_UNSIG_SIGN_N: std_logic;

    
	-- -- Data Memory signal
	signal i_FILL: std_logic;
	signal i_SPILL: std_logic;

begin  -- DLX

    -- purpose: Instruction Register Process
    -- type   : sequential
    -- inputs : Clk, Rst, IRam_DOut, IR_LATCH_EN_i
    -- outputs: IR_IN_i
    IR_P: process (Clk, Rst)
    begin  -- process IR_P
		if Rst = '1' then
			IR <= x"54000000";
		elsif rising_edge(Clk) then  -- rising clock edge

			if (i_IR_LATCH_EN = '1') then
				
				IR <= IRam_DOut;
				if (i_IR_STALL = '1') then
					IR <= x"54000000";		-- NOP
				end if;
			
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
    CU_I: dlx_cu generic map (
		FUNC_SIZE =>  IR_SIZE-OPCODE_SIZE-3*N_BIT_ADDR_RF,
		OP_CODE_SIZE => OPCODE_SIZE,
		IR_SIZE => IR_SIZE
	) port map (
		Clk             => CLk,
		Rst             => Rst,
		IR_IN           => IR,
		HAZARD_SIG      => i_HAZARD_SIG_CU,
		BUSY_WINDOW		=> i_BUSY_WINDOW,
		SPILL 			=> i_SPILL,
		FILL			=> i_FILL,
		PIPLIN_IF_EN    => i_IR_LATCH_EN,
		IF_STALL		=> i_IR_STALL,
		PC_EN			=> i_PC_LATCH_EN,
		CALL 			=> i_CALL,
		RET 			=> i_RET,
		SEL_CMPB		=> i_SEL_CMPB,
		UNSIGNED_ID		=> i_UNSIGNED_ID,
		NPC_SEL 		=> i_NPC_SEL,
		PIPLIN_ID_EN 	=> i_EN1,
		JUMP_EN			=> i_JUMP_EN,
		HAZARD_TABLE_WR1=> i_HAZARD_TABLE_WR1,
		LGET			=> i_LGET,
		PIPLIN_EX_EN	=> i_EN2,
		MUXA_SEL		=> i_S1,
		MUXB_SEL		=> i_S2,
		ALU_OPCODE		=> i_ALU_OP,
		SEL_ALU_SETCMP	=> i_SEL_ALU_SETCMP,
		SEL_LGET		=> i_SEL_LGET,
		DRAM_WE			=> i_DATAMEM_WM,
		DRAM_RE			=> i_DATAMEM_RM,
		DATA_SIZE		=> i_DATA_SIZE,
		UNSIG_SIGN_N 	=> i_UNSIG_SIGN_N,
		PIPLIN_MEM_EN 	=> i_EN3,
		WB_MUX_SEL		=> i_S3,
		PIPLIN_WB_EN	=> i_WF,
		RF_RD1_EN		=> i_RF1,
		RF_RD2_EN		=> i_RF2
	);

    -- Instruction Ram Instantiation
    IRAM_I: IRAM generic map(
		RAM_DEPTH => 2**RAM_DEPTH,
		I_SIZE => IR_SIZE
	) port map (
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
		RD1 => i_RD1,
		RD2 => i_RD2,
		RF2 => i_RF2,
		HAZARD_TABLE_WR1 => i_HAZARD_TABLE_WR1,
		WB_EN => i_WF,
		PIPLIN_ID_EN => i_EN1,
		JUMP_EN => i_JUMP_EN,
		SEL_CMPB => i_SEL_CMPB,
		UNSIGNED_ID => i_UNSIGNED_ID,
		NPC_SEL => i_NPC_SEL,
		BUSY_WINDOW => i_BUSY_WINDOW,
        HAZARD_SIG => i_HAZARD_SIG_CU, 
        ADD_RS1 => i_ADD_RS1,    
        ADD_RS2 => i_ADD_RS2,    
        ADD_WS1 => i_ADD_WS1,    
        INP1 => i_INP1,
        INP2 => i_INP2,
		NPC => PC_BUS,
		PC_OVF => i_PC_OVF,
		LGET => i_LGET
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
		RD1 => i_RD1,
		RD2 => i_RD2,
        RF1 => i_RF1,
        RF2 => i_RF2,
        WF => i_WF,									
        RF_BUS_TOMEM => i_RF_BUS_TOMEM,
        RF_BUS_FROMEM => i_RF_BUS_FROMEM,
        RF_MEM_ADDR => i_RF_MEM_ADDR,
        RF_MEM_RM => i_RF_MEM_RM,
        RF_MEM_WM => i_RF_MEM_WM,
		RWM => i_DATAMEM_RM,		
        DATA_SIZE =>  i_DATA_SIZE,
        UNSIG_SIGN_N => i_UNSIG_SIGN_N,			
        CALL => i_CALL,
        RET => i_RET,
        FILL => i_FILL,
        SPILL => i_SPILL,
        INP1 => i_INP1,
        INP2 => i_INP2,
        S1 => i_S1,
        S2 => i_S2,
        ALU_OP => i_ALU_OP,
        ALU_COUT => i_ALU_COUT,
        SEL_ALU_SETCMP => i_SEL_ALU_SETCMP,
        LGET => i_LGET,
        SEL_LGET => i_SEL_LGET,
        S3 => i_S3,
        ADD_WB => i_ADD_WB
    );

	-- 		RM WM 	- 	RWM
	--   	0  0    	 -
	--   	0  1    	 0
	--   	1  0    	 1
	--   	1  1    	 -

	DRAM_I: DRAM generic map (
		N_BIT_DATA => IR_SIZE,
		LOG_RAM_DEPTH => RAM_DEPTH
	) port map(
		Clk => Clk,
        Rst => Rst,
		RM => i_DATAMEM_RM,
		WM => i_DATAMEM_WM,
		EN => i_EN3,
		DATA_SIZE => i_DATA_SIZE,					
		address => i_DATAMEM_ADDR,    
		data_in => i_DATAMEM_BUS_TOMEM,
		data_out => i_DATAMEM_BUS_FROMEM
	);

	DRAM_RF: DRAM generic map (
		N_BIT_DATA => IR_SIZE,
		LOG_RAM_DEPTH => RAM_DEPTH				-- 256 is enough
	) port map(
		Clk => Clk,
        Rst => Rst,
		RM => i_RF_MEM_RM,
		WM => i_RF_MEM_WM,
		EN => '1',
		DATA_SIZE => "00",						-- 32 bit
		address => i_RF_MEM_ADDR,    
		data_in => i_RF_BUS_TOMEM,
		data_out => i_RF_BUS_FROMEM
	);

end dlx_rtl;
