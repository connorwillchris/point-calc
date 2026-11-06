section .data
; =====================================
; CONSTANTS
; =====================================

    SYS_READ    equ 0
    SYS_WRITE   equ 1
    SYS_EXIT    equ 60

section .text
    global      _read
    global      _write
    global      _exit

; PURPOSE:  The read syscall for linux x86_64.
;
; INPUT:    rdi: The file-descriptor
;           rsi: The character buffer
;           rdx: The number of bytes to read
;
; OUTPUT:   Nothing
;
; NOTES:    Only for linux-x86_64
;
; VARIABLES:
;           rax - The syscall number
_read:
    mov rax, SYS_READ
    syscall
    ret

; PURPOSE:  The write syscall for linux x86_64.
;
; INPUT:    rdi: The file-descriptor
;           rsi: The character buffer
;           rdx: The number of bytes to write
;
; OUTPUT:   Nothing
;
; NOTES:    Only for linux-x86_64
;
; VARIABLES:
;           rax - The syscall number
_write:
    mov rax, SYS_WRITE
    syscall
    ret

; PURPOSE:  The exit syscall for linux x86_64.
;
; INPUT:    rdi: The exit code
;
; OUTPUT:   Nothing
;
; NOTES:    Only for linux-x86_64. Exits the
;           program without returning. Use the
;           jmp instruction when executing this
;           subroutine.
;
; VARIABLES:
;           rax - The syscall number
_exit:
    mov rax, SYS_EXIT
    syscall
