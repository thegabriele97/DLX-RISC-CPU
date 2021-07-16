library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;
use work.record_CU.all;

entity dlx_cu is
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
		IRAM_READY		: in std_logic;
		PIPLIN_IF_EN  	: out std_logic; -- Instruction Register Latch Enable
		IF_STALL		: out std_logic;
		PC_EN 			: out std_logic;
		JUMP_EN      	: out std_logic; 	-- JUMP Enable Signal for PC input MUX
		
		-- ID Control Signals
		CALL 			: out std_logic;
		RET				: out std_logic;
		SEL_CMPB		: out std_logic;
		UNSIGNED_ID		: out std_logic;
		NPC_SEL       	: out std_logic;
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
		DRAM_READY		: in std_logic;						-- Data RAM Ready Signal
		DRAM_WE      	: out std_logic; 					-- Data RAM Write Enable
		DRAM_RE      	: out std_logic; 					-- Data RAM Read Enable
		DRAM_ME			: out std_logic;					-- Memory enable signal
		DATA_SIZE		: out std_logic_vector(1 downto 0);	-- word, half, byte
		UNSIG_SIGN_N	: out std_logic;
		PIPLIN_MEM_EN   : out std_logic; 					-- LMD Register Latch Enable

		-- WB Control signals
		WB_MUX_SEL 		: out std_logic; 	-- Write Back MUX Sel
		PIPLIN_WB_EN    : out std_logic; 	-- Register File Write Enable

		RF_RD1_EN		: out std_logic;
		RF_RD2_EN		: out std_logic
	);
end dlx_cu;

