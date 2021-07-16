library ieee;
use ieee.std_logic_1164.all;

entity multiplier is
    generic(
        NBIT: integer := 8
    );
    port(
        A: in std_logic_vector(NBIT - 1 downto 0);
        B: in std_logic_vector(NBIT - 1 downto 0);
        Y: out std_logic_vector((2 * NBIT) - 1 downto 0)
    );
end entity;

architecture structural of multiplier is

    component adder is
        generic (
            NBIT: integer
        );
        port (
            A: in std_logic_vector((NBIT-1) downto 0);
            B: in std_logic_Vector((NBIT-1) downto 0);
            SUB_SUMn: in std_logic;
            S: out std_logic_vector(NBIT downto 0)
        );
    end component;

    component mux3_1 is
        generic(
            NBIT: integer
        );
        port(
            A: in std_logic_vector((NBIT-1) downto 0);
            B: in std_logic_vector((NBIT-1) downto 0);
            C: in std_logic_vector((NBIT-1) downto 0);
            S: in std_logic_vector(1 downto 0);
            Y: out std_logic_vector((NBIT-1) downto 0)
        );
    end component;

    component encoder is
        port (
            b: in std_logic_vector(2 DOWNTO 0); -- b(2) = b(i+1)      b(1) = b(i)       b(0) = b(i-1)
            vp: out std_logic_vector(2 DOWNTO 0) --- vp(1 DOWNTO 0) = sel       vp(2) = cin
        );
    end component;

    type ash_t is array(0 to (NBIT/2)) of std_logic_vector((2 * NBIT) downto 0);
    type sel_t is array(0 to (NBIT/2)) of std_logic_vector(1 downto 0);
    type sum_subn_t is array(0 to (NBIT/2)) of std_logic;
    type mux_t is array(0 to (NBIT/2)) of std_logic_vector((2 * NBIT) downto 0);
    type sum_t is array(0 to (NBIT/2)) of std_logic_vector((2 * NBIT)+1 downto 0);

    signal ash4x: ash_t := (others => (others => '0'));
    signal ash8x: ash_t := (others => (others => '0'));
    signal sel: sel_t;
    signal sum_subn: sum_subn_t;
    signal mux_out: mux_t := (others => (others => '0'));
    signal sum: sum_t;

    signal Bx: std_logic_vector(NBIT downto 0);

begin

    Bx <= B & '0';

    -- ash4x(0) = A shifted by 0 to the left
    -- with sign extend
    ash4x(0)(2*NBIT downto NBIT) <= (others => A(NBIT-1));
    ash4x(0)(NBIT-1 downto 0) <= A;

    -- ash8x(0) = A shifted by 1 to the left
    -- with sign extend
    ash8x(0)(2*NBIT downto NBIT+1) <= (others => A(NBIT-1));
    ash8x(0)(NBIT downto 1) <= A;
    ash8x(0)(0) <= '0';

    -- The first adder is used to compute -A and/or -2A so
    -- we do 0 - (the first mux's output)
    sum(0)(NBIT+1 downto 0) <= (others => '0');
    
    -- sign extend: we can directly do the same in the previous line
    -- as sum(0) <= (others => '0'); but it's better to do this to leave
    -- same structure on the next stages (where actually the sign is really extended)
    sum(0)((2*NBIT)+1 downto NBIT+2) <= (others => sum(0)(NBIT+1));

    -- for i=0 we have the generation of the first operand 
    -- (-A or -2A or the positive ones)
    blockGen: for i in 0 to (NBIT/2)-1 generate

        shiftBlock: if i > 0 generate
            -- ash4x(i) is previous A shifted by 2 (4x)
            -- The sign is already extended in ash4x(0) so 
            -- ash4x(1) and so on will inherit it
            ash4x(i) <= ash4x(i - 1)((2 * NBIT) - 2 downto 0) & "00";

            -- ash8x(i) is previous A shifted by 3 (8x)
            -- The sign is already extended in ash4x(0) so 
            -- ash4x(1) and so on will inherit it
            ash8x(i) <= ash4x(i - 1)((2 * NBIT) - 3 downto 0) & "000";
        end generate shiftBlock;

        ENCi: encoder port map(
            b(0) => Bx(2*i),
            b(1) => Bx(i*2 + 1),
            b(2) => Bx(2*i + 2),
            vp(1 downto 0) => sel(i),
            vp(2) => sum_subn(i)
        );

        MUXi: mux3_1 generic map(
            NBIT => (NBIT + (1 + 2*i))
        ) port map(
            A => (others => '0'),
            B => ash4x(i)((NBIT + 2*i) downto 0),
            C => ash8x(i)((NBIT + 2*i) downto 0),
            S => sel(i),
            Y => mux_out(i)((NBIT + 2*i) downto 0)
        );

        ADDERi: adder generic map(
            NBIT => (NBIT + 1 + 2*i)
        ) port map(
            A => sum(i)((NBIT + 2*i) downto 0),
            B => mux_out(i)((NBIT + 2*i) downto 0),
            SUB_SUMn => sum_subn(i),
            S => sum(i+1)((NBIT + 2*i)+1 downto 0) -- lower part of sum(i+1), needs sign extension
        );

        -- Extending the sign of the result sum(i+1)
        sum(i+1)((2*NBIT)+1 downto NBIT+(2*i)+2) <= (others => sum(i+1)((NBIT + 2*i)+1));

    end generate blockGen;

    Y <= sum((NBIT/2))(2*NBIT-1 downto 0);

end structural;