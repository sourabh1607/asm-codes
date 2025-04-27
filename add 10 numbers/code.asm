jmp start

;data

;code
start:
lxi h, 3000h
mvi a , 00h
mvi c,0Ah
mvi b , 00h
loop: add m
jnc carry
inr b
carry: inx h 
dcr c 
jnz loop
sta 300BH
mov a, b
sta 300CH
HLT
