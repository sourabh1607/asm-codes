LXI H,2000H
MVI C,0AH
MVI D,8

SEARCH_LOOP: MOV A,M
	     CMP D
	     JZ FOUND
	     INX H
	     DCR C
	     JNZ SEARCH_LOOP

NOT_FOUND: MVI A,0FFH
	   STA 200CH
	   HLT

FOUND: SHLD 200CH
       HLT
