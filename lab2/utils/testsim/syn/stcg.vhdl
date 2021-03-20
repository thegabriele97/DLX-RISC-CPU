library ieee;
use ieee.std_logic_1164.all;

entity stcg is
    generic (
        nbit: integer := 16;
        each: integer := 1
    );

    port(
        a: in std_logic_vector(nbit-1 downto 0);
        b: in std_logic_vector(nbit-1 downto 0);
        c: out std_logic_vector(nbit downto 1)
    );
end stcg;

architecture struct of stcg is

    -- Function declaration
    function f_log2(x: integer) return integer is
        variable i: integer;
    begin

        i := 0;  
        while (2**i < x) loop
            i := i + 1;
        end loop;
        
        return i;

    end function;

    function f_PG(
        p           : std_logic_vector(nbit downto 1); 
        g           : std_logic_vector(nbit downto 1);
        prev_index  : integer;
        k           : integer
    ) return std_logic_vector is
        variable pg: std_logic_vector(1 downto 0);
    begin

        pg(0) := p(prev_index + k) and p(prev_index - 1);
        pg(1) := g(prev_index + k) and g(prev_index - 1);

        return pg;

    end function;

    function f_GG(
        p           : std_logic_vector(nbit downto 1); 
        g           : std_logic_vector(nbit downto 1);
        prev_index  : integer;
        k           : integer
    ) return std_logic is
        variable gg: std_logic;
    begin

        gg := g(prev_index + k) or (p(prev_index + k) and g(prev_index - 1));

        return gg;

    end function;

    -- Type definition
    subtype pline_t is std_logic_vector(nbit downto 1);
    subtype gline_t is std_logic_vector(nbit downto 1);

    type sigmtx_t is array(0 to f_log2(nbit), 0 to 1) of std_logic_vector(nbit downto 1);
    --
    --  simtx: first index is the row, second index is the type (1 is g, 0 is p)
    --
    type flags_t is array(1 to f_log2(nbit)) of std_logic;

    -- Signal declaration
    signal pline: pline_t;
    signal gline: gline_t;
    signal sigmtx: sigmtx_t;

begin

    -- Generation of P-G Network
    pline <= a xor b;
    gline <= a and b;

    -- Generation of Sparse Tree Networn
    
    process(pline, gline)

        -- Algorithm Variables
        variable flags: flags_t;
        variable s_flag: std_logic;
        variable prev_index: integer;
        variable result: std_logic_vector(1 downto 0);
    
    begin

        sigmtx(0, 0) <= pline;
        sigmtx(0, 1) <= gline;
        
        for i in 1 to f_log2(nbit) loop

            sigmtx(i, 0) <= sigmtx(i - 1, 0);
            sigmtx(i, 1) <= sigmtx(i - 1, 1);

        end loop;

        flags := (others => '0');
        flags(1) := '1';

        for j in 1 to nbit loop

            prev_index := j;
            s_flag := '1';
            for i in 1 to f_log2(nbit) loop
            
                flags(i) := flags(i) xor s_flag;
                if (s_flag = '1' and flags(i) = '1') then
                    
                    for k in 0 to 2**(i-1)-1 loop
                        
                        if (j <= 2) then
                            --sigmtx(i, 0)(prev_index + k) <= sigmtx(i-1, 0)(prev_index + k) or sigmtx(i-1, 0)(prev_index - 1);
                            --sigmtx(i, 1)(prev_index + k) <= sigmtx(i-1, 1)(prev_index + k) or sigmtx(i-1, 1)(prev_index - 1);
                            result(0) :=  f_GG(p => sigmtx(i-1, 0), g => sigmtx(i-1, 1), prev_index => prev_index, k => k);
                            sigmtx(i, 0)(prev_index + k) <= result(0);
                            sigmtx(i, 1)(prev_index + k) <= result(0);
                        else
                            result := f_PG(p => sigmtx(i-1, 0), g => sigmtx(i-1, 1), prev_index => prev_index, k => k);
                            sigmtx(i, 0)(prev_index + k) <= result(0);
                            sigmtx(i, 1)(prev_index + k) <= result(1);
                        end if;

                    end loop;

                    prev_index := prev_index + 2**(i-1);
                
                else
                    
                    s_flag := '0';

                end if;

            end loop;

        end loop;

    end process;

    -- The result will be only the G line
    c <= sigmtx(f_log2(nbit), 1);

    --stcg_gen: for j in 1 to nbit generate

    --    prev_index <= j;
    --    subpath_gen: for i in 1 to f_log2(nbit) generate

    --        flags(i) <= flags(i) xor '1';
    --        if_subpath_gen: if flags(i) = '1' generate
    --            sub_subpath_gen: for k in 0 to 2**(i-1)-1 generate

    --                PGx: PG port map(
    --                    p(1) => sigmtx(i-1, 0)(1), 
    --                    p(0) => sigmtx(i-1, 0)(1),
    --                    g(1) => sigmtx(i-1, 1)(1), 
    --                    g(0) => sigmtx(i-1, 1)(1),
    --                    pg => c(i downto i-1)
    --                );

    --            end generate sub_subpath_gen;
    --        end generate if_subpath_gen;

    --    end generate subpath_gen;

    -- end generate stcg_gen;

end struct;