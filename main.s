section .data
    s_hello_world:  db "Hello, world!", 10

; some initial value
    value           dq 7

section .bss
    buf             resb    16
    BUFLEN          equ     16

section .text
    global _start

; EXTERNAL VARIABLES
    extern STDIN, STDOUT, STDERR

; external subroutines
; lib subroutines
    extern _read, _write, _exit
; divide
    extern divide

_start:
; get input...!

; divide the value by 6
    mov     rbx, value      ; load the reference to value
    mov     rdi, [rbx]      ; load the value into rdi
    call    divide          ; call the divide subroutine

; value of division is now in rax
exit:
    mov     rdi, rax        ; exit code 0
    jmp     _exit           ; call the exit subroutine
