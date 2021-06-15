library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity datamem_ldstr is
    generic(
        N_BIT_DATA: integer := 32 
    );
    port(

        DATA_RAW    : in std_logic_vector(N_BIT_DATA-1 downto 0);
        
        -- 00 -> N_BIT_DATA bit     (lw/sw)
        -- 01 -> N_BIT_DATA/2 bit   (lh/sh)
        -- 10 -> 8 bit              (lb/sb)
        DATA_SIZE   : in std_logic_vector(1 downto 0); 
        UNSIG_SIGN_N: in std_logic;                                 -- 0 is signed, 1 is unsigned
                     
        DATA_OUT    : out std_logic_vector(N_BIT_DATA-1 downto 0)
    );
end entity;

architecture mix of datamem_ldstr is
begin

    process(DATA_RAW, DATA_SIZE, UNSIG_SIGN_N)
    begin

        DATA_OUT <= DATA_RAW;

        if (DATA_SIZE = "01") then
            DATA_OUT <= (others => '0');
            if (UNSIG_SIGN_N = '0') then                
                DATA_OUT <= (others => DATA_RAW((DATA_OUT'length / 2) -1)); -- sign extension
            end if;

            DATA_OUT((DATA_OUT'length / 2) -1 downto 0) <= DATA_RAW((DATA_OUT'length / 2) -1 downto 0);
        elsif (DATA_SIZE = "10") then
            DATA_OUT <= (others => '0');
            if (UNSIG_SIGN_N = '0') then
                DATA_OUT <= (others => DATA_RAW(7));    -- sign extension
            end if;

            DATA_OUT(7 downto 0) <= DATA_RAW(7 downto 0);
        end if;

    end process;
    
end mix;