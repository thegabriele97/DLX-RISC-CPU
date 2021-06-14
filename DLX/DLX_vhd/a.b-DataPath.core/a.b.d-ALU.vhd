library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALU is

    generic (
        N_BIT_DATA      : integer := 32;        -- generic data bit width
        N_OPSEL         : integer := 2          -- number of bit needed for the ALU operations
    );

    port (

        INA:    in std_logic_vector(N_BIT_DATA-1 downto 0);
        INB:    in std_logic_vector(N_BIT_DATA-1 downto 0);

        OP:     in std_logic_vector(N_OPSEL+3-1 downto 0);
        -- AVAILABLE OPERATIONS
        -- OP := 000 00 -> ADD
        -- OP := 001 00 -> SUB
        -- OP := 000 01 -> MUL

        -- OP := 000 10 -> AND
        -- OP := 001 10 -> NAND
        -- OP := 010 10 -> OR
        -- OP := 011 10 -> NOR
        -- OP := 100 10 -> XOR
        -- OP := 101 10 -> XNOR

        -- OP := 000 11 -> SHIFT RIGHT
        -- OP := 001 11 -> SHIFT LEFT
        -- OP := 010 11 -> ARITH SHIFT RIGHT
        -- OP := 011 11 -> ARITH SHIFT LEFT
        -- OP := 100 11 -> ROTATE RIGHT
        -- OP := 101 11 -> ROTATE LEFT


        -- ....

        Y:      out std_logic_vector(N_BIT_DATA-1 downto 0);
        
        COUT:   out std_logic

    );

end entity;

architecture structural of ALU is

    component P4_ADDER is
    
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

    component multiplier is
        generic(
            NBIT: integer := 8
        );
        port(
            A: in std_logic_vector(NBIT - 1 downto 0);
            B: in std_logic_vector(NBIT - 1 downto 0);
            Y: out std_logic_vector((2 * NBIT) - 1 downto 0)
        );
    end component;

    component logic_generic is 
        generic (NBIT: integer := 16);
        Port (	
            A:	In	std_logic_vector((NBIT-1) downto 0);
            B:	In	std_logic_vector((NBIT-1) downto 0);
            S:	In	std_logic_vector(2 downto 0);
            Y: Out std_logic_vector((NBIT-1) downto 0)
        );
    end component; 

    component mux IS
        generic (
            N: integer := 4; -- number of bits per port
            M: integer := 2  -- log of number of port
        );
        port (
            S:      IN std_logic_vector(M-1 downto 0);
            Q:      IN std_logic_vector((2**M)*N-1 downto 0);
            Y:      OUT std_logic_vector(N-1 downto 0)
        );
    end component;
    
    signal i_Q_EXTENDED: std_logic_vector((2**N_OPSEL)*N_BIT_DATA-1 downto 0);

    signal i_ADDER_OUT: std_logic_vector(N_BIT_DATA-1 downto 0);
    signal i_ADDER_COUT: std_logic;
    signal i_MULTIPLIER_OUT: std_logic_vector(2*N_BIT_DATA-1 downto 0);
    signal i_BWISE_OUT: std_logic_vector(N_BIT_DATA-1 downto 0);

begin

    -- 
    -- OPERATION MULTIPLEXER
    --

    i_Q_EXTENDED <= x"00000000" & i_BWISE_OUT & i_MULTIPLIER_OUT(N_BIT_DATA-1 downto 0) & i_ADDER_OUT;

    MUXOUT: mux generic map(
        N => N_BIT_DATA,
        M => N_OPSEL
    ) port map(
        S => OP(N_OPSEL-1 downto 0),
        Q => i_Q_EXTENDED,
        Y => Y
    );


    --
    --  ADDER
    --

    Cout <= i_ADDER_COUT;

    ADDER: P4_ADDER generic map(
        NBIT => N_BIT_DATA
    ) port map(
        A => INA,
        B => INB,
        SUB_SUMN => OP(2),
        S => i_ADDER_OUT,
        Cout => i_ADDER_COUT
    );

    --
    --  MULTIPLIER
    --

    MULT: multiplier generic map(
        NBIT => N_BIT_DATA
    ) port map(
        A => INA,
        B => INB,
        Y => i_MULTIPLIER_OUT
    );

    
    --
    --  BITWISE
    --

    BWISE: logic_generic generic map(
        NBIT => N_BIT_DATA
    ) port map(
        A => INA,
        B => INB,
        S => OP(N_OPSEL+3-1 downto 2),
        Y => i_BWISE_OUT
    );

end structural;
