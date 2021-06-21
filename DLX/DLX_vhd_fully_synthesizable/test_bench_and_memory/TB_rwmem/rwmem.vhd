library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

entity RWMEM is
	generic(
		file_path: string;
		file_path_init: string;
		Data_size : natural := 32;
		addr_log: natural := 32;
		RAM_DEPTH: 	natural := 1024;
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
end RWMEM;

architecture beh of RWMEM is

	type DRAMtype is array (0 to RAM_DEPTH - 1) of std_logic_vector(addr_log - 1 downto 0);
	signal DRAM_mem : DRAMtype;
	signal tmp_data: std_logic_vector(Data_size - 1 downto 0);
	signal int_data_ready, mem_ready: std_logic;
	signal counter: natural:=0;

	procedure rewrite_contenent(data: in DRAMtype; path_file: string) is
		variable index: natural range 0 to RAM_DEPTH;
		file wr_file: text;
		variable line_in: line;
	begin
		index:=0;
		file_open(wr_file, path_file, WRITE_MODE);
		while index < RAM_DEPTH loop
			hwrite(line_in,data(index));
			writeline(wr_file,line_in);
			index := index + 1;
		end loop;
	end rewrite_contenent;



begin  -- beh
	--write_process
	WR_PROCESS:
	process (CLK, RST,READNOTWRITE)
		file mem_fp: text;
		variable index: integer range 0 to RAM_DEPTH;
		variable file_line : line;
		variable tmp_data_u : std_logic_vector(addr_log -1 downto 0);
        variable start_read: integer := 0;
        variable acca: integer;
		variable v_tmp_data: std_logic_vector(Data_size -1 downto 0);
	begin  -- process

		if RST = '1' then  	 -- asynchronous reset (active low)

			file_open(mem_fp, file_path_init, READ_MODE);

			while (not endfile(mem_fp)) loop
				readline(mem_fp,file_line);
				hread(file_line,tmp_data_u);
				
				if (start_read = 0 and tmp_data_u = x"00000000") then 
					start_read := 1;
				elsif (start_read = 1) then
					start_read := 2; -- skip the empty line after the end fo the program
				elsif(start_read = 2) then

					if (not is_x(tmp_data_u)) then 
						-- report file_line;
						acca := to_integer(unsigned(tmp_data_u));
						report "RWMEM, LOAD IMAGE... MEM[" & integer'image(index) & "]: " & integer'image(acca);
						DRAM_Mem(index) <= tmp_data_u(7 downto 0) & tmp_data_u(15 downto 8) & tmp_data_u(23 downto 16) & tmp_data_u(31 downto 24);       
						index := index + 4;

					end if;
				end if;

			end loop;

			file_close(mem_fp);
			start_read := 0;
			index := 256;

			int_data_ready <= '0';
			mem_ready <= '0';

		elsif CLK'event and CLK = '1' then  -- rising clock edge

			if(ENABLE = '1') then
				counter <= counter + 1;
				if (counter = data_delay) then
					counter <= 0;
					if (READNOTWRITE = '0') then

						report "\tRWMEM, WRITE @ " & integer'image(to_integer(unsigned(ADDR))) & " : " & integer'image(to_integer(unsigned(DATA_IN)));
						-- ADDR = ADDR(length-1 dwonto 2) & "00";
						--- 1000

						-- READ WORD: AA BB CC DD
						-- READ HALF_LOW: -- -- CC DD
						-- READ HALF_HIGH:AA BB -- --
						-- READ BYTE_0: -- -- -- AA
						-- READ BYTE_1: -- -- BB --
						-- READ BYTE_2: -- CC -- --
						-- READ BYTE_3: DD -- -- --

						if (MAS = "00") then      -- WORD
							DRAM_Mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(31 downto 24) <= DATA_IN(7 downto 0);
							DRAM_Mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(23 downto 16) <= DATA_IN(15 downto 8);
							DRAM_Mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(15 downto 8) <= DATA_IN(23 downto 16);
							DRAM_Mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(7 downto 0) <= DATA_IN(31 downto 24);
						elsif (MAS = "01") then   -- HALF
							if (ADDR(1 downto 0) = "00") then	
								DRAM_Mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(15 downto 8) <= DATA_IN(23 downto 16);
								DRAM_Mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(7 downto 0) <= DATA_IN(31 downto 24);
							else
								DRAM_Mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(31 downto 24) <= DATA_IN(23 downto 16);
								DRAM_Mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(23 downto 16) <= DATA_IN(31 downto 24);
							end if;
						elsif (MAS = "10") then
							if (ADDR(1 downto 0) = "00") then
								DRAM_Mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(7 downto 0) <= DATA_IN(7 downto 0);
							elsif (ADDR(1 downto 0) = "01") then
								DRAM_Mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(15 downto 8) <= DATA_IN(7 downto 0);
							elsif (ADDR(1 downto 0) = "10") then
								DRAM_Mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(23 downto 16) <= DATA_IN(7 downto 0);
							elsif (ADDR(1 downto 0) = "11") then
								DRAM_Mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(31 downto 24) <= DATA_IN(7 downto 0);
							end if;
						end if;

						mem_ready <= '1';
					else	

						v_tmp_data := DRAM_mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(7 downto 0) & 
									DRAM_mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(15 downto 8) &
									DRAM_mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(23 downto 16) &
									DRAM_mem(to_integer(unsigned(ADDR(ADDR'length-1 downto 2)) & "00"))(31 downto 24);

						acca := to_integer(unsigned(v_tmp_data));
						tmp_data <= v_tmp_data;

						report "\tRWMEM, READ @ " & integer'image(to_integer(unsigned(ADDR))) & " : " & integer'image(acca);

						int_data_ready <= '1';
					end if;
				else
					mem_ready <= '0';
					int_data_ready <= '0';
				end if;
			else
				counter <= 0;
			end if;

		end if;

	end process;

	rewrite_contenent(DRAM_mem,file_path); -- refresh the file
	DATA_OUT <= tmp_data when int_data_ready='1' else (others=>'0'); -- to cache
	data_ready <= int_data_ready or mem_ready; --delay add

end beh;
