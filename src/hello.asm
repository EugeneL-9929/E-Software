section .data
    hello db 'Hello, ASSEMBLYLANG!', 0

section .text
    global _start

_start:
    ; sys_write (file descriptor 1, pointer, length)
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; file descriptor: stdout
    mov rsi, hello      ; pointer to the string
    mov rdx, 13         ; length of the string
    syscall

    ; sys_exit (exit code)
    mov rax, 60         ; syscall: exit
    xor rdi, rdi        ; exit code: 0
    syscall