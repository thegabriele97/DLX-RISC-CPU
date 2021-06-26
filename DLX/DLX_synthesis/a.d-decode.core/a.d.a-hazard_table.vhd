library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- This block is used to manage the data hazard and dependency. 
-- We have 2**N_REGS_LOG in which we put 1 if the register is BUSY and 0 if the register is not BUSY
-- 
-- For example this block manages this case:
-- ADD R3, R2, R1
-- ADD R5, R4, R3
-- We have to wait until R3 is ready to be used by the second ADD, otherwise we get the old value



entity hazard_table is
    generic (
        N_REGS_LOG: integer := 8
    );
    port (
        CLK:            in std_logic;
        RST:            in std_logic;
        WR1:            in std_logic;       -- Enable write 1 signal
        WR2:            in std_logic;       -- Enable write 2 signal
        ADD_WR1:        in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address wirte 1 signal
        ADD_WR2:        in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address wirte 2 signal
        ADD_CHECK1:     in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address reader 1 signal
        ADD_CHECK2:     in std_logic_vector(N_REGS_LOG-1 downto 0);     -- Address reader 2 signal
        BUSY:           out std_logic;     -- Signal to identify that there is an hazard. When '1' there is an hazard, when '0' there are no hazard
        BUSY_WINDOW:    out std_logic
    );
end entity;



architecture behavioural of hazard_table is

    TYPE Storage IS ARRAY(0 TO (2**N_REGS_LOG) - 1) OF std_logic_vector(2 downto 0);
    type storage_red_t is array(8 to (2**N_REGS_LOG) -1) of std_logic_vector(2 downto 0);
    
    SIGNAL Table : Storage;
    SIGNAL i_busy_window : storage_red_t;

BEGIN

    BUSY <= '1' when ((unsigned(Table(to_integer(unsigned(ADD_CHECK1)))) /= 0) or (unsigned(Table(to_integer(unsigned(ADD_CHECK2)))) /= 0)) else '0';

    Wr: PROCESS(CLK)
    BEGIN
        IF rising_edge(CLK) THEN
            IF RST = '1' THEN
                Table <= (OTHERS => (others => '0'));
            ELSE
                IF WR1 = '1' and ((ADD_WR1 /= ADD_WR2) or WR2 = '0') THEN     -- when they write on the same address
                    Table(to_integer(unsigned(ADD_WR1))) <= std_logic_vector(unsigned(Table(to_integer(unsigned(ADD_WR1)))) + 1);
                END IF;
                IF WR2 = '1' and ((ADD_WR1 /= ADD_WR2) or WR1 = '0') THEN
                    Table(to_integer(unsigned(ADD_WR2))) <= std_logic_vector(unsigned(Table(to_integer(unsigned(ADD_WR2)))) - 1);
                END IF;
            END IF;
        END IF;
    END PROCESS Wr;

    i_busy_window(8) <= Table(8);
    ORGen: for i in 9 to (2**N_REGS_LOG)-1 generate
        i_busy_window(i) <= i_busy_window(i-1) or Table(i);
    end generate ORGen;

    BUSY_WINDOW <= i_busy_window(2**N_REGS_LOG - 1)(2) or 
        i_busy_window(2**N_REGS_LOG - 1)(1) or 
        i_busy_window(2**N_REGS_LOG - 1)(0);

end behavioural;
