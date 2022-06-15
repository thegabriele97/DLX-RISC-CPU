###################################################################

# Created by write_sdc on Wed Jun  4 22:30:40 2014

###################################################################
set sdc_version 1.7

#set_wire_load_model -name 5K_hvratio_1_4 -library NangateOpenCellLibrary
create_clock [get_ports CLK]  -period 5  -waveform {0 2.5}
set_max_delay 5  -from [list [get_ports {A[127]}] [get_ports {A[126]}] [get_ports {A[125]}]    \
[get_ports {A[124]}] [get_ports {A[123]}] [get_ports {A[122]}] [get_ports      \
{A[121]}] [get_ports {A[120]}] [get_ports {A[119]}] [get_ports {A[118]}]       \
[get_ports {A[117]}] [get_ports {A[116]}] [get_ports {A[115]}] [get_ports      \
{A[114]}] [get_ports {A[113]}] [get_ports {A[112]}] [get_ports {A[111]}]       \
[get_ports {A[110]}] [get_ports {A[109]}] [get_ports {A[108]}] [get_ports      \
{A[107]}] [get_ports {A[106]}] [get_ports {A[105]}] [get_ports {A[104]}]       \
[get_ports {A[103]}] [get_ports {A[102]}] [get_ports {A[101]}] [get_ports      \
{A[100]}] [get_ports {A[99]}] [get_ports {A[98]}] [get_ports {A[97]}]          \
[get_ports {A[96]}] [get_ports {A[95]}] [get_ports {A[94]}] [get_ports         \
{A[93]}] [get_ports {A[92]}] [get_ports {A[91]}] [get_ports {A[90]}]           \
[get_ports {A[89]}] [get_ports {A[88]}] [get_ports {A[87]}] [get_ports         \
{A[86]}] [get_ports {A[85]}] [get_ports {A[84]}] [get_ports {A[83]}]           \
[get_ports {A[82]}] [get_ports {A[81]}] [get_ports {A[80]}] [get_ports         \
{A[79]}] [get_ports {A[78]}] [get_ports {A[77]}] [get_ports {A[76]}]           \
[get_ports {A[75]}] [get_ports {A[74]}] [get_ports {A[73]}] [get_ports         \
{A[72]}] [get_ports {A[71]}] [get_ports {A[70]}] [get_ports {A[69]}]           \
[get_ports {A[68]}] [get_ports {A[67]}] [get_ports {A[66]}] [get_ports         \
{A[65]}] [get_ports {A[64]}] [get_ports {A[63]}] [get_ports {A[62]}]           \
[get_ports {A[61]}] [get_ports {A[60]}] [get_ports {A[59]}] [get_ports         \
{A[58]}] [get_ports {A[57]}] [get_ports {A[56]}] [get_ports {A[55]}]           \
[get_ports {A[54]}] [get_ports {A[53]}] [get_ports {A[52]}] [get_ports         \
{A[51]}] [get_ports {A[50]}] [get_ports {A[49]}] [get_ports {A[48]}]           \
[get_ports {A[47]}] [get_ports {A[46]}] [get_ports {A[45]}] [get_ports         \
{A[44]}] [get_ports {A[43]}] [get_ports {A[42]}] [get_ports {A[41]}]           \
[get_ports {A[40]}] [get_ports {A[39]}] [get_ports {A[38]}] [get_ports         \
{A[37]}] [get_ports {A[36]}] [get_ports {A[35]}] [get_ports {A[34]}]           \
[get_ports {A[33]}] [get_ports {A[32]}] [get_ports {A[31]}] [get_ports         \
{A[30]}] [get_ports {A[29]}] [get_ports {A[28]}] [get_ports {A[27]}]           \
[get_ports {A[26]}] [get_ports {A[25]}] [get_ports {A[24]}] [get_ports         \
{A[23]}] [get_ports {A[22]}] [get_ports {A[21]}] [get_ports {A[20]}]           \
[get_ports {A[19]}] [get_ports {A[18]}] [get_ports {A[17]}] [get_ports         \
{A[16]}] [get_ports {A[15]}] [get_ports {A[14]}] [get_ports {A[13]}]           \
[get_ports {A[12]}] [get_ports {A[11]}] [get_ports {A[10]}] [get_ports {A[9]}] \
[get_ports {A[8]}] [get_ports {A[7]}] [get_ports {A[6]}] [get_ports {A[5]}]    \
[get_ports {A[4]}] [get_ports {A[3]}] [get_ports {A[2]}] [get_ports {A[1]}]    \
[get_ports {A[0]}] [get_ports {B[127]}] [get_ports {B[126]}] [get_ports        \
{B[125]}] [get_ports {B[124]}] [get_ports {B[123]}] [get_ports {B[122]}]       \
[get_ports {B[121]}] [get_ports {B[120]}] [get_ports {B[119]}] [get_ports      \
{B[118]}] [get_ports {B[117]}] [get_ports {B[116]}] [get_ports {B[115]}]       \
[get_ports {B[114]}] [get_ports {B[113]}] [get_ports {B[112]}] [get_ports      \
{B[111]}] [get_ports {B[110]}] [get_ports {B[109]}] [get_ports {B[108]}]       \
[get_ports {B[107]}] [get_ports {B[106]}] [get_ports {B[105]}] [get_ports      \
{B[104]}] [get_ports {B[103]}] [get_ports {B[102]}] [get_ports {B[101]}]       \
[get_ports {B[100]}] [get_ports {B[99]}] [get_ports {B[98]}] [get_ports        \
{B[97]}] [get_ports {B[96]}] [get_ports {B[95]}] [get_ports {B[94]}]           \
[get_ports {B[93]}] [get_ports {B[92]}] [get_ports {B[91]}] [get_ports         \
{B[90]}] [get_ports {B[89]}] [get_ports {B[88]}] [get_ports {B[87]}]           \
[get_ports {B[86]}] [get_ports {B[85]}] [get_ports {B[84]}] [get_ports         \
{B[83]}] [get_ports {B[82]}] [get_ports {B[81]}] [get_ports {B[80]}]           \
[get_ports {B[79]}] [get_ports {B[78]}] [get_ports {B[77]}] [get_ports         \
{B[76]}] [get_ports {B[75]}] [get_ports {B[74]}] [get_ports {B[73]}]           \
[get_ports {B[72]}] [get_ports {B[71]}] [get_ports {B[70]}] [get_ports         \
{B[69]}] [get_ports {B[68]}] [get_ports {B[67]}] [get_ports {B[66]}]           \
[get_ports {B[65]}] [get_ports {B[64]}] [get_ports {B[63]}] [get_ports         \
{B[62]}] [get_ports {B[61]}] [get_ports {B[60]}] [get_ports {B[59]}]           \
[get_ports {B[58]}] [get_ports {B[57]}] [get_ports {B[56]}] [get_ports         \
{B[55]}] [get_ports {B[54]}] [get_ports {B[53]}] [get_ports {B[52]}]           \
[get_ports {B[51]}] [get_ports {B[50]}] [get_ports {B[49]}] [get_ports         \
{B[48]}] [get_ports {B[47]}] [get_ports {B[46]}] [get_ports {B[45]}]           \
[get_ports {B[44]}] [get_ports {B[43]}] [get_ports {B[42]}] [get_ports         \
{B[41]}] [get_ports {B[40]}] [get_ports {B[39]}] [get_ports {B[38]}]           \
[get_ports {B[37]}] [get_ports {B[36]}] [get_ports {B[35]}] [get_ports         \
{B[34]}] [get_ports {B[33]}] [get_ports {B[32]}] [get_ports {B[31]}]           \
[get_ports {B[30]}] [get_ports {B[29]}] [get_ports {B[28]}] [get_ports         \
{B[27]}] [get_ports {B[26]}] [get_ports {B[25]}] [get_ports {B[24]}]           \
[get_ports {B[23]}] [get_ports {B[22]}] [get_ports {B[21]}] [get_ports         \
{B[20]}] [get_ports {B[19]}] [get_ports {B[18]}] [get_ports {B[17]}]           \
[get_ports {B[16]}] [get_ports {B[15]}] [get_ports {B[14]}] [get_ports         \
{B[13]}] [get_ports {B[12]}] [get_ports {B[11]}] [get_ports {B[10]}]           \
[get_ports {B[9]}] [get_ports {B[8]}] [get_ports {B[7]}] [get_ports {B[6]}]    \
[get_ports {B[5]}] [get_ports {B[4]}] [get_ports {B[3]}] [get_ports {B[2]}]    \
[get_ports {B[1]}] [get_ports {B[0]}] [get_ports Ci] [get_ports CLK]           \
[get_ports RST]]  -to [list [get_ports {S[127]}] [get_ports {S[126]}] [get_ports {S[125]}]      \
[get_ports {S[124]}] [get_ports {S[123]}] [get_ports {S[122]}] [get_ports      \
{S[121]}] [get_ports {S[120]}] [get_ports {S[119]}] [get_ports {S[118]}]       \
[get_ports {S[117]}] [get_ports {S[116]}] [get_ports {S[115]}] [get_ports      \
{S[114]}] [get_ports {S[113]}] [get_ports {S[112]}] [get_ports {S[111]}]       \
[get_ports {S[110]}] [get_ports {S[109]}] [get_ports {S[108]}] [get_ports      \
{S[107]}] [get_ports {S[106]}] [get_ports {S[105]}] [get_ports {S[104]}]       \
[get_ports {S[103]}] [get_ports {S[102]}] [get_ports {S[101]}] [get_ports      \
{S[100]}] [get_ports {S[99]}] [get_ports {S[98]}] [get_ports {S[97]}]          \
[get_ports {S[96]}] [get_ports {S[95]}] [get_ports {S[94]}] [get_ports         \
{S[93]}] [get_ports {S[92]}] [get_ports {S[91]}] [get_ports {S[90]}]           \
[get_ports {S[89]}] [get_ports {S[88]}] [get_ports {S[87]}] [get_ports         \
{S[86]}] [get_ports {S[85]}] [get_ports {S[84]}] [get_ports {S[83]}]           \
[get_ports {S[82]}] [get_ports {S[81]}] [get_ports {S[80]}] [get_ports         \
{S[79]}] [get_ports {S[78]}] [get_ports {S[77]}] [get_ports {S[76]}]           \
[get_ports {S[75]}] [get_ports {S[74]}] [get_ports {S[73]}] [get_ports         \
{S[72]}] [get_ports {S[71]}] [get_ports {S[70]}] [get_ports {S[69]}]           \
[get_ports {S[68]}] [get_ports {S[67]}] [get_ports {S[66]}] [get_ports         \
{S[65]}] [get_ports {S[64]}] [get_ports {S[63]}] [get_ports {S[62]}]           \
[get_ports {S[61]}] [get_ports {S[60]}] [get_ports {S[59]}] [get_ports         \
{S[58]}] [get_ports {S[57]}] [get_ports {S[56]}] [get_ports {S[55]}]           \
[get_ports {S[54]}] [get_ports {S[53]}] [get_ports {S[52]}] [get_ports         \
{S[51]}] [get_ports {S[50]}] [get_ports {S[49]}] [get_ports {S[48]}]           \
[get_ports {S[47]}] [get_ports {S[46]}] [get_ports {S[45]}] [get_ports         \
{S[44]}] [get_ports {S[43]}] [get_ports {S[42]}] [get_ports {S[41]}]           \
[get_ports {S[40]}] [get_ports {S[39]}] [get_ports {S[38]}] [get_ports         \
{S[37]}] [get_ports {S[36]}] [get_ports {S[35]}] [get_ports {S[34]}]           \
[get_ports {S[33]}] [get_ports {S[32]}] [get_ports {S[31]}] [get_ports         \
{S[30]}] [get_ports {S[29]}] [get_ports {S[28]}] [get_ports {S[27]}]           \
[get_ports {S[26]}] [get_ports {S[25]}] [get_ports {S[24]}] [get_ports         \
{S[23]}] [get_ports {S[22]}] [get_ports {S[21]}] [get_ports {S[20]}]           \
[get_ports {S[19]}] [get_ports {S[18]}] [get_ports {S[17]}] [get_ports         \
{S[16]}] [get_ports {S[15]}] [get_ports {S[14]}] [get_ports {S[13]}]           \
[get_ports {S[12]}] [get_ports {S[11]}] [get_ports {S[10]}] [get_ports {S[9]}] \
[get_ports {S[8]}] [get_ports {S[7]}] [get_ports {S[6]}] [get_ports {S[5]}]    \
[get_ports {S[4]}] [get_ports {S[3]}] [get_ports {S[2]}] [get_ports {S[1]}]    \
[get_ports {S[0]}] [get_ports Co]]
