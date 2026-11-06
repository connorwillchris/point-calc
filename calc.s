    %assign VALUE           12
    DIGITS              equ  7 ; 7th bit, or 1 bit for the integer part

%macro POWER 1
    %assign %%result 1

    %rep %1
        %assign %%result %%result*2
    %endrep

    mov     rdi, (%%result / VALUE)
%endmacro

section .text
    global divide

; PURPOSE:  Divides the argument by a constant
;           value.
;
; INPUT:    rdi: The value to divide by 6.
;
; OUTPUT:   rax - The value in unsigned int
;           format
;
; NOTES:    Only for linux-x86_64
;
; VARIABLES:
;           rax - The value that gets returned
divide:
    mov     rax, rdi
;   crappy macro that will expand to (2^5) / 12
;   expands to mov rdi, (2^5 // 12)
    POWER   DIGITS
;   multiply which will do the division
    mul     rdi
;   now, we shift right by the shift amount
    shr     rax, DIGITS
    ret
