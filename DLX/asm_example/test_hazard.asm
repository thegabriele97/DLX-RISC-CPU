    addi r1, r0, #10        ;0
    addi r2, r0, #9         ;4
    addi r4, r0, #0         ;8
    slt r5, r1, r2
    slt r6, r2, r1

bk:
    add r1, r2, r1          ;C
    add r2, r2, r2          ;10
    j bk                    ;