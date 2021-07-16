    addi r1, r0, #10        ;0
    addi r2, r0, #9         ;4
    addi r3, r0, #8         ;8
    addi r4, r0, #7         ;C    
    addi r5, r0, #6         ;10
    addi r6, r0, #5         ;14
    addi r7, r0, #4         ;18
    addi r8, r0, #3         ;1C
    add r3, r1, r2          ;20
    add r2, r4, r2          ;24
    j x                     ;28

x:
    add r1, r5, r4          ;2C
    add r6, r5, r4          ;30   

labb:
    add r4, r2, r2          ;34
    j laba                  ;38

    addi r8, r8, #1         ;3C
    addi r7, r7, #14        ;40  

laba: 
    addi r1, r1, #13        ;44
    j labb                  ;48

    add r5, r6, r7          ;4C