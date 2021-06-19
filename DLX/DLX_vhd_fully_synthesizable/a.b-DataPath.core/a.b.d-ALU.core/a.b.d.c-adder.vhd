library ieee;
use ieee.std_logic_1164.all;

entity P4_ADDER is
    
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

end entity;

architecture structural of P4_ADDER is

    component CARRY_GENERATOR is
		generic (
			NBIT :		integer := 16;
			NBIT_PER_BLOCK: integer := 4);
		port (
			A :		in	std_logic_vector(NBIT-1 downto 0);
			B :		in	std_logic_vector(NBIT-1 downto 0);
			Cin :	in	std_logic;
			Co :	out	std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
	end component;

    component sum_generator is
        generic (
            NBIT_PER_BLOCK: integer := 16;
            NBLOCKS:        integer := 16/4
        );
        port (
            A:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
            B:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
            Ci:     in	std_logic_vector(NBLOCKS-1 downto 0);
            S:	out     std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0)
        );
    end component;

    signal carry: std_logic_vector((NBIT/4)-1 downto 0);
    signal carry_sum: std_logic_vector((NBIT/4)-1 downto 0);
    signal Bxored: std_logic_vector(NBIT-1 downto 0);

begin

    carry_sum <= carry((NBIT/4)-2 downto 0) & SUB_SUMN;
    
    XORGEN: for i in 0 to NBIT-1 generate
        Bxored(i) <= B(i) xor SUB_SUMN;
    end generate XORGEN;

    CARRYGEN: CARRY_GENERATOR generic map(
        NBIT => NBIT,
        NBIT_PER_BLOCK => 4
    ) port map(
        A => A,
        B => Bxored,
        Cin => SUB_SUMN,
        Co => carry
    );

    SUMGEM: sum_generator generic map(
        NBIT_PER_BLOCK => 4,
        NBLOCKS => (NBIT/4)
    ) port map(
        A => A,
        B => Bxored,
        Ci => carry_sum,
        S => S
    );

    Cout <= carry((NBIT/4)-1);

end structural;
