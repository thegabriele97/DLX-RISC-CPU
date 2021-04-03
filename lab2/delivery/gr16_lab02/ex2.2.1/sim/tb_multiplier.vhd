library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--use WORK.constants.all;

entity MULTIPLIER_tb is
end MULTIPLIER_tb;

architecture TEST of MULTIPLIER_tb is

  
  constant numBit : integer := 16;    -- :=8  --:=16    
  
  --  input	 
  signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  
  -- output
  signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);
  
  
  -- MUL component declaration
  --
  --
  component multiplier is
    generic(
        NBIT: integer
    );
    port(
        A: in std_logic_vector(NBIT - 1 downto 0);
        B: in std_logic_vector(NBIT - 1 downto 0);
        Y: out std_logic_vector((2 * NBIT) - 1 downto 0)
    );
  end component;
  
begin

-- MUL instantiation
--
--
  DUT: multiplier generic map(numBit) port map(A_mp_i, B_mp_i, Y_mp_i);

  test: process
  begin

--    for i in 1 to (2**numBit)-1 loop
--    for j in 1 to (2**numBit)-1 loop

--	if (i mod (((2**numBit)/100)+1) = 0 and j mod (((2**numBit)/100)+1) = 0) then

--        	A_mp_i <= std_logic_vector(TO_UNSIGNED(i, A_mp_i'length));
--       		B_mp_i <= std_logic_vector(TO_UNSIGNED(j, B_mp_i'length));
--       		wait for 0.5 ns;

--	        if (signed(Y_mp_i) /= (signed(A_mp_i) * signed(B_mp_i))) then
--        		  assert signed(Y_mp_i) = (signed(A_mp_i) * signed(B_mp_i)) report "Error!!";
--          		  wait;
--        	end if;

--       		wait for 0.5 ns;

--	end if;

--      end loop;
--    end loop;

--    wait;

  A_mp_i <= x"0000";
  B_mp_i <= x"0000";
  wait for 1 ns;

  A_mp_i <= x"ffff";
  B_mp_i <= x"ffff";
  wait for 1 ns;

  A_mp_i <= x"7fff";
  B_mp_i <= x"8000";
  wait for 1 ns;

  A_mp_i <= x"0002";
  B_mp_i <= x"0003";
  wait;

  end process test;


-- PROCESS FOR TESTING TEST - COMLETE CYCLE ---------
--  test: process
--  begin

    -- cycle for operand A
--    NumROW : for i in 0 to 2**(NumBit)-1 loop

        -- cycle for operand B
--    	NumCOL : for i in 0 to 2**(NumBit)-1 loop
--        wait for 10 ns;
--        B_mp_i <= B_mp_i + '1';
--      end loop NumCOL ;
        
--	    A_mp_i <= A_mp_i + '1'; 	
--    end loop NumROW ;

    --wait;          
  --end process test;


end TEST;
