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
		IF_STALL		: out std_logic;
		PC_EN 			: out std_logic;

		-- ID Control Signals
		PIPLIN_ID_EN 	: out std_logic;	-- ID Pipeline Stage Enable
		JUMP_EN      	: out std_logic; 	-- JUMP Enable Signal for PC input MUX
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
end dlx_cu;

architecture dlx_cu_hw of dlx_cu is
	
	constant MICROCODE_MEM_SIZE: integer := 62; -- Microcode Memory Size
	constant CW_SIZE: integer := (19 + alu_op_sig_t'length + set_op_sig_t'length); -- Control Word Size
	 
	type mem_array is array (0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE-1 downto 0);
		

	signal cw_memory: mem_array := (
	--  "FSPJ12DXAB-----+++TWR10UMCK"	
		"101011110000000000000000101", -- R type: IS IT CORRECT?
	--  "FSPJ12DXAB-----+++TWR10UMCK"	
		"000000000000000000000000000", -- [VOID]
	--  "FSPJ12DXAB-----+++TWR10UMCK"	
		"111100000000000000000000000", -- J (0X02) instruction encoding corresponds to the address to this ROM
	--  "FSPJ12DXAB-----+++TWR10UMCK"	
		"111110110100000000000000101", -- JAL to be filled
	--  "FSPJ12DXAB-----+++TWR10UMCK"	
		"101000000000000000000000000", -- BEQZ to be filled
		"101000000000000000000000000", -- BNEZ
		"101000000000000000000000000", -- 
		"101000000000000000000000000",
	--  "FSPJ12DXAB-----+++TWR10UMCK"	
		"101010110100000000000000101", -- ADD i (0X08): FILL IT!!!
		"101000000000000000000000000",
		"101000000000000000000000000",
		"101000000000000000000000000",
		"101000000000000000000000000",
		"101000000000000000000000000",
		"101000000000000000000000000",
	--  "FSPJ12DXAB-----+++TWR10UMCK"	
		"101010110100000000001010111",	-- LHI (0x0f)
		"101000000000000000000000000",
		"101000000000000000000000000",
		"101000000000000000000000000",
		"101000000000000000000000000",
		"101000000000000000000000000",
		"101000000000000000000000000",	-- NOP (0x15)
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
	--  "FSPJ12DXAB-----+++TWR10UMCK"
		"101010110000000101100000101",	-- SGTI (0x1b)
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
	--  "FSPJ12DXAB-----+++TWR10UMCK"	
		"101010110000000100100000101",	-- SGEI (0x1d)
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
	--  "FSPJ12DXAB-----+++TWR10UMCK"	
		"101010110100000000001100111",	-- LB (0x20)
	--  "FSPJ12DXAB-----+++TWR10UMCK"	
		"101010110100000000001010111",	-- LH (0x21)
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"101010110100000000001000111",	-- LW (0x23)
	--  "FSPJ12DXAB-----+++TWR10UMCK"	
		"101010110100000000001101111",	-- LBU (0x24)
	--  "FSPJ12DXAB-----+++TWR10UMCK"	
		"101010110100000000001011111",	-- LHU (0x25)
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",	-- LF (0x26)    TODO ??
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX", 	-- LD (0x27)    TODO ??
	--  "FSPJ12DXAB-----+++TWR10UMCK"
		"101011110100000000010100100",	-- SB (0x28)
	--  "FSPJ12DXAB-----+++TWR10UMCK"
		"101011110100000000010010100",	-- SH (0x29)
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX", 	
	--  "FSPJ12DXAB-----+++TWR10UMCK"
		"101011110100000000010000100",	-- SW (0x2b)
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",	-- SF (0x2e)
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",	-- SD (0x2f)
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX",
		"XXXXXXXXXXXXXXXXXXXXXXXXXXX"
	);
	
	
	signal IR_opcode : std_logic_vector(OP_CODE_SIZE-1 downto 0); -- OpCode part of IR
	signal IR_func   : std_logic_vector(FUNC_SIZE-1 downto 0); 	-- Func part of IR when Rtype
	
	signal CW  		: std_logic_vector(CW_SIZE-1 downto 0); 		-- full control word read from cw_mem
	signal CW_IF 	: std_logic_vector(CW_SIZE-1 downto 0); 		-- first stage
	signal CW_ID 	: std_logic_vector(CW_SIZE-1-4 downto 0); 	-- second stage
	signal CW_EX 	: std_logic_vector(CW_SIZE-1-7 downto 0); 	-- third stage
	signal CW_MEM 	: std_logic_vector(CW_SIZE-1-7-alu_op_sig_t'length-set_op_sig_t'length-1-3 downto 0); 	-- fourth stage
	signal CW_WB 	: std_logic_vector(CW_SIZE-1-7-alu_op_sig_t'length-set_op_sig_t'length-1-9 downto 0); 	-- fifth stage

	signal aluOpcode_i : alu_op_sig_t := ALU_ADD; -- alu_op_sig_t defined in package
	signal aluOpcode1  : alu_op_sig_t := ALU_ADD;

	signal setcmp_i: set_op_sig_t;
	signal setcmp_1: set_op_sig_t;

	signal sel_alu_setcmp_i: std_logic;
	signal sel_alu_setcmp_1: std_logic;

