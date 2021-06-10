    addi r1, r0, #10        ;0
    addi r2, r0, #9         ;4
    addi r4, r0, #0         ;8
    slt r5, r1, r2
    slt r6, r2, r1
    sgei r7, r1, #5         ; r7 <- 1 because 10 > 5
    sgti r7, r1, #15        ; r7 <- 0 because 10 < 15
    beqz r7, ak
    
    and r8, r2, r1          ; 1010 & 1001 = 1000 = 8
    
ak:
    or r9, r2, r1           ; 1010 & 1001 = 1011 = 11
    jal bk

    xor r10, r2, r1         ; 1010 & 1001 = 0011 = 3


bk:
    add r1, r2, r1          ;C
    add r2, r2, r2          ;10
    j bk                    ;