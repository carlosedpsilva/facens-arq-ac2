.386
.model flat, stdcall
.stack 4096

ExitProcess proto, dwExitCode:dword

.data
    S DD 0
    Tabela DB 10 dup (?)

.code
main proc
    mov eax, 0
    mov ecx, 1
    mov edx, 0
    mov bl, Tabela

    volta:
        mov dl, [ebx]
        add al, dl
        inc ebx
        inc ecx
        cmp ecx, 10
        jnz volta
        mov [S], eax

        invoke ExitProcess, 0

main endp
end main