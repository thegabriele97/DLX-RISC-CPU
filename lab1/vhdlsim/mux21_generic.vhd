library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.constants.all;

entity mux21_generic is
    Generic (NBIT: integer:= numBit; DELAY_MUX: Time:= tp_mux);
	Port (	
        A:	In	std_logic_vector(NBIT-1 downto 0) ;
        B:	In	std_logic_vector(NBIT-1 downto 0);
        S: In	std_logic;
        Y:	Out	std_logic_vector(NBIT-1 downto 0)
    );
end entity mux21_generic;


--- Structural architecture -----
architecture structural of mux21_generic is

    component iv_generic is
        Generic (NBIT: integer:= numBit);
        Port (	
            A:	In	std_logic_vector(NBIT - 1 downto 0);
            Y:	Out	std_logic_vector(NBIT - 1 downto 0)
        );
    end component;

    component nd2_generic is
        Generic (NBIT: integer:= numBit);
        Port (	
            A:	In	std_logic_vector(NBIT - 1 downto 0);
            B:	In	std_logic_vector(NBIT - 1 downto 0);
            Y:	Out	std_logic_vector(NBIT - 1 downto 0)
        );
    end component;

    signal Y1: std_logic_vector(NBIT - 1 downto 0);
	signal Y2: std_logic_vector(NBIT - 1 downto 0);
	signal SB: std_logic_vector(NBIT - 1 downto 0);
    signal S_in: std_logic_vector(NBIT - 1 downto 0);

begin

    -- Necessario per adattare l'input del multiplexer ad 1 bit all'input dell'inverter
    S_in <= (OTHERS => '0');
    S_in(0) <= S;

    UIV : iv_generic generic map(NBIT) port map (S_in, SB);
	UND1 : nd2_generic generic map(NBIT) port map (A, S_in, Y1);
	UND2 : nd2_generic generic map(NBIT) port map (B, SB, Y2);
	UND3 : nd2_generic generic map(NBIT) port map (Y1, Y2, Y);
    
end architecture structural;


--- Behavioural architecture ----

architecture Behavioural of mux21_generic is
    
begin

    pmux: process(A, B, S)
	begin
		if S = '1' then
			Y <= A after DELAY_MUX;
		else
			Y <= B after DELAY_MUX;
		end if;
	end process;
end architecture Behavioural;


configuration CFG_MUX21_GEN_BEHAVIORAL of mux21_generic is
	for Behavioural
	end for;
end CFG_MUX21_GEN_BEHAVIORAL;

configuration CFG_MUX21_GEN_STRUCTURAL of mux21_generic is
	for Structural
		for all : iv_generic
			use configuration WORK.CFG_IV_BEHAVIORAL;
		end for;
		for all : nd2_generic
			use configuration WORK.CFG_ND2_ARCH1;
		end for;
	end for;
end CFG_MUX21_GEN_STRUCTURAL;