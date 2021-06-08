library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity dlx_cu is
	generic (
		FUNC_SIZE          	: integer := 11; -- Func Field Size for R-Type Ops
		OP_CODE_SIZE       	: integer := 6; -- Op Code Size
		IR_SIZE 			: integer := 32 -- Instruction Register Size    
	);
	port (
		Clk : in std_logic; -- Clock
		Rst : in std_logic; -- Reset:Active-Low

		-- Instruction Register
		IR_IN : in std_logic_vector(IR_SIZE - 1 downto 0);

		HAZARD_SIG: in std_logic; 	-- Data Hazard signal from ID

		-- IF Control Signals
		PIPLIN_IF_EN  	: out std_logic; -- Instruction Register Latch Enable
		PC_EN 			: out std_logic;

		-- ID Control Signals
		PIPLIN_ID_EN : out std_logic;	-- ID Pipeline Stage Enable
		JUMP_EN      : out std_logic; 	-- JUMP Enable Signal for PC input MUX
		GT_CHECK     : in std_logic; 	-- Conditional branch status (= '1' means branch taken)
		GE_CHECK     : in std_logic; 	-- Conditional branch status (= '1' means branch taken)
		LT_CHECK     : in std_logic; 	-- Conditional branch status (= '1' means branch taken)
		LE_CHECK     : in std_logic; 	-- Conditional branch status (= '1' means branch taken)

		-- EX Control Signals
		PIPLIN_EX_EN 	: out std_logic; 	-- ALU Output Register Enable
		MUXA_SEL      	: out std_logic; 	-- MUX-A Sel
		MUXB_SEL      	: out std_logic; 	-- MUX-B Sel
		ALU_OPCODE 	  	: out alu_op_sig_t; -- ALU OP to execute

		-- MEM Control Signals
		DRAM_WE      	: out std_logic; 	-- Data RAM Write Enable
		DRAM_RE      	: out std_logic; 	-- Data RAM Read Enable
		PIPLIN_MEM_EN   : out std_logic; 	-- LMD Register Latch Enable

		-- WB Control signals
		WB_MUX_SEL 		: out std_logic; 	-- Write Back MUX Sel
		PIPLIN_WB_EN    : out std_logic 	-- Register File Write Enable
	);
end dlx_cu;

