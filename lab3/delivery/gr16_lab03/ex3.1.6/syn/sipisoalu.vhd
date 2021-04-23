library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity SIPISOALU is 
	Port (	CLK	:	In	std_logic;
		RESET	:  	In      std_logic;
		STARTA	:  	In 	std_logic;
		A	:	In	std_logic;
		LOADB	:	In 	std_logic;
		B	:	In	std_logic_vector(3 downto 0);
		STARTC	:	Out	std_logic;
		C	:	Out	std_logic);
end SIPISOALU; 



architecture A of SIPISOALU is

	signal SIPO		 : std_logic_vector(2 downto 0) := "000";
	signal SIPOA, PIPO, PISO : std_logic_vector(3 downto 0) := "0000";
	signal SUM		 : std_logic_vector(4 downto 0) := "00000";
	signal EA, LDB		 : std_logic := '0';
	signal LDC, SHIFTC	 : std_logic := '0';
	signal count, next_count : integer range 0 to 3 := 0;	


	-- FSM component declaration
	component sipisoAluControl
	port (
		clk, rst, strobeA, strobeB: in std_logic;
		shiftA, loadB, loadC, shiftC, startC: out std_logic
	);
	end component;

	-- begin architecture
	begin


		SIPO_3BIT_A: process(CLK, RESET)
		begin
			if(RESET='1')
				then SIPO <= (others => '0');
			elsif (CLK'event and CLK='1')
				then
					if(EA='1')
						then SIPO <= SIPO(1 downto 0) & A;
					end if;
			end if;
		end process;

		SIPOA <= SIPO & a;


		PIPO_4BIT_B: process(CLK, RESET)
		begin
			if(RESET='1')
				then PIPO <= (others => '0');
			elsif (CLK'event and CLK='1')
				then
					if(LDB='1')
						then PIPO <= B;
					end if;
			end if;
		end process;


		PISO_4BIT_C: process(CLK, RESET)
		begin
			if(RESET='1')
				then PISO <= (others => '0');
			elsif (CLK'event and CLK='1')
				then
					if(LDC='1')
						then PISO <= SUM(3 downto 0);
					elsif(SHIFTC='1')
						then PISO <= '0' & PISO(3 downto 1);
					end if;
			end if;
		end process;


		C <= PISO(0);

		SUM <= ('0' & PIPO) + ('0' & SIPOA);


	-- FSM instance port map
	control: sipisoAluControl
	port map(
		clk => CLK,
		rst => RESET,
		strobeA => STARTA,
		strobeB => LOADB,
		shiftA => EA,
		loadB => LDB,
		loadC => LDC,
		shiftC => SHIFTC,
		startC => STARTC
	);

end A;

