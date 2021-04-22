library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

package utils is

    --function that receives an integer greater or equal to 1 and returns its base-2 logarithm rounded up to the nearest greater (or equal) integer
    function f_log2 (x: integer) return integer;    
    
end package utils;

package body utils is

    function f_log2(x: integer) return integer is
        variable i: integer;
    begin
        i := 0;  
        while (2**i < x) loop
            i := i + 1;
        end loop;
        return i;
    end function;
end package body utils;
