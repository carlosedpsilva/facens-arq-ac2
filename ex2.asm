.386
.model flat, stdcall
.stack 4096

ExitProcess proto, dwExitCode:dword

.data
varA DD 3
varB DD -15
varC DD 12
varD DD 4
delta DD ?

.code
main proc
mov eax, varD
mul varA
mul varC
mov delta, eax
mov eax, varB
mul varB
sub eax, delta
mov delta, eax

invoke ExitProcess, 0

main endp
end main
