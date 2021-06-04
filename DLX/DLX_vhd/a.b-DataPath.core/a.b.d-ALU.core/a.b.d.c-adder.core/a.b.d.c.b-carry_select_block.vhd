library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity carry_select_block is
    generic(NBIT_PER_BLOCK: integer := 4);
    port (
        A, B: in std_logic_vector(NBIT_PER_BLOCK - 1 DOWNTO 0);
        cin: in std_logic;
        sum: out std_logic_vector(NBIT_PER_BLOCK - 1 DOWNTO 0)
    );
end entity carry_select_block;

architecture structural of carry_select_block is
    component rca_generic is
        generic (   
                nbit  :     integer := 4
        );
        Port (	
            A:	In	std_logic_vector((nbit-1) downto 0);
            B:	In	std_logic_vector((nbit-1) downto 0);
            Ci:	In	std_logic;
            S:	Out	std_logic_vector((nbit-1) downto 0);
            Co:	Out	std_logic
        );
    end component;

    component mux21_generic is
        generic (NBIT: integer:= 4);
        Port (	
            a:	in	std_logic_vector(NBIT - 1 downto 0) ;
            b:	in	std_logic_vector(NBIT - 1 downto 0);
            s: 	in	std_logic;
            y:	out	std_logic_vector(NBIT - 1 downto 0)
        );
    end component;

    signal cout: std_logic;
    signal sum_mux21_0, sum_mux21_1: std_logic_vector(NBIT_PER_BLOCK - 1 DOWNTO 0);
begin

    rca_0: rca_generic generic map(NBIT_PER_BLOCK) port map(A => A, B => B, Ci => '0', S => sum_mux21_0, Co => cout);
    rca_1: rca_generic generic map(NBIT_PER_BLOCK) port map(A => A, B => B, Ci => '1', S => sum_mux21_1, Co => cout);
    mux: mux21_generic generic map(NBIT_PER_BLOCK) port map(a => sum_mux21_1, b => sum_mux21_0, s => cin, y => sum);
    
end architecture structural;

