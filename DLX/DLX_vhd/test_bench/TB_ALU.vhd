library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

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
            -- OP := 000 01 -> SUB
            -- OP := 000 10 -> MUL
            -- OP := 000 11 -> AND
            -- OP := 001 11 -> NAND
            -- OP := 010 11 -> OR
            -- OP := 011 11 -> NOR
            -- OP := 100 11 -> XOR
            -- OP := 101 11 -> XNOR
            -- ....

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

        a <= x"00000002";
        b <= x"00000003";
        OP <= "00000";
        wait for 1 ns;

        a <= x"00000002";
        b <= x"00000003";
        OP <= "00100";
        wait for 1 ns;

        a <= x"00000002";
        b <= x"00000003";
        OP <= "00001";
        wait for 1 ns;

        a <= x"00000002";
        b <= x"00000003";
        OP <= "00010";
        wait for 1 ns;

        a <= x"00000002";
        b <= x"00000003";
        OP <= "00110";
        wait for 1 ns;

        a <= x"00000002";
        b <= x"00000003";
        OP <= "01010";
        wait for 1 ns;

        a <= x"00000002";
        b <= x"00000003";
        OP <= "01110";
        wait for 1 ns;

        a <= x"00000002";
        b <= x"00000003";
        OP <= "10010";
        wait for 1 ns;

        a <= x"00000002";
        b <= x"00000003";
        OP <= "10110";
        wait for 1 ns;

    end process;

end test;