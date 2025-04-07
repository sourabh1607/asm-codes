jmp start

;data

;code
start:  LXI H,50 ;set up as a momory pointer for the bytes
	MVI D,00 ;Clear register D to set up a flag
	MVI C,04 ;Set register C for comparision count
Check:	MOV A,M	 ;Get data byte
	INX H	 ; point to next byte
	CMP M    ;Compare bytes
	JC NXTBYT ;if (A) < second byte, do not exchange
	MOV B,M   ;Get second byte for exchange
	MOV M,A   ;Store first byte in second location
	DCX H     ;Point to first location
	MOV M,B   ;Store second byte in first location
	INX H     ;Get ready for second comparision
	MVI D,01  ;Load 1 in D as a remainder for exchange
NXTBYT: DCR C     ;Decrement comparision count
	JNZ Check ;If comparision count != 0, go back
	MOV A,D   ;Get flag bit in A
	RRC       ; place flag bit D0 in carry
	JC start  ;If flag is 1. exchange occured
	
HLT
