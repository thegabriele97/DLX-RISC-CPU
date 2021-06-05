library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity wRF_CU is
    
    generic (
        MEM_SIZ: integer := 1024;
        MEM_DATAWIDTH: integer := 32
    );

    port(
        CLK:    in std_logic;
        RST:    in std_logic;
        SPILL:  in std_logic;
        FILL:   in std_logic;

        FROMEM:  in std_logic_vector(MEM_DATAWIDTH-1 downto 0);
        TOMEM:   out std_logic_vector(MEM_DATAWIDTH-1 downto 0)

        WREN: out std_logic;
        ADDRMEM:; -- TODO: -- add write enable, address to mem, other stuff like this

    );

end entity;


architecture mix of wRF_CU is

    signal curr_ptr: integer := MEM_SIZ-1;

begin

    process(CLK)

        variable v_cptr: integer;

    begin

        if (rising_edge(CLK)) then
            
            if (RST = '1') then
                curr_ptr <= MEM_SIZ-1;
            else

                v_cptr := curr_ptr;

                if (SPILL = '1') then
                    v_cptr := v_cptr + 1;
                    if (v_cptr = MEM_SIZ) then
                        v_cptr := 0;
                    end if;

                    mem(v_cptr) <= FROMEM;

                    curr_ptr <= v_cptr;

                else

                    if (v_cptr >= 0) then
                        
                        if (FILL = '1') then
                            v_cptr := v_cptr - 1;

                            if (v_cptr = -1) then
                                v_cptr := MEM_SIZ-1;
                            end if;

                            curr_ptr <= v_cptr;
                        end if;
                        
                        --TOMEM <= mem(v_cptr);

                    else
                        TOMEM <= (others => '0');
                    end if;

                end if;

            end if;

        end if;

    end process;

end mix;