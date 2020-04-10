; Ex__5_checksum_subroutine.asm
; Try running this code at https://skilldrick.github.io/easy6502/

; Set up the array of bytes to be checksummed
LDA #$01
STA $00
LDA #$72
STA $01
LDA #$93
STA $02
LDA #$F4
STA $03
LDA #$06 ; This is the checksum byte
STA $04

; Store the address of the data array in $10-$11
LDA #$00
STA $10
STA $11

; Store the number of bytes in X
LDX #5

; Call the checksum calculation subroutine
JSR CALC_CKSUM

; Halt execution
BRK

; ==============================================
; Compute the checksum
CALC_CKSUM:
; Move X to Y
TXA
TAY

LDA #$00
DEY

LOOP:
CLC
ADC ($10), Y
DEY
BPL LOOP

CMP #$00
BNE CKSUM_ERROR

; The sum is zero: Checksum is correct
LDA #1
JMP DONE

; The sum is nonzero: Checksum is incorrect
CKSUM_ERROR:
LDA #0

; A contains 1 if checksum is correct, 0 if it is incorrect
DONE:
RTS
