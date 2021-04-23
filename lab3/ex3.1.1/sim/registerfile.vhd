library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use WORK.all;

entity register_file is
    port ( 
		CLK: 		IN std_logic;
        RESET: 	    IN std_logic;
        ENABLE: 	IN std_logic;
        RD1: 		IN std_logic;
        RD2: 		IN std_logic;
        WR: 		IN std_logic;
        ADD_WR: 	IN std_logic_vector(4 downto 0);
        ADD_RD1: 	IN std_logic_vector(4 downto 0);
        ADD_RD2: 	IN std_logic_vector(4 downto 0);
        DATAIN: 	IN std_logic_vector(63 downto 0);
        OUT1: 		OUT std_logic_vector(63 downto 0);
	    OUT2: 		OUT std_logic_vector(63 downto 0)
    );
end register_file;

architecture behavioural of register_file is

    -- suggested structures
    subtype REG_ADDR is natural range 0 to 31; -- using natural type
	type REG_ARRAY is array(REG_ADDR) of std_logic_vector(63 downto 0); 
	signal REGISTERS : REG_ARRAY; 
	
begin 

    process(CLK)
    begin
        -- Default value for output 
        if (rising_edge(CLK)) then
            OUT1 <= (OTHERS => '0');
            OUT2 <= (OTHERS => '0');    
            if (RESET = '1') then
                REGISTERS <= (OTHERS => (OTHERS =>'0'));
            elsif (ENABLE = '1') then
                if (WR = '1') then
                    REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN; 
                end if;
                if (RD1 ='1') then
                    OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1))); 
                end if;
                if (RD2 ='1') then
                    OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
                end if;   
            end if;
        end if;
    end process;

end behavioural;

-- configuration CFG_RF_BEH of register_file is
--   for A
--   end for;
-- end configuration;
