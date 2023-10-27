section .data
    index dd 0

section .text
    global bonus

bonus:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov eax, [ebp + 8]	; x
    mov ebx, [ebp + 12]	; y
    mov ecx, [ebp + 16] ; board

    ;; DO NOT MODIFY
    ;; FREESTYLE STARTS HERE
    mov edx, eax; edx = x
    cmp edx, 0; if (x <= 0) {
    jg between0and2
        mov edx, ebx; edx = y
        cmp edx, 0; if (y > 0) {
        jle check_right_1
            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            inc edx; edx ++;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            sub eax, 1; eax -= 1
            mov edx, ecx; edx = board[1]
            add edx, 4; edx = board[0]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            mov [edx], esi; board[0] = (1 << ((x + 1) * 8 + y - 1));
            pop eax; eax = x;
        ;}
check_right_1:
        mov edx, ebx; edx = x
        cmp edx, 7; if (y < 7) {
        jge sfarsit
            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            inc edx; edx ++;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            add eax, 1; eax += 1
            mov edx, ecx; edx = board[1]
            add edx, 4; edx = board[0]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            add [edx], esi; board[0] = (1 << ((x + 1) * 8 + y + 1));
            pop eax; eax = x;
            jmp sfarsit
        ;}
    ;}

between0and2:
    mov edx, eax
    cmp edx, 2
    jg between2and4
    mov edx, ebx; edx = y
        cmp edx, 0; if (y > 0) {
        jle check_right_2
            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            inc edx; edx ++;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            sub eax, 1; eax -= 1
            mov edx, ecx; edx = board[1]
            add edx, 4; edx = board[0]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            mov [edx], esi; board[0] = (1 << ((x + 1) * 8 + y - 1));
            pop eax; eax = x;

            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            dec edx; edx --;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            sub eax, 1; eax -= 1
            mov edx, ecx; edx = board[1]
            add edx, 4; edx = board[0]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            add [edx], esi; board[0] = (1 << ((x - 1) * 8 + y - 1));
            pop eax; eax = x;
        ;}
check_right_2:
        mov edx, ebx; edx = x
        cmp edx, 7; if (y < 7) {
        jge sfarsit
            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            inc edx; edx ++;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            add eax, 1; eax += 1
            mov edx, ecx; edx = board[1]
            add edx, 4; edx = board[0]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            add [edx], esi; board[0] = (1 << ((x + 1) * 8 + y + 1));
            pop eax; eax = x;

            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            dec edx; edx --;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            add eax, 1; eax += 1
            mov edx, ecx; edx = board[1]
            add edx, 4; edx = board[0]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            add [edx], esi; board[0] = (1 << ((x - 1) * 8 + y + 1));
            pop eax; eax = x;
            jmp sfarsit
        ;}
    ;}

; check_right:
    

between2and4:
    mov edx, eax
    cmp edx, 4
    jg between4and6
    mov edx, ebx; edx = y
        cmp edx, 0; if (y > 0) {
        jle check_right_3
            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            inc edx; edx ++;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            sub eax, 1; eax -= 1
            mov edx, ecx; edx = board[1]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            mov [edx], esi; board[1] = (1 << ((x + 1) * 8 + y - 1));
            pop eax; eax = x;

            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            dec edx; edx --;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            sub eax, 1; eax -= 1
            mov edx, ecx; edx = board[1]
            add edx, 4; edx = board[0]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            add [edx], esi; board[0] = (1 << ((x - 1) * 8 + y - 1));
            pop eax; eax = x;
        ;}