begin

	IR_opcode(OP_CODE_SIZE - 1 downto 0) <= IR_IN(31 downto 26);
	IR_func(FUNC_SIZE - 1 downto 0)      <= IR_IN(FUNC_SIZE - 1 downto 0);

	CW <= cw_memory(TO_INTEGER(unsigned(IR_opcode)));

	-- IF control Signals
	PIPLIN_IF_EN 	<= CW_IF(CW_SIZE - 1);
	--IF_STALL		<= CW_IF(CW_SIZE - 2);
	PC_EN 			<= CW_IF(CW_SIZE - 3);
	-- JUMP_EN      ................ - 4

	-- ID Control Signals
	RF_RD1_EN		<= CW_ID(CW_SIZE - 5);
	RF_RD2_EN		<= CW_ID(CW_SIZE - 6);
	PIPLIN_ID_EN	<= CW_ID(CW_SIZE - 7);

	-- EX control Signals
	PIPLIN_EX_EN 	<= CW_EX(CW_SIZE - 8);
	MUXA_SEL      	<= CW_EX(CW_SIZE - 9);
	MUXB_SEL      	<= CW_EX(CW_SIZE - 10);

	-- MEM control Signals
	DRAM_WE      	<= CW_MEM(CW_SIZE - 10 - alu_op_sig_t'length - set_op_sig_t'length - 1 - 1);
	DRAM_RE	    	<= CW_MEM(CW_SIZE - 10 - alu_op_sig_t'length - set_op_sig_t'length - 1 - 2);
	DATA_SIZE(1)	<= CW_MEM(CW_SIZE - 10 - alu_op_sig_t'length - set_op_sig_t'length - 1 - 3);
	DATA_SIZE(0)	<= CW_MEM(CW_SIZE - 10 - alu_op_sig_t'length - set_op_sig_t'length - 1 - 4);
	UNSIG_SIGN_N	<= CW_MEM(CW_SIZE - 10 - alu_op_sig_t'length - set_op_sig_t'length - 1 - 5);
	PIPLIN_MEM_EN 	<= CW_MEM(CW_SIZE - 10 - alu_op_sig_t'length - set_op_sig_t'length - 1 - 6);

	-- WB control Signals
	WB_MUX_SEL 		<= CW_WB(CW_SIZE - 10 - alu_op_sig_t'length - set_op_sig_t'length - 1 - 7);
	PIPLIN_WB_EN    <= CW_WB(CW_SIZE - 10 - alu_op_sig_t'length - set_op_sig_t'length - 1 - 8);
	
	process(CW, CW_IF, HAZARD_SIG)
	begin
		
		CW_IF <= CW;
	
		if (HAZARD_SIG = '1') then
			CW_IF(CW_SIZE-1) <= '0';
			CW_IF(CW_SIZE-3) <= '0';
			CW_IF(CW_SIZE-7) <= '0';
			CW_IF(CW_SIZE-8) <= '0';
			CW_IF(CW_SIZE-25) <= '0';
			CW_IF(CW_SIZE-27) <= '0';
		end if;
			
	
	end process;

	CW_ID <= CW_IF(CW_SIZE-1-4 downto 0);
	

	-- process to pipeline control words
	CW_PIPE : process (Clk)
	begin -- process Clk
		
		if (rising_edge(Clk)) then
		
			if (Rst = '1') then
				--CW_IF <= (others => '0');
				--CW_ID <= (others => '0');
				CW_EX <= (others => '0');
				CW_MEM <= (others => '0');
				CW_WB <= (others => '0');
				
				aluOpcode1 <= ALU_ADD;
				setcmp_1 <= (others => '0');
				sel_alu_setcmp_1 <= '0';

			else

				CW_EX <= CW_ID(CW_SIZE-1-4-3 downto 0);
				CW_MEM <= CW_EX(CW_SIZE-1-4-3-3-alu_op_sig_t'length-set_op_sig_t'length-1 downto 0);
				CW_WB <= CW_MEM(CW_SIZE-1-4-3-3-alu_op_sig_t'length-set_op_sig_t'length-1-6 downto 0);

				aluOpcode1 <= aluOpcode_i;
				setcmp_1 <= setcmp_i;
				sel_alu_setcmp_1 <= sel_alu_setcmp_i;

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
						aluOpcode_i <= ALU_ADD; -- LLS;
					
					when 6 => 
						aluOpcode_i <= ALU_ADD; -- LRS;

					when 36 =>
						aluOpcode_i <= ALU_AND;	-- AND

					when 37 =>
						aluOpcode_i <= ALU_OR;	-- OR

					when 38 =>
						aluOpcode_i <= ALU_XOR;	-- OR

					-- when 14 =>
					-- 	aluOpcode_i <= ALU_MUL;	-- MUL
					
					when others => 
						aluOpcode_i <= ALU_ADD;
				
				end case;

			-- when 2 => aluOpcode_i <= ALU_ADD; -- j
			-- when 3 => aluOpcode_i <= ALU_ADD; -- jal
			-- when 8 => aluOpcode_i <= ALU_ADD; -- addi
			
			when others => 
				aluOpcode_i <= CW(CW_SIZE-1-10 downto CW_SIZE-1-14);

		end case;

	end process ALU_OP_CODE_P;

	
	SEL_LGET <= setcmp_1;

	SETCMP_P: process (IR_opcode, IR_func, CW)
	begin -- process SETCMP_P
		
		case (TO_INTEGER(unsigned(IR_opcode))) is
			
			when 0 => -- R_TYPE

				case TO_INTEGER(unsigned(IR_func)) is
					
					when 40 => 
						setcmp_i <= SET_SEQ; -- SEQ;
					
					when 41 => 
						setcmp_i <= SET_SNE; -- SNEQ;

					when 42 => 
						setcmp_i <= SET_SLT; -- SLT;
					
					when 43 => 
						setcmp_i <= SET_SGT; -- SGT;

					when 44 => 
						setcmp_i <= SET_SLE; -- SLE;
					
					when 45 => 
						setcmp_i <= SET_SGE; -- SGE;
					
					-- when 58 => 
					-- 	setcmp_i <= ALU_ADD; -- SLTU;
					
					-- when 59 => 
					-- 	setcmp_i <= ALU_ADD; -- SGTU;
					
					-- when 60 => 
					-- 	setcmp_i <= ALU_ADD; -- SLEU;
					
					-- when 61 => 
					-- 	setcmp_i <= ALU_ADD; -- SGEU;
					
					when others => 
						setcmp_i <= SET_SEQ;
				
				end case;
			
			when others => 
				setcmp_i <= CW(CW_SIZE-1-15 downto CW_SIZE-1-17);

		end case;

	end process SETCMP_P;


	SEL_ALU_SETCMP <= sel_alu_setcmp_1;

	SEL_ALU_SETCMP_P: process (IR_opcode, IR_func, CW)
	begin -- process SETCMP_P
		
		case (TO_INTEGER(unsigned(IR_opcode))) is
			
			when 0 => -- R_TYPE

				if (TO_INTEGER(unsigned(IR_func)) >= 40 and TO_INTEGER(unsigned(IR_func)) <= 45) then
					sel_alu_setcmp_i <= '1';
				else
					sel_alu_setcmp_i <= '0';
				end if;
			
			when others => 
				sel_alu_setcmp_i <= CW(CW_SIZE-1-18);

		end case;

	end process SEL_ALU_SETCMP_P;

	
	JBRANCH_CTRL: process(IR_opcode, CW_IF, LGET)
	begin

		IF_STALL <= CW_IF(CW_SIZE - 2);
		JUMP_EN <= CW_IF(CW_SIZE - 4);

		if (IR_opcode = "000100" and LGET(0) = '0') then -- BEQZ 
			JUMP_EN <= '1';
			IF_STALL <= '1';
		elsif (IR_opcode = "000101" and LGET(0) = '1') then -- BEQZ
			JUMP_EN <= '1';
			IF_STALL <= '1';
		end if;

	end process JBRANCH_CTRL;


end dlx_cu_hw;
