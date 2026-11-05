
    DIVIDE_VAL      equ 6
    SHIFT           equ 5

section .text
    global divide

; =====================================
; SUBROUTINE: divide
; 
; DESCRIPTION:
;   Divides the value in rdi by 6. Returns the value in rax.
;   
; INPUTS:
;   rdi: The dividend or the number to be divided
;        by 6.
;
; OUTPUTS:
;   rax
;
; MODIFIES:
;   rax, rdi
;
; NOTES:
;   None.
;
; =====================================
divide:
    mov     rax, rdi
    mov     rdi, DIVIDE_VAL

; multiply which will do the division
    mul     rdi

; now, we shift right by the shift amount
    shr     rax, SHIFT

    ret
