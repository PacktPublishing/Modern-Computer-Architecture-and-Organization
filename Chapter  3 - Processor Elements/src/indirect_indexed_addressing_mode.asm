; Initialize the data in memory
LDA #$04
STA $0203
LDA #$03
STA $0202
LDA #$02
STA $0201
LDA #$01
STA $0200
; Initialize the pointer to the byte array
LDA #$00
STA $10
LDA #$02
STA $11
; Add four bytes together using indirect indexed addressing mode
LDY #$03
LDA ($10), Y
DEY
CLC
ADD_LOOP:
ADC ($10), Y
DEY
BPL ADD_LOOP