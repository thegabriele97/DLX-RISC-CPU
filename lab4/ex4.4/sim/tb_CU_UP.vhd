library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity tb_cu_up is
end entity;

architecture test of tb_cu_up is

    component CU_UP is
        generic (
            FUNC_SIZE          :     integer := 11;  -- Func Field Size for R-Type Ops
            OP_CODE_SIZE       :     integer := 6;  -- Op Code Size
            IR_SIZE            :     integer := 32  -- Instruction Register Size    
        );
        port(
            CLK                : in  std_logic;  -- Clock
            RST                : in  std_logic;  -- Reset:Active-Low
    
            -- Instruction Register
            IR_OPCODE          : in  std_logic_vector(OP_CODE_SIZE-1 downto 0);
            IR_FUNC            : in  std_logic_vector(FUNC_SIZE-1 downto 0);
    
            -- Stage 1
            RF1                : out std_logic;
            RF2                : out std_logic;
            WF1                : out std_logic; -- driven by last stage
            EN1                : out std_logic;
    
            -- Stage 2
            S1                 : out std_logic;
            S2                 : out std_logic;
            ALU1               : out std_logic;
            ALU2               : out std_logic;
            EN2                : out std_logic;
    
            -- Stage 3
            RM                 : out std_logic;
            WM                 : out std_logic;
            EN3                : out std_logic;
            S3                 : out std_logic
    
        );
    end component;

    signal CLK: std_logic := '0';
    signal RST: std_logic := '1';
    signal IR_OPCODE: std_logic_vector(6-1 downto 0) := (others => '0');
    signal IR_FUNC: std_logic_vector(11-1 downto 0);
    signal RF1, RF2, WF1, EN1, S1, S2, ALU1, ALU2, EN2, RM, WM, EN3, S3: std_logic;

begin

    DUT: CU_UP port map(CLK, RST, IR_OPCODE, IR_FUNC, RF1, RF2, WF1, EN1, S1, S2, ALU1, ALU2, EN2, RM, WM, EN3, S3);

    CLK <= not CLK after 1 ns;
	RST <= '0', '1' after 6 ns;


    CONTROL: process
    begin

        wait for 6 ns; 

        -- ADD RS1,RS2,RD -> Rtype
        IR_OPCODE <= RTYPE;
        IR_FUNC <= RTYPE_ADD;
        wait for 6 ns;

        IR_OPCODE <= RTYPE;
        IR_FUNC <= RTYPE_AND;
        wait for 6 ns;

        IR_OPCODE <= NOP;
        IR_FUNC <= (others => '0');
        wait for 6 ns;

        IR_OPCODE <= ITYPE_ADDI1;
        IR_FUNC <= (others => '0');
        wait for 6 ns;

        IR_OPCODE <= ITYPE_SMEM2;
        IR_FUNC <= (others => '0');
        wait for 6 ns;

        IR_OPCODE <= ITYPE_LMEM1;
        IR_FUNC <= (others => '0');
        wait for 6 ns;

        wait;
    end process;


end test;
