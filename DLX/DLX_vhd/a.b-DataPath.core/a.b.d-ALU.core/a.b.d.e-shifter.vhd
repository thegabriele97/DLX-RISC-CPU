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
        sel:    in std_logic_vector(2 downto 0);               -- first bit: arith/logic, second bit: shift left/right    
        -- 000       logic right
        -- 001       logic left
        -- 010       arithmetic right
        -- 011       arithmetic left
        -- 100       rotate right
        -- 101       rotate left
        Y:      out std_logic_vector(N_BIT_DATA-1 downto 0)
               
    );
end entity;
    
architecture mix of shifter is
    type mask_t is array (0 to (N_BIT_DATA/8)-1) of std_logic_vector(N_BIT_DATA+8-1 downto 0);
    type ext_t is array(0 to (N_BIT_DATA/8)-1) of std_logic_vector(7 downto 0);
	
    signal mask: mask_t;
    signal mask_sel: std_logic_vector(N_BIT_DATA+8-1 downto 0);
    signal signext: ext_t;

begin

    -- 0..7
    -- 8..15
    -- 16..23
    -- 24..31

    
    -- signext(1) <= (A(15 downto 8))                               when sel(2) = '1' and sel(0) = '0' else
    --               (A(A'length-8-1 downto A'length-16))        when sel(2) = '1' and sel(0) = '1';
    
    -- signext(2) <= (A(23 downto 16))                            when sel(2) = '1' and sel(0) = '0' else
    --               (A(A'length-16-1 downto A'length-24))        when sel(2) = '1' and sel(0) = '1';
    
    -- signext(3) <= (A(31 downto 24))                           when sel(2) = '1' and sel(0) = '0' else
    --               (A(A'length-24-1 downto A'length-32))        when sel(2) = '1' and sel(0) = '1';


    signext(0) <= (others => A(N_BIT_DATA-1))            when sel(1) = '1' and sel(0) = '0' else 
                  (A(7 downto 0))                        when sel(2) = '1' and sel(0) = '0' else
                  (A(A'length-1 downto A'length-8))      when sel(2) = '1' and sel(0) = '1' else
                  (others => '0');
    
    SIGNEXT_GEN: for i in 1 to signext'length-1 generate
    
        signext(i) <= (A(15+8*(i-1) downto 8*i))                      when sel(2) = '1' and sel(0) = '0' else
                      (A(A'length-8*i-1 downto A'length-(8+8*i)))    when sel(2) = '1' and sel(0) = '1';        
    
    end generate;

    
    mask(0) <= A & signext(0) when sel(0) = '1' else signext(0) & A;

    MASK_GEN: for i in 1 to mask'length-1 generate
    
        with sel select
            mask(i) <= x"00" & mask(i-1)(mask(i-1)'length-1 downto 8)            when "000",
                       mask(i-1)(mask(i-1)'length-1-8 downto 0) & x"00"          when "001",
                       signext(0) & mask(i-1)(mask(i-1)'length-1 downto 8)    when "010",
                       mask(i-1)(mask(i-1)'length-1-8 downto 0) & x"00"          when "011",
                       signext(i) & mask(i-1)(mask(i-1)'length-1 downto 8)    when "100",
                       mask(i-1)(mask(i-1)'length-1-8 downto 0) & signext(i) when others;
    
    end generate;

    -- 01_000_000(+1) -- 8

    mask_sel <= mask(TO_INTEGER(unsigned(B(3+N_BIT_COARSE_MASK_SEL-1 downto 3))));

    with sel(0) select
        Y <= mask_sel(N_BIT_DATA + TO_INTEGER(unsigned(B(2 downto 0))) -1 downto TO_INTEGER(unsigned(B(2 downto 0)))) when '0',
             mask_sel(mask_sel'length - TO_INTEGER(unsigned(B(2 downto 0))) -1 downto 8- TO_INTEGER(unsigned(B(2 downto 0)))) when others;

end mix;
