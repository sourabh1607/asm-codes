;<fACTORIAL>

LXI H,2000H
MOV B,M
MVI D,01H
FACT: CALL MULTI
DCR B
JNZ FACT
INX H
MOV M,D
HLT

MULTI: MOV E,B
MVI A,00H

MULTILOOP: ADD D
DCR E
JNZ MULTILOOP
MOV D,A
RET
