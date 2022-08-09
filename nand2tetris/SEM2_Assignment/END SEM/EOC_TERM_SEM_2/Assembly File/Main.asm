//function Keyboard.new 0
(Keyboard.new)
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Memory.alloc 1
@Memory.alloc$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.alloc
0;JMP
(Memory.alloc$ret.0)
//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//return
@LCL
D=M
@frame
M=D
@5
D=D-A
A=D
D=M
@return
M=D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@frame
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
@frame
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@frame
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@frame
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@return
A=M
0;JMP
//function Keyboard.init 0
(Keyboard.init)
//push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 0
@SP
M=M-1
A=M
D=M
@.0
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//return
@LCL
D=M
@frame
M=D
@5
D=D-A
A=D
D=M
@return
M=D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@frame
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
@frame
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@frame
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@frame
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@return
A=M
0;JMP
//function Keyboard.KeyPressed 0
(Keyboard.KeyPressed)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//return
@LCL
D=M
@frame
M=D
@5
D=D-A
A=D
D=M
@return
M=D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@frame
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
@frame
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@frame
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@frame
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@return
A=M
0;JMP
//function Keyboard.readChar 1
(Keyboard.readChar)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//label WHILE_EXP0
(Keyboard.readChar$WHILE_EXP0)
//call Keyboard.KeyPressed 0
@Keyboard.KeyPressed$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Keyboard.KeyPressed
0;JMP
(Keyboard.KeyPressed$ret.1)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL0
D;JEQ
D=0
@FINAL0
0;JEQ
(EQUAL0)
D=-1
(FINAL0)
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
M=M-1
A=M
D=!M
M=D
@SP
M=M+1
//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@Keyboard.readChar$WHILE_END0
D;JNE
//goto WHILE_EXP0
@Keyboard.readChar$WHILE_EXP0
0;JMP
//label WHILE_END0
(Keyboard.readChar$WHILE_END0)
//call Keyboard.KeyPressed 0
@Keyboard.KeyPressed$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Keyboard.KeyPressed
0;JMP
(Keyboard.KeyPressed$ret.2)
//pop local 0
@0
D=A
@LCL
D=D+M
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//label WHILE_EXP1
(Keyboard.readChar$WHILE_EXP1)
//call Keyboard.KeyPressed 0
@Keyboard.KeyPressed$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Keyboard.KeyPressed
0;JMP
(Keyboard.KeyPressed$ret.3)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL1
D;JEQ
D=0
@FINAL1
0;JEQ
(EQUAL1)
D=-1
(FINAL1)
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
M=M-1
A=M
D=!M
M=D
@SP
M=M+1
//not
@SP
M=M-1
A=M
D=!M
M=D
@SP
M=M+1
//if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
@Keyboard.readChar$WHILE_END1
D;JNE
//goto WHILE_EXP1
@Keyboard.readChar$WHILE_EXP1
0;JMP
//label WHILE_END1
(Keyboard.readChar$WHILE_END1)
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//return
@LCL
D=M
@frame
M=D
@5
D=D-A
A=D
D=M
@return
M=D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@frame
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
@frame
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@frame
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@frame
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@return
A=M
0;JMP
//function Keyboard.readLine 2
(Keyboard.readLine)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.new 1
@String.new$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(String.new$ret.4)
//pop local 0
@0
D=A
@LCL
D=D+M
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 1
@1
D=A
@LCL
D=D+M
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Output.printString 1
@Output.printString$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printString
0;JMP
(Output.printString$ret.5)
//pop temp 0
@0
D=A
@5
D=D+A
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//label WHILE_EXP0
(Keyboard.readLine$WHILE_EXP0)
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL2
D;JEQ
D=0
@FINAL2
0;JEQ
(EQUAL2)
D=-1
(FINAL2)
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
M=M-1
A=M
D=!M
M=D
@SP
M=M+1
//not
@SP
M=M-1
A=M
D=!M
M=D
@SP
M=M+1
//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@Keyboard.readLine$WHILE_END0
D;JNE
//call Keyboard.readChar 0
@Keyboard.readChar$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Keyboard.readChar
0;JMP
(Keyboard.readChar$ret.6)
//pop local 1
@1
D=A
@LCL
D=D+M
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 129
@129
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL3
D;JEQ
D=0
@FINAL3
0;JEQ
(EQUAL3)
D=-1
(FINAL3)
@SP
A=M
M=D
@SP
M=M+1
//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Keyboard.readLine$IF_TRUE0
D;JNE
//goto IF_FALSE0
@Keyboard.readLine$IF_FALSE0
0;JMP
//label IF_TRUE0
(Keyboard.readLine$IF_TRUE0)
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call String.eraseLastChar 1
@String.eraseLastChar$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.eraseLastChar
0;JMP
(String.eraseLastChar$ret.7)
//pop temp 0
@0
D=A
@5
D=D+A
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push constant 129
@129
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.printChar 1
@Output.printChar$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printChar
0;JMP
(Output.printChar$ret.8)
//pop temp 0
@0
D=A
@5
D=D+A
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//goto IF_END0
@Keyboard.readLine$IF_END0
0;JMP
//label IF_FALSE0
(Keyboard.readLine$IF_FALSE0)
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Output.printChar 1
@Output.printChar$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printChar
0;JMP
(Output.printChar$ret.9)
//pop temp 0
@0
D=A
@5
D=D+A
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
@String.appendChar$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.10)
//pop temp 0
@0
D=A
@5
D=D+A
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//label IF_END0
(Keyboard.readLine$IF_END0)
//goto WHILE_EXP0
@Keyboard.readLine$WHILE_EXP0
0;JMP
//label WHILE_END0
(Keyboard.readLine$WHILE_END0)
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call String.eraseLastChar 1
@String.eraseLastChar$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.eraseLastChar
0;JMP
(String.eraseLastChar$ret.11)
//pop temp 0
@0
D=A
@5
D=D+A
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//return
@LCL
D=M
@frame
M=D
@5
D=D-A
A=D
D=M
@return
M=D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@frame
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
@frame
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@frame
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@frame
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@return
A=M
0;JMP
//function Keyboard.readInt 3
(Keyboard.readInt)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.new 1
@String.new$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(String.new$ret.12)
//pop local 0
@0
D=A
@LCL
D=D+M
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 2
@2
D=A
@LCL
D=D+M
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Output.printString 1
@Output.printString$ret.13
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printString
0;JMP
(Output.printString$ret.13)
//pop temp 0
@0
D=A
@5
D=D+A
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//label WHILE_EXP0
(Keyboard.readInt$WHILE_EXP0)
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL4
D;JEQ
D=0
@FINAL4
0;JEQ
(EQUAL4)
D=-1
(FINAL4)
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
M=M-1
A=M
D=!M
M=D
@SP
M=M+1
//not
@SP
M=M-1
A=M
D=!M
M=D
@SP
M=M+1
//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@Keyboard.readInt$WHILE_END0
D;JNE
//call Keyboard.readChar 0
@Keyboard.readChar$ret.14
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Keyboard.readChar
0;JMP
(Keyboard.readChar$ret.14)
//pop local 2
@2
D=A
@LCL
D=D+M
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 129
@129
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL5
D;JEQ
D=0
@FINAL5
0;JEQ
(EQUAL5)
D=-1
(FINAL5)
@SP
A=M
M=D
@SP
M=M+1
//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Keyboard.readInt$IF_TRUE0
D;JNE
//goto IF_FALSE0
@Keyboard.readInt$IF_FALSE0
0;JMP
//label IF_TRUE0
(Keyboard.readInt$IF_TRUE0)
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call String.eraseLastChar 1
@String.eraseLastChar$ret.15
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.eraseLastChar
0;JMP
(String.eraseLastChar$ret.15)
//pop temp 0
@0
D=A
@5
D=D+A
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Output.printChar 1
@Output.printChar$ret.16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printChar
0;JMP
(Output.printChar$ret.16)
//pop temp 0
@0
D=A
@5
D=D+A
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//goto IF_END0
@Keyboard.readInt$IF_END0
0;JMP
//label IF_FALSE0
(Keyboard.readInt$IF_FALSE0)
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call String.appendChar 2
@String.appendChar$ret.17
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.17)
//pop temp 0
@0
D=A
@5
D=D+A
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Output.printChar 1
@Output.printChar$ret.18
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printChar
0;JMP
(Output.printChar$ret.18)
//pop temp 0
@0
D=A
@5
D=D+A
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//label IF_END0
(Keyboard.readInt$IF_END0)
//goto WHILE_EXP0
@Keyboard.readInt$WHILE_EXP0
0;JMP
//label WHILE_END0
(Keyboard.readInt$WHILE_END0)
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call String.eraseLastChar 1
@String.eraseLastChar$ret.19
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.eraseLastChar
0;JMP
(String.eraseLastChar$ret.19)
//pop temp 0
@0
D=A
@5
D=D+A
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call String.intValue 1
@String.intValue$ret.20
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.intValue
0;JMP
(String.intValue$ret.20)
//pop local 1
@1
D=A
@LCL
D=D+M
@frame
M=D
@SP
M=M-1
A=M
D=M
@frame
A=M
M=D
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//return
@LCL
D=M
@frame
M=D
@5
D=D-A
A=D
D=M
@return
M=D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@frame
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
@frame
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@frame
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@frame
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@return
A=M
0;JMP