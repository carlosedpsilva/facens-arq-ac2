.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

INCLUDE Irvine32.inc

.data
STR1 byte "FACENS", 0
STR2 byte ?

.code
main proc
mov esi, 0
mov ecx, lengthof STR1

volta:
mov al, STR1[esi]
mov STR2[esi], al
inc esi
loop volta
mov edx, offset STR2
call WriteString

invoke ExitProcess, 0
main endp
end main
