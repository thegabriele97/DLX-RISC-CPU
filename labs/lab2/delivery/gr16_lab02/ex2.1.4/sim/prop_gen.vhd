library IEEE;
use IEEE.std_logic_1164.all;

entity prop_gen is
    port (
        a, b: in std_logic;
        p, g: out std_logic
    );
end entity prop_gen;

architecture behavioral of prop_gen is
    
begin
    process(a, b)
    begin 
        p <= a XOR b;
        g <= a AND b;
    end process;
end architecture behavioral;