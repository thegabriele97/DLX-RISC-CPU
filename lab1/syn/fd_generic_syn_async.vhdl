
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FD_GENERIC_NBIT16_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_FD_GENERIC_NBIT16_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_NBIT16_1.all;

entity FD_GENERIC_NBIT16_1 is

   port( D : in std_logic_vector (15 downto 0);  CK, RESET : in std_logic;  Q :
         out std_logic_vector (15 downto 0));

end FD_GENERIC_NBIT16_1;

architecture SYN_PLUTO_GENERIC of FD_GENERIC_NBIT16_1 is
   
   component SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
      generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
      port(
         clear, preset, enable, data_in, synch_clear, synch_preset, 
            synch_toggle, synch_enable, next_state, clocked_on : in std_logic;
         Q, QN : buffer std_logic
      );
   end component;
   
   signal X_Logic1_port, X_Logic0_port, D_15_port, D_14_port, D_13_port, 
      D_12_port, D_11_port, D_10_port, D_9_port, D_8_port, D_7_port, D_6_port, 
      D_5_port, D_4_port, D_3_port, D_2_port, D_1_port, D_0_port, CK_port, 
      RESET_port, Q_15_port, Q_14_port, Q_13_port, Q_12_port, Q_11_port, 
      Q_10_port, Q_9_port, Q_8_port, Q_7_port, Q_6_port, Q_5_port, Q_4_port, 
      Q_3_port, Q_2_port, Q_1_port, Q_0_port, n_1000, n_1001, n_1002, n_1003, 
      n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, 
      n_1013, n_1014, n_1015 : std_logic;

begin
   ( D_15_port, D_14_port, D_13_port, D_12_port, D_11_port, D_10_port, D_9_port
      , D_8_port, D_7_port, D_6_port, D_5_port, D_4_port, D_3_port, D_2_port, 
      D_1_port, D_0_port ) <= D;
   CK_port <= CK;
   RESET_port <= RESET;
   Q <= ( Q_15_port, Q_14_port, Q_13_port, Q_12_port, Q_11_port, Q_10_port, 
      Q_9_port, Q_8_port, Q_7_port, Q_6_port, Q_5_port, Q_4_port, Q_3_port, 
      Q_2_port, Q_1_port, Q_0_port );
   
   Q_reg_15_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_15_port, clocked_on => CK_port, Q => Q_15_port, QN => n_1000);
   Q_reg_14_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_14_port, clocked_on => CK_port, Q => Q_14_port, QN => n_1001);
   Q_reg_13_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_13_port, clocked_on => CK_port, Q => Q_13_port, QN => n_1002);
   Q_reg_12_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_12_port, clocked_on => CK_port, Q => Q_12_port, QN => n_1003);
   Q_reg_11_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_11_port, clocked_on => CK_port, Q => Q_11_port, QN => n_1004);
   Q_reg_10_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_10_port, clocked_on => CK_port, Q => Q_10_port, QN => n_1005);
   Q_reg_9_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_9_port, clocked_on => CK_port, Q => Q_9_port, QN => n_1006);
   Q_reg_8_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_8_port, clocked_on => CK_port, Q => Q_8_port, QN => n_1007);
   Q_reg_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_7_port, clocked_on => CK_port, Q => Q_7_port, QN => n_1008);
   Q_reg_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_6_port, clocked_on => CK_port, Q => Q_6_port, QN => n_1009);
   Q_reg_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_5_port, clocked_on => CK_port, Q => Q_5_port, QN => n_1010);
   Q_reg_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_4_port, clocked_on => CK_port, Q => Q_4_port, QN => n_1011);
   Q_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_3_port, clocked_on => CK_port, Q => Q_3_port, QN => n_1012);
   Q_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_2_port, clocked_on => CK_port, Q => Q_2_port, QN => n_1013);
   Q_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_1_port, clocked_on => CK_port, Q => Q_1_port, QN => n_1014);
   Q_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_0_port, clocked_on => CK_port, Q => Q_0_port, QN => n_1015);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_PLUTO_GENERIC;

library IEEE;

use IEEE.std_logic_1164.all;

entity SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
   generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
   port(
      clear, preset, enable, data_in, synch_clear, synch_preset, synch_toggle, 
         synch_enable, next_state, clocked_on : in std_logic;
      Q, QN : buffer std_logic
   );
end SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT;

architecture RTL of SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
begin

   process ( preset, clear, enable, data_in, clocked_on )
   begin
   
            -- Check the value of inputs (asynchronous first)
            if ( ( ( preset /= '1' ) and ( preset /= '0' ) ) or ( ( clear /= 
                     '1' ) and ( clear /= '0' ) )  ) then
               Q <= 'X';
            elsif ( clear = '1' and preset = '1' ) then
               case ac_as_q is
                  when 2 =>
                     Q <= '1';
                  when 1 =>
                     Q <= '0';
                  when others =>
                     Q <= 'X';
               end case;
               case ac_as_qn is
                  when 2 =>
                     QN <= '1';
                  when 1 =>
                     QN <= '0';
                  when others =>
                     QN <= 'X';
               end case;
            elsif ( clear = '1' ) then
               Q <= '0';
            elsif ( preset = '1' ) then
               Q <= '1';
            elsif ( ( enable /= '1' ) and ( enable /= '0' ) ) then
               Q <= 'X';
            elsif ( enable = '1' ) then
               Q <= data_in;
            elsif ( ( clocked_on /= '1' ) and ( clocked_on /= '0' ) ) then
               Q <= 'X';
            elsif ( clocked_on'event and clocked_on = '1' ) then
         if ( ( ( synch_preset /= '1' ) and ( synch_preset /= '0' ) ) or ( ( 
                  synch_clear /= '1' ) and ( synch_clear /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_clear = '1' and synch_preset = '1' ) then
            case sc_ss_q is
               when 2 =>
                  Q <= '1';
               when 1 =>
                  Q <= '0';
               when others =>
                  Q <= 'X';
            end case;
         elsif ( synch_clear = '1' ) then
            Q <= '0';
         elsif ( synch_preset = '1' ) then
            Q <= '1';
         elsif ( ( ( synch_toggle /= '1' ) and ( synch_toggle /= '0' ) ) or ( (
                  synch_enable /= '1' ) and ( synch_enable /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_enable = '1' and synch_toggle = '1' ) then
            Q <= 'X';
         elsif ( synch_toggle = '1' ) then
            Q <= QN;
         elsif ( synch_enable = '1' ) then
            Q <= next_state;
         end if;
      end if;
   
   end process;

end RTL;
