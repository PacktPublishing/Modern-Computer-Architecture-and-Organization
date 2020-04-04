; Ex__6_32_bit_addition.asm
; Try running this code at
; https://skilldrick.github.io/easy6502/

; Set up the values to be added
; Remove the appropriate semicolons to select the bytes to
; add:
; ($00000001 + $00000001) or ($0000FFFF + $00000001) or
; ($FFFFFFFE + $00000001) or ($FFFFFFFF + $00000001) 

LDA #$01
;LDA #$FF
;LDA #$FE
;LDA #$FF
STA $00

LDA #$00
;LDA #$FF
;LDA #$FF
;LDA #$FF
STA $01

LDA #$00
;LDA #$00
;LDA #$FF
;LDA #$FF
STA $02

LDA #$00
;LDA #$00
;LDA #$FF
;LDA #$FF
STA $03

LDA #$01
STA $04

LDA #$00
STA $05
STA $06
STA $07

; Add the two 32-bit values using absolute indexed
; addressing mode
LDX #$00
LDY #$04
CLC

ADD_LOOP:
LDA $00, X
ADC $04, X
STA $08, X
INX
DEY
BNE ADD_LOOP
