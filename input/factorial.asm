.data
n: .word 6

.text
addi x10 x0 4
jal x1, fact
jal x1 exit

fact:
addi x2, x2, -8
sw x1 x2 4
sw x10 x2 0
addi x5 x10 -1
bge x5, x0, L1
addi x10, x0, 1
addi x2, x2, 8
jalr x0, x1 0
L1:
addi x10, x10, -1
jal x1, fact
addi, x6, x10, 0
lw x10, x2 0
lw x1, x2 4
addi x2, x2, 8
mul x10, x10, x6
jalr x0, x1 0  
exit: