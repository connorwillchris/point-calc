section .data
; =====================================
; CONSTANTS
; =====================================
    STDIN       equ 0
    STDOUT      equ 1
    STDERR      equ 2

section .text

    global STDIN
    global STDOUT
    global STDERR

    global getc

    global putc

; =====================================
; SUBROUTINE: putc
; 
; DESCRIPTION:
;   Writes 1 character to the STDIN.
;
; int putc (int c, FILE *fd);
;
; INPUTS:
;   rdi: int c
;   rsi: FILE *fd
;
; OUTPUTS:
;   *ANY REGISTERS OUTPUT*
;
; MODIFIES:
;   *REGISTERS HERE*
;
; NOTES:
;   *NOTES HERE*
;
; =====================================
putc:
    push    rdi ; 1st
    push    rsi ; 2nd

;   move    rdi => rsi
    mov     rsi, rdi
;   pop     rsi => rdi
    pop     rdi

    mov     rdi, rsi ; 1st
    pop     rsi ; 2nd

    ret

; =====================================
; SUBROUTINE: putc
; 
; DESCRIPTION:
;   Writes 1 character to the STDIN.
;
; int putc (int c, FILE *fd);
;
; INPUTS:
;   rdi: int c
;   rsi: FILE *fd
;
; OUTPUTS:
;   *ANY REGISTERS OUTPUT*
;
; MODIFIES:
;   *REGISTERS HERE*
;
; NOTES:
;   NOT IMPLEMENTED!
;
; =====================================
getc:
    ret