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

// Put your code here.
//16384-24575-->螢幕顯示
//24576 -->偵測鍵盤

(initial)
//    i = 16384;
    @16384
    D = A
    @i
    M = D
//color: //   顏色
(color)
//    if(i>=24576); //表示壓下任意鍵
    @24576
    D = A
    @i
    D = M-D // i-24576
    //  goto leavefor; 
    @leavefor
    D;JGE



//    int  color1 =0 //白色
        @color1
        M =0
//    if(M[24576] ==0){//放開鍵盤時
        @24576
        D = M
        
//        goto NEXT
        @NEXT
        D;JEQ
//    }
//    color1 = -1//黑色
    @color1 
    M = -1
//NEXT:
(NEXT)
//    M[i] = color1;
    @color1
    D = M //D = M[color1]
    @i
    A = M //i = M[i]
    M=D  //M[i]  = color1
//    i++;
    @i
    M = M+1
//    goto color;
    @color
    0;JMP

//leavefor:
(leavefor)
//    goto initial;
        @initial
        0;JMP