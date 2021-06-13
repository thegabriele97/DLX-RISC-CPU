
    addi r1, r0, #2     ;0
    addi r10, r0, #2    ;4
    addi r16, r0, #3    ;8
    mult r17, r16, r1
    addi r22, r0, #7    ;C
    addi r8, r8, #5     ;10
    addi r30, r0, #30   ;14

    j call_again        ;18
    addi r4, r0, #3     ;1C


lab:
    add r30, r0, r31    ;20
                        
    addi r1, r1, #1     ;18
    addi r14, r14, #1   ;1C
    addi r16, r16, #1   ;20             
    addi r10, r0, #4    ;24
    addi r14, r0, #4    ;28
    addi r14, r14, #1   ;2C

    sw 0(r0), r1        ;30
    sw 1(r0), r14       ;34
    sw 2(r0), r16       ;38
    sw 3(r0), r10       ;3C

    jal call_again      ;40
    add r1, r1, r1      ;44

call_again:
    call lab            ;48 