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
        EN          : in std_logic;
        
        DATA_SIZE   : in std_logic_vector(1 downto 0);    
        -- 00: non bisogna fare alcuna estensione di segno
        -- 01: bisogna estendere di N_BIT_DATA/2
        -- 10: bisogna estendere di N_BIT_DATA - 8
        
        address     : in std_logic_vector(LOG_RAM_DEPTH-1 downto 0);        
        data_in     : in std_logic_vector(N_BIT_DATA-1 downto 0);
        data_out    : out std_logic_vector(N_BIT_DATA-1 downto 0)
    );
end DRAM;



architecture Behavioral of DRAM is
    
    TYPE Storage IS ARRAY(0 to ((4*2**LOG_RAM_DEPTH) - 1)) OF std_logic_vector(7 downto 0);
    SIGNAL Memory : Storage;

    signal i_RM: std_logic;
    signal i_WM: std_logic;

begin

    i_RM <= RM and EN;
    i_WM <= WM and EN;
    
    Wr: PROCESS(Clk)
    BEGIN
        if rising_edge(Clk) then
            if Rst = '1' then
                Memory <= (OTHERS => (OTHERS => '0'));
            elsif i_WM = '1' then

                if (DATA_SIZE = "00") then      -- WORD
                    Memory(to_integer(unsigned(address) + 3)) <= data_in(7 downto 0);
                    Memory(to_integer(unsigned(address) + 2)) <= data_in(15 downto 8);
                    Memory(to_integer(unsigned(address)) + 1) <= data_in(23 downto 16);
                    Memory(to_integer(unsigned(address))) <= data_in(31 downto 24);
                elsif (DATA_SIZE = "01") then   -- HALF
                    Memory(to_integer(unsigned(address))) <= data_in(15 downto 8);
                    Memory(to_integer(unsigned(address)) + 1) <= data_in(7 downto 0);
                else                            -- BYTE
                    Memory(to_integer(unsigned(address))) <= data_in(7 downto 0);
                end if;
            end if;
        end if;
    END PROCESS Wr;
    
    Rd: PROCESS(address, i_RM, Memory, DATA_SIZE)
    BEGIN
        IF i_RM = '1' THEN
            if (DATA_SIZE = "00" ) then
                data_out <= Memory(to_integer(unsigned(address))) & 
                        Memory(to_integer(unsigned(address) + 1)) & 
                        Memory(to_integer(unsigned(address) + 2)) & 
                        Memory(to_integer(unsigned(address) + 3));
            elsif (DATA_SIZE = "01" ) then
                data_out <= x"0000" &
                        Memory(to_integer(unsigned(address) + 0)) & 
                        Memory(to_integer(unsigned(address) + 1));
            else
                data_out <= x"000000" & Memory(to_integer(unsigned(address)));
            end if;
                
        ELSE
            data_out <= (others => '0');
        END IF;
    END PROCESS Rd;

end Behavioral;