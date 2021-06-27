library ieee;
use ieee.std_logic_1164.all;
use work.myTypes.all;
 
package record_CU is

	-- Control word bits
	type control_word_t is record
		fetch_en            : std_logic; -- F
		fecth_stall         : std_logic; -- S
		pc_en               : std_logic; -- P
		jump_en             : std_logic; -- J
		call                : std_logic; -- L
		ret                 : std_logic; -- E
		rf_rd1_en           : std_logic; -- 1
		rf_rd2_en           : std_logic; -- 2
		cmp_reg_notimm      : std_logic; -- P
		unsigned_id         : std_logic; -- U
		npc_sel             : std_logic; -- N
		hazard_reg_en	    : std_logic; -- H
		id_en               : std_logic; -- D
		ex_en               : std_logic; -- X
		muxa_sel            : std_logic; -- A
		muxb_sel            : std_logic; -- B
		alu_opcode          : alu_op_sig_t; -- -----
		set_cmp             : set_op_sig_t; -- +++
		sel_alu             : std_logic; -- T
		dram_we             : std_logic; -- W
		dram_re             : std_logic; -- R
		data_size           : std_logic_vector(1 downto 0); -- 10
		mem_en              : std_logic; -- M
		wb_mux_sel          : std_logic; -- C
		wb_en               : std_logic; -- K
	end record control_word_t;

	constant CW_RTYPE: control_word_t := (
		fetch_en 			=> '1',
		fetch_stall 		=> '0',
		pc_en 				=> '1',
		jump_en				=> '0',
		call				=> '0',
		ret					=> '0',
		rf_rd1_en			=> '1',
		rf_rd2_en			=> '1',
		cmp_reg_notimm		=> '1',
		unsigned_id			=> '0',
		npc_sel				=> '0',
		hazard_reg_en		=> '1',
		id_en				=> '1',
		ex_en				=> '1',
		muxa_sel			=> '0',
		muxb_sel			=> '0',
		alu_opcode			=> ALU_ADD,
		set_cmp				=> SET_SEQ,
		sel_alu				=> '1',
		dram_we				=> '0',
		dram_re				=> '0',
		data_size			=> "00",
		mem_en				=> '1',
		wb_mux_sel			=> '0',
		wb_en				=> '1'
	);


	-- EXAMPLE PURPOSES
	--
	type prova is record
		test_sig: std_logic;
	end record prova;


	constant c_record_prova: prova := (
		test_sig => '0'
	);

end package record_CU;