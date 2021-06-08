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

end myTypes;

