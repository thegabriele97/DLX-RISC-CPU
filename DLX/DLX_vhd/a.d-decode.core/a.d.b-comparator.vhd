library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator is
	generic (NBIT: integer := 16);
	port (
        A:		in	std_logic_vector(NBIT-1 downto 0);
        B:		in	std_logic_vector(NBIT-1 downto 0);
		a_le_b: out std_logic;
		a_l_b: 	out std_logic;
		a_g_b: 	out std_logic;
		a_ge_b: out std_logic;
		a_e_b: 	out std_logic	
    );

end comparator; 

architecture behavioural of comparator is

	component P4ADDER is
		generic (
			NBIT :		integer := 16
		);
		
		port (
			A :		    in	std_logic_vector(NBIT-1 downto 0);
			B :		    in	std_logic_vector(NBIT-1 downto 0);
			SUB_SUMN :	in	std_logic;
			S :		    out	std_logic_vector(NBIT-1 downto 0);
			Cout :	    out	std_logic
		);
	end component;

	signal z: std_logic_vector(NBIT-1 downto 0);
	signal S: std_logic_vector(NBIT-1 downto 0);
	signal Cout: std_logic;
	signal zn: std_logic;

begin

	z(0) <= S(0);
	ORGen: for i in 1 to NBIT-1 generate
		z(i) <= z(i-1) or S(i);
	end generate ORGen;

	zn <= not z(NBIT-1);

	a_le_b <= not(Cout) or zn;
	a_l_b <= not(Cout);
	a_g_b <= Cout and z(NBIT-1);
	a_ge_b <= Cout;
	a_e_b <= zn;

	ADDER: P4ADDER generic map(
		NBIT => NBIT
	) port map(
		A => A,	  
		B => B,	  
		SUB_SUMN => 1, 	-- set to 0 because we always need to do the SUB, neve SUM
		S => S, 		  
		Cout => Cout	  
	)

end behavioural;
