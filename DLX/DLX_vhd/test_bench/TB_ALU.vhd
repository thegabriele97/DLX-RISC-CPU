library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.myTypes.all;

entity tb_alu is
end entity;

architecture test of tb_alu is

    component ALU is

        generic (
            N_BIT_DATA      : integer := 32;        -- generic data bit width
            N_OPSEL         : integer := 2          -- number of bit needed for the ALU operations
        );
    
        port (

            INA:    in std_logic_vector(N_BIT_DATA-1 downto 0);
            INB:    in std_logic_vector(N_BIT_DATA-1 downto 0);

            OP:     in std_logic_vector(N_OPSEL+3-1 downto 0);
            
            -- AVAILABLE OPERATIONS
            -- OP := 000 00 -> ADD
            -- OP := 001 00 -> SUB
            -- OP := 000 01 -> MUL

            -- OP := 000 10 -> AND
            -- OP := 001 10 -> NAND
            -- OP := 010 10 -> OR
            -- OP := 011 10 -> NOR
            -- OP := 100 10 -> XOR
            -- OP := 101 10 -> XNOR

            -- OP := 000 11 -> SHIFT LEFT
            -- OP := 001 11 -> SHIFT RIGHT
            -- OP := 010 11 -> ARITH SHIFT LEFT
            -- OP := 011 11 -> ARITH SHIFT RIGHT
            -- OP := 100 11 -> ROTATE LEFT
            -- OP := 101 11 -> ROTATE RIGHT


            Y:      out std_logic_vector(N_BIT_DATA-1 downto 0);
            Cout:   out std_logic

        );
    
    end component;

    signal a, b, y: std_logic_vector(32-1 downto 0);
    signal op: std_logic_vector(5-1 downto 0);
    signal co: std_logic;

begin

    DUT: ALU generic map(32, 2) port map(a, b, op, y, co);

    process
    begin

        -- Test ALU operation --
        
        -- ADD
        a <= x"00000002";
        b <= x"00000003";
        OP <= ALU_ADD;
        wait for 1 ns;

        -- SUB
        a <= x"00000002";
        b <= x"00000003";
        OP <= ALU_SUB;
        wait for 1 ns;

        -- MUL
        a <= x"00000002";
        b <= x"00000003";
        OP <= ALU_MUL;
        wait for 1 ns;

        -- AND
        a <= x"00000002";
        b <= x"00000003";
        OP <= ALU_AND;
        wait for 1 ns;

        -- NAND
        a <= x"00000002";
        b <= x"00000003";
        OP <= ALU_NAND;
        wait for 1 ns;

        -- OR
        a <= x"00000002";
        b <= x"00000003";
        OP <= ALU_OR;
        wait for 1 ns;

        -- NOR
        a <= x"00000002";
        b <= x"00000003";
        OP <= ALU_NOR;
        wait for 1 ns;

        -- XOR
        a <= x"00000002";
        b <= x"00000003";
        OP <= ALU_XOR;
        wait for 1 ns;

        -- XNOR
        a <= x"00000002";
        b <= x"00000003";
        OP <= ALU_XNOR;
        wait for 1 ns;


        -- TEST COMPARATOR
        a <= x"00000002";
        b <= x"00000003";
        OP <= ALU_SUB;
        wait for 1 ns;
        
        a <= x"00000000";
        b <= x"00000000";
        OP <= ALU_SUB;
        wait for 1 ns;
        
        a <= x"00000003";
        b <= x"00000002";
        OP <= ALU_SUB;
        wait for 1 ns;

        a <= x"00000003";
        b <= x"00000003";
        OP <= ALU_SUB;
        wait for 1 ns;


    end process;

end test;