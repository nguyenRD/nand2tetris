// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(START)
	@SCREEN
	D=A
	@i
	M=0
	@arr
	M=D
	@KBD
	D=M
	@BLACKLOOP
	D;JGT
	@WHITELOOP
	D;JEQ
	
(BLACKLOOP)
	@arr
	D=M
	@24575
	D=D-A
	@END
	D;JGT
	@arr
	A=M
	M=-1
	@i
	M=M+1
	@1
	D=A
	@arr
	M=M+D
	@BLACKLOOP
	0;JMP

(WHITELOOP)
	@arr
	D=M
	@24575
	D=D-A
	@END
	D;JGT
	@arr
	A=M
	M=0
	@i
	M=M+1
	@1
	D=A
	@arr
	M=M+D
	@WHITELOOP
	0;JMP

(END)
	@END
	@START
	0;JMP
	