library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;
--use ieee.std_logic_unsigned.all;

entity rca_generic is 
	generic (   DRCAS : 	Time := 0 ns;
	            DRCAC : 	Time := 0 ns;
                nbit  :     integer := NumBit
            );
	Port (	A:	In	std_logic_vector((nbit-1) downto 0);
		B:	In	std_logic_vector((nbit-1) downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector((nbit-1) downto 0);
		Co:	Out	std_logic
    );
end rca_generic; 

architecture structural of rca_generic is

    signal STMP : std_logic_vector((nbit-1) downto 0);
    signal CTMP : std_logic_vector(nbit downto 0);
    
    component fa 
        generic ( DFAS: time := 0 ns; DFAC: time := 0 ns);
        Port (	
            A:	In	std_logic;
            B:	In	std_logic;
            Ci:	In	std_logic;
            S:	Out	std_logic;
            Co:	Out	std_logic
        );
    end component;
begin

  ctmp(0) <= ci;
  s <= stmp;
  co <= ctmp(nbit);
  
  ADDER1: for i in 1 to nbit generate
    FAI : FA 
	  generic map (DFAS => DRCAS, DFAC => DRCAC) 
	  Port Map (a(i-1), b(i-1), ctmp(i-1), stmp(i-1), ctmp(i)); 
  end generate;
  
end structural; 

-- architecture behavioral of rca_generic is

--   signal stmp: std_logic_vector(nbit downto 0);
  
-- begin

--   stmp <= (('0' & a) + ('0' & b) + ('0' & ci));
--   s <= stmp((nbit-1) downto 0) after DRCAS;
--   co <= stmp(nbit) after DRCAC;
  
-- end behavioral;

-- configuration CFG_RCA_GEN_STRUCTURAL of rca_generic is
--   for STRUCTURAL 
--     for ADDER1
--       for all : FA
--         use configuration WORK.CFG_FA_BEHAVIORAL;
--       end for;
--     end for;
--   end for;
-- end CFG_RCA_GEN_STRUCTURAL;

-- configuration CFG_RCA_GEN_BEHAVIORAL of rca_generic is
--   for BEHAVIORAL 
--   end for;
-- end CFG_RCA_GEN_BEHAVIORAL;
