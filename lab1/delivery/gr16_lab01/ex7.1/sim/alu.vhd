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

P_ALU: 
  process (FUNC, DATA1, DATA2)
	
	variable amt : integer;

  begin

	amt := TO_INTEGER(unsigned(DATA2));

    case FUNC is

		when ADD => 
			OUTALU <= std_logic_vector(unsigned(DATA1) + unsigned(DATA2)); 

		when SUB => 
			OUTALU <= std_logic_vector(unsigned(DATA1) - unsigned(DATA2));

		when MULT => 
			-- we need an intermediate conversion to an integer in order to use TO_UNSIGNED at the end 
			-- in order again to use OUTALU'length as right length of the result
			-- this is because if N is odd (for instance 15), we have the length of OUTALU=15 and
			-- the result of the multiplication will be of 14 bits
			-- with the conversion to an integer we loose this difference and we can restore 
			-- the right length
			amt := TO_INTEGER(unsigned(DATA1(N/2-1 downto 0)) * unsigned(DATA2(N/2-1 downto 0)));
			OUTALU <= std_logic_vector(TO_UNSIGNED(amt, OUTALU'length));

		when BITAND => 
			OUTALU <= DATA1 and DATA2;

		when BITOR => 
			OUTALU <= DATA1 or DATA2;

		when BITXOR => 
			OUTALU <= DATA1 xor DATA2;

		when FUNCLSL => 
			-- our synthesizer doesnt support variable as argument in indexes
			-- so it's not possible to do for example OUTALU(N downto amt) where amt is a variable/signal
			-- we use the loop fro 0 to N-1 in order to fix this, in this way the loop is unrolled
			-- and we have fixed values as indexes (i = 0..N-1).
			-- thanks to the if statment in the middle, we can filter all this "i" and use only
			-- the one we care about, equal to amt

			OUTALU <= (others => '0');
			for i in 0 to N-1 loop
				if (i = amt) then
					OUTALU(N-1 downto i) <= DATA1(N-1-i downto 0);
				end if;
			end loop;

			--OUTALU(N-1 downto amt) <= DATA1(N-1-amt downto 0);

		when FUNCLSR => 

			OUTALU <= (others => '0');
			for i in 0 to N-1 loop
				if (i = amt) then
					OUTALU(N-1-i downto 0) <= DATA1(N-1 downto i);
				end if;
			end loop;

			--OUTALU(N-1-amt downto 0) <= DATA1(N-1 downto amt);

		when FUNCRL =>
			-- computing the remainder. For instance, N = 16, DATA2=22 => remainder=6
			-- in fact, a rotate shift operation of 22 on 16 bits it's the same of a shift of 6 bits
			amt := amt rem N;	
			
			OUTALU <= DATA1;
			for i in 1 to N-1 loop
				if (i = amt) then
					OUTALU <= DATA1(N-1-i downto 0) & DATA1(N-1 downto N-i);
				end if;
			end loop;

			--OUTALU <= DATA1(N-1-amt downto 0) & DATA1(N-1 downto N-amt);

		when FUNCRR => 
			amt := amt rem N;	

			OUTALU <= DATA1;
			for i in 1 to N-1 loop
				if (i = amt) then
					OUTALU <= DATA1(i-1 downto 0) & DATA1(N-1 downto i);
				end if;
			end loop;

		when others => 
			OUTALU <= (others => 'X');

    end case; 
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;
