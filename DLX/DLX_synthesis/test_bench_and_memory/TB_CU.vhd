library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;


entity TB_CU is
end entity;

architecture cu_test of TB_CU is

    
    component dlx_cu_FUNC_SIZE11_OP_CODE_SIZE6_IR_SIZE32 is

        port( Clk, Rst : in std_logic;  IR_IN : in std_logic_vector (31 downto 0);  
                HAZARD_SIG, BUSY_WINDOW, SPILL, FILL, IRAM_READY : in std_logic;  
                PIPLIN_IF_EN, IF_STALL, PC_EN, JUMP_EN, CALL, RET, SEL_CMPB, 
                UNSIGNED_ID, NPC_SEL, HAZARD_TABLE_WR1, PIPLIN_ID_EN : out std_logic; 
                LGET : in std_logic_vector (1 downto 0);  PIPLIN_EX_EN, MUXA_SEL, 
                MUXB_SEL : out std_logic;  ALU_OPCODE : out alu_op_sig_t;  
                SEL_ALU_SETCMP : out std_logic;  SEL_LGET : out std_logic_vector (2 
                downto 0);  DRAM_READY : in std_logic;  DRAM_WE, DRAM_RE, DRAM_ME : 
                out std_logic;  DATA_SIZE : out std_logic_vector (1 downto 0);  
                UNSIG_SIGN_N, PIPLIN_MEM_EN, WB_MUX_SEL, PIPLIN_WB_EN, RF_RD1_EN, 
                RF_RD2_EN : out std_logic;  dCW, dCW_IF : out std_logic_vector (31 
                downto 0);  dCW_ID : out std_logic_vector (27 downto 0);  dCW_EX : out
                std_logic_vector (18 downto 0);  dCW_MEM : out std_logic_vector (6 
                downto 0);  dCW_WB : out std_logic_vector (1 downto 0);  i : out 
                INTEGER;  cw_memory2 : out std_logic_vector (1983 downto 0));

    end component;

    signal Clk: std_logic := '0';
    signal Rst, hazard_sig, busy_window, spill, fill, iram_ready, piplin_if_en, if_stall, pc_en, jump_en, call, ret, sel_cmpb, unsigned_id, npc_sel, hazard_table_wr1, piplin_id_en, piplin_ex_en, muxa_sel, muxb_sel, sel_alu_setcmp, dram_ready, dram_we, dram_re, dram_me, unsig_sign_n, piplin_mem_en, wb_mux_sel, piplin_wb_en, rf_rd1_en, rf_rd2_en: std_logic;
    signal ir_in, dCW_IF : std_logic_vector(31 downto 0); 
    signal LGET, DATA_SIZE, dCW_WB : std_logic_vector(1 downto 0);
    signal SEL_LGET: std_logic_vector(2 downto 0);
    signal dCW: std_logic_vector(31 downto 0);
    signal dcw_id : std_logic_vector(27 downto 0);
    signal dCW_EX : std_logic_vector(18 downto 0);
    signal dCW_MEM : std_logic_vector(6 downto 0);
    signal cw_memory2 : std_logic_vector(1983 downto 0);
    signal alu_opcode: alu_op_sig_t;
    signal i: integer;
begin

	Clk <= not Clk after 2.5 ns;
	Rst <= '1', '0' after 8 ns;
    
    ir_in <= x"0800006c";
    HAZARD_SIG <= '0';
    BUSY_WINDOW <= '0';
    SPILL <= '0';
    FILL <= '0';
    IRAM_READY <= '1';
    LGET <= "00";
    DRAM_READY <= '0';

    DUT: dlx_cu_FUNC_SIZE11_OP_CODE_SIZE6_IR_SIZE32 port map(
        Clk, Rst, ir_in, hazard_sig, busy_window, 
        spill, fill, iram_ready, piplin_if_en, 
        if_stall, pc_en, jump_en, call, ret, sel_cmpb, 
        unsigned_id, npc_sel, hazard_table_wr1, piplin_id_en, 
        LGET, piplin_ex_en, muxa_sel, muxb_sel, alu_opcode,
        sel_alu_setcmp, SEL_LGET, dram_ready, dram_we, dram_re, dram_me,
        DATA_SIZE, unsig_sign_n, piplin_mem_en, wb_mux_sel, piplin_wb_en,
        rf_rd1_en, rf_rd2_en, dCW, dCW_IF, dcw_id, dcw_ex, dCW_MEM, dCW_WB, i, cw_memory2 );

end architecture;