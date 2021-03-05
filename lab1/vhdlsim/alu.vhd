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
	  variable tmp, tmp2 : std_logic_vector(N-1 downto 0) := (others => '0');
	  variable amt 		 : integer;

  begin

	amt := TO_INTEGER(unsigned(DATA2));

    case FUNC is

		when ADD => 
			OUTALU <= std_logic_vector(unsigned(DATA1) + unsigned(DATA2)); 

		when SUB => 
			OUTALU <= std_logic_vector(unsigned(DATA1) - unsigned(DATA2));

		when MULT => 
			OUTALU <= std_logic_vector(unsigned(DATA1(N/2-1 downto 0)) * unsigned(DATA2(N/2-1 downto 0)));

		when BITAND => 
			OUTALU <= DATA1 and DATA2; -- bitwise operations

		when BITOR => 
			OUTALU <= DATA1 or DATA2;

		when BITXOR => 
			OUTALU <= DATA1 xor DATA2;

		when FUNCLSL => 
			
			OUTALU <= (others => '0');			
			if (TO_INTEGER(unsigned(DATA2)) < N) then
				for i in 0 to N-1 loop
					if (i = TO_INTEGER(unsigned(DATA2))) then
						OUTALU(N-1 downto i) <= DATA1(N-1-i downto 0);
					end if;
				end loop;
				--OUTALU(N-1 downto amt) <= DATA1(N-1-amt downto 0);
			end if;

		when FUNCLSR => 

			OUTALU <= (others => '0');			
			if (TO_INTEGER(unsigned(DATA2)) < N) then
				for i in 0 to N-1 loop
					if (i = TO_INTEGER(unsigned(DATA2))) then
						OUTALU(N-1-i downto 0) <= DATA1(N-1 downto i);
					end if;
				end loop;
				--OUTALU(N-1-amt downto 0) <= DATA1(N-1 downto amt);
			end if;

		when FUNCRL =>
			-- let's say we have N=16, DATA2=38 -> the rotate shift is equal to a shift of 38-2*16=6 bits. 
			-- We have to subtract N from DATA2 until DATA2 becomes < N
			for i in 0 to N-1 loop
				if (amt >= N) then
					amt := amt - N;
				end if;
			end loop;	

			for i in 0 to N-1 loop
				if (i = amt) then
					OUTALU <= DATA1(N-1-i downto 0) & DATA1(N-1 downto N-i);
				end if;
			end loop;

			--OUTALU <= DATA1(N-1-amt downto 0) & DATA1(N-1 downto N-amt);
			--OUTALU <= (others => '0');

		when FUNCRR => 
			-- let's say we have N=16, DATA2=38 -> the rotate shift is equal to a shift of 38-2*16=6 bits. 
			-- We have to subtract N from DATA2 until DATA2 becomes < N
			for i in 0 to N-1 loop
				if (amt >= N) then
					amt := amt - N;
				end if;
			end loop;	

			if (amt /= 0) then
				for i in 0 to N-1 loop
					if (i = amt) then
						OUTALU <= DATA1(i-1 downto 0) & DATA1(N-1 downto i);
					end if;
				end loop;	
			end if;		

		when others => null;

    end case; 
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;
