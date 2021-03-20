library ieee;
use ieee.std_logic_1164.all;

entity GG is
    port(
        p: in std_logic;
        g: in std_logic_vector(1 downto 0);
        go: out std_logic
    );
end entity;

architecture behav of GG is
begin

    process(p, g)
    begin

        go <= g(1) or (p and g(0));

    end process;
end behav;