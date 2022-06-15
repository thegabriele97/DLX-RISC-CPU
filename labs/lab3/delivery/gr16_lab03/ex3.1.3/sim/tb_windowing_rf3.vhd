library IEEE;

use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity tb_windowing_rf3 is
end tb_windowing_rf3;

architecture testbench of tb_windowing_rf3 is
	
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

    type mem_t is array(0 to 10*10*2*8-1) of std_logic_vector(64-1 downto 0);

    signal mem: mem_t := (others => (others => '0'));
    signal curr_ptr: integer := mem'length-1;

    constant F: integer := 5;
    constant N: integer := 8;
    constant M: integer := 8;
    constant DATAWIDE: integer := 64;

begin 

	RG: windowing_rf 
        GENERIC MAP (64, 5, 8, 8, 5) 
        PORT MAP (CLK, RESET, ENABLE, RD1, RD2, WR, ADD_WR, ADD_RD1, ADD_RD2, DATAIN, OUT1, OUT2, CALL, RET, FILL, SPILL, TOMEM, FROMEM);

    PCLOCK : process(CLK)
	begin
		CLK <= not(CLK) after 0.5 ns;	
	end process;

    process

        variable expected: std_logic_vector(DATAWIDE-1 downto 0);

    begin

        CALL <= '0';
        RET <= '0';
        ENABLE <= '0';
        WR <= '0';
        RD1 <= '0';
        RD2 <= '0';  
        ADD_WR <= (others => '0');      
        ADD_RD1 <= (others => '0');      
        ADD_RD2 <= (others => '0');      
        DATAIN <= (others => '0');      

        RESET <= '1';
        wait for 1 ns;

        RESET <= '0';
        wait for 1 ns;

        ENABLE <= '1';

        WR <= '1';
        RD1 <= '1';
        RD2 <= '1';

        for j in 0 to 3*F+3 loop

            for i in 0 to (M+3*N)-1 loop

                ADD_WR <= std_logic_vector(TO_UNSIGNED(i, ADD_WR'length));
                ADD_RD1 <= std_logic_vector(TO_UNSIGNED(i, ADD_RD1'length));

                if (i = 0) then
                    ADD_RD2 <= std_logic_vector(TO_UNSIGNED(0, ADD_RD2'length));
                else
                    ADD_RD2 <= std_logic_vector(TO_UNSIGNED(i-1, ADD_RD2'length));
                end if;

                DATAIN <= std_logic_vector(TO_UNSIGNED(i, DATAIN'length));
                DATAIN(63 downto 56) <= std_logic_vector(TO_UNSIGNED(j+1, 8));

                wait for 2 ns;

                assert OUT1 = DATAIN report "Error in OUT1";

            end loop;

            CALL <= '1';
            wait for 1 ns;

            CALL <= '0';

        end loop;

        WR <= '0';
        wait for 40 ns;

        for i in 0 to 2 loop
            RET <= '1';
            wait for 1 ns;

            RET <= '0';
            wait for 18 ns;
        end loop;


        for j in 3*F downto 0 loop
            
            RET <= '1';
            wait for 1 ns;

            RET <= '0';
            wait for 20 ns;

            for i in (M+2*N)-1 downto 8 loop

                ADD_RD1 <= std_logic_vector(TO_UNSIGNED(i, ADD_RD1'length));
                wait for 2 ns;

                expected := std_logic_vector(TO_UNSIGNED(j+1, 8)) & std_logic_vector(TO_UNSIGNED(i, expected'length-8));
                --expected(63 downto 56) := std_logic_vector(TO_UNSIGNED(j+1, 8));
                --report "EXPECTED " & to_hstring(expected) & "; GOT " & to_hstring(OUT1);
                assert expected = OUT1 report "ERROR!";

            end loop;

        end loop;


        for i in 8 to (M+2*N)-1 loop

            ADD_RD1 <= std_logic_vector(TO_UNSIGNED(i, ADD_RD1'length));

            expected := x"01" & std_logic_vector(TO_UNSIGNED(i, expected'length-8));
            --expected(63 downto 56) := x"01";

            wait for 0.7 ns;

            assert OUT1 = expected report "Error in OUT1";

            wait for 0.3 ns;

        end loop;


    wait ;

    end process;


    process(CLK)

        variable v_cptr: integer;
    
    begin

        if (rising_edge(CLK)) then

            v_cptr := curr_ptr;

            if (SPILL = '1') then
                v_cptr := v_cptr + 1;
                if (v_cptr = mem'length) then
                    v_cptr := 0;
                end if;

                mem(v_cptr) <= TOMEM;

                curr_ptr <= v_cptr;
            else
                if (v_cptr >= 0) then
                    
                    if (FILL = '1') then
                        v_cptr := v_cptr - 1;

                        if (v_cptr = -1) then
                            v_cptr := mem'length-1;
                        end if;

                        curr_ptr <= v_cptr;
                    end if;
                    
                    FROMEM <= mem(v_cptr);

                else
                    FROMEM <= (others => '0');
                end if;

            end if;

        end if;

    end process;

end testbench;