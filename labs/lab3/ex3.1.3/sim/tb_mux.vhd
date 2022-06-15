library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;

entity tb_mux is
end entity tb_mux;

architecture testbench of tb_mux is
    component mux is
        GENERIC (
            N: integer := 4; -- number of bits per port
            M: integer := 2  -- number of port
        );
        PORT(
            S:      IN std_logic_vector(f_log2(M)-1 downto 0);
            Q:      IN std_logic_vector(M*N-1 downto 0);
            Y:      OUT std_logic_vector(N-1 downto 0)
        );
    end component;

    signal s_s: std_logic_vector(1 DOWNTO 0);
    signal q_s: std_logic_vector(31 DOWNTO 0);
    signal y_s: std_logic_vector(7 DOWNTO 0);
begin
    
    DUT: mux generic map(N => 8, M =>4) port map(S => s_s, Q => q_s, Y => y_s);

    process
    begin
        q_s <= x"8FA74567";
        s_s <= "00";
        wait for 2 ns;
        s_s <= "01";
        wait for 2 ns;
        s_s <= "10";
        wait for 2 ns;
        s_s <= "11";
        wait for 2 ns;
        wait;
    end process;
    
    
end architecture testbench;