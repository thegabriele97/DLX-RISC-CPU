library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.constants.all;

entity sum_generator is
    generic (
        NBIT_PER_BLOCK: integer := NumBit;
        NBLOCKS:        integer := NumBlocks
    );
    port (
        A:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
        B:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
        Ci:     in	std_logic_vector(NBLOCKS-1 downto 0);
        S:	out     std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0)
    );
end entity sum_generator;

architecture structural of sum_generator is
    
    component carry_select_block is
        generic(NBIT_PER_BLOCK: integer := NumBit);
        port (
            A, B: in std_logic_vector(NBIT_PER_BLOCK - 1 DOWNTO 0);
            cin: in std_logic;
            sum: out std_logic_vector(NBIT_PER_BLOCK - 1 DOWNTO 0)
        );
    end component;
begin

    carry_structure: for i in 0 to NBLOCKS - 1 generate
        csb: carry_select_block 
        generic map(NBIT_PER_BLOCK) 
        port map(
            A => A(NBIT_PER_BLOCK*(i+1) - 1 DOWNTO NBIT_PER_BLOCK*i), 
            B => B(NBIT_PER_BLOCK*(i+1) - 1 DOWNTO NBIT_PER_BLOCK*i), 
            cin => Ci(i), 
            sum => S(NBIT_PER_BLOCK*(i+1) - 1 DOWNTO NBIT_PER_BLOCK*i)
        );
    end generate carry_structure;

end architecture structural;

configuration CFG_SUM_GENERATOR_STRUCTURAL of sum_generator is
    for structural
        for carry_structure
            for csb: carry_select_block
                use configuration WORK.CFG_CARRY_SELECT_BLOCK_STRUCTURAL;
            end for;
        end for;
    end for;
end CFG_SUM_GENERATOR_STRUCTURAL;