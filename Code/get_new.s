# macros for getting new array B
.macro get_new_arr_Mi(%arr_a, %arr_b, %size) # arr_a - source array, arr_b - new array, size - size of first array
	li t4 0 # iteration 
	li t5 0 # sum of even
	li t6 0 # sum of odd
loop1:
	lw a0 (t0) #get element
	bltz a0, negat # jump if odd
	add t5 t5 a0 # sum even
	j cont1
negat: 
	add t6 t6 a0 # sum odd
cont1:
	addi t4 t4 1 # move iter
	addi %arr_a %arr_a 4 # move arr
	bltu t4 %size loop1
	
	li t4 0 # iteration 
loop2:
	li s0 2 # const 2
	rem a0 t4 s0 # check odd or even posiition 
	bnez a0 odd # jump if odd
	sw t5 (%arr_b) # put even sum
	j cont2
odd: 
	sw t6 (%arr_b) # put odd sum
cont2:
	addi %arr_b %arr_b 4 # move arr
	addi t4 t4 1 # move iter
	bltu t4 %size loop2
	
	lw ra (sp)
	addi sp sp 4
.end_macro
