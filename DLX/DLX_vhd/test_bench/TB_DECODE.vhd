library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_decode is
end entity;

architecture test of tb_decode is

    component decode is
        generic (
            N_BIT_INSTR:    integer := 32;
            N_BIT_ADDR_RF:  integer := 5;
<<<<<<< HEAD
            N_BIT_DATA:     integer := 32;
            OPCODE_SIZE:    integer := 6;  -- Operation Code Size
            PC_SIZE:        integer := 32
=======
            N_BIT_DATA:     integer := 32;            
            OPCODE_SIZE:    integer := 6;  -- Operation Code Size
            PC_SIZE      : integer := 32
>>>>>>> DLX-WIP
        );
        port (
            CLK:        in std_logic;
            RST:        in std_logic;
            INSTR:      in std_logic_vector(N_BIT_INSTR - 1 downto 0);      -- Instruction
<<<<<<< HEAD
            ADD_WB:     in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);      -- Address for the write back
            CPC:        in std_logic_vector(PC_SIZE-1 downto 0);            -- Current program counter
            RD1:        in std_logic_vector(N_BIT_DATA-1 downto 0);         -- Data coming from the read port 1 of the Data Path
            RD2:        in std_logic_vector(N_BIT_DATA-1 downto 0);         -- Data coming from the read port 2 of the Data Path
            JUMP_EN:    in std_logic;
=======
            ADD_WB:     in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);      -- 
            CPC:        in std_logic_vector(PC_SIZE-1 downto 0);
>>>>>>> DLX-WIP
            HAZARD_SIG: out std_logic;
            ADD_RS1:    out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address 1 that goes in the register file
            ADD_RS2:    out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address 2 that goes in the register file
            ADD_WS1:    out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address for the write back that goes in the register file
            IMM:        out std_logic_vector(N_BIT_DATA-1 downto 0);
<<<<<<< HEAD
            NPC:        out std_logic_vector(PC_SIZE-1 downto 0);           -- Next program counter
            PC_OVF:     out std_logic;                                      -- Signal for PC overflow

            -- Signal that goes to the control unit
            a_le_b: out std_logic;
            a_l_b: 	out std_logic;
            a_g_b: 	out std_logic;
            a_ge_b: out std_logic;
            a_e_b: 	out std_logic
=======
            ALL_ZEROS:  out std_logic;
            NPC:        out std_logic_vector(PC_SIZE-1 downto 0)
>>>>>>> DLX-WIP
        );
    end component;

    signal CLK: std_logic := '0';
    signal RST, HAZARD_SIG: std_logic;
    signal INSTR: std_logic_vector(32 - 1 downto 0);
<<<<<<< HEAD
    signal ADD_WB, ADD_RS1, ADD_RS2, ADD_WS1: std_logic_vector(5-1 downto 0);
    signal IMM: std_logic_vector(32-1 downto 0);
    signal a_le_b, a_l_b, a_g_b, a_ge_b, a_e_b: std_logic;
    signal CPC, NPC: std_logic_vector(32-1 downto 0);
    signal RD1, RD2: std_logic_vector(32-1 downto 0);
    signal JUMP_EN: std_logic;
    signal PC_OVF: std_logic;

begin

    DUT: decode generic map(32, 5, 32, 6, 32) port map(CLK, RST, INSTR, ADD_WB, CPC, RD1, RD2, JUMP_EN, HAZARD_SIG, ADD_RS1, ADD_RS2, ADD_WS1, IMM, NPC, PC_OVF, a_le_b, a_l_b, a_g_b, a_ge_b, a_e_b);
=======
    signal ADD_WB, ADD_RS1, ADD_RS2, ADD_WS1: std_logic_vector(5-1 downto 0); 
    signal IMM: std_logic_vector(32-1 downto 0);
    signal CPC, NPC: std_logic_vector(32-1 downto 0);
    signal ALL_ZEROS: std_logic;

begin

    DUT: decode generic map(32, 5, 32, 6, 32) port map(CLK, RST, INSTR, ADD_WB, CPC, HAZARD_SIG, ADD_RS1, ADD_RS2, ADD_WS1, IMM, ALL_ZEROS, NPC);
>>>>>>> DLX-WIP

    process
    begin

        wait for 0.5 ns;
        CLK <= not CLK;

    end process;

    process
    begin

        JUMP_EN <= '0';
        CPC <= x"00000007";
        wait until CLK = '0';
        ADD_WB <= (others => '0');
        RST <= '1';
        wait until CLK = '1';

        wait until CLK = '0';
        RST <= '0';
        -- Test for the comparator

        RD1 <= x"00000002";
        RD2 <= x"00000003";

        wait for 1 ns;
        RD1 <= x"00000003";
        RD2 <= x"00000002";

        wait for 1 ns;
        RD1 <= x"00000003";
        RD2 <= x"00000003";

        -- RTYPE
        INSTR <= x"00640828";
        wait for 1 ns;

        INSTR <= x"00A6102D";
        wait for 1 ns;

        INSTR <= x"0022182C";
        wait for 1 ns;

        INSTR <= x"0022202A";
        wait for 1 ns;

        INSTR <= x"00222820";
        wait for 1 ns;

        INSTR <= x"00653025";
        wait for 1 ns;


        -- JTYPE
        JUMP_EN <= '1';

        INSTR <= x"08000007";
        wait for 1 ns;

        wait;

    end process;

end test;
