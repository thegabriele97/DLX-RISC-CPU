library ieee;
use ieee.std_logic_1164.all;

entity PG is
    port(
        p: in std_logic_vector(1 downto 0);
        g: in std_logic_vector(1 downto 0);
        po: out std_logic;
        go: out std_logic
    );
end entity;

architecture behav of PG is
begin

    process(p, g)
    begin

        po <= p(1) and p(0);
        go <= g(1) or (p(1) and g(0));

    end process;
end behav;