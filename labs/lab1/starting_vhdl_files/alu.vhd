library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
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

  begin
    case FUNC is
	when ADD 	=> OUTALU <= ; 
	when SUB 	=> OUTALU <= ;
	when MULT 	=> OUTALU <= ;
	when BITAND 	=> OUTALU <= ; -- bitwise operations
	when BITOR 	=> OUTALU <= ;
	when BITXOR 	=> OUTALU <= ;
	when FUNCLSL 	=> OUTALU <= ; -- logical shift left, HELP: use the concatenation operator &  
	when FUNCLSR 	=> OUTALU <= ; -- logical shift right
	when FUNCRL 	=> OUTALU <= ; -- rotate left
	when FUNCRR 	=> OUTALU <= ; -- toate right
	when others => null;
    end case; 
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;
