library ieee;
use ieee.std_logic_1164.all;

package myTypes is

-- Control unit input sizes
    constant OP_CODE_SIZE : integer :=  6;                                              -- OPCODE field size
    constant FUNC_SIZE    : integer :=  11;                                             -- FUNC field size

-- R-Type instruction -> FUNC field
    constant RTYPE_ADD : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000000";    -- ADD RS1,RS2,RD
    constant RTYPE_SUB : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000001";    -- SUB RS1,RS2,RD
    constant RTYPE_AND : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000010";    -- AND RS1,RS2,RD
    constant RTYPE_OR  : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000011";    -- OR  RS1,RS2,RD
    
-- R-Type instruction -> OPCODE field
    constant NOP : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000000";
    constant RTYPE : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000001";          -- for ADD, SUB, AND, OR register-to-register operation

-- I-Type instruction -> OPCODE field
    constant ITYPE_ADDI1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000010";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_SUBI1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000011";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_ANDI1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000100";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_ORI1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000101";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_ADDI2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000110";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_SUBI2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000111";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_ANDI2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001000";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_ORI2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001001";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_MOV : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001010";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_SREG1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001011";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_SREG2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001100";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_SMEM2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001101";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_LMEM1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001110";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_LMEM2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001111";    -- ADDI1 RS1,RD,INP1
    

-- Change the values of the instructions coding as you want, depending also on the type of control unit choosen

end myTypes;

