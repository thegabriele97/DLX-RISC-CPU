library IEEE;
use IEEE.std_logic_1164.all; 

entity FD_async is
	Port (	D:	In	std_logic;
		CK:	In	std_logic;
		RESET:	In	std_logic;
		ENABLE:	In	std_logic;
		Q:	Out	std_logic);
end FD_async;


architecture PLUTO of FD_async is -- flip flop D with asyncronous reset
begin
	PASYNCH: process(CK,RESET)
	begin
	  if RESET='1' then
	    Q <= '0';
	  elsif CK'event and CK='1' and ENABLE = '1' then -- positive edge triggered:
	    Q <= D; 
	  end if;
	end process;
end PLUTO;

