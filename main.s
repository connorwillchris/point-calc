section .data
    s_intro         db      "Hello, world!", 0x0a, 0x00

section .bss
    buf             resb    16
    BUFLEN          equ     16

    CHAR_VAL        equ     'A'

section .text
    global _start

    extern STDIN
    extern STDOUT

    extern getc
    extern putc
    extern divide
    extern end

_start:
    mov     rdi, 11
    call    divide

; end contains the error code in rdi
    mov     rdi, rax
    jmp     end
