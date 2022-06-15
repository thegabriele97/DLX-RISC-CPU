library ieee;
use ieee.std_logic_1164.all;

entity mux is
    generic(
        NBIT: integer
    );
    port(
        A: in std_logic_vector((NBIT-1) downto 0);
        B: in std_logic_vector((NBIT-1) downto 0);
        C: in std_logic_vector((NBIT-1) downto 0);
        S: in std_logic_vector(1 downto 0);
        Y: out std_logic_vector((NBIT-1) downto 0)
    );
end entity;

architecture behav of mux is
begin

    with S select
        Y <= A when "00",
             B when "01",
             C when others; 

end behav;