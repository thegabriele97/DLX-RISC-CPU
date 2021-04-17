library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.utils.all;

entity nwin_calc is
    generic(
        F:          integer := 8
    );
    port(
        c_win:           in std_logic_vector(F-1 downto 0);
        sel:            in std_logic_vector(1 downto 0);         
        n_win:           out std_logic_vector(F-1 downto 0)
    );
end nwin_calc;

architecture struct of nwin_calc is
    
    component mux IS
        GENERIC (
            N: integer := 4; -- number of bits per port
            M: integer := 2  -- number of port
        );
        PORT(
            S:      IN std_logic_vector(f_log2(M)-1 downto 0);
            Q:      IN std_logic_vector(M*N-1 downto 0);
            Y:      OUT std_logic_vector(N downto 0)
        );
    END component;

    signal mux_input: std_logic_vector(4*F-1 downto 0);

begin

    -- sel = 00 => c_win
    mux_input(F-1 downto 0) <= c_win;
    mux_input(4*F-1 downto 3*F) <= c_win;

    -- sel = 01 => (c_win << 1)
    mux_input(2*F-1 downto F) <= c_win(F-2 downto 0) & c_win(F-1);
    
    -- sel = 10 => (c_win << 1)
    mux_input(3*F-1 downto 2*F) <= c_win(0) & c_win(F-1 downto 1);
    

    MUX_SEL: mux generic map(N => F, M => 4)
        port map(
            S => sel,
            Q => mux_input,
            Y => n_win
        ); 

end struct;