library IEEE;
use IEEE.std_logic_1164.all; 

entity FD_sync is
	Port (	D:	In	std_logic;
		CK:	In	std_logic;
		RESET:	In	std_logic;
		ENABLE:	In	std_logic;
		Q:	Out	std_logic);
end FD_sync;


architecture PIPPO of FD_sync is -- flip flop D with syncronous reset
begin
	PSYNCH: process(CK,RESET)
	begin
	  if CK'event and CK='1' then -- positive edge triggered:
	    if RESET='1' then -- active high reset 
	      Q <= '0'; 
	    elsif ENABLE = '1' then
	      Q <= D; -- input is written on output
	    end if;
	  end if;
	end process;
end PIPPO;

