library IEEE;
use IEEE.std_logic_1164.all;

entity tb_prop_gen_generic is
end entity tb_prop_gen_generic;

architecture testbench of tb_prop_gen_generic is
    component prop_gen_generic is
        generic(NBIT: integer := 32);
        port (
            a, b: in std_logic_vector(NBIT - 1 DOWNTO 0);
            p, g: out std_logic_vector(NBIT - 1 DOWNTO 0)
        );
    end component;

    signal a_s, b_s, p_s, g_s: std_logic_vector(7 DOWNTO 0);
begin
    DUT: prop_gen_generic generic map(NBIT => 8) port map(a => a_s, b => b_s, p => p_s, g => g_s);

    process
    begin 
        a_s <= "11001010";
        b_s <= "01001011";
        wait for 10 ns;
        a_s <= "01101000";
        b_s <= "11001100";
        wait for 10 ns;
        wait;
    end process;
    
    
end architecture testbench;