library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.constants.all;

entity tb_carry_select_block is
end entity tb_carry_select_block;

architecture testbench of tb_carry_select_block is
    
    component carry_select_block is
    	generic(NBIT_PER_BLOCK: integer := NumBit);
    	port (
        	A, B: in std_logic_vector(NBIT_PER_BLOCK - 1 DOWNTO 0);
        	cin: in std_logic;
        	sum: out std_logic_vector(NBIT_PER_BLOCK - 1 DOWNTO 0)
    	);
    end component;

    signal A_s, B_s, sum_s: std_logic_vector(7 DOWNTO 0);
    signal cin_s: std_logic;
begin

    DUT: carry_select_block generic map(8) port map(A => A_s, B => B_s, cin => cin_s, sum => sum_s);

    process
    begin
        cin_s <= '1';
        A_s <= "00000000";
        B_s <= "00000000";
        wait for 5 ns;
        cin_s <= '0';
        A_s <= "11111111";
        B_s <= "00000000";
        wait for 5 ns;
        cin_s <= '1';
        A_s <= "11111111";
        B_s <= "00000000";
        wait for 5 ns;
        wait;
    end process;

end architecture testbench;

configuration CARRY_SEL_BLOCK_TEST of tb_carry_select_block is
	for testbench
		for all : carry_select_block
			use configuration WORK.CFG_CARRY_SELECT_BLOCK_STRUCTURAL;
		end for;
	end for;
end CARRY_SEL_BLOCK_TEST;

