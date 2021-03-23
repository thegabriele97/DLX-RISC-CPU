library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--use WORK.constants.all;

entity MULTIPLIER_tb is
end MULTIPLIER_tb;

architecture TEST of MULTIPLIER_tb is

  
  --constant numBit : integer := 4;    -- :=8  --:=16    
  
  --  input	 
  --signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  --signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  
  -- output
  --signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);
  
  
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

  signal a, b: std_logic_vector(7 downto 0);
  signal y: std_logic_vector(15 downto 0);
  
begin

-- MUL instantiation
--
--
  DUT: multiplier generic map(8) port map(a, b, y);

  process
  begin

    a <= x"02";
    b <= x"03";
    wait for 1 ns;

    a <= x"02";
    b <= x"05";
    wait for 1 ns;

    a <= x"03";
    b <= x"02";
    wait for 1 ns;

    a <= x"05";
    b <= x"02";
    wait for 1 ns;

    a <= x"05";
    b <= x"0a";
    wait for 1 ns;

    wait;

  end process;

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
