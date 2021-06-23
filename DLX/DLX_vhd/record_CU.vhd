library ieee;
use ieee.std_logic_1164.all;
use work.myTypes.all;
 
package record_CU is

  -- Control word bits
  type control_word is record
    fetch_en            : std_logic; -- F
    fecth_stall         : std_logic; -- S
    pc_en               : std_logic; -- P
    jump_en             : std_logic; -- J
    call                : std_logic; -- L
    ret                 : std_logic; -- E
    rf_rd1_en           : std_logic; -- 1
    rf_rd2_en           : std_logic; -- 2
    sel_cmpb            : std_logic; -- P
    unsigned_id         : std_logic; -- U
    npc_sel             : std_logic; -- N
    hazard_table_wr1    : std_logic; -- H
    id_en               : std_logic; -- D
    ex_en               : std_logic; -- X
    muxa_sel            : std_logic; -- A
    muxb_sel            : std_logic; -- B
    alu_opcode          : std_logic_vector(alu_op_sig_t'length - 1 downto 0); -- -----
    set_cmp             : std_logic_vector(set_op_sig_t'length - 1 downto 0); -- +++
    sel_alu             : std_logic; -- T
    dram_we             : std_logic; -- W
    dram_re             : std_logic; -- R
    data_size           : std_logic_vector(1 downto 0); -- 10
    mem_en              : std_logic; -- M
    wb_mux_sel          : std_logic; -- C
    wb_en               : std_logic; -- K
  end record control_word;

  
  -- EXAMPLE PURPOSES
  --
  type prova is record
    test_sig: std_logic;
  end record prova;


  constant c_record_prova: prova := (
    test_sig => '0'
  );

end package record_CU;