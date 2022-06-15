* Simulating a simple nand with parasitics


*.param MOSHS_DEV = 0

* including MOS model 
.lib '$ST_HSPICE_LIB/include_CMOS013.lib' CMOS013lib

* including a small set of gates containing parasitics informations
.include '$ST_HSPICE_LIB/CMOS013.spi'
 
*****************************************************

* the nand  subcircuit is already described in the file CMOS013.spi
* included above. the name of the subcircuit is ND2HS
* and its template is: .subckt ND2HS A B Z gnd vdd


* instance of the nand:
* only the reference to the template name are used
xnand inA inB out 0 vdd ND2HS
cload out 0 10f

*****************************************************
* defining inputs
vina inA 0 dc 1.2
vinb inB 0 pwl 0 0 1n 0 1.1n 1.2 2n 1.2 2.1n 0 
v_vdd vdd 0 DC alim
.param alim=1.2


**********************************************************
*    Measuring rising delay and rising times
.measure tran rnand TRIG v(out) VAL='alim*0.1' RISE=1
+TARG v(out) VAL='alim*0.9' RISE=1
.measure tran fnand TRIG v(out) VAL='alim*0.9' FALL=1
+TARG v(out) VAL='alim*0.1' FALL=1

*    Measuring delay
.measure tran nanddelayHL TRIG V(inB) VAL='alim*0.5' RISE=1 
+ TARG V(out) VAL='alim*0.5' FALL=1

** ADD THE instruction for the fall delay!!!


**********************************************************
* defining the simulation step and duration  
.tran 1p 3n 

* instruction necessary for creating output data
* to be processed by a waveform viewer 
.option post

.OPTION LIMPROBE = 200000
.OPTION EPS=1.0e-9 NOMOD NOTRC SIMUDIV=4 BE ABSTOL=1e-15


.end 
 
