library ieee;
use ieee.std_logic_1164.all;

entity mux2_1 is
    generic (NBIT: integer:= 32);
	port (	
        a:	in	std_logic_vector(NBIT - 1 downto 0);
        b:	in	std_logic_vector(NBIT - 1 downto 0);
        s: 	in	std_logic;
        y:	out	std_logic_vector(NBIT - 1 downto 0)
    );
end entity;

architecture behav of mux2_1 is
begin 

    pmux: process(a, b, s)
    begin
        if s = '1' then
            y <= a;
        else
            y <= b;
        end if;
    end process;
end behav;