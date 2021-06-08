
.code

    jal x
    add r2, r0, r0

x:
    add r1, r5, r4

labb: 
    add r1, r2, r3
    add r4, r1, r1
    j laba

laba: 
    add r1,r2,r3
    j labb
    addi r1,r2,#5

