# macros for asking N and enter N elements in array 
.macro read_arr_Mi(%arr, %size) # arr - register contains array, size contains size of array
	li t4 0 # iteration 
	li t5 1 # number of element
add_el:
	la a0 enter_number
	li a7 4
	ecall # print string enter
	
	mv a0 t5
	li a7 1
	ecall # print number of element
	
	la a0 dv
	li a7 4
	ecall # print :

	li a7 5
	ecall
	sw a0 (%arr) # enter element in array
	
	addi %arr %arr 4 # move arr
	addi t4 t4 1 # move iter
	addi t5 t5 1 # move count
	bltu t4 %size add_el
	
	lw ra (sp)
	addi sp sp 4
.end_macro
