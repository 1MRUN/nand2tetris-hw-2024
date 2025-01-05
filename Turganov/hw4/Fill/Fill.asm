// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

(LOOP1)
    @KBD          
    D=M           
    @BLACK 
    D;JNE         
    @SCREEN       
    D=A     
(CLEAR)
    M=0           
    A=A+1         
    D=D-1         
    @CLEAR
    D;JNE         
    @LOOP1        
    0;JMP    
(BLACK)
    @SCREEN       
    D=A        
    (LOOP2)
        M=-1          
        A=A+1         
        D=D-1         
        @LOOP2
        D;JNE         
        @LOOP1        
        0;JMP         