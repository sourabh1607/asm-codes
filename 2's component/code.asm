jmp start

;data

;code
start:
lxi h, 3000h
mov a, m
cma 
adi 01h
sta 3002h
mvi b, 00h
jnc carry
inr b
carry: 
inx h 
mov a,m
cma 
add b
sta 3003h
HLT
