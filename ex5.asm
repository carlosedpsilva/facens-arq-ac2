
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

INCLUDE Irvine32.inc

.data
igual DD 0
STR1 byte "FACENS", 0
STR2 byte "FACENSD", 0

.code
main proc
mov esi, 0
mov eax, lengthof STR1
cmp eax, lengthof STR2
jne halt
mov ecx, eax
xor eax, eax

volta:
lea ebx, STR1
mov al, [ebx + esi]
lea ebx, STR2
cmp al, [ebx + esi]
jne halt
inc esi
cmp esi, ecx
jne volta

output:
mov eax, 1

halt:
invoke ExitProcess, 0

main endp
end main
