library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity datamem_ldstr is
    generic(
        N_BIT_DATA: integer := 32 
    );
    port(

        DATA_RAW    : in std_logic_vector(N_BIT_DATA-1 downto 0);
        ALOW        : in std_logic_vector(1 downto 0); -- Address LSBs in order to know the right data position on the bus      
        RWM         : in std_logic; 

        -- 00 -> N_BIT_DATA bit     (lw/sw)
        -- 01 -> N_BIT_DATA/2 bit   (lh/sh)
        -- 10 -> 8 bit              (lb/sb)
        DATA_SIZE   : in std_logic_vector(1 downto 0); 
        UNSIG_SIGN_N: in std_logic;                                 -- 0 is signed, 1 is unsigned
                     
        DATA_OUT    : out std_logic_vector(N_BIT_DATA-1 downto 0)
    );
end entity;

architecture mix of datamem_ldstr is

    signal i_DATA_RAW: std_logic_vector(N_BIT_DATA-1 downto 0);

begin


    process(DATA_RAW, RWM, DATA_SIZE, ALOW)
    begin

        i_DATA_RAW <= (others => '0');

        if (RWM = '0' or DATA_SIZE = "00") then
            i_DATA_RAW <= DATA_RAW;
        else
            
            if (DATA_SIZE = "01" and ALOW(1) = '0') then
                i_DATA_RAW(i_DATA_RAW'length/2-1 downto 0) <= DATA_RAW(DATA_RAW'length-1 downto DATA_RAW'length/2);
            elsif (DATA_SIZE = "01" and ALOW(1) = '1') then
                i_DATA_RAW(i_DATA_RAW'length/2-1 downto 0) <= DATA_RAW(DATA_RAW'length/2-1 downto 0);
            elsif (DATA_SIZE = "10" and ALOW = "11") then
                i_DATA_RAW(7 downto 0) <= DATA_RAW(7 downto 0);
            elsif (DATA_SIZE = "10" and ALOW = "10") then
                i_DATA_RAW(7 downto 0) <= DATA_RAW(15 downto 8);
            elsif (DATA_SIZE = "10" and ALOW = "01") then
                i_DATA_RAW(7 downto 0) <= DATA_RAW(23 downto 16);
            elsif (DATA_SIZE = "10" and ALOW = "00") then
                i_DATA_RAW(7 downto 0) <= DATA_RAW(31 downto 24);
            end if;

        end if;

    end process;

    process(i_DATA_RAW, DATA_SIZE, UNSIG_SIGN_N, RWM)
    begin

        DATA_OUT <= i_DATA_RAW;

        if (DATA_SIZE = "01") then
            DATA_OUT <= (others => '0');
            if (UNSIG_SIGN_N = '0') then 
                DATA_OUT <= (others => i_DATA_RAW((DATA_OUT'length / 2) -1)); -- sign extension
            end if;

            DATA_OUT((DATA_OUT'length / 2) -1 downto 0) <= i_DATA_RAW((DATA_OUT'length / 2) -1 downto 0);
            if (RWM = '0') then -- Data Replication when WRITE
                DATA_OUT(DATA_OUT'length-1 downto (DATA_OUT'length / 2)) <= i_DATA_RAW((DATA_OUT'length / 2) -1 downto 0);
            end if;
        elsif (DATA_SIZE = "10") then
            DATA_OUT <= (others => '0');
            if (UNSIG_SIGN_N = '0') then
                DATA_OUT <= (others => i_DATA_RAW(7));    -- sign extension
            end if;

            DATA_OUT(7 downto 0) <= i_DATA_RAW(7 downto 0);
            if (RWM = '0') then -- Data Replication when WRITE
                for i in 1 to 3 loop
                    DATA_OUT(8*(i+1)-1 downto 8*i) <= i_DATA_RAW(7 downto 0);
                end loop;
            end if;
        end if;

    end process;
    
end mix;