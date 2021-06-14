library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TB_SHIFTER is
end entity;

architecture test of TB_SHIFTER is

    component shifter is
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
    end component;

    signal A, B, Y: std_logic_vector(31 downto 0);
    signal sel: std_logic_vector(2 downto 0);

begin 

    SH: shifter generic map(32, 2) port map(A, B, sel, Y);
    
    process

        variable A_tmp: std_logic_vector(A'length-1 downto 0);

    begin
        
        -- logic right
        sel <= "000";
        A <= x"f2348293";
        A_tmp := x"f2348293";
        for i in 0 to 31 loop
            B <= std_logic_vector(TO_UNSIGNED(i, B'length));
            wait for 1 ns;
            assert Y = A_tmp report "ERROR on logic right";
            
            A_tmp :=  '0' & A_tmp(31 downto 1);
        end loop;

        -- logic left
        sel <= "001";
        A <= x"12348293";
        A_tmp := x"12348293";
        for i in 0 to 31 loop
            B <= std_logic_vector(TO_UNSIGNED(i, B'length));
            wait for 1 ns;
            assert Y = A_tmp report "ERROR on logic left";
            
            A_tmp := A_tmp(30 downto 0) & '0';
        end loop;

        -- arith right
        sel <= "010";
        A <= x"F2348293";
        A_tmp := x"F2348293";
        for i in 0 to 31 loop
            B <= std_logic_vector(TO_UNSIGNED(i, B'length));
            wait for 1 ns;
            assert Y = A_tmp report "ERROR on arith right";
            
            A_tmp :=  A_tmp(A_tmp'length-1) & A_tmp(31 downto 1);
        end loop;

        -- arith left
        sel <= "011";
        A <= x"12348293";
        A_tmp := x"12348293";
        for i in 0 to 31 loop
            B <= std_logic_vector(TO_UNSIGNED(i, B'length));
            wait for 1 ns;
            assert Y = A_tmp report "ERROR on arith left";
            
            A_tmp :=  A_tmp(30 downto 0) & '0';
        end loop;

        10000010001101001000001010010011
        11000001000110100100000101001001
        11100000100011010010000010100100
        01110000010001101001000001010010

        -- rot right
        sel <= "100";
        A <= x"82348293";
        A_tmp := x"82348293";
        for i in 0 to 31 loop
            B <= std_logic_vector(TO_UNSIGNED(i, B'length));
            wait for 1 ns;
            assert Y = A_tmp report "ERROR on rotate right";
            
            A_tmp :=  A_tmp(0) & A_tmp(31 downto 1);
        end loop;

        -- rot left
        sel <= "101";
        A <= x"82348293";
        A_tmp := x"82348293";
        for i in 0 to 31 loop
            B <= std_logic_vector(TO_UNSIGNED(i, B'length));
            wait for 1 ns;
            assert Y = A_tmp report "ERROR on rotate left";
            
            A_tmp :=  A_tmp(30 downto 0) & A_tmp(31);
        end loop;

        wait; 
    
    end process;
    
end test;
