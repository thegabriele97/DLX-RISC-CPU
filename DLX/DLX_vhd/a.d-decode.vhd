library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decode is
    generic (
        N_BIT_INSTR:    integer := 32;
        N_BIT_ADDR_RF:  integer := 5;
        N_BIT_DATA:     integer := 32;            
        OPCODE_SIZE:    integer := 6  -- Operation Code Size
    );
    port (
        CLK:        in std_logic;
        RST:        in std_logic;
        INSTR:      in std_logic_vector(N_BIT_INSTR - 1 downto 0);      -- Instruction
        ADD_WB:     in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);      -- 
        HAZARD_SIG: out std_logic;
        ADD_RS1:    out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address 1 that goes in the register file
        ADD_RS2:    out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address 2 that goes in the register file
        ADD_WS1:    out std_logic_vector(N_BIT_ADDR_RF-1 downto 0);     -- Address for the write back that goes in the register file
        IMM:       out std_logic_vector(N_BIT_DATA-1 downto 0)
    );
end entity;

architecture structural of decode is

    component hazard_table is
        generic (
            N_REGS_LOG  : integer := 8
        );
        port (
            CLK:        in std_logic;
            RST:        in std_logic;
            WR1:        in std_logic;       -- Enable write 1 signal
            WR2:        in std_logic;       -- Enable write 2 signal
            ADD_WR1:    in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address wirte 1 signal
            ADD_WR2:    in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address wirte 2 signal
            
            ADD_CHECK1:  in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address reader 2 signal
            ADD_CHECK2:  in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address reader 2 signal

            BUSY:       out std_logic
        );
    end component;
    
    signal op_code: std_logic_vector(OPCODE_SIZE-1 downto 0);
    
    signal i_RS1: std_logic_vector(N_BIT_ADDR_RF-1 downto 0);
    signal i_RS2: std_logic_vector(N_BIT_ADDR_RF-1 downto 0);
    signal i_WS1: std_logic_vector(N_BIT_ADDR_RF-1 downto 0);

    signal i_WR1: std_logic;
    signal i_WR2: std_logic;

begin

    ADD_RS1 <= i_RS1;
    ADD_RS2 <= i_RS2;
    ADD_WS1 <= i_WS1;

    op_code <= INSTR(N_BIT_INSTR-1 downto N_BIT_INSTR-OPCODE_SIZE);

    process(op_code, INSTR)
    begin

        i_WR1 <= '1';
        i_WR2 <= '1';

        if (op_code = "000000") then -- R_TYPE
        
            i_RS1 <= INSTR(N_BIT_INSTR-OPCODE_SIZE-1 downto N_BIT_INSTR-OPCODE_SIZE-N_BIT_ADDR_RF);
            i_RS2 <= INSTR(N_BIT_INSTR-OPCODE_SIZE-N_BIT_ADDR_RF-1 downto N_BIT_INSTR-OPCODE_SIZE-2*N_BIT_ADDR_RF);
            i_WS1 <= INSTR(N_BIT_INSTR-OPCODE_SIZE-2*N_BIT_ADDR_RF-1 downto N_BIT_INSTR-OPCODE_SIZE-3*N_BIT_ADDR_RF);     -- RD field
        
            IMM <= (others => '0');

        elsif (op_code = "000011" or op_code = "000010") then -- J_TYPE

            i_WR1 <= '0';
            i_WR2 <= '0';

            i_RS1 <= (others => '0');
            i_RS2 <= (others => '0');
            i_WS1 <= (others => '0');

            IMM <= INSTR(N_BIT_INSTR-OPCODE_SIZE-1 downto 0);

        else -- I_TYPE
        
            i_RS1 <= INSTR(N_BIT_INSTR-OPCODE_SIZE-1 downto N_BIT_INSTR-OPCODE_SIZE-N_BIT_ADDR_RF);
            i_RS2 <= (OTHERS => '0');
            i_WS1 <= INSTR(N_BIT_INSTR-OPCODE_SIZE-N_BIT_ADDR_RF-1 downto N_BIT_INSTR-OPCODE_SIZE-2*N_BIT_ADDR_RF);

            IMM <= (others => INSTR(N_BIT_INSTR-OPCODE_SIZE-2*N_BIT_ADDR_RF));
            
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
        BUSY => HAZARD_SIG
    );
    
end architecture structural;