architecture dlx_cu_hw of dlx_cu is
	
	constant MICROCODE_MEM_SIZE: integer := 62; -- Microcode Memory Size
	 
	type mem_array is array (0 to MICROCODE_MEM_SIZE - 1) of control_word_t;

	constant cw_memory: mem_array := (
		RECORD_RTYPE,	-- RTYPE 	(0x00)
		RECORD_VOID,	
		RECORD_J,		-- J 		(0x02)
		RECORD_JAL,		-- JAL 		(0x03)
		RECORD_BEQZ,	-- BEQZ		(0x04) 
		RECORD_BNEZ,	-- BNEZ		(0x05)
		RECORD_VOID,	
		RECORD_VOID,	
		RECORD_ADDI,	-- ADDI 	(0x08)
		RECORD_ADDUI,	-- ADDUI 	(0x09)
		RECORD_SUBI,	-- SUBI		(0x0a)
		RECORD_SUBUI,	-- SUBUI	(0x0b)
		RECORD_ANDI,	-- ANDI		(0x0c)
		RECORD_ORI,		-- ORI		(0x0d)
		RECORD_XORI,	-- XORI		(0x0e)
		RECORD_LHI,		-- LHI		(0x0f)
		RECORD_VOID,	
		RECORD_VOID,	
		RECORD_JR,		-- JR		(0x12)
		RECORD_JALR,	-- JALR		(0x13)
		RECORD_SLLI,	-- SLLI		(0x14)
		RECORD_NOP,		-- NOP		(0x15)
		RECORD_SRLI,	-- SRLI		(0x16)
		RECORD_SRAI,	-- SRAI		(0x17)
		RECORD_SEQI,	-- SEQI		(0x18)
		RECORD_SNEI,	-- SNEI		(0x19)
		RECORD_SLTI,	-- SLTI		(0x1a)
		RECORD_SGTI,	-- SGTI		(0x1b)
		RECORD_SLEI,	-- SLEI		(0x1c)
		RECORD_SGEI,	-- SGEI		(0x1d)
		RECORD_CALL,	-- CALL		(0x1e)
		RECORD_RET,		-- RET		(0x1f)
		RECORD_LB,		-- LB		(0x20)
		RECORD_LH,		-- LH		(0x21)
		RECORD_VOID,	
		RECORD_LW,		-- LW		(0x23)
		RECORD_LBU,		-- LBU		(0x24)
		RECORD_LHU,		-- LHU		(0x25)
		RECORD_VOID,	
		RECORD_VOID,	
		RECORD_SB,		-- SB		(0x28)
		RECORD_SH,		-- SH		(0x29)
		RECORD_VOID,	
		RECORD_SW,		-- SW		(0x2B)
		RECORD_VOID,	
		RECORD_VOID,	
		RECORD_VOID,	
		RECORD_VOID,	
		RECORD_BGT,		-- BGT		(0x30)
		RECORD_BGE,		-- BGE		(0x31)
		RECORD_BLT,		-- BLT		(0x32)
		RECORD_BLE,		-- BLE		(0x33)
		RECORD_TICKTMR,	-- TICKTMR	(0x34)
		RECORD_VOID,	
		RECORD_VOID,	
		RECORD_VOID,	
		RECORD_VOID,	
		RECORD_VOID,	
		RECORD_SLTUI,	-- SLTUI	(0x3a)
		RECORD_SGTUI,	-- SGTUI	(0x3b)
		RECORD_SLEUI,	-- SLEUI	(0x3c)
		RECORD_SGEUI	-- SGEUI	(0x3d)
	);
	
	
	signal IR_opcode : std_logic_vector(OP_CODE_SIZE-1 downto 0); -- OpCode part of IR
	signal IR_func   : std_logic_vector(FUNC_SIZE-1 downto 0); 	-- Func part of IR when Rtype
	
	signal CW  		: control_word_t; 		-- full control word read from cw_mem
	signal CW_IF 	: control_word_t; 		-- first stage
	signal CW_ID 	: control_word_t; 		-- second stage
	signal CW_EX 	: control_word_t; 		-- third stage
	signal CW_MEM 	: control_word_t; 		-- fourth stage
	signal CW_WB 	: control_word_t; 		-- fifth stage

	signal aluOpcode_i : alu_op_sig_t := ALU_ADD; -- alu_op_sig_t defined in package
	signal aluOpcode1  : alu_op_sig_t := ALU_ADD;

	signal setcmp_i: set_op_sig_t;
	signal setcmp_1: set_op_sig_t;

	signal sel_alu_setcmp_i: std_logic;
	signal sel_alu_setcmp_1: std_logic;

	signal i_SPILL_delay: std_logic;
	signal i_FILL_delay: std_logic;

	signal unsigned_i: std_logic;
	signal unsigned_1: std_logic;
	signal unsigned_2: std_logic;

	signal i_DRAM_NOTREADY: std_logic;
	signal i_JUMP_EN: std_logic;
	signal i_JUMP_EN_READY: std_logic;

