library IEEE;

use IEEE.std_logic_1164.all;
use WORK.all;

entity tb_dlx is
end tb_dlx;

architecture TEST of tb_dlx is

    constant SIZE_IR      : integer := 32;       -- Instruction Register Size
    constant SIZE_PC      : integer := 32;       -- Program Counter Size
    constant SIZE_ALU_OPC : integer := 6;        -- ALU Op Code Word Size in case explicit coding is used
    signal Clock: std_logic := '0';
    signal Reset: std_logic := '1';

    component DLX is
    	generic (
        	IR_SIZE      : integer := 32;       -- Instruction Register Size
        	PC_SIZE      : integer := 32;       -- Program Counter Size
        	RAM_DEPTH	 : integer := 10	
        );       -- ALU_OPC_SIZE if explicit ALU Op Code Word Size
        port (
        	Clk : in std_logic;
			Rst : in std_logic
        );
	end component;   
	
begin


    -- instance of DLX
	U1: DLX
	Generic Map (SIZE_IR, SIZE_PC, 20) -- SIZE_ALU_OPC)   
	Port Map (Clock, Reset);
	

	PCLOCK : process(Clock)
	begin
		Clock <= not(Clock) after 0.5 ns;	
	end process;
	
	process
	begin

		wait for 1 ns;
		Reset <= '1';

		wait for 1 ns;
		Reset <= '0';

		wait;

	end process;

end TEST;

-------------------------------

configuration CFG_TB of tb_dlx  is
	for TEST
	end for;
end CFG_TB;

