; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.60315.1 

	TITLE	C:\Users\Grzegorz\Desktop\Hasla\DLLC\DLLC.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	_nDLLC
_DATA	SEGMENT
COMM	___@@_PchSym_@00@UfhvihUtiavtliaUwvhpglkUszhozUwooxUwvyftUhgwzucOlyq@EA822F409524E031:DWORD
_DATA	ENDS
_BSS	SEGMENT
_nDLLC	DD	01H DUP (?)
_BSS	ENDS
PUBLIC	_compare
PUBLIC	_fnDLLC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _fnDLLC
_TEXT	SEGMENT
_fnDLLC	PROC						; COMDAT
; File c:\users\grzegorz\desktop\hasla\dllc\dllc.c
; Line 12
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 13
	mov	eax, 42					; 0000002aH
; Line 14
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_fnDLLC	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _compare
_TEXT	SEGMENT
_i$ = -8						; size = 4
_word$ = 8						; size = 4
_wordtofind$ = 12					; size = 4
_compare PROC						; COMDAT
; File c:\users\grzegorz\desktop\hasla\dllc\dllc.c
; Line 17
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 18
	mov	DWORD PTR _i$[ebp], -1
$LN6@compare:
; Line 20
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _wordtofind$[ebp]
	movzx	eax, WORD PTR [edx+ecx*2]
	test	eax, eax
	je	SHORT $LN5@compare
; Line 22
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _wordtofind$[ebp]
	movzx	edx, WORD PTR [ecx+eax*2]
	cmp	edx, 32					; 00000020H
	jne	SHORT $LN4@compare
; Line 23
	jmp	SHORT $LN6@compare
	jmp	SHORT $LN3@compare
$LN4@compare:
; Line 24
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _wordtofind$[ebp]
	movzx	edx, WORD PTR [ecx+eax*2]
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _word$[ebp]
	movzx	eax, WORD PTR [ecx+eax*2]
	cmp	edx, eax
	jne	SHORT $LN2@compare
; Line 25
	jmp	SHORT $LN6@compare
; Line 26
	jmp	SHORT $LN3@compare
$LN2@compare:
; Line 27
	xor	eax, eax
	jmp	SHORT $LN7@compare
$LN3@compare:
; Line 28
	jmp	SHORT $LN6@compare
$LN5@compare:
; Line 29
	mov	eax, DWORD PTR _word$[ebp]
$LN7@compare:
; Line 30
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_compare ENDP
_TEXT	ENDS
END
