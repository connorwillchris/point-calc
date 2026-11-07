section .data
    s_intro         db      "Hello, world!", 0x0a, 0x00

section .bss
    buf             resb    16
    BUFLEN          equ     16

section .text
;   entry point
    global _start

;   global constants
    extern STDIN
    extern STDOUT

;   LIB subroutines
    extern getc
    extern putc
    extern divide
    extern exit

_start:

;   rdi: the exit code
    mov     rdi, 0
    jmp     exit
