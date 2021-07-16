
addi r24, r0, #10           ;0

ticktmr r16                 ;4
call fact                   ;8
ticktmr r17                 ;C

j exit                      ;10


; R8 => INPUT for current call from prev call
; R9 => OUTPUT for current call towards prev call
; R24 => INPUT FOR NEXT CALL
; R25 => OUTPUT FROM LAST CALL
fact:
    seqi r16, r8, #1        ;14
    bnez r16, end           ;18

    ; continue rec
    ; n * call fact(n-1)
    subi r24, r8, #1      ; n = n-1         ;1C
    call fact               ;20 
    mult r9, r8, r25        ;24
    ret                     ;28
 
 end:
    addi r9, r0, #1         ;2C
    ret                     ;30

exit:
    sw 0(r0), r25   ; store result
    
    sub r17, r17, r16 ; total elapsed time (end - start)
    sw 16(r0), r17  ; store elaps time

halt:
    j halt
