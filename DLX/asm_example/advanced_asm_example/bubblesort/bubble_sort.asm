.text

	j start_code

	swap: ; r8 <- array, r9 <- j
		slli r20, r9, #2
		add r17, r8, r20	; ptr to array + j
		lw r18, 0(r17)	
		lw r19, 4(r17)
		ble r18, r19, not_swap
		; swap here
		sw 0(r17), r19
		sw 4(r17), r18
		addi r1, r0, #1	; swapped = true

	not_swap:
		ret	

    
	bubbleSort: ;R8 <- N, R9 <- array
	
	subi R8, R8, #1	; r1 <- N--
	addi r17, r0, #0	; index i
	fori:
		addi r1, r0, #0 	; swapped = false, global
		addi r19, r0, #0	; index j
		sub r20, r8, r17	; r20 <- n-1-i
		forj:
			add r24, r0, r9 	; arg #0 : ptr
			add r25, r0, r19	; arg #2 : index j
			call swap

			addi r19, r19, #1	;j++
			seq r18, r19, r20	; if j == n-i-1 
			bnez r18, exit_forj
			j forj


		exit_forj:
			beqz r1, end_sort 

			addi r17, r17, #1	; i++
			seq r18, r17, r8	; if i == n-1
			bnez r18, end_sort
			j fori
		

	end_sort:
		ret

	start_code:
		addi r24, r0, #12 ; N
		lw r25, array_0(r0)
		call bubbleSort
		
	stop:
		j stop	





################
# DATA SEGMENT #
################

	.data

code_space:
	.space 256

# The available assembler assigns addresses starting from zero each time
# it finds a new segment. In this way data and text segments are going to 
# overlap and their addresses cannot be shared. To avoid this problem we 
# need to generate absolute code in which starting address of data segment
# is located after last address of text segment. Therefore we use a trick 
# reserving the first part of data segment (code_space) to empty space while
# all useful data structures are defined soon after. In this way, when 
# compiling, the text segment would overlap the data segment just for this
# initial empty space so that as result we have the compiled code followed
# by useful data addresses. Obviously the size of code_space has to be enough
# to contain all compiled code (256 byte are more than enough). 
# array to be sorted

array:
	.word 3,18,-12,24,17,1,7,3,-8,20,100,-33

array_0:
	.word array