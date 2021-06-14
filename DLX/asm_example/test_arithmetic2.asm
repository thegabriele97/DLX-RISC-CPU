
nop
addi r1,r0,#2       ;2
subi r2,r1,#1       ;1
addi r3,r1,#-4      ;-2
subi r4,r3,#-1      ;-1
add r7,r1,r2        ;3
sub r8,r5,r6        ;0
sge r10,r1,r2       ;1
sge r10,r2,r1       ;0
sge r10,r1,r1       ;1
sle r10,r1,r2       ;0
sle r10,r2,r1       ;1
sle r10,r1,r1       ;1
sne r10,r1,r1       ;0
sne r10,r1,r2       ;1
seq r10,r1,r2       ;0
seq r10,r1,r1       ;1
sgt r10,r2,r1       ;0
sgt r10,r1,r2       ;1
slt r10,r2,r1       ;1
slt r10,r1,r2       ;0
sgei r10,r1,#4      ;0
sgei r10,r1,#1      ;1
slei r10,r1,#0      ;0
slei r10,r1,#2      ;1
snei r10,r1,#1      ;1
snei r10,r1,#2      ;0
seqi r10,r1,#0      ;0
seqi r10,r1,#2      ;1
sgti r10,r1,#3      ;0
sgti r10,r1,#1      ;1
slti r10,r1,#1      ;0
slti r10,r1,#3      ;1
addi r12,r0,#5      ;5
or r13,r11,r12      ;5
ori r14,r12,#65535  ;FFFFFFF
and r15,r14,r2      ;1
andi r16,r14,#1     ;1
sll r17,r16,r2      ;2
;slli r18,r16,#1    
srl r19,r16,r2      ;0
;srli r20,r16,#1    
sra r21,r12,r2      ;2
;srai r22,r12,#1    
mult r23,r1,r5      ;0
xor r24,r1,r1       ;0
xori r25, r1, #0xf  ;14

addi r6, r0, #5     ;5
addi r1, r0, #2     ;2
ror r6, r6, r1      ;0100 0000 0000 0000 0000 ... 0001
addi r7, r0, #5     ;5
rol r7, r7, r1      ;0000 0000 0000 0000 .0001 0100
nop