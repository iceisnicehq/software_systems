.MODEL SMALL
.186
.STACK 100h  ; Define stack size

.DATA        ; Start of data segment
    data_segment DB 12h, 23h, 34h, 45h, 56h, 67h, 78h, 89h, 9Ah, 0ABh, 0BCh, 0CDh, 0DEh, 0EFh, 0F0h, 20h
               DB 01h, 02h, 03h, 04h, 05h, 06h, 07h, 08h, 09h, 0Ah, 0Bh, 0Ch, 0Dh, 0Eh, 0Fh, 00h
               DB 11h, 12h, 13h, 14h, 15h, 16h, 17h, 18h, 19h, 1Ah, 1Bh, 1Ch, 1Dh, 1Eh, 1Fh, 10h
               DB 21h, 22h, 23h, 24h, 25h, 26h, 27h, 28h, 29h, 2Ah, 2Bh, 2Ch, 2Dh, 2Eh, 2Fh, 20h
               DB 31h, 32h, 33h, 34h, 35h, 36h, 37h, 38h, 39h, 3Ah, 3Bh, 3Ch, 3Dh, 3Eh, 3Fh, 30h
               DB 41h, 42h, 43h, 44h, 45h, 46h, 47h, 48h, 49h, 4Ah, 4Bh, 4Ch, 4Dh, 4Eh, 4Fh, 40h
               DB 51h, 52h, 53h, 54h, 55h, 56h, 57h, 58h, 59h, 5Ah, 5Bh, 5Ch, 5Dh, 5Eh, 5Fh, 50h
               DB 61h, 62h, 63h, 64h, 65h, 66h, 67h, 68h, 69h, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh, 6Fh, 60h
.CODE        ; Start of code segment
MAIN:
    MOV AX, @DATA     ; Load data segment into AX
    MOV DS, AX        ; Move AX into DS
    add ax, 2
    mov es, ax
    sub ax, 020dh
    mov ss, ax
    mov ax, 7A13h
    push ax
    popf
    mov ax, 071ach
    mov bx, 00000h
    mov cx, 001eh
    mov dx, 0f7aeh
    mov si, 0010h
    mov di, 0020h
    mov bp, 0000h
    mov sp, 0294eh
    int 3

mov bx, -13567   ;1
mov ax, -512     ;2
mov cl, es:[18]  ;3
mov bh, al
mov [di+6], sp
mov dx, 32457
mov ds:[bx+di-24], dx
mov bp, 7932
mov ah, es:[bx-9]
mov dx, ax
mov cx, es:[bx-28]
mov si, [bp+13]
mov ax, cx
mov cl, dh
mov dx, -17890
mov ch, dl
mov ds:[12h], ax
mov [bx+di-20], ah
mov bx, es:[di+14]
mov dh, bl

    MOV AX, 4C00h     ; Exit program
    INT 21h
END MAIN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.MODEL SMALL
.386
.STACK 100h  ; Define stack size

.DATA        ; Start of data segment
    data_segment DB 12h, 23h, 34h, 45h, 0cdh, 2fh, 0fch, 0feh, 09ah, 0abh, 0bch, 0cdh, 02fh, 0fch, 0feh, 0ffh
               DB 02fh, 0fch, 0feh, 0ffh, 02fh, 0fch, 0feh, 0ffh, 02fh, 0fch, 0feh, 0ffh, 02fh, 0fch, 0feh, 0ffh
               DB 02fh, 0fch, 0feh, 0ffh, 02fh, 0fch, 0feh, 0ffh, 02fh, 0fch, 0feh, 0ffh, 02fh, 0fch, 0feh, 0ffh
               DB 21h, 22h, 23h, 24h, 02fh, 02fh, 02fh, 02fh, 02fh, 02fh, 02fh, 02fh, 02fh, 02fh, 0fch, 0feh, 0ffh
               DB 45h, 34h, 45h, 45h, 45h, 56h, 67h, 9ah, 0abh, 0bch, 0cdh, 0abh, 0bch, 0bch, 0cdh, 09ah
               DB 02fh, 9ah, 0abh, 9ah, 0abh, 0bch, 0cdh, 48h, 49h, 4ah, 4bh, 4ch, 4dh, 4eh, 4fh, 40h
               DB 51h, 52h, 53h, 54h, 55h, 56h, 57h, 58h, 59h, 5Ah, 5Bh, 5Ch, 5Dh, 5Eh, 5Fh, 50h
               DB 61h, 62h, 63h, 64h, 65h, 66h, 67h, 68h, 69h, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh, 6Fh, 60h
.CODE        ; Start of code segment
MAIN:
    MOV AX, @DATA     ; Load data segment into AX
    MOV DS, AX        ; Move AX into DS
    add ax, 2
    mov es, ax
    sub ax, 020fh
    mov ss, ax
    mov ax, 7202h
    push ax
    popf
    MOV EAX, 0FC2FCD45h    ; Load EAX with FC2FCD45h
    MOV EBX, 00000009h     ; Load EBX with 00000009h
    MOV ECX, 0FC2F0015h    ; Load ECX with FC2F0015h
    MOV EDX, 0453445FFh    ; Load EDX with 453445FFh
    MOV ESI, 0FC2FCD47h    ; Load ESI with FC2FCD47h
    MOV EDI, 0000003Bh     ; Load EDI with 0000003Bh
    MOV EBP, 00002117h     ; Load EBP with 00002117h
    MOV ESP, 00002952h     ; Load ESP with 00002952h
    int 3

mov ecx, -57342           ; Randomized value for ecx
mov es:[ebx+24], ecx      ; Offset kept within 128 bytes
mov ds:[ebx+edi-18], ecx  ; Offset adjusted to stay within 128 bytes
mov eax, -149512          ; Randomized value for eax
mov ecx, eax
mov eax, ds:[ebx+5]       ; Offset within 128 bytes
mov ecx, [ebx+1]          ; Small offset within 128 bytes
mov esi, ecx
mov edx, 203412           ; Randomized value for edx
mov es:[edi-6], ecx       ; Offset adjusted to stay within 128 bytes
mov ebp, 9254             ; Randomized value for ebp
mov ecx, 154782           ; Randomized value for ecx
mov ds:[6], eax           ; Offset within range
mov [ebp], esi
mov eax, 85217            ; Randomized value for eax
mov ecx, [ebx+22]         ; Offset within 128 bytes
mov esi, eax
mov eax, ds:[7]           ; Offset adjusted within range
mov esi, eax
mov edx, [edi+9]          ; Offset within 128 bytes


    MOV AX, 4C00h     ; Exit program
    INT 21h
END MAIN
