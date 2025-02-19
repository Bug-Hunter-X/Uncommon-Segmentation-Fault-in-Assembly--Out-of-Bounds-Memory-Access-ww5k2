section .data
array dd 1, 2, 3, 4, 5 ; Example array
arraySize equ $-array ; Calculate the size of the array

section .text
global _start

_start:
    mov ecx, 2 ; Example index
    cmp ecx, arraySize/4 ; Check the bound of the array
jge error_handler; jump if ecx >= arraySize/4
    mov ebx, array ; ebx points to the base of the array
    mov eax, [ebx + ecx*4] ; Access the array element
    ; ... rest of the code ...
    jmp exit_program

error_handler:
    ; Handle the error appropriately (e.g., print an error message and exit)
    ; ... error handling code ...

exit_program:
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80