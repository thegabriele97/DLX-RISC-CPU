
nop
addi r1,r0,#2       ;2          ;2
subi r2,r1,#1       ;1          ;1
addi r3,r1,#-4      ;-2         ;-2
subi r4,r3,#-1      ;-1
add r7,r1,r2        ;3
sub r8,r5,r6        ;0
sge r10,r1,r2       ;1
sge r11,r2,r1       ;0
sge r12,r1,r1       ;1
sle r13,r1,r2       ;0
sle r14,r2,r1       ;1
sle r15,r1,r1       ;1
sne r16,r1,r1       ;0
sne r17,r1,r2       ;1
seq r18,r1,r2       ;0
seq r19,r1,r1       ;1
sgt r10,r2,r1       ;0
sgt r11,r1,r2       ;1
slt r12,r2,r1       ;1
slt r10,r1,r2       ;0  2 < 1 
sgeu r10,r1,r3      ;0  2 >= 654..
sgeu r11,r3,r1      ;1
sgtu r12,r1,r3      ;0
sgtu r13,r3,r1      ;1
sltu r14,r3,r1      ;0
sltu r15,r1,r3      ;1
sgei r16,r1,#4      ;0
sgei r17,r1,#1      ;1
slei r18,r1,#0      ;0
slei r19,r1,#2      ;1
snei r10,r1,#1      ;1
snei r11,r1,#2      ;0
seqi r12,r1,#0      ;0
seqi r13,r1,#2      ;1
sgti r14,r1,#3      ;0
sgti r15,r1,#1      ;1
slti r16,r1,#1      ;0
slti r17,r1,#3      ;1
sgeui r10,r1,#4     ;0
sgeui r10,r1,#-4    ;0 
sgeui r11,r1,#1     ;1
sgtui r12,r1,#3     ;0
sgtui r13,r1,#1     ;1
sltui r14,r1,#1     ;0
sltui r15,r1,#3     ;1
addi r12,r0,#5      ;5
or r13,r11,r12      ;5
ori r14,r12,#65535  ;0000FFFF
and r15,r14,r2      ;1
andi r16,r14,#1     ;1
sll r17,r16,r2      ;2
slli r18,r16,#1     ;2
srl r19,r16,r2      ;0
srli r20,r16,#1     ;0
sra r21,r12,r2      ;2
srai r22,r12,#1     ;2
mult r23,r1,r5      ;0
xor r24,r1,r1       ;0
;xori r25, r1, #0xf  ;14

addi r6, r0, #5     ;5
addi r1, r0, #2     ;2
ror r30, r6, r1      ;0100 0000 0000 0000 0000 ... 0001
addi r7, r0, #5     ;5
rol r29, r7, r1     ;0000 0000 0000 0000 ... 0001 0100

addui r28, r0, #0xffff  ; 0x0000ffff
subui r28, r0, #0xffff  ; 0xffff0001

lhi r28, #-40           ; 0xfffd8000

sw 0(r0), r14
lh r27, 2(r0)       ;ffffffff
lhu r26, 2(r0)      ;0000ffff

nop
halt:
    j halt