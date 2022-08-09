// Swap.asm
// flips the values of
// RAM[0] and RAM[1]
// logic
// temp = R1
// R1 = R0
// R0 = temp
 
 @R1
 D=M
 @temp
 M=D        // temp = R1

 @R0
 D=M
 @R1
 M=D        // R1=R0

 @temp
 D=M
 @R0
 M=D       // R0 = temp

 @temp
 M=0

(END)
 @END
 0;JMP