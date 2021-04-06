library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity encoder is
    port (
        b: in std_logic_vector(2 DOWNTO 0); -- b(2) = b(i+1)      b(1) = b(i)       b(0) = b(i-1)
        vp: out std_logic_vector(2 DOWNTO 0) --- vp(1 DOWNTO 0) = sel       vp(2) = cin
    );
end entity encoder;


architecture beahavioral of encoder is
    
begin
    process(b)
    begin 
        case(b) is
            when "000" =>
                vp <= "000"; -- 00 selector for the mux 0
            when "001" =>
                vp <= "001"; -- 01 selector for the mux A
            when "010" =>
                vp <= "001";
            when "011" =>
                vp <= "010"; -- 10 selector for the mux 2A
            when "100" =>
                vp <= "110";
            when "101" =>
                vp <= "101";    
            when "110" =>
                vp <= "101";
            when "111" =>
                vp <= "100";
            when others =>
                vp <= "XXX";
        end case ;
    end process;

    
    
end architecture beahavioral;