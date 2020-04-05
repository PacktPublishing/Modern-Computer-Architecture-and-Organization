; Initialize the data in memory
LDA #$04
STA $0203
LDA #$03
STA $0202
LDA #$02
STA $0201
LDA #$01
STA $0200
; Add four bytes together using absolute indexed addressing mode
LDX #$03
CLC
LDA $0200, X
DEX
ADC $0200, X
DEX
ADC $0200, X
DEX
ADC $0200, X