library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decode is
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
end entity;

architecture structural of decode is

    component hazard_table is
        generic (
            N_REGS_LOG: integer := 8
        );
        port (
            CLK:        in std_logic;
            RST:        in std_logic;
            WR1:        in std_logic;       -- Enable write 1 signal
            WR2:        in std_logic;       -- Enable write 2 signal
            ADD_WR1:    in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address wirte 1 signal
            ADD_WR2:    in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address wirte 2 signal
            ADD_CHECK1:  in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address reader 1 signal
            ADD_CHECK2:  in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address reader 2 signal
            BUSY:       out std_logic;     -- Signal to identify that there is an hazard. When '1' there is an hazard, when '0' there are no hazard
            ALL_ZEROS: out std_logic
        );
    end component;
    
    signal op_code: std_logic_vector(OPCODE_SIZE-1 downto 0);
    
    signal i_RS1: std_logic_vector(N_BIT_ADDR_RF-1 downto 0);
    signal i_RS2: std_logic_vector(N_BIT_ADDR_RF-1 downto 0);
    signal i_WS1: std_logic_vector(N_BIT_ADDR_RF-1 downto 0);

    signal i_WR1: std_logic;
    signal i_WR2: std_logic;

    signal i_PC_OFFSET: std_logic_vector(PC_SIZE-1 downto 0); -- with sign ext -- TO THE ADDER NPC

begin

    ADD_RS1 <= i_RS1;
    ADD_RS2 <= i_RS2;
    ADD_WS1 <= i_WS1;

    NPC <= std_logic_vector(unsigned(CPC) + unsigned(i_PC_OFFSET)) when (op_code = "000010" or op_code = "000011")
        else std_logic_vector(unsigned(CPC) + 4); -- TODO: temporary, substitute with the adder


    op_code <= INSTR(N_BIT_INSTR-1 downto N_BIT_INSTR-OPCODE_SIZE);
    
    process(INSTR)
    begin

        i_PC_OFFSET <= (others => INSTR(N_BIT_INSTR-OPCODE_SIZE-1)); -- sign extension
        i_PC_OFFSET(N_BIT_INSTR-OPCODE_SIZE-1 downto 0) <= INSTR(N_BIT_INSTR-OPCODE_SIZE-1 downto 0);

    end process;

    process(op_code, INSTR)
    begin

        i_WR1 <= '1';
        i_WR2 <= '1';

        if (op_code = "000000") then -- R_TYPE
        
            i_RS1 <= INSTR(N_BIT_INSTR-OPCODE_SIZE-1 downto N_BIT_INSTR-OPCODE_SIZE-N_BIT_ADDR_RF);
            i_RS2 <= INSTR(N_BIT_INSTR-OPCODE_SIZE-N_BIT_ADDR_RF-1 downto N_BIT_INSTR-OPCODE_SIZE-2*N_BIT_ADDR_RF);
            i_WS1 <= INSTR(N_BIT_INSTR-OPCODE_SIZE-2*N_BIT_ADDR_RF-1 downto N_BIT_INSTR-OPCODE_SIZE-3*N_BIT_ADDR_RF);     -- RD field
        
            IMM <= (others => '0');

        elsif (op_code = "000010") then -- J_TYPE: J

            i_WR1 <= '0'; -- Inhibition of i_WS1. It's 0 but we are not writing into it so no data hazard control

            i_RS1 <= (others => '0');
            i_RS2 <= (others => '0');
            i_WS1 <= (others => '0');

            IMM <= (others => '0'); -- The new PC is computed by the DECODE, the EXEC stage won't be executed

        elsif (op_code = "000011") then -- J_TYPE: JAL

            -- JAL so we have to execute ADDI R31, R0, PC 
            i_RS1 <= (others => '0'); -- R0
            i_RS2 <= (others => '0');
            i_WS1 <= "11111"; -- R31

            -- The IMM is the CPC that will be written into R31
            IMM <= (others => '0');
            IMM <= CPC;

        else -- I_TYPE
        
            i_RS1 <= INSTR(N_BIT_INSTR-OPCODE_SIZE-1 downto N_BIT_INSTR-OPCODE_SIZE-N_BIT_ADDR_RF);
            i_RS2 <= (OTHERS => '0');
            i_WS1 <= INSTR(N_BIT_INSTR-OPCODE_SIZE-N_BIT_ADDR_RF-1 downto N_BIT_INSTR-OPCODE_SIZE-2*N_BIT_ADDR_RF);

            IMM <= (others => INSTR(N_BIT_INSTR-OPCODE_SIZE-2*N_BIT_ADDR_RF-1));
            IMM(N_BIT_INSTR-OPCODE_SIZE-2*N_BIT_ADDR_RF-1 downto 0) <= INSTR(N_BIT_INSTR-OPCODE_SIZE-2*N_BIT_ADDR_RF-1 downto 0);
        
        end if;

    end process;


    HAZARD_CTRL: hazard_table generic map(
        N_REGS_LOG => N_BIT_ADDR_RF
    ) port map(
        CLK => CLK,
        RST => RST,
        WR1 => i_WR1,
        WR2 => i_WR2,
        ADD_WR1 => i_WS1,
        ADD_WR2 => ADD_WB,
        ADD_CHECK1 => i_RS1,
        ADD_CHECK2 => i_RS2,
        BUSY => HAZARD_SIG,
        ALL_ZEROS => ALL_ZEROS
    );
    
end architecture structural;