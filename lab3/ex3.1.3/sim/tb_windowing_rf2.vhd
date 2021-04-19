library IEEE;

use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_windowing_rf2 is
end tb_windowing_rf2;

architecture testbench of tb_windowing_rf2 is
	
    signal CLK: std_logic := '0';
    signal RESET: std_logic;
    signal ENABLE: std_logic;
	signal RD1: std_logic;
	signal RD2: std_logic;
	signal WR: std_logic;
	signal ADD_WR: std_logic_vector(4 downto 0);
	signal ADD_RD1: std_logic_vector(4 downto 0);
	signal ADD_RD2: std_logic_vector(4 downto 0);
	signal DATAIN: std_logic_vector(63 downto 0);
	signal OUT1: std_logic_vector(63 downto 0);
	signal OUT2: std_logic_vector(63 downto 0);

    signal CALL, FILL, RET, SPILL: std_logic;
    signal TOMEM, FROMEM: std_logic_vector(64-1 downto 0);

    component windowing_rf is
        generic(
            NBIT_DATA:  integer := 64;
            NBIT_ADD:   integer := 5;
            M:          integer := 1; -- number of global register 
            N:          integer := 1; -- number of registers in each IN, OUT, LOCAL
            F:          integer := 1  -- number of windows
        );
        port( 
        
            -- Register File External Interface
            CLK: 		IN std_logic;
            RESET: 	    IN std_logic;
            ENABLE: 	IN std_logic;
            RD1: 		IN std_logic;
            RD2: 		IN std_logic;
            WR: 		IN std_logic;
            ADD_WR: 	IN std_logic_vector(NBIT_ADD - 1 downto 0);
            ADD_RD1: 	IN std_logic_vector(NBIT_ADD - 1 downto 0);
            ADD_RD2: 	IN std_logic_vector(NBIT_ADD - 1 downto 0);
            DATAIN: 	IN std_logic_vector(NBIT_DATA- 1 downto 0);
            OUT1: 		OUT std_logic_vector(NBIT_DATA - 1 downto 0);
            OUT2: 		OUT std_logic_vector(NBIT_DATA - 1 downto 0);

            -- Other I/O
            CALL:       IN std_logic;
            RET:        IN std_logic;
            FILL:       OUT std_logic; -- POP towards memory
            SPILL:      OUT std_logic; -- PUSH towards memory

            -- TO MEMORY
            BUS_TOMEM:  OUT std_logic_vector(NBIT_DATA - 1 downto 0);
            BUS_FROMEM:  IN std_logic_vector(NBIT_DATA - 1 downto 0)

        );
    end component;

    type mem_t is array(0 to 10*2*8) of std_logic_vector(64-1 downto 0);

    signal mem: mem_t := (others => (others => '0'));
    signal curr_ptr: integer := 0;

begin 

	RG: windowing_rf 
        GENERIC MAP (64, 5, 8, 8, 5) 
        PORT MAP (CLK, RESET, ENABLE, RD1, RD2, WR, ADD_WR, ADD_RD1, ADD_RD2, DATAIN, OUT1, OUT2, CALL, RET, FILL, SPILL, TOMEM, FROMEM);

    PCLOCK : process(CLK)
	begin
		CLK <= not(CLK) after 0.5 ns;	
	end process;

    process
    begin

        RESET <= '1';
        wait for 1 ns;

        RESET <= '0';
        ENABLE <= '1';
        CALL <= '0';
        RET <= '0';
        
        WR <= '1';
        RD1 <= '1';
        RD2 <= '1';
        for i in 1 to 16 loop
            
            ADD_WR <= std_logic_vector(TO_UNSIGNED(8+i-1, ADD_WR'length));
            ADD_RD1 <= std_logic_vector(TO_UNSIGNED(8+i-1, ADD_RD1'length));
            ADD_RD2 <= std_logic_vector(TO_UNSIGNED(8+i-1, ADD_RD2'length));

            DATAIN <= std_logic_vector(TO_UNSIGNED(i, DATAIN'length));

            wait for 2 ns;

        end loop;

        WR <= '0';

        -- DO 3 CALL
        for i in 0 to 2 loop
            CALL <= '1';
            wait for 1 ns;
            
            CALL <= '0';
            wait for 1 ns;
        end loop;

        -- DO 1 CALL (out of windows => PUSH)
        CALL <= '1';
        wait for 1 ns;
        CALL <= '0';
        wait for 1 ns;

        -- waiting enough time for PUSH to be completed
        wait for 20 ns;

        -- DO 1 CALL (out of windows => PUSH)
        CALL <= '1';
        wait for 1 ns;
        CALL <= '0';
        wait for 1 ns;

        wait for 20 ns;

        -- DO 3 RET
        for i in 0 to 2 loop
            RET <= '1';
            wait for 1 ns;
            
            RET <= '0';
            wait for 1 ns;
        end loop;

        -- DO 1 CALL (if we do another RET instead, we have POP because window 1 doesn't exist yet)
        CALL <= '1';
        wait for 1 ns;
        CALL <= '0';
        wait for 1 ns;

        -- DO 2 RET (the 2nd RET will cause a POP)
        for i in 0 to 1 loop
            RET <= '1';
            wait for 1 ns;
            
            RET <= '0';
            wait for 1 ns;
        end loop;

        wait for 20 ns;

        RET <= '1';
        wait for 1 ns;
        RET <= '0';
        wait for 1 ns;

        wait;

    end process;


    process(CLK)

        variable v_cptr: integer;
    
    begin

        if (rising_edge(CLK)) then

            v_cptr := curr_ptr;

            if (SPILL = '1') then
                mem(curr_ptr) <= TOMEM;
                curr_ptr <= curr_ptr + 1;
            elsif (FILL = '1') then
                if (v_cptr > 0) then
                    v_cptr := v_cptr - 1;
                    curr_ptr <= v_cptr;
                end if;

                FROMEM <= mem(v_cptr);
            end if;

        end if;

    end process;

end testbench;