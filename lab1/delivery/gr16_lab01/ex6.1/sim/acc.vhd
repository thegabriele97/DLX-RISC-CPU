library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.constants.all;

entity ACC_GENERIC is
       generic (
		NBIT: integer:= numBit;
		DELAY_MUX: Time:= tp_mux;
		DRCAS: Time := 0 ns;
		DRCAC: Time := 0 ns
	);
	port (
		A          : in  std_logic_vector(NBIT - 1 downto 0);
		B          : in  std_logic_vector(NBIT - 1 downto 0);
		CLK        : in  std_logic;
		RST_n      : in  std_logic;
		ACCUMULATE : in  std_logic;
		ACC_EN_n   : in  std_logic;
		Y          : out std_logic_vector(NBIT - 1 downto 0));
end entity;

architecture structural of ACC_GENERIC is
	component mux21_generic is
	    Generic (NBIT: integer:= numBit; DELAY_MUX: Time:= tp_mux);
		Port (	
		A:	In	std_logic_vector(NBIT-1 downto 0) ;
		B:	In	std_logic_vector(NBIT-1 downto 0);
		S: 	In	std_logic;
		Y:	Out	std_logic_vector(NBIT-1 downto 0)
	    );
	end component;
	component rca_generic is 
		generic (DRCAS : 	Time := 0 ns;
			 DRCAC : 	Time := 0 ns;
		         nbit  :        integer := 6);
		Port (	A:	In	std_logic_vector((nbit-1) downto 0);
			B:	In	std_logic_vector((nbit-1) downto 0);
			Ci:	In	std_logic;
			S:	Out	std_logic_vector((nbit-1) downto 0);
			Co:	Out	std_logic);
	end component;
	component reg_generic is
		generic (NBIT : integer := NumBit);
		Port (	D:	In	std_logic_vector(NBIT-1 downto 0);
			CK:	In	std_logic;
			RESET:	In	std_logic;
			ENABLE:	In	std_logic;
			Q:	Out	std_logic_vector(NBIT-1 downto 0));
	end component;
	signal m1, out_add, feed_back: std_logic_vector(NBIT-1 downto 0);
	signal co1, acc_en_not, rst_not: std_logic;

begin
	mux1: mux21_generic GENERIC MAP(NBIT, DELAY_MUX)
			    PORT MAP(feed_back, B, ACCUMULATE, m1);
	add1: rca_generic GENERIC MAP(DRCAS, DRCAC, NBIT)
		  PORT MAP(A, m1, '0', out_add, co1);
	reg: reg_generic GENERIC MAP(NBIT)
			PORT MAP(out_add, CLK, rst_not, acc_en_not, feed_back);
	Y <= feed_back;
	acc_en_not <= NOT(ACC_EN_n);
	rst_not <= NOT(RST_n);
end structural;

configuration CFG_ACC_STRUCTURAL of ACC_GENERIC is
	for structural
		for all: mux21_generic
			use configuration WORK.CFG_MUX21_GEN_STRUCTURAL;
		end for;
		for all: rca_generic
			use configuration WORK.CFG_RCA_GEN_STRUCTURAL;
		end for; 
		for all: reg_generic
			use configuration WORK.CFG_REG_GENERIC_ASYNC;
		end for; 
	end for;
end CFG_ACC_STRUCTURAL;


