###################################################################

# Created by write_sdc on Fri Jul 16 16:59:22 2021

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_wire_load_model -name 5K_hvratio_1_4 -library NangateOpenCellLibrary
create_clock [get_ports CLK]  -period 2.47  -waveform {0 1.235}
