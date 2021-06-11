library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DRAM is
    generic (
        N_BIT_DATA: integer := 32;
        LOG_RAM_DEPTH : integer := 48
    );
    port(
        Clk         : in std_logic;
        Rst         : in std_logic;
        RM          : in std_logic;     -- Read memory signal
        WM          : in std_logic;     -- Write memory signal
        address     : in std_logic_vector(LOG_RAM_DEPTH-1 downto 0);        
        data_in     : in std_logic_vector(N_BIT_DATA-1 downto 0);
        data_out    : out std_logic_vector(N_BIT_DATA-1 downto 0)
    );
end DRAM;

architecture Behavioral of DRAM is
    
    TYPE Storage IS ARRAY(0 to ((2**LOG_RAM_DEPTH) - 1)) OF std_logic_vector(N_BIT_DATA-1  downto 0);
    SIGNAL Memory : Storage;

begin
    
    Wr: PROCESS(Clk)
    BEGIN
        IF rising_edge(Clk) THEN
            IF Rst = '1' THEN
                Memory <= (OTHERS => (OTHERS => '0'));
            ELSIF WM = '1' THEN
                Memory(to_integer(unsigned(address))) <= data_in;
            END IF;
        END IF;
    END PROCESS Wr;
    
    Rd: PROCESS(address, RM, Memory)
    BEGIN
        IF RM = '1' THEN
            data_out <= Memory(to_integer(unsigned(address)));
        ELSE
            data_out <= (others => '0');
        END IF;
    END PROCESS Rd;

end Behavioral;