library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;

entity CARRY_GENERATOR is
    generic (
        NBIT :		integer := numBit;
        NBIT_PER_BLOCK: integer := numBitXBlock);
    port (
        A :		in	std_logic_vector(NBIT-1 downto 0);
        B :		in	std_logic_vector(NBIT-1 downto 0);
        Cin :	in	std_logic;
        Co :	out	std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
end entity;

architecture structural of CARRY_GENERATOR is

    -- Functions
    function f_log2(x: integer) return integer is
        variable i: integer;
    begin

        i := 0;  
        while (2**i < x) loop
            i := i + 1;
        end loop;
        
        return i;

    end function;

    -- Components
    component PG is
        port(
            p: in std_logic_vector(1 downto 0);
            g: in std_logic_vector(1 downto 0);
            po: out std_logic;
            go: out std_logic
        );
    end component;

    component GG is
        port(
            p: in std_logic;
            g: in std_logic_vector(1 downto 0);
            go: out std_logic
        );
    end component;

    component prop_gen_generic is
        generic(NBIT: integer := numBit);
        port (
            a, b: in std_logic_vector(NBIT - 1 DOWNTO 0);
            p, g: out std_logic_vector(NBIT - 1 DOWNTO 0)
        );
    end component;

    -- Type definition
    --
    -- 0: G Line
    -- 1: P Line
    -- 
    type sigmtx_t is array(0 to 1, 0 to f_log2(NBIT)) of std_logic_vector(NBIT downto 1);

    -- Signals declaration
    signal sigmtx: sigmtx_t;

begin

    PGNet: prop_gen_generic generic map(
        NBIT => NBIT
    ) port map(
        a => A,
        b => B,
        p => sigmtx(1, 0),
        g => sigmtx(0, 0)
    );

    -- Tree Generation
    rowGen: for i in 1 to f_log2(NBIT) generate
        
        colGen: for j in 1 to NBIT generate
            
            colCheck: if ((NBIT - j) mod (2**i) < 2**(i-1)) generate
                
                GGBlockGen: if (j <= 2**i) generate
                    GGi: GG port map(
                        p => sigmtx(1, i-1)(j),
                        g(1) => sigmtx(0, i-1)(j),
                        g(0) => sigmtx(0, i-1)(2**(i-1)),
                        go => sigmtx(0, i)(j)
                    );
                end generate GGBlockGen;

                PGBlockGen: if (j > 2**i) generate
                    PGi: PG port map(
                        p(1) => sigmtx(1, i-1)(j),
                        p(0) => sigmtx(1, i-1)(j - 2**(i-1) + (NBIT-j) mod (2**i)),
                        g(1) => sigmtx(0, i-1)(j),
                        g(0) => sigmtx(0, i-1)(j - 2**(i-1) + (NBIT-j) mod (2**i)),
                        po => sigmtx(1, i)(j),
                        go => sigmtx(0, i)(j)
                    );
                end generate PGBlockGen;

            end generate colCheck;

            passThrough: if (not ((NBIT - j) mod (2**i) < 2**(i-1))) generate
                sigmtx(0, i)(j) <= sigmtx(0, i-1)(j);
                sigmtx(1, i)(j) <= sigmtx(1, i-1)(j);
            end generate passThrough;

        end generate colGen;

    end generate rowGen;


	coutSelect: for i in 0 to (NBIT/NBIT_PER_BLOCK) - 1 generate
	
    	Co(i) <= sigmtx(0, f_log2(NBIT))((i+1) * NBIT_PER_BLOCK);
		
	end generate coutSelect;


end structural;
