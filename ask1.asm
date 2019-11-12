TITLE SIMPLE_ADD
KODIKAS SEGMENT
    ASSUME CS:KODIKAS, DS:DEDOMENA
    ARXI:   
        MOV AX,DEDOMENA	
	    MOV DS,AX	

        LEA DX,MINIMA
        MOV AH,9
        INT 21H
        
        MOV AL,N1
        MUL AL
        
        ;N*N = N^2 result is in AX
        
        ;store the result from AX in BX
        MOV BX, AX
        ;move 2 into AL for multiplication
        MOV AL,2
        MUL N1
        ;AX now has 2*N
        MOV CX,AX
        ;BX has N^2-2*N
        SUB BX,CX
        ;ending with INC
        INC BX
        ;move result into DX to display
        MOV DX,BX 
        
        ;MOV DL,AL
        ADD DX,48
        MOV AH,2
        INT 21H
    
        MOV AH,4CH
        INT 21H
	
KODIKAS ENDS

DEDOMENA SEGMENT  
    N1 DB 3
    N2 DB 5
    MINIMA DB "TO APOTELESMA EINAI: ", 10, 13, "$"
DEDOMENA ENDS


    END ARXI