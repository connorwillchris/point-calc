section .data
    STDIN       equ 0
    STDOUT      equ 1
    STDERR      equ 2

    global      STDIN
    global      STDOUT
    global      STDERR

section .text
    global      putc
    global      exit
    global      getc ; not implemented!
    global      atoi ; not implemented!

    extern      _read, _write, _exit

; PURPOSE:  This subroutine prints out one
;           character to STDOUT.
;
; INPUT:    rdi: The character to print
;
; OUTPUT:   Nothing
;
; NOTES:    NOTES HERE
;
; VARIABLES:
;           rsi - The character to print
putc:
    push    rsi

    mov     rdi, STDOUT
    mov     rsi, rsp
    mov     rdx, 1
    call    _write

    pop     rsi
    ret

; PURPOSE:  Provides a pretty easy way to exit
;           the program.
;
; INPUT:    rdi: exit code
;
; OUTPUT:   Nothing.
;
; NOTES:    Jumps to _exit, and there is no
;           valid return.
;
; VARIABLES:
;           rdi - The exitcode.
exit:
    jmp     _exit


;   NOT IMPLEMENTED!
getc:
    ret
