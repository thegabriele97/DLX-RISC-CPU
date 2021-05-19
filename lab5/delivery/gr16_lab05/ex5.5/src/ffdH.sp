* Flip-flop hold time, first input configuration

* including MOS model 
.lib '$ST_HSPICE_LIB/include_CMOS013.lib' CMOS013lib

* including a small set of gates containing parasitics informations
.include '$ST_HSPICE_LIB/CMOS013.spi'
 
*****************************************************




*------------------------------------
xffd1 ck data_in data_1out 0 al FD1QLL

.param offset = 0n

vck ck 0 pulse(0 1.2 0 20p 20p 0.9n 1.8n)
vin data_in 0 pwl 0 0 1.5n 0 1.52n 1.2
+ '2.11n-offset' 1.2 '2.13n-offset' 0 

val al 0 DC 1.2

cout1 data_1out 0 10fF

.option post
.param step = 0.01n

.plot v(ck) v(data_in) v(data_1out)
.tran 1p 3n sweep offset INCR step 0.0 0.4n 

.OPTION LIMPROBE = 200000
.OPTION EPS=1.0e-9 NOMOD NOTRC SIMUDIV=4 BE ABSTOL=1e-15
.probe


*****************************************************
.alter Flip-flop hold time, opposite input transition

vin data_in 0 pwl 0 1.2 1.5n 1.2 1.52n 0
+ '2.11n-offset' 0 '2.13n-offset' 1.2 


.end 
 

