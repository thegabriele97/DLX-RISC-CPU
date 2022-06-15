library ieee;
use ieee.std_logic_1164.all;

entity tb_stcg is
end tb_stcg;

architecture tb of tb_stcg is

    component stcg is
        generic (
            nbit: integer := 16;
            each: integer := 1
        );
    
        port(
            a: in std_logic_vector(nbit-1 downto 0);
            b: in std_logic_vector(nbit-1 downto 0);
            c: out std_logic_vector(nbit downto 1)
        );
    end component;

    signal a, b, c: std_logic_vector(3 downto 0);

begin

    DUT: stcg generic map(4, 1) port map(a, b, c);

    a <= x"7";
    b <= x"c";

end tb;