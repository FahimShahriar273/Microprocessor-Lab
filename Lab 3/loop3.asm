.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
MOV AH,1
INT 21H    
    
    
    
    

MOV CL,1
MOV AH, 2

START:
MOV DL,AL
INT 21H
INC CL

CMP CL,80
JLE START












    MAIN ENDP
END MAIN





