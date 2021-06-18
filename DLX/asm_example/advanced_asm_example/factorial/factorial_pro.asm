
addi r24, r0, #10

ticktmr r16
call fact
ticktmr r17

j exit


; R8 => INPUT for current call from prev call
; R9 => OUTPUT for current call towards prev call
; R24 => INPUT FOR NEXT CALL
; R25 => OUTPUT FROM LAST CALL
fact:
    seqi r16, r8, #1
    bnez r16, end

    ; continue rec
    ; n * call fact(n-1)
    subi r24, r8, #1      ; n = n-1
    call fact
    mult r9, r8, r25    
    ret

    end:
        addi r9, r0, #1 
        ret

exit:
    sw 0(r0), r25   ; store result
    
    sub r17, r17, r16 ; total elapsed time (end - start)
    sw 16(r0), r17  ; store elaps time

halt:
    j halt
