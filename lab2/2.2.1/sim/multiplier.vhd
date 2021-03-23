library ieee;
use ieee.std_logic_1164.all;

entity multiplier is
    generic(
        NBIT: integer
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

    component mux is
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
    type sum_t is array(0 to (NBIT/2)) of std_logic_vector((2 * NBIT) downto 0);

    signal ash: ash_t := (others => (others => '0'));
    signal sel: sel_t;
    signal sum_subn: sum_subn_t;
    signal mux_out: mux_t := (others => (others => '0'));
    signal sum: sum_t := (others => (others => '0'));

    signal Ax: std_logic_vector(NBIT downto 0);
    signal Bx: std_logic_vector(NBIT + 1 downto 0);

begin

    Ax <= A(NBIT-1) & A;
    Bx <= B(NBIT-1) & B(NBIT-1) & B;

    -- ash(0) = A shifted by 2 to the left
    ash(0)(2*NBIT downto NBIT+1) <= (others => A(NBIT-1));
    ash(0)(NBIT downto 1) <= A;
    ash(0)(0) <= '0';

    ENC0: encoder port map(
        b(0) => '0',
        b(1) => B(0),
        b(2) => B(1),
        vp(1 downto 0) => sel(0),
        vp(2) => sum_subn(0)
    );

    MUX0: mux generic map(
        NBIT => (NBIT + 1)
    ) port map(
        A => (others => '0'),
        B => Ax,
        C => ash(0)(NBIT downto 0),
        S => sel(0),
        Y => mux_out(0)(NBIT downto 0)
    );

    ADDER0: adder generic map(
        NBIT => NBIT
    ) port map(
        A => (others => '0'),
        B => mux_out(0)(NBIT-1 downto 0),
        SUB_SUMn => sum_subn(0),
        S => sum(0)(NBIT downto 0)
    );

    -- sign extend
    sum(0)(2*NBIT downto NBIT+1) <= (others => sum(0)(NBIT));

    blockGen: for i in 1 to (NBIT/2) generate

        ash(i) <= ash(i - 1)((2 * NBIT) - 1 downto 0) & '0';

        ENCi: encoder port map(
            b(0) => Bx(2*i - 1),
            b(1) => Bx(i*2),
            b(2) => Bx(2*i + 1),
            vp(1 downto 0) => sel(i),
            vp(2) => sum_subn(i)
        );

        MUXi: mux generic map(
            NBIT => (NBIT + (1 + 2*i))
        ) port map(
            A => (others => '0'),
            B => ash(i-1)((NBIT + 2*i) downto 1),
            C => ash(i)((NBIT + 2*i) downto 0),
            S => sel(i),
            Y => mux_out(i)((NBIT + 2*i) downto 0)
        );

        ADDERi: adder generic map(
            NBIT => (NBIT + 2*i)
        ) port map(
            A => sum(i-1)((NBIT + 2*i)-1 downto 0),
            B => mux_out(i)((NBIT + 2*i)-1 downto 0),
            SUB_SUMn => sum_subn(i),
            S => sum(i)((NBIT + 2*i) downto 0)
        );

    end generate blockGen;

    Y <= sum((NBIT/2))(2*NBIT-1 downto 0);

end structural;