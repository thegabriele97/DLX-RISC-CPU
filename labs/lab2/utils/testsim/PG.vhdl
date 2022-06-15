library ieee;
use ieee.std_logic_1164.all;

entity PG is
    port(
        p: in std_logic_vector(1 downto 0);
        g: in std_logic_vector(1 downto 0);
        p: out std_logic;
        g: out std_logic
    );
end entity;

architecture behav of PG is
begin

    p <= p(1) and p(0);
    g <= g(1) and g(0);

end behav;