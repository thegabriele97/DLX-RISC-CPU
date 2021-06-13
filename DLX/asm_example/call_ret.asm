
    addi r1, r0, #2     ;0
    addi r5, r0, #5     ;4    
    addi r10, r0, #2    ;8
    addi r16, r0, #3    ;C
    mult r17, r16, r1   ;10
    addi r22, r0, #7    ;14
    addi r8, r8, #5     ;18
    addi r30, r0, #30   ;1C

    call lab            ;20
    addi r4, r0, #3     ;24 

    addi r29, r0, #1    ;28
    addi r28, r0, #2    ;2C


lab:
    add r30, r0, r31    ;30
                        
    addi r1, r1, #1     ;34
    addi r14, r14, #1   ;38
    addi r16, r16, #1   ;3C             
    addi r10, r0, #4    ;40
    addi r14, r0, #4    ;44
    addi r14, r14, #1   ;48
    addi r8, r0, #10    ;4C

    sw 0(r0), r1        ;50
    sw 1(r0), r14       ;54
    sw 2(r0), r16       ;58
    sw 3(r0), r10       ;5C

    subi r5, r5, #1     ;60
    bnez r5, labn       ;64
    
    ret                 ;68
    
labn:
    call lab            ;6C
    add r1, r1, r1      ;70

    addi r5, r5, #1     ;74
    seqi r7, r5, #5     ;78
    bnez r7, endthis    ;7C
    ret                 ;80

endthis:
    add r8, r8, r0      ;84
    j endthis           ;88