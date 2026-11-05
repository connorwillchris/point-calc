section .data
; =====================================
; CONSTANTS
; =====================================

    SYS_READ    equ 0
    SYS_WRITE   equ 1
    SYS_EXIT    equ 60

section .text
    global _read
    global _write
    global _exit

; =====================================
; SUBROUTINE: _read
; 
; DESCRIPTION:
;   Reads a specified amount of bytes, given by rsi.
;
; int _read(unsigned int fd, char *buffer, size_t n);
;
; INPUTS:
;   rdi: File descriptor
;   rsi: Character buffer
;   rdx: Number of bytes to read
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
_read:
    mov rax, SYS_READ
    syscall
    ret

; =====================================
; SUBROUTINE: _write
; 
; DESCRIPTION:
;   Writes a specified amount of bytes to the buffer.
;
; int _write(unsigned int fd, char *buffer, size_t n);
;
; INPUTS:
;   rdi: File descriptor
;   rsi: Character buffer
;   rdx: Number of bytes to write
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
_write:
    mov rax, SYS_WRITE
    syscall
    ret

; =====================================
; SUBROUTINE: _exit
; 
; DESCRIPTION:
;   Exits the program with an error code, specified in
;   exit_code.
;
; _Noreturn void _exit(unsigned char exit_code);
;   
; INPUTS:
;   rdi: exit_code
;
; OUTPUTS:
;   None
;
; MODIFIES:
;   none
;
; NOTES:
;   Exits the program. There is no return in this
;   implementation. You simply `jmp` to this routine.
;
; =====================================
_exit:
    mov rax, SYS_EXIT
    syscall
