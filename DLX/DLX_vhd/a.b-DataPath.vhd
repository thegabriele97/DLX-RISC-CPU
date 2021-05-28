library ieee;
use ieee.std_logic_1164.all;

entity DP is

    generic (
        N_BIT_DATA : integer := 32;     -- generic data path bit width
    );

    port (
        Clk : in std_logic;     -- CLock
        Rst : in std_logic;     -- Reset: Active-Low

        RS1 : in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);    -- address PORT 1 of the register file
        RS2 : in std_logic_vector(N_BIT_ADDR_RF-1 downto 0);    -- address PORT 2 of the register file

        -- Our RF has two reading port and one writing port

        RF1 : in std_logic;     -- Read enable port 1 of the register file
        RF2 : in std_logic;     -- Read enable port 2 of the register file 
        WF  : in std_logic;     -- Write enable of the register file
        
        RFEN : in std_logic     -- Register file enable

    );

end entity;

architecture structural of DP is

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

    constant N_BIT_ADDR_RF : integer := 5;
    
begin


    RF: windowing_rf generic map( 
        NBIT_DATA => N_BIT_DATA, 
        NBIT_ADD => N_BIT_ADDR_RF,  
        M => 8,
        N => 8,
        F => 5
    )
    
end structural;
