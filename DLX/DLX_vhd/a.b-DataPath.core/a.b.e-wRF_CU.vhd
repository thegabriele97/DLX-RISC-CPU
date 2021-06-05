library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity wRF_CU is
    
    generic (
        N_BIT_MEM_ADDR: integer := 10;
        MEM_DATAWIDTH: integer := 32
    );

    port(
        CLK:    in std_logic;
        RST:    in std_logic;
        SPILL:  in std_logic;
        FILL:   in std_logic;

        FROMEM:  in std_logic_vector(MEM_DATAWIDTH-1 downto 0);
        TOMEM:   out std_logic_vector(MEM_DATAWIDTH-1 downto 0);
        MEMADDR: out std_logic_vector(N_BIT_MEM_ADDR-1 downto 0);

        RM: out std_logic;
        WM: out std_logic

    );

end entity;


architecture mix of wRF_CU is

    signal curr_ptr: integer := 2**N_BIT_MEM_ADDR-1;

begin

    MEMADDR <= std_logic_vector(TO_UNSIGNED(curr_ptr, MEMADDR'length));

    
    process(CLK)

        variable v_cptr: integer;

    begin

        if (rising_edge(CLK)) then
            
            if (RST = '1') then
                curr_ptr <= 2**N_BIT_MEM_ADDR-1;
            else

                v_cptr := curr_ptr;

                if (SPILL = '1') then
                    v_cptr := v_cptr + 1;
                    if (v_cptr = 2**N_BIT_MEM_ADDR) then
                        v_cptr := 0;
                    end if;
                    
                    RM <= '1';
                    --mem(v_cptr) <= FROMEM;

                    curr_ptr <= v_cptr;

                else

                    if (v_cptr >= 0) then
                        
                        if (FILL = '1') then
                            v_cptr := v_cptr - 1;

                            if (v_cptr = -1) then
                                v_cptr := 2**N_BIT_MEM_ADDR-1;
                            end if;

                            curr_ptr <= v_cptr;
                        end if;
                        
                        WM <= '1';
                        --TOMEM <= mem(v_cptr);

                    else
                        TOMEM <= (others => '0');
                    end if;

                end if;

            end if;

        end if;

    end process;

end mix;