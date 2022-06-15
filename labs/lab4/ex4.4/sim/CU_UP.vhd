library ieee;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity CU_UP is
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

architecture mix of CU_UP is

    constant MICROCODE_MEM_SIZE: integer := 16;
    constant CW_SIZE: integer := 13;  -- Control Word Size

    type ptr_t is array(0 to MICROCODE_MEM_SIZE-1) of integer;
    type lut_t is array(0 to 3*MICROCODE_MEM_SIZE-1) of std_logic_vector(CW_SIZE-1 downto 0);

    signal ptr: ptr_t := (
        0, -- NOP
        3, 
        6,
        9,
        12,
        15,
        18,
        21,
        24,
        27,
        30,
        33,
        36,
        39,
        42,
        45
    );

    signal lut: lut_t := (
        "0000000000000",  -- STAGE0 NOP
        "0000000000000",  -- STAGE1 NOP
        "0000000000000",  -- STAGE2 NOP
        
        "1110000000000",  -- STAGE0 R-Type
        "0000100100000",  -- STAGE1 R-Type
        "0000000000101",  -- STAGE2 R-Type
        
        "0110000000000",  -- STAGE0 I-TYPE ADDI1
        "0001100100000",  -- STAGE1 I-TYPE ADDI1
        "0000000000101",  -- STAGE2 I-TYPE ADDI1

        "0110000000000",  -- STAGE0 I-TYPE SUBI1
        "0001101100000",  -- STAGE1 I-TYPE SUBI1
        "0000000000101",  -- STAGE2 I-TYPE SUBI1
        
        "0110000000000",  -- STAGE0 I-TYPE ANDI1
        "0001110100000",  -- STAGE1 I-TYPE ANDI1
        "0000000000101",  -- STAGE2 I-TYPE ANDI1

        "0110000000000",  -- STAGE0 I-TYPE ORI1
        "0001111100000",  -- STAGE1 I-TYPE ORI1
        "0000000000101",  -- STAGE2 I-TYPE ORI1

        "1010000000000",  -- STAGE0 I-TYPE ADDI2
        "0000000100000",  -- STAGE1 I-TYPE ADDI2
        "0000000000101",  -- STAGE2 I-TYPE ADDI2

        "1010000000000",  -- STAGE0 I-TYPE SUBI2
        "0000001100000",  -- STAGE1 I-TYPE SUBI2
        "0000000000101",  -- STAGE2 I-TYPE SUBI2

        "1010000000000",  -- STAGE0 I-TYPE ANDI2
        "0000010100000",  -- STAGE1 I-TYPE ANDI2
        "0000000000101",  -- STAGE2 I-TYPE ANDI2

        "1010000000000",  -- STAGE0 I-TYPE ORI2
        "0000011100000",  -- STAGE1 I-TYPE ORI2
        "0000000000101",  -- STAGE2 I-TYPE ORI2

        "1010000000000",  -- STAGE0 I-TYPE MOV
        "0000000100000",  -- STAGE1 I-TYPE MOV
        "0000000000101",  -- STAGE2 I-TYPE MOV

        "0010000000000",  -- STAGE0 I-TYPE SREG1
        "0001000100000",  -- STAGE1 I-TYPE SREG1
        "0000000000101",  -- STAGE2 I-TYPE SREG1

        "0010000000000",  -- STAGE0 I-TYPE SREG2
        "0001000100000",  -- STAGE1 I-TYPE SREG2
        "0000000000101",  -- STAGE2 I-TYPE SREG2

        "1110000000000",  -- STAGE0 I-TYPE STMEM
        "0000000100000",  -- STAGE1 I-TYPE STMEM
        "0000000001100",  -- STAGE2 I-TYPE STMEM

        "0110000000000",  -- STAGE0 I-TYPE LDMEM1
        "0001100100000",  -- STAGE1 I-TYPE LDMEM1
        "0000000010111",  -- STAGE2 I-TYPE LDMEM1

        "1010000000000",  -- STAGE0 I-TYPE LDMEM2
        "0000000100000",  -- STAGE1 I-TYPE LDMEM2
        "0000000010111"   -- STAGE2 I-TYPE LDMEM2
    );

    signal uPC: integer := 0;
    signal counter: integer := 0;
    signal cw: std_logic_vector(CW_SIZE-1 downto 0);

begin

    -- Stage 0
    RF1 <= cw(CW_SIZE-1);
    RF2 <= cw(CW_SIZE-2);
    EN1 <= cw(CW_SIZE-3);

    -- Stage 1
    S1 <= cw(CW_SIZE-4);
    S2 <= cw(CW_SIZE-5); 
    ALU1 <= cw(CW_SIZE-6);
    ALU2 <= cw(CW_SIZE-7);
    EN2 <= cw(CW_SIZE-8);
            
    -- Stage 2
    RM <= cw(CW_SIZE-9);
    WM <= cw(CW_SIZE-10);
    EN3 <= cw(CW_SIZE-11);
    S3 <= cw(CW_SIZE-12);
    WF1 <= cw(CW_SIZE-13);


    uPC <= ptr(TO_INTEGER(unsigned(IR_OPCODE)));

    process(CLK, RST)
    begin

        if (RST = '0') then
            counter <= 0;
            cw <= (others => '0');
        elsif (rising_edge(CLK)) then
            
            counter <= counter + 1;
            if (counter = 2) then
                counter <= 0;
            end if;


            cw <= lut(uPC + counter);
            
            if (IR_OPCODE = RTYPE and counter = 1) then
                cw(7 downto 6) <= IR_FUNC(1 downto 0);
            end if;

        end if;

    end process;

end mix;