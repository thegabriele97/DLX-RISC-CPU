library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.ROCACHE_PKG.all;
use work.RWCACHE_PKG.all;

entity DLX_TestBench is
end DLX_TestBench;

architecture tb of DLX_TestBench is
	component ROMEM is
	generic (
		FILE_PATH	: string;				-- ROM data file
		ENTRIES		: integer := 128;		-- Number of lines in the ROM
		WORD_SIZE	: integer := 32;		-- Number of bits per word
		DATA_DELAY	: natural := 2			-- Delay ( in # of clock cycles )
	);
	port (
		CLK					: in std_logic;
		RST					: in std_logic;
		ADDRESS				: in std_logic_vector(WORD_SIZE - 1 downto 0);
		ENABLE				: in std_logic;
		DATA_READY			: out std_logic;
		DATA				: out std_logic_vector(WORD_SIZE - 1 downto 0)
	);
	end component;

	component RWMEM is
		generic(
			file_path: string;
			file_path_init: string;
			Data_size : natural := 32;
			addr_log: natural := 32;
			RAM_DEPTH: 	natural := 128;
			data_delay: natural := 2
			);
		port (
			CLK   				: in std_logic;
			RST					: in std_logic;
			ADDR				: in std_logic_vector(addr_log - 1 downto 0);
			ENABLE				: in std_logic;
			MAS					: in std_logic_vector(1 downto 0);
			READNOTWRITE		: in std_logic;
			DATA_READY			: out std_logic;
			DATA_IN				: in std_logic_vector(Data_size-1 downto 0);
			DATA_OUT			: out std_logic_vector(Data_size-1 downto 0)
		);
	end component;

	component DLX is
		generic (
			IR_SIZE      : integer := 32;       -- Instruction Register Size
			PC_SIZE      : integer := 32;       -- Program Counter Size
			RAM_DEPTH	 : integer := 32		-- Number of bits for RAM
		);
		port (
			-- Inputs
			CLK						: in std_logic;		-- Clock
			RST						: in std_logic;		-- Reset:Active-High

			IRAM_ADDRESS			: out std_logic_vector(PC_SIZE - 1 downto 0);
			IRAM_ISSUE				: out std_logic;
			IRAM_READY				: in std_logic;
			IRAM_DATA				: in std_logic_vector(IR_SIZE-1 downto 0);

			DRAM_ADDRESS			: out std_logic_vector(RAM_DEPTH-1 downto 0);
			DRAM_ISSUE				: out std_logic;
			DRAM_READNOTWRITE		: out std_logic;
			DRAM_READY				: in std_logic;
			DRAM_DATA_IN			: in std_logic_vector(IR_SIZE-1 downto 0);
			DRAM_DATA_OUT			: out std_logic_vector(IR_SIZE-1 downto 0);
			DATA_SIZE				: out std_logic_vector(1 downto 0);

			DRAMRF_ADDRESS			: out std_logic_vector(RAM_DEPTH-1 downto 0);
			DRAMRF_ISSUE			: out std_logic;
			DRAMRF_READNOTWRITE		: out std_logic;
			DRAMRF_READY			: in std_logic;
			DRAMRF_DATA				: inout std_logic_vector(IR_SIZE-1 downto 0);
			DATA_SIZE_RF			: out std_logic_vector(1 downto 0)
		);
	end component;

	signal CLK :				std_logic := '0';		-- Clock
	signal RST :				std_logic;		-- Reset:Active-Low
	signal IRAM_ADDRESS :		std_logic_vector(32 - 1 downto 0);
	signal IRAM_ENABLE :		std_logic;
	signal IRAM_READY :			std_logic;
	signal IRAM_DATA :			std_logic_vector(32-1 downto 0);

	signal DRAM_ADDRESS :		std_logic_vector(32-1 downto 0);
	signal DRAM_ENABLE :		std_logic;
	signal DRAM_READNOTWRITE :	std_logic;
	signal DRAM_READY :			std_logic;
	signal DRAM_DATA :			std_logic_vector(32-1 downto 0);
	signal MAS :				std_logic_vector(1 downto 0);
	
	signal DRAMRF_ADDRESS			: std_logic_vector(32-1 downto 0);
	signal DRAMRF_ISSUE				: std_logic;
	signal DRAMRF_READNOTWRITE		: std_logic;
	signal DRAMRF_READY				: std_logic;
	signal DRAMRF_DATA				: std_logic_vector(32-1 downto 0);
	signal DATA_SIZE_RF				: std_logic_vector(1 downto 0);

	signal DATA_OUT, DATA_IN: std_logic_vector(32-1 downto 0);
	

begin
	-- IRAM
	IRAM : ROMEM
		generic map (file_path => "test_bench_and_memory/mems/bubble_sort.asm.mem", ENTRIES => 512)
		port map (CLK, RST, IRAM_ADDRESS, IRAM_ENABLE, IRAM_READY, IRAM_DATA);

	-- DRAM
	DRAM : RWMEM
		generic map (RAM_DEPTH => 512, file_path => "test_bench_and_memory/mems/writed/bubble_sort.asm.mem", file_path_init => "test_bench_and_memory/mems/bubble_sort.asm.mem")
		port map ( CLK, RST, DRAM_ADDRESS, DRAM_ENABLE, MAS, DRAM_READNOTWRITE, DRAM_READY, DATA_OUT, DATA_IN);

	-- DLX
	DDLX : DLX
		generic map (IR_SIZE => 32, PC_SIZE => 32, RAM_DEPTH => 32)
		port map ( CLK, RST, IRAM_ADDRESS, IRAM_ENABLE, IRAM_READY, IRAM_DATA, DRAM_ADDRESS, DRAM_ENABLE, DRAM_READNOTWRITE, DRAM_READY, DATA_IN, DATA_OUT, MAS, DRAMRF_ADDRESS, DRAMRF_ISSUE, DRAMRF_READNOTWRITE, DRAMRF_READY, DRAMRF_DATA, DATA_SIZE_RF);

	Clk <= not Clk after 1 ns;
	Rst <= '1', '0' after 2 ns;

end tb;

