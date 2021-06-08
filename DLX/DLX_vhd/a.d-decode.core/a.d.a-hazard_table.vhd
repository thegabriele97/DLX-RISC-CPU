library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- This block is used to manage the data hazard and dependency. We have 2**N_REGS_LOG in which we put 1 if the register is BUSY and 0 if the register is not BUSY
-- For example this block manages this case:
-- ADD R3, R2, R1
-- ADD R5, R4, R3
-- We have to wait until R3 is ready to be used by the second ADD, otherwise we get the old value



entity hazard_table is
    generic (
        N_REGS_LOG: integer := 8
    );
    port (
        CLK:        in std_logic;
        RST:        in std_logic;
        WR1:        in std_logic;       -- Enable write 1 signal
        WR2:        in std_logic;       -- Enable write 2 signal
        ADD_WR1:    in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address wirte 1 signal
        ADD_WR2:    in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address wirte 2 signal
        ADD_CHECK1:  in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address reader 1 signal
        ADD_CHECK2:  in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address reader 2 signal
        BUSY:       out std_logic;     -- Signal to identify that there is an hazard. When '1' there is an hazard, when '0' there are no hazard
        ALL_ZEROS: out std_logic
    );
end entity;



architecture behavioural of hazard_table is
    TYPE Storage IS ARRAY(0 TO (2**N_REGS_LOG) - 1) OF std_logic;
    SIGNAL Table : Storage;

    signal i_all_zeros: std_logic := '0';

BEGIN

    Rd: PROCESS(ADD_CHECK1, ADD_CHECK2, Table)
    BEGIN
        BUSY <= Table(to_integer(unsigned(ADD_CHECK1))) or Table(to_integer(unsigned(ADD_CHECK2)));
    END PROCESS Rd;

    Wr: PROCESS(CLK)
    BEGIN
        IF rising_edge(CLK) THEN
            IF RST = '1' THEN
                Table <= (OTHERS => '0');
            ELSE
                IF WR1 = '1' THEN
                    Table(to_integer(unsigned(ADD_WR1))) <= '1';
                END IF;
                IF WR2 = '1' THEN
                    Table(to_integer(unsigned(ADD_WR2))) <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS Wr;

    ORGen: for i in 0 to (2**N_REGS_LOG)-1 generate
        i_all_zeros <= i_all_zeros or Table(i);
    end generate ORGen;

    ALL_ZEROS <= not(i_all_zeros);

end behavioural;