; Handle /IRQ interrupts and BRK instructions
IRQ_BRK_HANDLER:
; Save the A register
STA $14
; Retrieve the processor flags from the stack into A
PLA
PHA
; Check if the B bit is set in the flags on the stack
AND $10 ; $10 selects the B bit
; If the result is nonzero, B was set: Handle the BRK
BNE BRK_INSTR
; B was not set: Handle the /IRQ here
; …
JMP IRQ_DONE
BRK_INSTR:
; Handle the BRK instruction here
; …
IRQ_DONE:
; Restore the A register and return
LDA $14
RTI