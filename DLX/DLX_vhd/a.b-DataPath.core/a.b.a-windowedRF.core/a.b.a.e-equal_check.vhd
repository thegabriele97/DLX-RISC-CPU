library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;

entity equal_check is
    generic(
        N:      integer := 4
    );
    port(
        A:      in std_logic_vector(N-1 downto 0);
        B:      in std_logic_vector(N-1 downto 0);
        EQUAL:     out std_logic
    );
end entity equal_check;

architecture behav of equal_check is
begin
    
    EQUAL <= '1' when (A = B) else '0';    
    
end behav;