check_right_3:
        mov edx, ebx; edx = x
        cmp edx, 7; if (y < 7) {
        jge sfarsit
            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            inc edx; edx ++;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            add eax, 1; eax += 1
            mov edx, ecx; edx = board[1]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            add [edx], esi; board[1] = (1 << ((x + 1) * 8 + y + 1));
            pop eax; eax = x;

            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            dec edx; edx --;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            add eax, 1; eax += 1
            mov edx, ecx; edx = board[1]
            add edx, 4; edx = board[0]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            add [edx], esi; board[0] = (1 << ((x - 1) * 8 + y + 1));
            pop eax; eax = x;
            jmp sfarsit

between4and6:
    mov edx, eax
    cmp edx, 6
    jg Seven
    mov edx, ebx; edx = y
        cmp edx, 0; if (y > 0) {
        jle check_right_4
            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            inc edx; edx ++;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            sub eax, 1; eax -= 1
            mov edx, ecx; edx = board[1]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            mov [edx], esi; board[1] = (1 << ((x + 1) * 8 + y - 1));
            pop eax; eax = x;

            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            dec edx; edx --;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            sub eax, 1; eax -= 1
            mov edx, ecx; edx = board[1]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            add [edx], esi; board[1] = (1 << ((x - 1) * 8 + y - 1));
            pop eax; eax = x;
        ;}
check_right_4:
        mov edx, ebx; edx = x
        cmp edx, 7; if (y < 7) {
        jge sfarsit
            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            inc edx; edx ++;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            add eax, 1; eax += 1
            mov edx, ecx; edx = board[1]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            add [edx], esi; board[1] = (1 << ((x + 1) * 8 + y + 1));
            pop eax; eax = x;

            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            dec edx; edx --;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            add eax, 1; eax += 1
            mov edx, ecx; edx = board[1]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            add [edx], esi; board[1] = (1 << ((x - 1) * 8 + y + 1));
            pop eax; eax = x;
            jmp sfarsit
Seven:
    mov edx, eax; edx = x`
    cmp edx, 7; if (x <= 0) {
    jg sfarsit
        mov edx, ebx; edx = y
        cmp edx, 0; if (y > 0) {
        jle check_right_5
            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            dec edx; edx ++;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            sub eax, 1; eax -= 1
            mov edx, ecx; edx = board[1]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            mov [edx], esi; board[1] = (1 << ((x + 1) * 8 + y - 1));
            pop eax; eax = x;
        ;}
check_right_5:
        mov edx, ebx; edx = x
        cmp edx, 7; if (y < 7) {
        jge sfarsit
            mov edx, eax; edx = x
            push eax; Salvez pe stiva eax
            dec edx; edx ++;
            mov eax, 8; eax = 8;
            imul eax, edx; eax = (x + 1) * 8
            add eax, ebx; eax += y
            add eax, 1; eax += 1
            mov edx, ecx; edx = board[1]
            mov esi, 1; esi = 1
            push ecx
            mov cl, al
            shl esi, cl
            pop ecx
            add [edx], esi; board[1] = (1 << ((x + 1) * 8 + y + 1));
            pop eax; eax = x;
            jmp sfarsit
        ;}
    ;}  


sfarsit:
    ;; FREESTYLE ENDS HERE
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY

;Am scris codul in C si m-am ajutat de el pentru a scris cod in asm:

; #include <stdio.h>
; #include <stdlib.h>

; int main()
; {
;     int board_1 = 0, board_0 = 0;
;     int x,y;
;     scanf("%d %d", &x, &y);
;     if (x <= 0) {
;         if(y > 0)
;             board_1 |= (1 << ((x + 1) * 8 + y - 1));
;         if(y < 7)
;             board_1 |= (1 << ((x + 1) * 8 + y + 1));
;     } else if (x <= 2){
;         if(y > 0) {
;             board_1 |= (1 << ((x + 1) * 8 + y - 1));
;             board_1 |= (1 << ((x - 1) * 8 + y - 1));
;         }
;         if(y < 7){
;             board_1 |= (1 << ((x + 1) * 8 + y + 1));
;             board_1 |= (1 << ((x - 1) * 8 + y + 1));
;         }
;     } else if(x <= 4) {
;         if(y > 0) {
;             board_0 |= (1 << ((x + 1) * 8 + y - 1));
;             board_1 |= (1 << ((x - 1) * 8 + y - 1));
;         }
;         if(y < 7){
;             board_0 |= (1 << ((x + 1) * 8 + y + 1));
;             board_1 |= (1 << ((x - 1) * 8 + y + 1));
;         }
;     } else if(x <= 6) {
;         if(y > 0) {
;             board_0 |= (1 << ((x + 1) * 8 + y - 1));
;             board_0 |= (1 << ((x - 1) * 8 + y - 1));
;         }
;         if(y < 7){
;             board_0 |= (1 << ((x + 1) * 8 + y + 1));
;             board_0 |= (1 << ((x - 1) * 8 + y + 1));
;         }
;     } else if (x <= 7) {
;         if(y > 0) {
;             board_0 |= (1 << ((x - 1) * 8 + y - 1));
;         }
;         if(y < 7){
;             board_0 |= (1 << ((x - 1) * 8 + y + 1));
;         }  
;     }
;     unsigned long long bitboard = ((unsigned long long) board_0 << 32) | (unsigned long long) board_1;
;     for (int row = 7; row >= 0; row--) {
;         for (int col = 0; col < 8; col++) {

;             if (bitboard & (1ULL << (row*8 + col))) {
;                 printf("%d ", 1);
;             } else {
;                 printf("%d ", 0);
;             }
;         }
;         printf("\n");
;     }
;     printf("board_0: %d\n", board_0);
;     printf("board_1: %d\n", board_1);


; }