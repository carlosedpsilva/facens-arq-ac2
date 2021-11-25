.386
.model flat,stdcall
.stack 4096

ExitProcess proto,dwExitCode:dword

.data
    Trab DD 0 
    Tabela DB 10 dup (?)

.code
main proc
    mov eax, 0
    mov ecx, 1
    mov bl, Tabela
    mov esi, 0

    volta:
        mov dl, [ebx + esi]
        add al, dl
        inc esi
        inc ecx
        cmp ecx, 10
        jnz volta
        mov [Trab], eax

invoke ExitProcess,0
main endp
end main