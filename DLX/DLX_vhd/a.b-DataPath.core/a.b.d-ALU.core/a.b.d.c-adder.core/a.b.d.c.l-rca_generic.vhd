library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity rca_generic is 
	generic ( 
                nbit  :     integer := 4
    );
	Port (	
        A:	In	std_logic_vector((nbit-1) downto 0);
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
	        port Map (a(i-1), b(i-1), ctmp(i-1), stmp(i-1), ctmp(i)); 
  end generate;
  
end structural; 
