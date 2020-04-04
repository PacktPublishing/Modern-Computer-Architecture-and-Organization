; Ex__5_16_bit_subtraction.asm
; Try running this code at
; https://skilldrick.github.io/easy6502/

; Set up the values to be subtracted
; Remove the appropriate semicolons to select the bytes to
; subtract:
; ($0001 - $0000) or ($0001 - $0001) or ($0001 - $00FF) or
; ($0000 - $0001)

LDA #$01
;LDA #$01
;LDA #$01
;LDA #$00
STA $00

LDA #$00
;LDA #$00
;LDA #$00
;LDA #$00
STA $01

LDA #$00
;LDA #$01
;LDA #$FF
;LDA #$01
STA $02

LDA #$00
;LDA #$00
;LDA #$00
;LDA #$00
STA $03

; Subtract the two 16-bit values
SEC
LDA $00
SBC $02
STA $04

LDA $01
SBC $03
STA $05
