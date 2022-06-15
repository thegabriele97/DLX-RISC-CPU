library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TB_P4_ADDER is
end TB_P4_ADDER;

architecture TEST of TB_P4_ADDER is
	
	-- P4 component declaration
	component P4_ADDER is
		generic (
			NBIT :		integer := 32);
		port (
			A :		in	std_logic_vector(NBIT-1 downto 0);
			B :		in	std_logic_vector(NBIT-1 downto 0);
			Cin :	in	std_logic;
			S :		out	std_logic_vector(NBIT-1 downto 0);
			Cout :	out	std_logic);
	end component;
	
	signal a, b, s: std_logic_Vector(32-1 downto 0);
	signal co: std_logic;

begin
	
	DUT: P4_ADDER generic map(32) port map(a, b, '0', s, co);
	
	process
	begin

		a <= x"ffffffff";
		b <= x"00000001";
		wait for 1 ns;

		a <= x"ffffffff";
		b <= x"00000002";
		wait for 1 ns;

		a <= x"abcd3456";
		b <= x"fdedcdde";
		wait for 1 ns;

		a <= x"00000002";
		b <= x"00000002";
		wait;

	end process;
	
end TEST;

