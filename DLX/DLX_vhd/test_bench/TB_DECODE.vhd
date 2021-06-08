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
            N_BIT_DATA:     integer := 32;            
            OPCODE_SIZE:    integer := 6;  -- Operation Code Size
            PC_SIZE      : integer := 32
        );
        port (
            CLK:        in std_logic;
            RST:        in std_logic;
            INSTR:      in std_logic_vector(N_BIT_INSTR - 1 downto 0);      -- Instruction
            ADD_WB:     in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);      -- 
            CPC:        in std_logic_vector(PC_SIZE-1 downto 0);
            HAZARD_SIG: out std_logic;
            ADD_RS1:    out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address 1 that goes in the register file
            ADD_RS2:    out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address 2 that goes in the register file
            ADD_WS1:    out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address for the write back that goes in the register file
            IMM:        out std_logic_vector(N_BIT_DATA-1 downto 0);
            ALL_ZEROS:  out std_logic;
            NPC:        out std_logic_vector(PC_SIZE-1 downto 0)
        );
    end component;
    
    signal CLK: std_logic := '0';
    signal RST, HAZARD_SIG: std_logic;
    signal INSTR: std_logic_vector(32 - 1 downto 0);
    signal ADD_WB, ADD_RS1, ADD_RS2, ADD_WS1: std_logic_vector(5-1 downto 0); 
    signal IMM: std_logic_vector(32-1 downto 0);
    signal CPC, NPC: std_logic_vector(32-1 downto 0);
    signal ALL_ZEROS: std_logic;

begin

    DUT: decode generic map(32, 5, 32, 6, 32) port map(CLK, RST, INSTR, ADD_WB, CPC, HAZARD_SIG, ADD_RS1, ADD_RS2, ADD_WS1, IMM, ALL_ZEROS, NPC);

    process
    begin

        wait for 0.5 ns;
        CLK <= not CLK;

    end process;

    process
    begin

        wait until CLK = '0';
        
        ADD_WB <= (others => '0');
        RST <= '1';
        wait until CLK = '1';

        wait until CLK = '0';
        RST <= '0';

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

        wait;

    end process;

end test;