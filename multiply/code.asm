jmp start

;data

;code
start:
lxi h, 3000h
mov b , m
inx h
mov c, m
mvi a , 00h
mvi d, 00h
loop:
add b 
jnc carry
inr d
carry:
dcr c
jnz loop 

sta 3002h
mov a,d
sta 3003h
HLT
