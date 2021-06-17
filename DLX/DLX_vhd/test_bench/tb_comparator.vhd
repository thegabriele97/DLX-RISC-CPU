library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity tb_comparator is
end entity;

architecture test of tb_comparator is 
    component comparator is
        generic (NBIT: integer := 16);
        port (
            A:				in	std_logic_vector(NBIT-1 downto 0);
            B:				in	std_logic_vector(NBIT-1 downto 0);
            UNSIG_SIGN_N: 	in std_logic;
            LGET:			out std_logic_vector(1 downto 0)
        );

    end component;

    signal A, B: std_logic_vector(31 downto 0);
    signal UNSIG_SIGN_N: std_logic;
    signal LGET: std_logic_vector(1 downto 0);

begin

    DUT: comparator generic map(32) port map(A, B, UNSIG_SIGN_N, LGET);


    process
    begin


        UNSIG_SIGN_N <= '0';

        B <= std_logic_vector(TO_SIGNED(3, B'length));
        A <= std_logic_vector(TO_SIGNED(2, A'length));
        wait for 1 ns;

        A <= std_logic_vector(TO_SIGNED(4, A'length));
        wait for 1 ns;

        A <= std_logic_vector(TO_SIGNED(3, A'length));
        wait for 1 ns;

        A <= std_logic_vector(TO_SIGNED(-3, A'length));
        wait for 1 ns;

        A <= std_logic_vector(TO_SIGNED(-2, A'length));
        wait for 1 ns;

        A <= std_logic_vector(TO_SIGNED(-5, A'length));
        wait for 1 ns;

        ----------------------------------------------

        A <= std_logic_vector(TO_SIGNED(3, A'length));       
        
        B <= std_logic_vector(TO_SIGNED(2, A'length));
        wait for 1 ns;

        B <= std_logic_vector(TO_SIGNED(4, A'length));
        wait for 1 ns;

        B <= std_logic_vector(TO_SIGNED(3, A'length));
        wait for 1 ns;

        B <= std_logic_vector(TO_SIGNED(-3, A'length));
        wait for 1 ns;

        B <= std_logic_vector(TO_SIGNED(-2, A'length));
        wait for 1 ns;

        B <= std_logic_vector(TO_SIGNED(-5, A'length));
        wait for 1 ns;

        ----------------------------------------------

        B <= std_logic_vector(TO_SIGNED(-3, B'length));
        A <= std_logic_vector(TO_SIGNED(2, A'length));
        wait for 1 ns;

        A <= std_logic_vector(TO_SIGNED(4, A'length));
        wait for 1 ns;

        A <= std_logic_vector(TO_SIGNED(3, A'length));
        wait for 1 ns;

        A <= std_logic_vector(TO_SIGNED(-3, A'length));
        wait for 1 ns;

        A <= std_logic_vector(TO_SIGNED(-2, A'length));
        wait for 1 ns;

        A <= std_logic_vector(TO_SIGNED(-5, A'length));
        wait for 1 ns;

        ----------------------------------------------

        A <= std_logic_vector(TO_SIGNED(-3, A'length));       
        
        B <= std_logic_vector(TO_SIGNED(2, A'length));
        wait for 1 ns;

        B <= std_logic_vector(TO_SIGNED(4, A'length));
        wait for 1 ns;

        B <= std_logic_vector(TO_SIGNED(3, A'length));
        wait for 1 ns;

        B <= std_logic_vector(TO_SIGNED(-3, A'length));
        wait for 1 ns;

        B <= std_logic_vector(TO_SIGNED(-2, A'length));
        wait for 1 ns;

        B <= std_logic_vector(TO_SIGNED(-5, A'length));
        wait for 1 ns;


        wait;

    end process;

end test;