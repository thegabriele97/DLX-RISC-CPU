library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity tb_sum_generator is
end tb_sum_generator;

architecture TEST of tb_sum_generator is
    component sum_generator is
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
    end component;

    signal A_s, B_s, S_s: std_logic_vector(15 DOWNTO 0);
    signal Ci_s: std_logic_vector(3 DOWNTO 0);
begin

    DUT: sum_generator generic map(4, 4) port map(A => A_s, B => B_s, Ci => Ci_s, S => S_s);

    process
    begin
        A_s <= x"0000";
        B_s <= x"0001";
        Ci_s <= "0101";
        wait for 5 ns;
        A_s <= x"FFFF";
        B_s <= x"0001";
        wait for 5 ns;
        wait;
    end process;


end TEST;

configuration SUM_GENERATORTEST of tb_sum_generator is
  for TEST
    for all: SUM_GENERATOR
      use configuration WORK.CFG_SUM_GENERATOR_STRUCTURAL;
    end for;
  end for;
end SUM_GENERATORTEST;
