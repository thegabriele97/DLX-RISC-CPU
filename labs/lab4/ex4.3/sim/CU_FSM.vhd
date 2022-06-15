library ieee;
use IEEE.std_logic_1164.all;
use work.myTypes.all;

entity CU_FSM is
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

architecture behav of CU_FSM is

    constant CW_SIZE: integer := 13;  -- Control Word Size

    type fsm_state is ( 
        
        init,

        -- NOP states
        op_nop_0, op_nop_1, op_nop_2, 
        
        -- RTYPE states
        op_rtype_0, op_rtype_1, op_rtype_2, 
        
        -- ITYPE states for ADDI1, SUBI1, ANDI1, ORI1
        op_itype_alu1_0, 
        op_itype_alu1_add, op_itype_alu1_sub, op_itype_alu1_and, op_itype_alu1_or,
        op_itype_alu1_2,

        -- ITYPE states for ADDI2, SUBI2, ANDI2, ORI2
        op_itype_alu2_0, 
        op_itype_alu2_add, op_itype_alu2_sub, op_itype_alu2_and, op_itype_alu2_or,
        op_itype_alu2_2,
        
        -- MOV states
        op_mov_0, op_mov_1, op_mov_2, 
        
        -- SREG1-2 states
        op_sreg_0, op_sreg_1, op_sreg_2, 

        -- STORE MEM states
        op_stmem_0, op_stmem_1, op_stmem_2, 

        -- LOAD MEM states
        op_ldmem1_0, op_ldmem2_0,
        op_ldmem1_1, op_ldmem2_1,
        op_ldmem_2

    );

    function get_nextstate(OPCODE: std_logic_vector(OP_CODE_SIZE-1 downto 0))
        return fsm_state is
    begin

        if (OPCODE = NOP) then
            return op_nop_0;
        
        elsif (OPCODE = RTYPE) then
            return op_rtype_0;
        
        elsif (OPCODE = ITYPE_ADDI1 or OPCODE = ITYPE_SUBI1 or OPCODE = ITYPE_ANDI1 or OPCODE = ITYPE_ORI1) then
            return op_itype_alu1_0;
        
        elsif (OPCODE = ITYPE_ADDI2 or OPCODE = ITYPE_SUBI2 or OPCODE = ITYPE_ANDI2 or OPCODE = ITYPE_ORI2) then
            return op_itype_alu1_0;

        elsif (OPCODE = ITYPE_MOV) then
            return op_mov_0;

        elsif (OPCODE = ITYPE_SREG1 or OPCODE = ITYPE_SREG2) then
            return op_sreg_0;

        elsif (OPCODE = ITYPE_SMEM2) then
            return op_stmem_0;

        elsif (OPCODE = ITYPE_LMEM1) then
            return op_ldmem1_0;
            
        elsif (OPCODE = ITYPE_LMEM2) then
            return op_ldmem2_0;
        
        else
            return op_nop_0;
        
        end if;

    end get_nextstate;

    signal curr_state, next_state: fsm_state;

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

    process(curr_state, IR_OPCODE, IR_FUNC)
    begin

        next_state <= curr_state;
        cw <= (others => '0');

        case curr_state is

            when init =>
                next_state <= get_nextstate(IR_OPCODE); 

            when op_nop_0 =>
                next_state <= op_nop_1;

            when op_nop_1 =>
                next_state <= op_nop_2;
            
            when op_nop_2 =>
                next_state <= get_nextstate(IR_OPCODE);
            
            when op_rtype_0 =>
                cw(CW_SIZE-1 downto CW_SIZE-3) <= "111";
                next_state <= op_rtype_1;

            when op_rtype_1 =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "01001";
                cw(CW_SIZE-6 downto CW_SIZE-7) <= IR_FUNC(1 downto 0);
                next_state <= op_rtype_2;

            when op_rtype_2 =>
                cw(CW_SIZE-9 downto CW_SIZE-13) <= "00101";
                next_state <= get_nextstate(IR_OPCODE);

            when op_itype_alu1_0 =>
                cw(CW_SIZE-1 downto CW_SIZE-3) <= "011";
                
                if (IR_OPCODE = ITYPE_ADDI1) then
                    next_state <= op_itype_alu1_add;
                elsif (IR_OPCODE = ITYPE_SUBI1) then
                    next_state <= op_itype_alu1_sub;
                elsif (IR_OPCODE = ITYPE_ANDI1) then
                    next_state <= op_itype_alu1_and;
                elsif (IR_OPCODE = ITYPE_ORI1) then
                    next_state <= op_itype_alu1_or;
                end if;

            when op_itype_alu1_add =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "11001";
                next_state <= op_itype_alu1_2;

            when op_itype_alu1_sub =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "11011";
                next_state <= op_itype_alu1_2;

            when op_itype_alu1_and =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "11101";
                next_state <= op_itype_alu1_2;

            when op_itype_alu1_or =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "11111";
                next_state <= op_itype_alu1_2;
            
            when op_itype_alu1_2 =>
                cw(CW_SIZE-9 downto CW_SIZE-13) <= "00101";
                next_state <= get_nextstate(IR_OPCODE);
                
            when op_ldmem1_0 => 
                cw(CW_SIZE-1 downto CW_SIZE-3) <= "011";
                next_state <= op_ldmem1_1;
            when op_ldmem2_0 =>
                cw(CW_SIZE-1 downto CW_SIZE-3) <= "101";
                next_state <= op_ldmem2_1;
            when op_ldmem1_1 =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "11001";
                next_state <= op_ldmem_2;
            when op_ldmem2_1 => 
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "00001";
                next_state <= op_ldmem_2;
            when op_ldmem_2 => 
                cw(CW_SIZE-9 downto CW_SIZE-13) <= "10111";
                next_state <= get_nextstate(IR_OPCODE);

			when op_mov_0 =>
                cw(CW_SIZE-1 downto CW_SIZE-3) <= "101";
                next_state <= op_mov_1;

			when op_mov_1 =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "00001";
                next_state <= op_mov_2;

			when op_mov_2 =>
                cw(CW_SIZE-9 downto CW_SIZE-13) <= "00101";
                next_state <= get_nextstate(IR_OPCODE);

			when op_sreg_0 =>
                cw(CW_SIZE-1 downto CW_SIZE-3) <= "001";
                next_state <= op_sreg_1;

			when op_sreg_1 =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "10001";
                next_state <= op_sreg_2;

			when op_sreg_2 =>
                cw(CW_SIZE-9 downto CW_SIZE-13) <= "00101";
                next_state <= get_nextstate(IR_OPCODE);
            
            
            when op_itype_alu2_0 =>
                cw(CW_SIZE-1 downto CW_SIZE-3) <= "101";
                
                if (IR_OPCODE = ITYPE_ADDI1) then
                    next_state <= op_itype_alu2_add;
                elsif (IR_OPCODE = ITYPE_SUBI1) then
                    next_state <= op_itype_alu2_sub;
                elsif (IR_OPCODE = ITYPE_ANDI1) then
                    next_state <= op_itype_alu2_and;
                elsif (IR_OPCODE = ITYPE_ORI1) then
                    next_state <= op_itype_alu2_or;
                end if;

            when op_itype_alu2_add =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "00001";
                next_state <= op_itype_alu2_2;

            when op_itype_alu2_sub =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "00011";
                next_state <= op_itype_alu2_2;

            when op_itype_alu2_and =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "00101";
                next_state <= op_itype_alu2_2;

            when op_itype_alu2_or =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "00111";
                next_state <= op_itype_alu2_2;
            
            when op_itype_alu2_2 =>
                cw(CW_SIZE-9 downto CW_SIZE-13) <= "00101";
                next_state <= get_nextstate(IR_OPCODE);


            
            when op_stmem_0 =>
                cw(CW_SIZE-1 downto CW_SIZE-3) <= "111";
                next_state <= op_stmem_1;

            when op_stmem_1 =>
                cw(CW_SIZE-4 downto CW_SIZE-8) <= "00001";
                next_state <= op_stmem_2;

            when op_stmem_2 =>
                cw(CW_SIZE-9 downto CW_SIZE-13) <= "01100";
                next_state <= get_nextstate(IR_OPCODE);
            

            when others => 
                next_state <= init;

        end case;

    end process;

    process(CLK, RST)
    begin

        if (RST = '0') then
            curr_state <= init;
        elsif (rising_edge(CLK)) then
            curr_state <= next_state;
        end if;

    end process;


end behav;