architecture dlx_cu_hw of dlx_cu is
	
	constant MICROCODE_MEM_SIZE: integer := 22; -- Microcode Memory Size
	constant CW_SIZE: integer := (12 + alu_op_sig_t'length); -- Control Word Size
	
	type mem_array is array (0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE-1 downto 0);
		

	signal cw_memory: mem_array := (
		"00111100010000111", -- R type: IS IT CORRECT?
		"00000000000000000", -- [VOID]
		"00111011111001100", -- J (0X02) instruction encoding corresponds to the address to this ROM
		"00000000000000000", -- JAL to be filled
		"00000000000000000", -- BEQZ to be filled
		"00000000000000000", -- BNEZ
		"00000000000000000", -- 
		"00000000000000000",
		"00000000000000000", -- ADD i (0X08): FILL IT!!!
		"00000000000000000",
		"00000000000000000",
		"00000000000000000",
		"00000000000000000",
		"00000000000000000",
		"00000000000000000",
		"00000000000000000",
		"00000000000000000",
		"00000000000000000",
		"00000000000000000",
		"00000000000000000",
		"00000000000000000",
		"00000000000000000"	-- NOP (0x15)
	);
	
	
	signal IR_opcode : std_logic_vector(OP_CODE_SIZE-1 downto 0); -- OpCode part of IR
	signal IR_func   : std_logic_vector(FUNC_SIZE-1 downto 0); 	-- Func part of IR when Rtype
	
	signal CW  		: std_logic_vector(CW_SIZE-1 downto 0); 		-- full control word read from cw_mem
	signal CW_IF 	: std_logic_vector(CW_SIZE-1 downto 0); 		-- first stage
	signal CW_ID 	: std_logic_vector(CW_SIZE-1-2 downto 0); 	-- second stage
	signal CW_EX 	: std_logic_vector(CW_SIZE-1-4 downto 0); 	-- third stage
	signal CW_MEM 	: std_logic_vector(CW_SIZE-1-8 downto 0); 	-- fourth stage
	signal CW_WB 	: std_logic_vector(CW_SIZE-1-13 downto 0); 	-- fifth stage

	signal aluOpcode_i : alu_op_sig_t := ALU_ADD; -- alu_op_sig_t defined in package
	signal aluOpcode1  : alu_op_sig_t := ALU_ADD;
	signal aluOpcode2  : alu_op_sig_t := ALU_ADD;
	signal aluOpcode3  : alu_op_sig_t := ALU_ADD;

begin

	IR_opcode(OP_CODE_SIZE - 1 downto 0) <= IR_IN(31 downto 26);
	IR_func(FUNC_SIZE - 1 downto 0)      <= IR_IN(FUNC_SIZE - 1 downto 0);

	CW <= cw_memory(TO_INTEGER(unsigned(IR_opcode)));

	-- IF control Signals
	PIPLIN_IF_EN 	<= CW_IF(CW_SIZE - 1);
	PC_EN 			<= CW_IF(CW_SIZE - 2);

	-- ID Control Signals
	PIPLIN_ID_EN	<= CW_ID(CW_SIZE - 3);

	-- EX control Signals
	PIPLIN_EX_EN 	<= CW_EX(CW_SIZE - 5);
	MUXA_SEL      	<= CW_EX(CW_SIZE - 6);
	MUXB_SEL      	<= CW_EX(CW_SIZE - 7);

	-- MEM control Signals
	DRAM_WE      	<= CW_MEM(CW_SIZE - 7 - alu_op_sig_t'length - 1);
	DRAM_RE	    	<= CW_MEM(CW_SIZE - 7 - alu_op_sig_t'length - 2);
	PIPLIN_MEM_EN 	<= CW_MEM(CW_SIZE - 7 - alu_op_sig_t'length - 3);

	-- WB control Signals
	WB_MUX_SEL 		<= CW_WB(CW_SIZE - 7 - alu_op_sig_t'length - 4);
	PIPLIN_WB_EN    <= CW_WB(CW_SIZE - 7 - alu_op_sig_t'length - 5);


	-- process to pipeline control words
	CW_PIPE : process (Clk)
	begin -- process Clk
		
		if (rising_edge(Clk)) then
		
			if (Rst = '1') then
				CW_IF <= (others => '0');
				CW_ID <= (others => '0');
				CW_EX <= (others => '0');
				CW_MEM <= (others => '0');
				CW_WB <= (others => '0');
				
				aluOpcode1 <= ALU_ADD;
				aluOpcode2 <= ALU_ADD;
				aluOpcode3 <= ALU_ADD;
			else
				
				CW_IF <= CW;
				if (HAZARD_SIG = '1') then -- If there is a data hazard, we insert a NOP in the pipeline
					CW_IF <= cw_memory(21); -- 21 = 0x15 
				end if;

				CW_ID <= CW_IF(CW_SIZE-1-2 downto 0);
				CW_EX <= CW_ID(CW_SIZE-1-4 downto 0);
				CW_MEM <= CW_EX(CW_SIZE-1-3-alu_op_sig_t'length downto 0);
				CW_WB <= CW_MEM(CW_SIZE-1-5-alu_op_sig_t'length-3 downto 0);

				aluOpcode1 <= aluOpcode_i; -- IF 
				aluOpcode2 <= aluOpcode1;  -- ID
				aluOpcode3 <= aluOpcode2;  -- EX
			end if;

		end if;

	end process CW_PIPE;

	ALU_OPCODE <= aluOpcode3;

	-- purpose: Generation of ALU OpCode
	-- type   : combinational
	-- inputs : IR_i
	-- outputs: aluOpcode
	ALU_OP_CODE_P: process (IR_opcode, IR_func)
	begin -- process ALU_OP_CODE_P

		case (TO_INTEGER(unsigned(IR_opcode))) is
			
			when 0 => -- R_TYPE

				case TO_INTEGER(unsigned(IR_func)) is
					
					when 4 => 
						aluOpcode_i <= ALU_ADD; -- LLS;
					
					when 6 => 
						aluOpcode_i <= ALU_ADD; -- LRS;
					
					when others => 
						aluOpcode_i <= ALU_ADD;
				
				end case;

			-- when 2 => aluOpcode_i <= ALU_ADD; -- j
			-- when 3 => aluOpcode_i <= ALU_ADD; -- jal
			-- when 8 => aluOpcode_i <= ALU_ADD; -- addi
			
			when others => 
				aluOpcode_i <= ALU_ADD;

		end case;

	end process ALU_OP_CODE_P;

	
	JBRANCH_CTRL: process(IR_opcode, CW_ID)
	begin

		JUMP_EN <= CW_ID(CW_SIZE - 4);
		-- Do things when OPCODE == SOME BRANCH INSTRUCTION
		-- if OPCODE == BNEZ AND GE = '1' then JUMP_EN = '1' else '0';
		-- and so on

	end process JBRANCH_CTRL;


end dlx_cu_hw;
