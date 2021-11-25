.386
.model flat, stdcall
.stack 4096

INCLUDE Irvine32.inc

ExitProcess proto, dwExitCode: DWORD

.data
varA DD 10
varB DD 20
varC DD 1

.code
main proc
mov eax, varA
cmp eax, varB
jl output
jmp halt

output:
mov eax, 0

halt:
mov edx, eax
call WriteInt
call CrLf
invoke ExitProcess, 0

main endp
end main
