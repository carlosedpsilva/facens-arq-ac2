
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

INCLUDE Irvine32.inc

.data
    msg db "facens", 0

.code
main proc
    mov edx, offset msg
    call WriteString

    invoke ExitProcess, 0
main endp
end main
