###################################################################

# Created by write_sdc on Mon May 31 10:52:58 2021

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_wire_load_model -name 5K_hvratio_1_4 -library NangateOpenCellLibrary
set_max_delay 0.5  -from [list [get_ports {A[31]}] [get_ports {A[30]}] [get_ports {A[29]}]       \
[get_ports {A[28]}] [get_ports {A[27]}] [get_ports {A[26]}] [get_ports         \
{A[25]}] [get_ports {A[24]}] [get_ports {A[23]}] [get_ports {A[22]}]           \
[get_ports {A[21]}] [get_ports {A[20]}] [get_ports {A[19]}] [get_ports         \
{A[18]}] [get_ports {A[17]}] [get_ports {A[16]}] [get_ports {A[15]}]           \
[get_ports {A[14]}] [get_ports {A[13]}] [get_ports {A[12]}] [get_ports         \
{A[11]}] [get_ports {A[10]}] [get_ports {A[9]}] [get_ports {A[8]}] [get_ports  \
{A[7]}] [get_ports {A[6]}] [get_ports {A[5]}] [get_ports {A[4]}] [get_ports    \
{A[3]}] [get_ports {A[2]}] [get_ports {A[1]}] [get_ports {A[0]}] [get_ports    \
{B[31]}] [get_ports {B[30]}] [get_ports {B[29]}] [get_ports {B[28]}]           \
[get_ports {B[27]}] [get_ports {B[26]}] [get_ports {B[25]}] [get_ports         \
{B[24]}] [get_ports {B[23]}] [get_ports {B[22]}] [get_ports {B[21]}]           \
[get_ports {B[20]}] [get_ports {B[19]}] [get_ports {B[18]}] [get_ports         \
{B[17]}] [get_ports {B[16]}] [get_ports {B[15]}] [get_ports {B[14]}]           \
[get_ports {B[13]}] [get_ports {B[12]}] [get_ports {B[11]}] [get_ports         \
{B[10]}] [get_ports {B[9]}] [get_ports {B[8]}] [get_ports {B[7]}] [get_ports   \
{B[6]}] [get_ports {B[5]}] [get_ports {B[4]}] [get_ports {B[3]}] [get_ports    \
{B[2]}] [get_ports {B[1]}] [get_ports {B[0]}] [get_ports Cin]]  -to [list [get_ports {S[31]}] [get_ports {S[30]}] [get_ports {S[29]}]         \
[get_ports {S[28]}] [get_ports {S[27]}] [get_ports {S[26]}] [get_ports         \
{S[25]}] [get_ports {S[24]}] [get_ports {S[23]}] [get_ports {S[22]}]           \
[get_ports {S[21]}] [get_ports {S[20]}] [get_ports {S[19]}] [get_ports         \
{S[18]}] [get_ports {S[17]}] [get_ports {S[16]}] [get_ports {S[15]}]           \
[get_ports {S[14]}] [get_ports {S[13]}] [get_ports {S[12]}] [get_ports         \
{S[11]}] [get_ports {S[10]}] [get_ports {S[9]}] [get_ports {S[8]}] [get_ports  \
{S[7]}] [get_ports {S[6]}] [get_ports {S[5]}] [get_ports {S[4]}] [get_ports    \
{S[3]}] [get_ports {S[2]}] [get_ports {S[1]}] [get_ports {S[0]}] [get_ports    \
Cout]]
