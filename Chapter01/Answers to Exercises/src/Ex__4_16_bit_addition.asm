; Ex__4_16_bit_addition.asm
; Try running this code at
; https://skilldrick.github.io/easy6502/

; Set up the values to be added
; Remove the appropriate semicolons to select the bytes to add:
; ($0000 + $0001) or ($00FF + $0001) or ($1234 + $5678)

LDA #$00
;LDA #$FF
;LDA #$34
STA $00

LDA #$00
;LDA #$00
;LDA #$12
STA $01

LDA #$01
;LDA #$01
;LDA #$78
STA $02

LDA #$00
;LDA #$00
;LDA #$56
STA $03

; Add the two 16-bit values
CLC
LDA $00
ADC $02
STA $04

LDA $01
ADC $03
STA $05
