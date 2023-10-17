# macros for printing array
.macro output_arr(%arr, %size) # arr - array, size - size of array
	li t4 0 #iter
	
output_loop:
	lw a0 (%arr) #get element
	li a7 1
	ecall #print element
	
	la a0 space_out
	li a7 4
	ecall #print space
	
	addi %arr %arr 4 # move arr
	addi t4 t4 1 # move iter
	bltu t4 %size output_loop
	
	lw ra (sp)
	addi sp sp 4
.end_macro
