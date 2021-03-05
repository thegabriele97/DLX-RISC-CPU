library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use WORK.constants.all;
use WORK.alu_type.all;

entity ALU is
  generic (N : integer := numBit);
  port 	 ( FUNC: IN TYPE_OP;
           DATA1, DATA2: IN std_logic_vector(N-1 downto 0);
           OUTALU: OUT std_logic_vector(N-1 downto 0));
end ALU;

architecture BEHAVIOR of ALU is

begin

P_ALU: process (FUNC, DATA1, DATA2)
  -- complete all the requested functions
  variable tmp : std_logic_vector(N-1 downto 0) := (others => '0');
  begin
    case FUNC is
	when ADD 	=> OUTALU <= std_logic_vector(unsigned(DATA1) + unsigned(DATA2)); 
	when SUB 	=> OUTALU <= std_logic_vector(unsigned(DATA1) - unsigned(DATA2));
	when MULT 	=> OUTALU <= std_logic_vector(unsigned(DATA1(N/2-1 downto 0)) * unsigned(DATA2(N/2-1 downto 0)));
	when BITAND 	=> OUTALU <= DATA1 and DATA2; -- bitwise operations
	when BITOR 	=> OUTALU <= DATA1 or DATA2;
	when BITXOR 	=> OUTALU <= DATA1 xor DATA2;
	when FUNCLSL 	=> OUTALU <= DATA1(N-2 downto 0) & '0'; -- logical shift left, HELP: use the concatenation operator &  
	when FUNCLSR 	=> OUTALU <= '0' & DATA1(N-1 downto 1); -- logical shift right
	when FUNCRL 	=> OUTALU <= DATA1(N-2 downto 0) & DATA1(N-1); -- rotate left
	when FUNCRR 	=> OUTALU <= DATA1(0) & DATA1(N-1 downto 1); -- toate right
	when others => null;
    end case; 
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;
