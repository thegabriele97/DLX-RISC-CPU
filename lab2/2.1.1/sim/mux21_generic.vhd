library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.constants.all;

entity mux21_generic is
    generic (NBIT: integer:= numBit);
	Port (	
        a:	in	std_logic_vector(NBIT - 1 downto 0) ;
        b:	in	std_logic_vector(NBIT - 1 downto 0);
        s: 	in	std_logic;
        y:	out	std_logic_vector(NBIT - 1 downto 0)
    );
end entity mux21_generic;


--- Structural architecture -----
-- architecture structural of mux21_generic is

--     component iv_generic is
--         generic (NBIT: integer := NumBit);
--         port (
--             a:	In	std_logic_vector(NBIT - 1 DOWNTO 0);
--             y:	Out	std_logic_vector(NBIT - 1 DOWNTO 0)
--         );
--     end component;

--     component nd2_generic is
--         generic (NBIT: integer := NumBit);
--         port (
--             a:	in	std_logic_vector(NBIT - 1 DOWNTO 0);
--             b:	in	std_logic_vector(NBIT - 1 DOWNTO 0);
--             y:	out	std_logic_vector(NBIT - 1 DOWNTO 0)
--         );
--     end component;

--     signal y1: std_logic_vector(NBIT - 1 downto 0);
-- 	signal y2: std_logic_vector(NBIT - 1 downto 0);
-- 	signal sb: std_logic_vector(NBIT - 1 downto 0);
--     signal s_in: std_logic_vector(NBIT - 1 downto 0);

-- begin

--     -- Necessario per adattare l'input del multiplexer ad 1 bit all'input dell'inverter
--     s_in <= (OTHERS => s);

--     UIV : iv_generic generic map(NBIT) port map (s_in, sb);
-- 	UND1 : nd2_generic generic map(NBIT) port map (a, s_in, y1);
-- 	UND2 : nd2_generic generic map(NBIT) port map (b, sb, y2);
-- 	UND3 : nd2_generic generic map(NBIT) port map (y1, y2, y);
    
-- end architecture structural;


--- Behavioural architecture ----

architecture behavioural of mux21_generic is
    
begin

    pmux: process(a, b, s)
	begin
		if s = '1' then
			y <= a; --after DELAY_MUX;
		else
			y <= b; -- after DELAY_MUX;
		end if;
	end process;
end architecture Behavioural;


-- configuration CFG_MUX21_GEN_BEHAVIORAL of mux21_generic is
-- 	for behavioural
-- 	end for;
-- end CFG_MUX21_GEN_BEHAVIORAL;

-- configuration CFG_MUX21_GEN_STRUCTURAL of mux21_generic is
-- 	for structural
-- 		for all : iv_generic
-- 			use configuration WORK.CFG_IV_GENERIC_STRUCTURAL;
-- 		end for;
-- 		for all : nd2_generic
-- 			use configuration WORK.CFG_ND2_GENERIC_STRUCTURAL;
-- 		end for;
-- 	end for;
-- end CFG_MUX21_GEN_STRUCTURAL;
