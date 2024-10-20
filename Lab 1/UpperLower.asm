.MODEL SMALL
.STACK 100H
.DATA
UP DB "upper$"
LW DB "lower$"
.CODE
MAIN PROC

MOV AX, @DATA
MOV DS,AX 
 
 
    
MOV AH,1
INT 21H
    
MOV BH,AL  

CMP BH,61H
JGE L

CMP BH,41H
JGE U

U:CMP BH,5BH
JL UPPER

L:CMP BH,7BH
JL LOWER




    
UPPER: MOV AH,9
LEA DX,UP    
INT 21H
JMP EXIT    
    
LOWER: MOV AH,9
LEA DX,LW    
INT 21H
JMP EXIT        
    
    
EXIT:    
    MAIN ENDP
END MAIN



