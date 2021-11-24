    section .data
        i dd 0
        j dd 0
    section .text

global bubble_sort

bubble_sort:
    enter 0,0
    mov edx,[ebp+8] ;vetor 
    mov ecx,[ebp+12] ;tamanho 
    push ebx
    push eax
    ;Registrador de auxilio
    mov ebx,0 
    mov eax,0 

    for_i: ;for(i = 1; i <= tam; i++)
        mov dword[j], 0
        for_j: ;for(j = 0; j < tam - 1; j++)
            mov ebx, dword[j]
            mov eax, [edx + ebx*4] ; eax = vetor[j]
            mov ebx, [edx + ebx*4 + 4] ;ebx = vetor[j + 1]
            cmp ebx, eax
            jnb .inc_j
            ;swap
            push ecx
            mov ecx, dword[j]
            mov [edx + ecx*4], ebx
            mov [edx + ecx*4 + 4], eax
            pop ecx
            ;incrementar j
            .inc_j:
                inc dword[j]
                mov ebx, ecx
                dec ebx
                cmp dword[j], ebx
                jne for_j
        inc dword[i]
        mov ebx, ecx
        cmp dword[i], ecx
        jne for_i
    pop eax
    pop ebx
    leave