library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity CU_LUT is
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
        S3                 : out std_logic;
        WF1                : out std_logic  -- driven by last stage

    );
end entity;

architecture mix of CU_LUT is

    constant MICROCODE_MEM_SIZE: integer := 16;
    constant CW_SIZE: integer := 13;  -- Control Word Size

    type lut_t is array(0 to MICROCODE_MEM_SIZE-1) of std_logic_vector(CW_SIZE-1 downto 0);
    
    signal lut: lut_t := (
        "0000000000000",  -- NOP
        "1110100100101",  -- R-Type
        "0111100100101",  -- I-TYPE ADDI1
        "0111101100101",  -- I-TYPE SUBI1
        "0111110100101",  -- I-TYPE ANDI1
        "0111111100101",  -- I-TYPE ORI1
        "1010000100101",  -- I-TYPE ADDI2
        "1010001100101",  -- I-TYPE SUBI2
        "1010010100101",  -- I-TYPE ANDI2
        "1010011100101",  -- I-TYPE ORI2
        "1010000100101",  -- I-TYPE MOV
        "0011000100101",  -- I-TYPE SREG1
        "0011000100101",  -- I-TYPE SREG2
        "1110000101100",  -- I-TYPE STMEM
        "0111100110111",  -- I-TYPE LDMEM1
        "1010000110111"   -- I-TYPE LDMEM2
    );

    signal cw: std_logic_vector(CW_SIZE-1 downto 0);
    signal cw0: std_logic_vector(CW_SIZE-1 downto 0);
    signal cw1: std_logic_vector(CW_SIZE-4 downto 0);
    signal cw2: std_logic_vector(CW_SIZE-9 downto 0);

begin

    
    RF1 <= cw0(CW_SIZE-1);
    RF2 <= cw0(CW_SIZE-2);
    EN1 <= cw0(CW_SIZE-3);
    
    
    S1 <= cw1(CW_SIZE-4);
    S2 <= cw1(CW_SIZE-5);
    ALU1 <= cw1(CW_SIZE-6);
    ALU2 <= cw1(CW_SIZE-7);
    EN2  <= cw1(CW_SIZE-8);
    

    RM  <= cw2(CW_SIZE-9);
    WM  <= cw2(CW_SIZE-10);
    EN3 <= cw2(CW_SIZE-11);
    S3  <= cw2(CW_SIZE-12);
    WF1 <= cw2(CW_SIZE-13);
    

    process(CLK, RST)
    begin

        if (RST = '0') then
            cw0 <= (others => '0');
            cw1 <= (others => '0');
            cw2 <= (others => '0');
        elsif (rising_edge(CLK)) then
            cw0 <= cw;
            cw1 <= cw0(CW_SIZE-4 downto 0);
            cw2 <= cw1(CW_SIZE-9 downto 0);
        end if;

    end process;

    process(IR_OPCODE, IR_FUNC)
    begin
        
        cw <= lut(TO_INTEGER(unsigned(IR_OPCODE)));
        
        if (IR_OPCODE = RTYPE) then
            cw(7 downto 6) <= IR_FUNC(1 downto 0);
        end if;

    end process;


end mix;