begin

	IR_opcode(OP_CODE_SIZE - 1 downto 0) <= IR_IN(31 downto 26);
	IR_func(FUNC_SIZE - 1 downto 0)      <= IR_IN(FUNC_SIZE - 1 downto 0);

	CW <= cw_memory(TO_INTEGER(unsigned(IR_opcode)));
	
	
	-- IF control Signals
	PIPLIN_IF_EN 		<= CW_IF.fetch_en;
	--IF_STALL			<= CW_IF(CW_SIZE - 2);
	PC_EN 				<= CW_IF.pc_en or i_JUMP_EN_READY;
	-- JUMP_EN      	................ - 4
	
	-- ID Control Signals
	--CALL 				<= CW_ID(CW_ID'length - 1);
	--RET				<= CW_ID(CW_ID'length - 2);
	RF_RD1_EN			<= CW_ID.rf_rd1_en;
	RF_RD2_EN			<= CW_ID.rf_rd2_en;
	SEL_CMPB			<= CW_ID.sel_cmpb;
	-- UNSIGNED_ID			<= CW_ID(CW_ID'length - 6);
	NPC_SEL				<= CW_ID.npc_sel;
	HAZARD_TABLE_WR1	<= CW_ID.hazard_table_wr1;
	PIPLIN_ID_EN		<= CW_ID.id_en and not i_DRAM_NOTREADY;

	PIPLIN_EX_EN 		<= CW_EX.ex_en and not i_DRAM_NOTREADY;
	MUXA_SEL      		<= CW_EX.muxa_sel;
	MUXB_SEL      		<= CW_EX.muxb_sel;

	-- MEM control Signals
	DRAM_WE      		<= CW_MEM.dram_we;
	DRAM_RE	    		<= CW_MEM.dram_re;
	DATA_SIZE			<= CW_MEM.data_size;
	PIPLIN_MEM_EN 		<= CW_MEM.mem_en and not i_DRAM_NOTREADY;

	-- WB control Signals
	WB_MUX_SEL 			<= CW_WB.wb_mux_sel;
	PIPLIN_WB_EN    	<= CW_WB.wb_en;
	

	-- Signals outside the Control Word direct assignment
	DRAM_ME				<= (CW_MEM.dram_we or CW_MEM.dram_re) and CW_MEM.mem_en;
	JUMP_EN				<= i_JUMP_EN_READY;

	--
	--	This process allows to stop entirely the pipeline for the fetched instruction. Means that one of the conditions is true,
	--  all the pipeline registers are disabled (PC, IR, ID, EX, MEM, WB) for the instruction
	--	The stalled instruction is waiting in the Decode stage of the pipeline.
	--
	--	In particular we want this situation when:
	--	- a Data Hazard occurs,
	--	- We want to do a CALL and we have to wait for a SPILL to be completed (so SPILL = '1' means a JAL stalled in the ID stage
	--    and meanwhile the CALL signal will we high only for a cc. Then i_SPILL_delay will be = '1' at next cc so CALL will go to 0 and
	--    actually the CALL is stalled in the ID because immediately the SPILL rises to 1.
	--	  We want the CALL to be high only for a cc so we are ok (accomplished by JBRANCH_CTRL)). At the end of the SPILL, the process
	-- 	  below will free everything and the JAL will be executed (so a JUMP to the address of the CALL + saving in the current R31 the current PC)
	--	- We want to do a RET. In this case it corresponds to a JR (so a JUMP to the actual R31). Because it's a jump to the actual R31,
	--    we want to execute the JUMP immediately before the FILL starts. In fact we do it and we stall when i_FILL_delay = '1' that will be
	--	  1 cc later the jump so means that after this cc, we have i_FILL_delay = '1' and meanwhile a NOP is inserted in the pipeline. So now
	--	  we have a NOP stalled in the ID stage 'till i_FILL_delay = '0' so after the FILL will finish.
	--
	process(CW, HAZARD_SIG, IR_opcode, BUSY_WINDOW, i_FILL_delay, SPILL, i_DRAM_NOTREADY, IRAM_READY, i_JUMP_EN)
	begin
		
		i_JUMP_EN_READY <= i_JUMP_EN;

		CW_IF <= CW;
		if (IRAM_READY = '0') then
			CW_IF.fetch_stall 			<= '1';	    -- STALL enabling
			CW_IF.pc_en 				<= '0';	    -- PC disabling
		end if;
	 	if (i_DRAM_NOTREADY = '1' or HAZARD_SIG = '1' or ((IR_opcode = OP_CALL or IR_opcode = OP_RET) and BUSY_WINDOW = '1') or SPILL = '1' or i_FILL_delay = '1') then
			CW_IF.fetch_en 				<= '0';		-- IF disabling
			CW_IF.pc_en 				<= '0';	    -- PC disabling
			CW_IF.id_en 				<= '0'; 	-- ID disabling
			CW_IF.ex_en 				<= '0';		-- EX disabling
			CW_IF.mem_en				<= '0';		-- MEM disabling
			CW_IF.wb_en 				<= '0';		-- WB disabling

			i_JUMP_EN_READY <= '0';
		end if;
	
	end process;

	-- DRAM_NOTREADY is at 1 if the DRAM is not ready and at the MEM stage we have
	-- an instruction that wants to write/read in the memory (a load or a store).
	-- If yes, we stall everything, otherwise we go ahead with the pipeline 
	i_DRAM_NOTREADY <= not(DRAM_READY) and (CW_MEM.dram_we or CW_MEM.dram_re) and CW_MEM.mem_en;
	

	CW_ID <= CW_IF when i_DRAM_NOTREADY = '0' else CW_ID;

	unsigned_i <= CW_ID.unsigned_id;
	UNSIG_SIGN_N <= unsigned_2; 
	

	-- process to pipeline control words
	CW_PIPE : process (Clk)
	begin -- process Clk
		
		if (rising_edge(Clk)) then
		
			if (Rst = '1') then
				CW_EX <= RECORD_VOID;
				CW_MEM <= RECORD_VOID;
				CW_WB <= RECORD_VOID;
				
				aluOpcode1 <= ALU_ADD;
				setcmp_1 <= (others => '0');
				sel_alu_setcmp_1 <= '0';
				unsigned_1 <= '0';
				unsigned_2 <= '0';

				i_FILL_delay <= '0';
				i_SPILL_delay <= '0';

			else 
			
				i_SPILL_delay <= SPILL;
				i_FILL_delay <= FILL;

				CW_WB <= RECORD_VOID;


				-------------------------------------------------------
				-- if the DRAM is not ready, everything is stalled
				-- so all the ControlWords will remain the same
				-- until the DRAM will become ready. 
				-- Meanwhile, all the PIPELINE enable signals are at 0
				-------------------------------------------------------
				if (i_DRAM_NOTREADY = '0') then		-- DRAM READY

					CW_EX <= CW_ID;
					CW_MEM <= CW_EX;
					CW_WB <= CW_MEM;


					aluOpcode1 <= aluOpcode_i;
					setcmp_1 <= setcmp_i;
					sel_alu_setcmp_1 <= sel_alu_setcmp_i;

					unsigned_1 <= unsigned_i;
					unsigned_2 <= unsigned_1;

				end if;

			end if;

		end if;

	end process CW_PIPE;

	ALU_OPCODE <= aluOpcode1;

	-- purpose: Generation of ALU OpCode
	-- type   : combinational
	-- inputs : IR_i
	-- outputs: aluOpcode
	ALU_OP_CODE_P: process (IR_opcode, IR_func, CW)
	begin -- process ALU_OP_CODE_P

		case (TO_INTEGER(unsigned(IR_opcode))) is
			
			when 0 => -- R_TYPE

				case TO_INTEGER(unsigned(IR_func)) is
					
					when 4 => 
						aluOpcode_i <= ALU_SLL; -- SLL;
					
					when 6 => 
						aluOpcode_i <= ALU_SRL; -- SRL;

					when 7 => 
						aluOpcode_i <= ALU_SRA; -- SRA;

					when 8 =>
						aluOpcode_i <= ALU_ROR; -- ROR;

					when 9 =>
						aluOpcode_i <= ALU_ROL; -- ROL;

					when 14 =>
						aluOpcode_i <= ALU_MUL;	-- MUL

					when 32 =>
						aluOpcode_i <= ALU_ADD;	-- ADD

					when 33 =>
						aluOpcode_i <= ALU_ADD;	-- ADDU

					when 34 =>
						aluOpcode_i <= ALU_SUB;	-- SUB

					when 35 =>
						aluOpcode_i <= ALU_SUB;	-- SUBU

					when 36 =>
						aluOpcode_i <= ALU_AND;	-- AND

					when 37 =>
						aluOpcode_i <= ALU_OR;	-- OR

					when 38 =>
						aluOpcode_i <= ALU_XOR;	-- XOR

					
					when others => 
						aluOpcode_i <= ALU_ADD;
				
				end case;

			when others => 
				aluOpcode_i <= CW.alu_opcode;

		end case;

	end process ALU_OP_CODE_P;

	
	SEL_LGET <= setcmp_1;

	SETCMP_P: process (IR_opcode, IR_func, CW, CW_ID)
	begin -- process SETCMP_P
	
		UNSIGNED_ID	<= CW_ID.unsigned_id;	
	
		case (TO_INTEGER(unsigned(IR_opcode))) is
			
			when 0 => -- R_TYPE

				case TO_INTEGER(unsigned(IR_func)) is
					
					when 40 => 
						setcmp_i <= SET_SEQ; -- SEQ;
					
					when 41 => 
						setcmp_i <= SET_SNE; -- SNE;

					when 42 => 
						setcmp_i <= SET_SLT; -- SLT;
					
					when 43 => 
						setcmp_i <= SET_SGT; -- SGT;

					when 44 => 
						setcmp_i <= SET_SLE; -- SLE;
					
					when 45 => 
						setcmp_i <= SET_SGE; -- SGE;
				
					when 58 => 
						setcmp_i <= SET_SLT; -- SLTU;	
						UNSIGNED_ID	<= '1';

					when 59 => 
						setcmp_i <= SET_SGT; -- SGTU;
						UNSIGNED_ID	<= '1';
						
					when 60 => 
						setcmp_i <= SET_SLE; -- SLEU;
						UNSIGNED_ID	<= '1';

					when 61 => 
						setcmp_i <= SET_SGE; -- SGEU;
						UNSIGNED_ID	<= '1';

					when others => 
						setcmp_i <= SET_SEQ;
				
				end case;
			
			when others => 
				setcmp_i <= CW.set_cmp;

		end case;

	end process SETCMP_P;


	SEL_ALU_SETCMP <= sel_alu_setcmp_1;

	SEL_ALU_SETCMP_P: process (IR_opcode, IR_func, CW)
	begin -- process SETCMP_P
		
		case (TO_INTEGER(unsigned(IR_opcode))) is
			
			when 0 => -- R_TYPE

				if ((TO_INTEGER(unsigned(IR_func)) >= 40 and TO_INTEGER(unsigned(IR_func)) <= 45) or (TO_INTEGER(unsigned(IR_FUNC)) >= 58 and TO_INTEGER(unsigned(IR_FUNC)) <= 61)) then
					sel_alu_setcmp_i <= '1';
				else
					sel_alu_setcmp_i <= '0';
				end if;
			
			when others => 
				sel_alu_setcmp_i <= CW.sel_alu;
		end case;

	end process SEL_ALU_SETCMP_P;

	
	JBRANCH_CTRL: process(IR_opcode, CW_IF, LGET, BUSY_WINDOW, i_SPILL_delay, i_FILL_delay, i_DRAM_NOTREADY)
	begin

		IF_STALL <= CW_IF.fetch_stall;
		i_JUMP_EN <= CW_IF.jump_en;
		CALL <= CW_IF.call and not(i_DRAM_NOTREADY);
		RET <= CW_IF.ret and not(i_DRAM_NOTREADY);

		if (IR_opcode = OP_BEQZ and LGET(0) = '0') then -- BEQZ 
			i_JUMP_EN <= '1';
			IF_STALL <= '1';
		elsif (IR_opcode = OP_BNEZ and LGET(0) = '1') then -- BNEZ
			i_JUMP_EN <= '1';
			IF_STALL <= '1';
		elsif (IR_opcode = OP_BGE and (LGET(1) = '1' or LGET(0) = '0')) then -- BGE
			i_JUMP_EN <= '1';
			IF_STALL <= '1';
		elsif (IR_opcode = OP_BLE and LGET(1) = '0') then -- BLE
			i_JUMP_EN <= '1';
			IF_STALL <= '1';
		elsif (IR_opcode = OP_BGT and LGET = "11") then -- BGT
			i_JUMP_EN <= '1';
			IF_STALL <= '1';
		elsif (IR_opcode = OP_BLT and LGET = "01") then -- BLT
			i_JUMP_EN <= '1';
			IF_STALL <= '1';
		elsif (IR_opcode = OP_CALL and BUSY_WINDOW = '1') then -- CALL
			CALL <= '0';
			i_JUMP_EN <= '0';	
		elsif (IR_opcode = OP_CALL and BUSY_WINDOW = '0' and i_SPILL_delay = '0') then -- CALL
			CALL <= '1';
		elsif (IR_opcode = OP_RET and BUSY_WINDOW = '1') then -- RET
			RET <= '0';
			i_JUMP_EN <= '0';
		end if;

	end process JBRANCH_CTRL;
	

end dlx_cu_hw;
