library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator is
	generic (NBIT: integer := 16);
	
	port (
        S:		in	std_logic_vector(NBIT-1 downto 0);
        Cout:	in	std_logic;
		a_le_b: out std_logic;
		a_l_b: 	out std_logic;
		a_g_b: 	out std_logic;
		a_ge_b: out std_logic;
		a_e_b: 	out std_logic	
    );

end comparator; 

architecture behavioural of comparator is

	signal z: std_logic_vector(NBIT-1 downto 0);
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

end behavioural;
