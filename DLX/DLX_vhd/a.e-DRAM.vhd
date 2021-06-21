library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

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
        READY       : out std_logic;
        
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
    
    signal i_READY: std_logic := '1';

begin

    i_RM <= RM and EN;
    i_WM <= WM and EN;
    READY <= i_READY;
    
    Wr: PROCESS(Clk)
        file mem_fp: text;
        variable file_line : line;
        variable index : integer :=256;
        variable tmp_data_u : std_logic_vector(N_BIT_DATA-1 downto 0) := (others => '0');
        variable start_read: integer := 0;
        variable acca: integer;
    BEGIN
        if rising_edge(Clk) then
            if Rst = '1' then
                Memory <= (OTHERS => (OTHERS => '0'));
                file_open(mem_fp,"test_bench/mems/factorial_pro.asm.mem",READ_MODE);

                while (not endfile(mem_fp)) loop
                    readline(mem_fp,file_line);
                    hread(file_line,tmp_data_u);
                    
                    if (start_read = 0 and tmp_data_u = x"00000000") then 
                        start_read := 1;
                    elsif (start_read = 1) then
                        start_read := 2; -- skip the empty line after the end fo the program
                    elsif(start_read = 2) then

                        if (not is_x(tmp_data_u)) then 
                            -- report file_line;
                            acca := to_integer(unsigned(tmp_data_u));
                            report "read: >" & integer'image(acca);
                            Memory(index) <= tmp_data_u(31 downto 24);       
                            index := index + 1;

                            Memory(index) <= tmp_data_u(23 downto 16);       
                            index := index + 1;

                            Memory(index) <= tmp_data_u(15 downto 8);       
                            index := index + 1;

                            Memory(index) <= tmp_data_u(7 downto 0);       
                            index := index + 1;

                        end if;
                    end if;

                end loop;

                file_close(mem_fp);
                start_read := 0;
                index := 256;
            else

                if (i_READY = '0') then
                    i_READY <= '1';
                end if;
                
                if i_WM = '1' then

                    if (i_READY = '1') then
                        i_READY <= '0'; 
                    end if;

                    if (DATA_SIZE = "00") then      -- WORD
                        Memory(to_integer(unsigned(address) + 3)) <= data_in(7 downto 0);
                        Memory(to_integer(unsigned(address) + 2)) <= data_in(15 downto 8);
                        Memory(to_integer(unsigned(address)) + 1) <= data_in(23 downto 16);
                    elsif (DATA_SIZE = "01") then   -- HALF
                        Memory(to_integer(unsigned(address)) + 1) <= data_in(7 downto 0);
                    end if;

                    Memory(to_integer(unsigned(address))) <= data_in(31 downto 24);

                end if;
            end if;
        end if;
    END PROCESS Wr;
    
    Rd: PROCESS(address, i_RM, Memory)
    BEGIN
        IF i_RM = '1' THEN

            data_out <= Memory(to_integer(unsigned(address(address'length-1 downto 2)) & "00")) & 
                    Memory(to_integer(unsigned(address(address'length-1 downto 2)) & "00" + 1)) & 
                    Memory(to_integer(unsigned(address(address'length-1 downto 2)) & "00" + 2)) & 
                    Memory(to_integer(unsigned(address(address'length-1 downto 2)) & "00" + 3));

            if (i_READY = '0') then
                data_out <= (others => 'X');
            end if;
            
        ELSE
            data_out <= (others => '0');
        END IF;
    END PROCESS Rd; 

end Behavioral;