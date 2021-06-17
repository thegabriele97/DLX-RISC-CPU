library ieee;
use ieee.std_logic_1164.all;

package myTypes is

	constant ALU_OPSEL:	integer := 2;

	--
	-- ALU GLOBALS
	--

	-- Exlicit Encoding for ALU OPERATION
	subtype alu_op_sig_t is std_logic_vector(ALU_OPSEL+3-1 downto 0);
	subtype set_op_sig_t is std_logic_vector(2 downto 0);
	
	subtype instr_op_sig_t is std_logic_vector(5 downto 0);

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

	constant OP_J:			instr_op_sig_t := "000010";
	constant OP_JAL:		instr_op_sig_t := "000011";
	constant OP_BEQZ:		instr_op_sig_t := "000100";
	constant OP_BNEZ:		instr_op_sig_t := "000101";
	constant OP_BFPT:		instr_op_sig_t := "000110";
	constant OP_BFPF:		instr_op_sig_t := "000111";
	constant OP_ADDI:		instr_op_sig_t := "001000";
	constant OP_ADDUI:		instr_op_sig_t := "001001";
	constant OP_SUBI:		instr_op_sig_t := "001010";
	constant OP_SUBUI:		instr_op_sig_t := "001011";
	constant OP_ANDI:		instr_op_sig_t := "001100";
	constant OP_ORI:		instr_op_sig_t := "001101";
	constant OP_XORI:		instr_op_sig_t := "001110";
	constant OP_LHI:		instr_op_sig_t := "001111";
	constant OP_RFE:		instr_op_sig_t := "010000";
	constant OP_TRAP:		instr_op_sig_t := "010001";
	constant OP_JR:			instr_op_sig_t := "010010";
	constant OP_JALR:		instr_op_sig_t := "010011";
	constant OP_SLLI:		instr_op_sig_t := "010100";
	constant OP_NOP:		instr_op_sig_t := "010101";
	constant OP_SRLI:		instr_op_sig_t := "010110";
	constant OP_SRAI:		instr_op_sig_t := "010111";
	constant OP_SEQI:		instr_op_sig_t := "011000";
	constant OP_SNEI:		instr_op_sig_t := "011001";
	constant OP_SLTI:		instr_op_sig_t := "011010";
	constant OP_SGTI:		instr_op_sig_t := "011011";
	constant OP_SLEI:		instr_op_sig_t := "011100";
	constant OP_SGEI:		instr_op_sig_t := "011101";
	constant OP_CALL:		instr_op_sig_t := "011110";
	constant OP_RET:		instr_op_sig_t := "011111";
	constant OP_LB:			instr_op_sig_t := "100000";
	constant OP_LH:			instr_op_sig_t := "100001";
	constant OP_LW:			instr_op_sig_t := "100011";
	constant OP_LBU:		instr_op_sig_t := "100100";
	constant OP_LHU:		instr_op_sig_t := "100101";
	constant OP_LF:			instr_op_sig_t := "100110";
	constant OP_LD:			instr_op_sig_t := "100111";
	constant OP_SB:			instr_op_sig_t := "101000";
	constant OP_SH:			instr_op_sig_t := "101001";
	constant OP_SW:			instr_op_sig_t := "101011";
	constant OP_SF:			instr_op_sig_t := "101110";
	constant OP_SD:			instr_op_sig_t := "101111";
	constant OP_BGT:		instr_op_sig_t := "110000";
	constant OP_BGE:		instr_op_sig_t := "110001";
	constant OP_BLT:		instr_op_sig_t := "110010";
	constant OP_BLE:		instr_op_sig_t := "110011";
	constant OP_ITLB:		instr_op_sig_t := "111000";
	constant OP_SLTUI:		instr_op_sig_t := "111010";
	constant OP_SGTUI:		instr_op_sig_t := "111011";
	constant OP_SLEUI:		instr_op_sig_t := "111100";
	constant OP_SGEUI:		instr_op_sig_t := "111101";

end myTypes;

