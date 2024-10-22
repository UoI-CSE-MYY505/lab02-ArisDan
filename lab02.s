
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!

    add s0, zero, zero
    add s3, zero, zero
loop:
    beq s3, a1, done
    slli t1, s3, 2
    add t1, t1, a0
    lw t0, 0(t1)
    bne t0, a2, exitif
    add s0, zero, t1

exitif:
    addi s3, s3, 1
    j loop
    
# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
