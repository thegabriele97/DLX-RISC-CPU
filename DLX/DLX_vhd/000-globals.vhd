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
	constant ALU_LSL: 	alu_op_sig_t := "00011";
	constant ALU_LSR: 	alu_op_sig_t := "00111";
	constant ALU_ASL: 	alu_op_sig_t := "01011";
	constant ALU_ASR: 	alu_op_sig_t := "01111";
	constant ALU_ROL: 	alu_op_sig_t := "10011";
	constant ALU_ROR: 	alu_op_sig_t := "10111";

	-- COMPARATOR ENCODING --

	constant SET_SEQ: 	set_op_sig_t := "000";
	constant SET_SNE: 	set_op_sig_t := "001";
	constant SET_SLE: 	set_op_sig_t := "010";
	constant SET_SLT: 	set_op_sig_t := "011";
	constant SET_SGE: 	set_op_sig_t := "100";
	constant SET_SGT: 	set_op_sig_t := "101";

	-- INSTRUCTIONS OPCODE --

	-- constant J:			set_instr_op_sig_t := "000010"
	-- constant JAL:		set_instr_op_sig_t := "000011"
	-- constant BEQZ:		set_instr_op_sig_t := "000100"
	-- constant BNEZ:		set_instr_op_sig_t := "000101"
	-- constant BFPT:		set_instr_op_sig_t := "000110"
	-- constant BFPF:		set_instr_op_sig_t := "000111"
	-- constant ADDI:		set_instr_op_sig_t := "001000"
	-- constant ADDUI:		set_instr_op_sig_t := "001001"
	-- constant SUBI:		set_instr_op_sig_t := "001010"
	-- constant SUBUI:		set_instr_op_sig_t := "001011"
	-- constant ANDI:		set_instr_op_sig_t := "001100"
	-- constant ORI:		set_instr_op_sig_t := "001101"
	-- constant XORI:		set_instr_op_sig_t := "001110"
	-- constant LHI:		set_instr_op_sig_t := "001111"
	-- constant RFE:		set_instr_op_sig_t := "010000"
	-- constant TRAP:		set_instr_op_sig_t := "010001"
	-- constant JR:		set_instr_op_sig_t := "010010"
	-- constant JALR:		set_instr_op_sig_t := "010011"
	-- constant SLLI:		set_instr_op_sig_t := "010100"
	-- constant NOP:		set_instr_op_sig_t := "010101"
	-- constant SRLI:		set_instr_op_sig_t := "010110"
	-- constant SRAI:		set_instr_op_sig_t := "010111"
	-- constant SEQI:		set_instr_op_sig_t := "011000"
	-- constant SNEI:		set_instr_op_sig_t := "011001"
	-- constant SLTI:		set_instr_op_sig_t := "011010"
	-- constant SGTI:		set_instr_op_sig_t := "011011"
	-- constant SLEI:		set_instr_op_sig_t := "011100"
	-- constant SGEI:		set_instr_op_sig_t := "011101"
	-- constant CALL:		set_instr_op_sig_t := "011110"
	-- constant RET:		set_instr_op_sig_t := "011111"
	-- constant LB:		set_instr_op_sig_t := "100000"
	-- constant LH:		set_instr_op_sig_t := "100001"
	-- constant LW:		set_instr_op_sig_t := "100011"
	-- constant LBU:		set_instr_op_sig_t := "100100"
	-- constant LHU:		set_instr_op_sig_t := "100101"
	-- constant LF:		set_instr_op_sig_t := "100110"
	-- constant LD:		set_instr_op_sig_t := "100111"
	-- constant SB:		set_instr_op_sig_t := "101000"
	-- constant SH:		set_instr_op_sig_t := "101001"
	-- constant SW:		set_instr_op_sig_t := "101011"
	-- constant SF:		set_instr_op_sig_t := "101110"
	-- constant SD:		set_instr_op_sig_t := "101111"
	-- constant ITLB:		set_instr_op_sig_t := "111000"
	-- constant SLTUI:		set_instr_op_sig_t := "111010"
	-- constant SGTUI:		set_instr_op_sig_t := "111011"
	-- constant SLEUI:		set_instr_op_sig_t := "111100"
	-- constant SGEUI:		set_instr_op_sig_t := "111101"

end myTypes;

