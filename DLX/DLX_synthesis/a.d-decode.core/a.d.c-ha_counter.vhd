library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ha_counter is
    generic (
        N_BIT_DATA : integer := 32
    );
    port (
        CLK:    in std_logic;
        RST:    in std_logic;
        TICK:   out std_logic_vector(N_BIT_DATA-1 downto 0)
    );
end entity;
    

architecture beh of ha_counter is

    component reg_generic is
        GENERIC (
            N:          integer := 4;
            RSTVAL:     integer := 0
        );
        PORT(
            D:          IN std_logic_vector (N-1 DOWNTO 0);
            Q:          OUT std_logic_vector (N-1 DOWNTO 0);
            Clk:        IN std_logic;
            Rst:        IN std_logic;
            Enable:     IN std_logic
        );
    end component;
    
    signal carries: std_logic_vector(N_BIT_DATA downto 0);
    signal reg_data: std_logic_vector(N_BIT_DATA-1 downto 0);
    signal reg_input: std_logic_vector(N_BIT_DATA-1 downto 0);

begin

    TICK <= reg_data;

    REG_TICK: reg_generic generic map(
        N => N_BIT_DATA, 
        RSTVAL => 0
    ) port map (
        D => reg_input, 
        Q => reg_data, 
        Clk => CLK, 
        Rst => RST, 
        Enable => '1'
    );

    carries(0) <= '1';
    battery: for i in 1 to N_BIT_DATA generate
       
        reg_input(i-1) <= reg_data(i-1) xor carries(i-1);       
        carry_gen: if (i < N_BIT_DATA) generate     
            carries(i) <= reg_data(i-1) and carries(i-1);
        end generate; 
    
    end generate; 

end architecture;