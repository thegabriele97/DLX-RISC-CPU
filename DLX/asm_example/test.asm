    addi r1, r0, #10
    addi r2, r0, #9
    addi r3, r0, #8
    addi r4, r0, #7
    addi r5, r0, #6
    addi r6, r0, #5
    addi r7, r0, #4
    addi r8, r0, #3
    add r3, r1, r2
    add r2, r4, r2
    j x

x:
    add r1, r5, r4
    add r6, r5, r4

labb:
    add r4, r2, r2
    j laba

    addi r8, r8, #1
    addi r7, r7, #14          

laba: 
    addi r1, r1, #13          
    j labb

    add r5, r6, r7