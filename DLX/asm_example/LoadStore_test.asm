
myloop:
    addi r1, r0, 4                      ;0
    addi r8, r0, 10                     ;4
    sw 4(r1), r8                        ;8
    
    addi r9, r0, -10                    ;C
    sh 5(r1), r9                        ;10
    lb r10, 5(r1)                       ;14
    lbu r11, 5(r1)                      ;18
    lhu r11, 5(r1)                      ;1C
    addi r10, r10, 1                    ;20

    lbu r2, 5(r1)                        ;24
    sh 20(r1), r2                       ;28
    
    lh r3, 8(r1)                        ;2C
    lhi r3, 9                           ;30
    
    addi r4, r3, 15                     ;34
    addi r7, r0, myloop                 ;38
    
    jal myloop        	                ;3C
                                        ;40