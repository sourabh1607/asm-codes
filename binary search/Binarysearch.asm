LDA 0000H
MOV B, A
MVI A, 0
MOV L, A
MVI A, 9
MOV H, A

START_LOOP: MOV A, H
            CMP L
            JC LOOP_END
            ADD L
            RAR
            MOV C, A
            JNC RESET
            CMC
RESET:      LXI D, 0004H
            ADD E
            MOV E, A
            MVI A, 0
            ADC D
            MOV D, A
            LDAX D
            CMP B
            JC ELSE_BLOCK
            JZ PRINT
            MOV A, C
            DCR A
            MOV H, A
            JMP START_LOOP

ELSE_BLOCK: MOV A, C
            INR A
            MOV A, L
            JMP START_LOOP

PRINT:      MVI A, 1
            STA 0001H
            MOV A, C
            STA 0002H
            JMP TRUE_END

LOOP_END:   MVI A, 2
            STA 0001H

TRUE_END:   HLT
