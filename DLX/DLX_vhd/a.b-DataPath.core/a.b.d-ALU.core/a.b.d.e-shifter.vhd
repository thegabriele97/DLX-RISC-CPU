library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shifter is
    generic(
        N_BIT_DATA: integer := 32;
        N_BIT_COARSE_MASK_SEL: integer := 2
    );
    port(
        A:      in std_logic_vector(N_BIT_DATA-1 downto 0);  
        B:      in std_logic_vector(N_BIT_DATA-1 downto 0);  
        sel:    in std_logic_vector(1 downto 0);               -- first bit: arith/logic, second bit: shift left/right    
        -- 00       logic right
        -- 01       logic left
        -- 10       arithmetic right
        -- 11       arithmetic left
        Y:      out std_logic_vector(N_BIT_DATA-1 downto 0)
               
    );
end entity;
    
architecture mix of shifter is
    type mask_t is array (0 to (N_BIT_DATA/8)-1) of std_logic_vector(N_BIT_DATA+8-1 downto 0);
	
    signal mask: mask_t;
    signal mask_sel: std_logic_vector(N_BIT_DATA+8-1 downto 0);
    signal sign_extended: std_logic_vector(7 downto 0);

begin

    sign_extended <= (others => A(N_BIT_DATA-1)) when sel(1) = '1' else (others => '0');
    mask(0) <= A & x"00" when sel(0) = '1' else sign_extended & A;

    MASK_GEN: for i in 1 to mask'length-1 generate
    
        with sel select
            mask(i) <= x"00" & mask(i-1)(mask(i-1)'length-1 downto 8)           when "00",
                       mask(i-1)(mask(i-1)'length-1-8 downto 0) & x"00"          when "01",
                       sign_extended & mask(i-1)(mask(i-1)'length-1 downto 8)    when "10",
                       mask(i-1)(mask(i-1)'length-1-8 downto 0) & x"00"        when others;
    
    end generate;

    -- 01_000_000(+1) -- 8

    mask_sel <= mask(TO_INTEGER(unsigned(B(3+N_BIT_COARSE_MASK_SEL-1 downto 3))));

    with sel(0) select
        Y <= mask_sel(N_BIT_DATA + TO_INTEGER(unsigned(B(2 downto 0))) -1 downto TO_INTEGER(unsigned(B(2 downto 0)))) when '0',
             mask_sel(mask_sel'length - TO_INTEGER(unsigned(B(2 downto 0))) -1 downto 8- TO_INTEGER(unsigned(B(2 downto 0)))) when others;

end mix;
