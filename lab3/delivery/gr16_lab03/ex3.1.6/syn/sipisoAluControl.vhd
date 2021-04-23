library IEEE;
use IEEE.std_logic_1164.all;

entity sipisoAluControl is
port (
	clk, rst, strobeA, strobeB: in std_logic;
	shiftA, loadB, loadC, shiftC, startC: out std_logic
);
end	sipisoAluControl;

--		EA <= oBuffer(0);
--		LDB <= oBuffer(1);
--		LDC <= oBuffer(2);
--		SHIFTC <= oBuffer(3);

architecture FSM_OPC of sipisoAluControl is

	type TYPE_STATE is (S0, AF0, AF1, AF2, AF3, WB, BS, BF, WA, AS0, AS1, AS2, AS3, C0, C1, C2, C3);
	signal CURRENT_STATE: TYPE_STATE := S0;
	signal NEXT_STATE: TYPE_STATE := S0;
	signal intO: std_logic_vector(4 downto 0) := "00000";

begin
 	
	P_OPC : process(clk, rst)		
	begin
		if rst='1' then
	       	CURRENT_STATE <= S0;
		elsif (clk ='1' and clk'EVENT) then 
			CURRENT_STATE <= NEXT_STATE;
		end if;
	end process P_OPC;

	P_NEXT_STATE : process(CURRENT_STATE, strobeA, strobeB)
	begin
--		NEXT_STATE <= CURRENT_STATE; --redundant
		case CURRENT_STATE is
			when S0 => 
				if strobeA = '1' and strobeB = '0' then
					NEXT_STATE <= AF0;
				elsif strobeA = '0' and strobeB = '1' then
					NEXT_STATE <= BF;
				else 
					NEXT_STATE <= S0;
				end if;
			when AF0 => 
				if strobeA = '1' and strobeB = '0' then
					NEXT_STATE <= AF0;
				else
					NEXT_STATE <= AF1;	
				end if;
			when AF1 => 
				if strobeA = '1' and strobeB = '0' then
					NEXT_STATE <= AF0;
				else
					NEXT_STATE <= AF2;
				end if;
			when AF2 =>
				if strobeA = '1' and strobeB = '0' then
					NEXT_STATE <= AF0;
				else
					NEXT_STATE <= AF3;
				end if;
			when AF3 => 
				if strobeA = '1' and strobeB = '0' then
					NEXT_STATE <= AF0;
				elsif strobeA = '0' and strobeB = '1' then
					NEXT_STATE <= BS;
				else
					NEXT_STATE <= WB;
				end if;
			when WB => 
				if strobeA = '1' and strobeB = '0' then
					NEXT_STATE <= AF0;
				elsif strobeA = '0' and strobeB = '1' then
					NEXT_STATE <= BS;
				else
					NEXT_STATE <= WB;
				end if;
			when BS =>
				 if strobeA = '1' and strobeB = '0' then
					NEXT_STATE <= AS0;
				elsif strobeA = '0' and strobeB = '1' then
					NEXT_STATE <= BS;
				else
					NEXT_STATE <= C0;
				end if;
			when BF =>
				if strobeA = '1' and strobeB = '0' then
					NEXT_STATE <= AS0;
				elsif strobeA = '0' and strobeB = '1' then
					NEXT_STATE <= BF;
				else
					NEXT_STATE <= WA;
				end if;
			when WA =>
				if strobeA = '1' and strobeB = '0' then
					NEXT_STATE <= AS0;
				elsif strobeA = '0' and strobeB = '1' then
					NEXT_STATE <= BF;
				else
					NEXT_STATE <= WA;
				end if;
			when AS0 => 
				if strobeA = '0' and strobeB = '1' then
					NEXT_STATE <= AS0;
				else
					NEXT_STATE <= AS1;
				end if;
			when AS1 => 
				if strobeA = '0' and strobeB = '1' then
					NEXT_STATE <= AS0;
				else
					NEXT_STATE <= AS2;
				end if;
			when AS2 => 
				if strobeA = '0' and strobeB = '1' then
					NEXT_STATE <= AS0;
				else
					NEXT_STATE <= AS3;
				end if;
			when AS3 =>
				if strobeA = '1' and strobeB = '0' then
					NEXT_STATE <= AS0;
				elsif strobeA = '0' and strobeB = '1' then
					NEXT_STATE <= BS;
				else
					NEXT_STATE <= C0;
				end if;
			when C0 => NEXT_STATE <= C1;
			when C1 => NEXT_STATE <= C2;
			when C2 => NEXT_STATE <= C3;
			when C3 =>
				if strobeA = '1' and strobeB = '0' then
					NEXT_STATE <= AF0;
				elsif strobeA = '0' and strobeB = '1' then
					NEXT_STATE <= BF;
				else
					NEXT_STATE <= S0;
				end if;
		end case;	
	end process P_NEXT_STATE;

	
	P_OUTPUTS: process(CURRENT_STATE)
	begin
		--O <= '0';
		case CURRENT_STATE is
			when S0 | WA | WB | AF3 | AS3 => intO <= "00000";
			when BF | BS => intO <= "00010";
			when AF0 | AF1 | AF2 | AS0 | AS1 | AS2 => intO <= "00001";
			when C0 => intO <= "10100";
			when C1 | C2 | C3 => intO <= "01000";
		end case; 	
	end process P_OUTPUTS;

	shiftA <= intO(0);
	loadB <= intO(1);
	loadC <= intO(2);
	shiftC <= intO(3);
	startC <= intO(4);

end FSM_OPC;
 
