library ieee;
use ieee.std_logic_1164.all;

entity PG is
    port(
        p: in std_logic_vector(1 downto 0);
        g: in std_logic_vector(1 downto 0);
        pg: out std_logic_vector(1 downto 0)
    );
end entity;

architecture behav of PG is
begin

    pg(0) <= p(1) and p(0);
    pg(1) <= g(1) and g(0);

end behav;