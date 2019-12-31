; Ex__6_checksum_tests.asm
; Try running this code at https://skilldrick.github.io/easy6502/

; After tests complete, A=$AA if success, A=$EE if error detected

; Store the address of the data array in $10-$11
LDA #$00
STA $10
STA $11

; ==============================================
; Test 1: 1 byte; Checksum: 00 Checksum should pass? Yes
LDA #$00
STA $00

; Store the number of bytes in X
LDX #1

; Call the checksum calculation subroutine
JSR CALC_CKSUM

CMP #$01
BEQ TEST2
JMP ERROR

TEST2:
; ==============================================
; Test 2: 1 byte; Checksum: 01 Checksum should pass? No
LDA #$01
STA $00

; Store the number of bytes in X
LDX #1

; Call the checksum calculation subroutine
JSR CALC_CKSUM

CMP #$00
BEQ TEST3
JMP ERROR

TEST3:
; ==============================================
; Test 3: 2 bytes: 00 Checksum: 00 Checksum should pass? Yes
LDA #$00
STA $00
STA $01

; Store the number of bytes in X
LDX #2

; Call the checksum calculation subroutine
JSR CALC_CKSUM

CMP #$01
BEQ TEST4
JMP ERROR

TEST4:
; ==============================================
; Test 4: 2 bytes: 00 Checksum: 01 Checksum should pass? No
LDA #$00
STA $00
LDA #$01
STA $01

; Store the number of bytes in X
LDX #2

; Call the checksum calculation subroutine
JSR CALC_CKSUM

CMP #$00
BEQ TEST5
JMP ERROR

TEST5:
; ==============================================
; Test 5: 2 bytes: 01 Checksum: 00 Checksum should pass? No
LDA #$01
STA $00
LDA #$00
STA $01

; Store the number of bytes in X
LDX #1

; Call the checksum calculation subroutine
JSR CALC_CKSUM

CMP #$00
BEQ TEST6
JMP ERROR

TEST6:
; ==============================================
; Test 6: 3 bytes: 00 00 Checksum: 00 Checksum should pass? Yes
LDA #$00
STA $00
STA $01
STA $02

; Store the number of bytes in X
LDX #3

; Call the checksum calculation subroutine
JSR CALC_CKSUM

CMP #$01
BEQ TEST7
JMP ERROR

TEST7:
; ==============================================
; Test 7: 3 bytes: 00 00 Checksum: 00 Checksum should pass? Yes
LDA #$00
STA $00
STA $01
STA $02

; Store the number of bytes in X
LDX #3

; Call the checksum calculation subroutine
JSR CALC_CKSUM

CMP #$01
BEQ TEST8
JMP ERROR

TEST8:
; ==============================================
; Test 8: 3 bytes: 00 00 Checksum: 01 Checksum should pass? No
LDA #$00
STA $00
LDA #$00
STA $01
LDA #$01
STA $02

; Store the number of bytes in X
LDX #3

; Call the checksum calculation subroutine
JSR CALC_CKSUM

CMP #$00
BEQ TEST9
JMP ERROR

TEST9:
; ==============================================
; Test 9: 3 bytes: 00 01 Checksum: FF Checksum should pass? Yes
LDA #$00
STA $00
LDA #$01
STA $01
LDA #$FF
STA $02

; Store the number of bytes in X
LDX #3

; Call the checksum calculation subroutine
JSR CALC_CKSUM

CMP #$01
BEQ TEST10
JMP ERROR

TEST10:
; ==============================================
; Test 10: 5 bytes: 01 72 93 F4 Checksum: 06 Checksum should pass? Yes
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

; Store the number of bytes in X
LDX #5

; Call the checksum calculation subroutine
JSR CALC_CKSUM

CMP #$01
BEQ PASSED

ERROR:
; ==============================================
; Error occurred; Halt execution with $EE in A
LDA #$EE
BRK

PASSED:
; ==============================================
; All tests passed; Halt execution with $AA in A
LDA #$AA
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
