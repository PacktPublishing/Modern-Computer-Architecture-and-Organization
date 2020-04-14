; Initialize the data in memory
LDA #$04
STA $0203
LDA #$03
STA $0202
LDA #$02
STA $0201
LDA #$01
STA $0200
; Add four bytes together using absolute addressing mode
LDA $0203
CLC
ADC $0202
ADC $0201
ADC $0200