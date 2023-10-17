.include "read_array.s"
.include "get_new.s"
.include "output.s"
.globl space_out enter_number dv

.data 
	array_A: .space 40
	array_B: .space 40
	enter_count: .asciz "Enter count of elements(N): "
	enter_number: .asciz "Enter number "
	exception: .asciz "Incorrect input - N should be from 1 o 10"
	space_out: .asciz " "
	dv: .asciz ": "
	array_b: .asciz "Array B: \n"
.text
	la a0 enter_count
	li a7 4
	ecall # enter string for input n
	
	li a7 5
	ecall
	mv t1 a0 # save N in t1
	
	li s0 1
	bltu t1 s0 error # check if less than 1
	li s0 10
	bgtu t1 s0 error # check if bigger than 10
	
	
	la t0 array_A # update begin of array
	sw ra (sp)
	addi sp sp -4
	read_arr_Mi(t0,t1) #read array from user t0 - begin of array, t1 - size of array result - array_A contains input elements
	
	la t0 array_A # update begin of array A
	la t2 array_B # begin of new array
	sw ra (sp)
	addi sp sp -4
	get_new_arr_Mi(t0, t2, t1) # create new array t0 - begin of array A, t1 - size of array, t2 - begin of array B, result - create array B
	
	la a0 array_b
	li a7 4
	ecall
	
	la t2 array_B  # update begin of array B
	sw ra (sp)
	addi sp sp -4
	output_arr(t2, t1) # output new array t2 - begin of array B, t1 - size of array, result - output array B
	
	j exit
	
error: # if N < 1 or N > 10
	la a0 exception
	li a7 4
	ecall

exit: # the end
	li a7 10
	ecall
