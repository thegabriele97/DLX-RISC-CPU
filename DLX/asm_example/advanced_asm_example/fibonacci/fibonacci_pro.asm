addi r24, r0, #6

call fib
j exit

fib:    ; N is on r8, result in r9
    addi r16, r0, #1
    ble r8, r16, ret_1

    subi r24, r8, #1
    call fib ; n-1

    add r9, r25, r0   
    subi r24, r8, #2
    call fib ; n-2

    add r9, r9, r25       
    ret

ret_1:
    ; if n == 0 -> 0
    ; if n == 1 -> 1
    beqz r8, zero

    addi r9, r0, #1
    j out
    
zero:
    add r9, r0, r0

out:
    ret   

exit:

    sw 0(r0), r25

    j exit