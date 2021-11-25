.386
.model flat, stdcall
.stack 4096

INCLUDE Irvine32.inc

ExitProcess proto, dwExitCode:dword

.data
array DB 10 dup (10, 7, 5, 6, 1, 4, 2, 3, 5, 8, 9)
menor DD 0

.code
main proc
xor eax, eax
xor edx, edx
xor esi, esi

mov ecx, 9          ; move o valor 9 para o acumulador
lea ebx, array      ; lê o endereço efetivo do array

volta:
mov al, [ebx + esi] ; carrega valor ao acumulador
cmp esi, 0          ; verifica se o índice é 0
je atribuir         ; desvia para "atribuir" se o índice é 0 
inc esi             ; incrementa o índice
cmp eax, menor      ; verifica se o valor atual é menor que "menor"
jl atribuir         ; desvia para "atribuir" se o valor atual é menor
cmp esi, ecx		; verifica se o o índice atual é 9
jne volta			; desvia para "volta" se o primeiro índice não é 9

invoke ExitProcess, 0

atribuir:
mov menor, eax		; move o valor atual para "menor"
cmp esi, 0          ; verifica se o índice é 0
je incrementar		; desvia para "atribuir" se o índice é 0 
jmp volta           ; desvia para "volta"

incrementar:
inc esi             ; incrementa o índice
jmp volta           ; desvia para "volta"

main endp
end main
