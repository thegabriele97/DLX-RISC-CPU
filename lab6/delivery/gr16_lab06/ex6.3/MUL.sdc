###################################################################

# Created by write_sdc on Mon May 31 12:07:18 2021

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_wire_load_model -name 5K_hvratio_1_4 -library NangateOpenCellLibrary
set_max_delay 5  -from [list [get_ports {A[15]}] [get_ports {A[14]}] [get_ports {A[13]}]       \
[get_ports {A[12]}] [get_ports {A[11]}] [get_ports {A[10]}] [get_ports {A[9]}] \
[get_ports {A[8]}] [get_ports {A[7]}] [get_ports {A[6]}] [get_ports {A[5]}]    \
[get_ports {A[4]}] [get_ports {A[3]}] [get_ports {A[2]}] [get_ports {A[1]}]    \
[get_ports {A[0]}] [get_ports {B[15]}] [get_ports {B[14]}] [get_ports {B[13]}] \
[get_ports {B[12]}] [get_ports {B[11]}] [get_ports {B[10]}] [get_ports {B[9]}] \
[get_ports {B[8]}] [get_ports {B[7]}] [get_ports {B[6]}] [get_ports {B[5]}]    \
[get_ports {B[4]}] [get_ports {B[3]}] [get_ports {B[2]}] [get_ports {B[1]}]    \
[get_ports {B[0]}]]  -to [list [get_ports {Y[31]}] [get_ports {Y[30]}] [get_ports {Y[29]}]         \
[get_ports {Y[28]}] [get_ports {Y[27]}] [get_ports {Y[26]}] [get_ports         \
{Y[25]}] [get_ports {Y[24]}] [get_ports {Y[23]}] [get_ports {Y[22]}]           \
[get_ports {Y[21]}] [get_ports {Y[20]}] [get_ports {Y[19]}] [get_ports         \
{Y[18]}] [get_ports {Y[17]}] [get_ports {Y[16]}] [get_ports {Y[15]}]           \
[get_ports {Y[14]}] [get_ports {Y[13]}] [get_ports {Y[12]}] [get_ports         \
{Y[11]}] [get_ports {Y[10]}] [get_ports {Y[9]}] [get_ports {Y[8]}] [get_ports  \
{Y[7]}] [get_ports {Y[6]}] [get_ports {Y[5]}] [get_ports {Y[4]}] [get_ports    \
{Y[3]}] [get_ports {Y[2]}] [get_ports {Y[1]}] [get_ports {Y[0]}]]
