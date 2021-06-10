library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator is
	generic (NBIT: integer := 16);
	port (
        A:		in	std_logic_vector(NBIT-1 downto 0);
        B:		in	std_logic_vector(NBIT-1 downto 0);
		LGET:	out std_logic_vector(1 downto 0)
    );

end comparator; 

architecture behavioural of comparator is

	component P4_ADDER is
		generic (
			NBIT :		integer := 16
		);
		
		port (
			A:		    in	std_logic_vector(NBIT-1 downto 0);
			B:		    in	std_logic_vector(NBIT-1 downto 0);
			SUB_SUMN:	in	std_logic;
			S:		    out	std_logic_vector(NBIT-1 downto 0);
			Cout:	    out	std_logic
		);
	end component;

	signal z: std_logic_vector(NBIT-1 downto 0);
	signal S: std_logic_vector(NBIT-1 downto 0);
	signal Cout: std_logic;
	signal zn: std_logic;

	signal a_le_b: std_logic;
	signal a_l_b: std_logic;
	signal a_ge_b: std_logic;
	signal a_g_b: std_logic;

begin

	LGET <= "01" when (a_l_b = '1') else
			"00" when (a_le_b = '1') else 
			"11" when (a_g_b = '1') else
			"10" when (a_ge_b = '1');
	

	z(0) <= S(0);
	ORGen: for i in 1 to NBIT-1 generate
		z(i) <= z(i-1) or S(i);
	end generate ORGen;

	zn <= not z(NBIT-1);

	a_le_b <= not(Cout) or zn;
	a_l_b <= not(Cout);
	a_g_b <= Cout and z(NBIT-1);
	a_ge_b <= Cout;


	ADDER: P4_ADDER generic map(
		NBIT => NBIT
	) port map(
		A => A,	  
		B => B,	  
		SUB_SUMN => '1', 	-- set to 0 because we always need to do the SUB, neve SUM
		S => S, 		  
		Cout => Cout	  
	);

end behavioural;
