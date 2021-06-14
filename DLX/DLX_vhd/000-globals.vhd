library ieee;
use ieee.std_logic_1164.all;

package myTypes is

	constant ALU_OPSEL:	integer := 2;


	type aluOp is (
		NOP, ADDS, LLS, LRS --- to be completed
			);

	--
	-- ALU GLOBALS
	--

	-- Exlicit Encoding for ALU OPERATION
	subtype alu_op_sig_t is std_logic_vector(ALU_OPSEL+3-1 downto 0);
	subtype set_op_sig_t is std_logic_vector(2 downto 0);
	
	-- subtype instr_op_sig_t is std_logic_vector(5 downto 0);

	-- ALU OPCODE --

	constant ALU_ADD: 	alu_op_sig_t := "00000";
	constant ALU_SUB: 	alu_op_sig_t := "00100";
	constant ALU_MUL: 	alu_op_sig_t := "00001";
	constant ALU_AND: 	alu_op_sig_t := "00010";
	constant ALU_NAND: 	alu_op_sig_t := "00110";
	constant ALU_OR: 	alu_op_sig_t := "01010";
	constant ALU_NOR: 	alu_op_sig_t := "01110";
	constant ALU_XOR: 	alu_op_sig_t := "10010";
	constant ALU_XNOR: 	alu_op_sig_t := "10110";
	constant ALU_SRL: 	alu_op_sig_t := "00011";
	constant ALU_SLL: 	alu_op_sig_t := "00111";
	constant ALU_SRA: 	alu_op_sig_t := "01011";
	constant ALU_ASL: 	alu_op_sig_t := "01111";
	constant ALU_ROR: 	alu_op_sig_t := "10011";
	constant ALU_ROL: 	alu_op_sig_t := "10111";

	-- COMPARATOR ENCODING --

	constant SET_SEQ: 	set_op_sig_t := "000";
	constant SET_SNE: 	set_op_sig_t := "001";
	constant SET_SLE: 	set_op_sig_t := "010";
	constant SET_SLT: 	set_op_sig_t := "011";
	constant SET_SGE: 	set_op_sig_t := "100";
	constant SET_SGT: 	set_op_sig_t := "101";

	-- INSTRUCTIONS OPCODE --

	-- constant OP_J:			set_instr_op_sig_t := "000010"
	-- constant OP_JAL:			set_instr_op_sig_t := "000011"
	-- constant OP_BEQZ:		set_instr_op_sig_t := "000100"
	-- constant OP_BNEZ:		set_instr_op_sig_t := "000101"
	-- constant OP_BFPT:		set_instr_op_sig_t := "000110"
	-- constant OP_BFPF:		set_instr_op_sig_t := "000111"
	-- constant OP_ADDI:		set_instr_op_sig_t := "001000"
	-- constant OP_ADDUI:		set_instr_op_sig_t := "001001"
	-- constant OP_SUBI:		set_instr_op_sig_t := "001010"
	-- constant OP_SUBUI:		set_instr_op_sig_t := "001011"
	-- constant OP_ANDI:		set_instr_op_sig_t := "001100"
	-- constant OP_ORI:			set_instr_op_sig_t := "001101"
	-- constant OP_XORI:		set_instr_op_sig_t := "001110"
	-- constant OP_LHI:			set_instr_op_sig_t := "001111"
	-- constant OP_RFE:			set_instr_op_sig_t := "010000"
	-- constant OP_TRAP:		set_instr_op_sig_t := "010001"
	-- constant OP_JR:			set_instr_op_sig_t := "010010"
	-- constant OP_JALR:		set_instr_op_sig_t := "010011"
	-- constant OP_SLLI:		set_instr_op_sig_t := "010100"
	-- constant OP_NOP:			set_instr_op_sig_t := "010101"
	-- constant OP_SRLI:		set_instr_op_sig_t := "010110"
	-- constant OP_SRAI:		set_instr_op_sig_t := "010111"
	-- constant OP_SEQI:		set_instr_op_sig_t := "011000"
	-- constant OP_SNEI:		set_instr_op_sig_t := "011001"
	-- constant OP_SLTI:		set_instr_op_sig_t := "011010"
	-- constant OP_SGTI:		set_instr_op_sig_t := "011011"
	-- constant OP_SLEI:		set_instr_op_sig_t := "011100"
	-- constant OP_SGEI:		set_instr_op_sig_t := "011101"
	-- constant OP_CALL:		set_instr_op_sig_t := "011110"
	-- constant OP_RET:			set_instr_op_sig_t := "011111"
	-- constant OP_LB:			set_instr_op_sig_t := "100000"
	-- constant OP_LH:			set_instr_op_sig_t := "100001"
	-- constant OP_LW:			set_instr_op_sig_t := "100011"
	-- constant OP_LBU:			set_instr_op_sig_t := "100100"
	-- constant OP_LHU:			set_instr_op_sig_t := "100101"
	-- constant OP_LF:			set_instr_op_sig_t := "100110"
	-- constant OP_LD:			set_instr_op_sig_t := "100111"
	-- constant OP_SB:			set_instr_op_sig_t := "101000"
	-- constant OP_SH:			set_instr_op_sig_t := "101001"
	-- constant OP_SW:			set_instr_op_sig_t := "101011"
	-- constant OP_SF:			set_instr_op_sig_t := "101110"
	-- constant OP_SD:			set_instr_op_sig_t := "101111"
	-- constant OP_ITLB:		set_instr_op_sig_t := "111000"
	-- constant OP_SLTUI:		set_instr_op_sig_t := "111010"
	-- constant OP_SGTUI:		set_instr_op_sig_t := "111011"
	-- constant OP_SLEUI:		set_instr_op_sig_t := "111100"
	-- constant OP_SGEUI:		set_instr_op_sig_t := "111101"

end myTypes;

