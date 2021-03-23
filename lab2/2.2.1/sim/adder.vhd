library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
    generic (
        NBIT: integer
    );
    port (
        A: in std_logic_vector((NBIT-1) downto 0);
        B: in std_logic_vector((NBIT-1) downto 0);
        SUB_SUMn: in std_logic;
        S: out std_logic_vector(NBIT + 1 downto 0)
    );
end entity;

architecture behav of adder is
begin

    S <= std_logic_vector(signed(A(NBIT-1) & A(NBIT-1) & A) + signed(B(NBIT-1) & B(NBIT-1) & B)) when (SUB_SUMn = '0') else
         std_logic_vector(signed(A(NBIT-1) & A(NBIT-1) & A) - signed(B(NBIT-1) & B(NBIT-1) & B)) when (SUB_SUMn = '1');


end behav;