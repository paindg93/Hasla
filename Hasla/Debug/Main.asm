; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.61030.0 

	TITLE	C:\Users\paind_000\Dysk Google\Grzesiek\Dokumenty\STUDIA\JA\Projekt\Hasla\Hasla\Main.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	_startTime
PUBLIC	_endTime
PUBLIC	_resultTime
PUBLIC	_endTimefull
PUBLIC	_startTimefull
PUBLIC	_CPUInfo
PUBLIC	_bSSE41Extensions
PUBLIC	_bSSE42Extensions
PUBLIC	_nLogicalProcessors
PUBLIC	_nFeatureInfo
PUBLIC	_bMultithreading
_BSS	SEGMENT
_startTime DD	01H DUP (?)
_endTime DD	01H DUP (?)
_resultTime DD	01H DUP (?)
_endTimefull DD	01H DUP (?)
_startTimefull DD 01H DUP (?)
_bSSE41Extensions DB 01H DUP (?)
	ALIGN	4

_bSSE42Extensions DB 01H DUP (?)
	ALIGN	4

_nLogicalProcessors DD 01H DUP (?)
_nFeatureInfo DD 01H DUP (?)
_bMultithreading DB 01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
COMM	_a:BYTE:064H
_DATA	ENDS
_DATA	SEGMENT
_CPUInfo DD	0ffffffffH
	ORG $+12
_DATA	ENDS
PUBLIC	_main
PUBLIC	??_C@_0BO@KNFLOMCB@Logical?5Processor?5Count?5?$DN?5?$CFd?6?$AA@ ; `string'
PUBLIC	??_C@_0BE@LJFMILAK@?7SSE4?41?5Extensions?6?$AA@	; `string'
PUBLIC	??_C@_0BE@MFDNKONB@?7SSE4?42?5Extensions?6?$AA@	; `string'
PUBLIC	??_C@_0M@MNBCEFAH@wyjscie?4txt?$AA@		; `string'
EXTRN	__imp__getchar:PROC
EXTRN	__imp__printf_s:PROC
EXTRN	_startProgram:PROC
EXTRN	_startProgramWithThreads:PROC
EXTRN	_chartowchar:PROC
EXTRN	__RTC_CheckEsp:PROC
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
;	COMDAT ??_C@_0M@MNBCEFAH@wyjscie?4txt?$AA@
CONST	SEGMENT
??_C@_0M@MNBCEFAH@wyjscie?4txt?$AA@ DB 'wyjscie.txt', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BE@MFDNKONB@?7SSE4?42?5Extensions?6?$AA@
CONST	SEGMENT
??_C@_0BE@MFDNKONB@?7SSE4?42?5Extensions?6?$AA@ DB 09H, 'SSE4.2 Extension'
	DB	's', 0aH, 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BE@LJFMILAK@?7SSE4?41?5Extensions?6?$AA@
CONST	SEGMENT
??_C@_0BE@LJFMILAK@?7SSE4?41?5Extensions?6?$AA@ DB 09H, 'SSE4.1 Extension'
	DB	's', 0aH, 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BO@KNFLOMCB@Logical?5Processor?5Count?5?$DN?5?$CFd?6?$AA@
CONST	SEGMENT
??_C@_0BO@KNFLOMCB@Logical?5Processor?5Count?5?$DN?5?$CFd?6?$AA@ DB 'Logi'
	DB	'cal Processor Count = %d', 0aH, 00H		; `string'
CONST	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File c:\users\paind_000\dysk google\grzesiek\dokumenty\studia\ja\projekt\hasla\hasla\main.c
;	COMDAT _main
_TEXT	SEGMENT
tv83 = -208						; size = 4
tv76 = -208						; size = 4
tv69 = -208						; size = 4
_i$ = -8						; size = 4
_argc$ = 8						; size = 4
_argv$ = 12						; size = 4
_main	PROC						; COMDAT

; 5    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 208				; 000000d0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-208]
	mov	ecx, 52					; 00000034H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 6    : 	int i=0;

	mov	DWORD PTR _i$[ebp], 0

; 7    : 	//strcpy(a,argv[2]);
; 8    : 	/*
; 9    : 	wchar_t * test=L"ALE MA KOTA";
; 10   : 	char * testresult=wchartochar(test);
; 11   : 	getchar(); */
; 12   : 	
; 13   : 	//nLogicalProcessors = 1;
; 14   : 	//nLogicalProcessors = 32;
; 15   : 	bSSE41Extensions = (CPUInfo[2] & 0x80000) || 0;

	mov	eax, 4
	shl	eax, 1
	mov	ecx, DWORD PTR _CPUInfo[eax]
	and	ecx, 524288				; 00080000H
	jne	SHORT $LN9@main
	xor	edx, edx
	jne	SHORT $LN9@main
	mov	DWORD PTR tv69[ebp], 0
	jmp	SHORT $LN10@main
$LN9@main:
	mov	DWORD PTR tv69[ebp], 1
$LN10@main:
	mov	al, BYTE PTR tv69[ebp]
	mov	BYTE PTR _bSSE41Extensions, al

; 16   : 	bSSE42Extensions = (CPUInfo[2] & 0x100000) || 0;

	mov	eax, 4
	shl	eax, 1
	mov	ecx, DWORD PTR _CPUInfo[eax]
	and	ecx, 1048576				; 00100000H
	jne	SHORT $LN11@main
	xor	edx, edx
	jne	SHORT $LN11@main
	mov	DWORD PTR tv76[ebp], 0
	jmp	SHORT $LN12@main
$LN11@main:
	mov	DWORD PTR tv76[ebp], 1
$LN12@main:
	mov	al, BYTE PTR tv76[ebp]
	mov	BYTE PTR _bSSE42Extensions, al

; 17   : 	nFeatureInfo = CPUInfo[3];

	mov	eax, 4
	imul	eax, 3
	mov	ecx, DWORD PTR _CPUInfo[eax]
	mov	DWORD PTR _nFeatureInfo, ecx

; 18   : 	bMultithreading = (nFeatureInfo & (1 << 28)) || 0;

	mov	eax, DWORD PTR _nFeatureInfo
	and	eax, 268435456				; 10000000H
	jne	SHORT $LN13@main
	xor	ecx, ecx
	jne	SHORT $LN13@main
	mov	DWORD PTR tv83[ebp], 0
	jmp	SHORT $LN14@main
$LN13@main:
	mov	DWORD PTR tv83[ebp], 1
$LN14@main:
	mov	dl, BYTE PTR tv83[ebp]
	mov	BYTE PTR _bMultithreading, dl

; 19   : 	if (bMultithreading && (nLogicalProcessors > 0))

	movzx	eax, BYTE PTR _bMultithreading
	test	eax, eax
	je	SHORT $LN6@main
	cmp	DWORD PTR _nLogicalProcessors, 0
	jle	SHORT $LN6@main

; 20   : 		printf_s("Logical Processor Count = %d\n", nLogicalProcessors);

	mov	esi, esp
	mov	eax, DWORD PTR _nLogicalProcessors
	push	eax
	push	OFFSET ??_C@_0BO@KNFLOMCB@Logical?5Processor?5Count?5?$DN?5?$CFd?6?$AA@
	call	DWORD PTR __imp__printf_s
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN6@main:

; 21   : 	if (bSSE41Extensions)

	movzx	eax, BYTE PTR _bSSE41Extensions
	test	eax, eax
	je	SHORT $LN5@main

; 22   : 		printf_s("\tSSE4.1 Extensions\n");

	mov	esi, esp
	push	OFFSET ??_C@_0BE@LJFMILAK@?7SSE4?41?5Extensions?6?$AA@
	call	DWORD PTR __imp__printf_s
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN5@main:

; 23   : 	if (bSSE42Extensions)

	movzx	eax, BYTE PTR _bSSE42Extensions
	test	eax, eax
	je	SHORT $LN4@main

; 24   : 		printf_s("\tSSE4.2 Extensions\n");

	mov	esi, esp
	push	OFFSET ??_C@_0BE@MFDNKONB@?7SSE4?42?5Extensions?6?$AA@
	call	DWORD PTR __imp__printf_s
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN4@main:

; 25   : 	if(argc==3)

	cmp	DWORD PTR _argc$[ebp], 3
	jne	SHORT $LN3@main

; 26   : 	{
; 27   : 		//startProgram(chartowchar(argv[1]),argv[2]);
; 28   : 		startProgramWithThreads(chartowchar(argv[1]),argv[2]);

	mov	eax, 4
	shl	eax, 1
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+eax]
	push	edx
	mov	eax, 4
	shl	eax, 0
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+eax]
	push	edx
	call	_chartowchar
	add	esp, 4
	push	eax
	call	_startProgramWithThreads
	add	esp, 8
	jmp	SHORT $LN2@main
$LN3@main:

; 29   : 	}
; 30   : 	else if(argc==2)

	cmp	DWORD PTR _argc$[ebp], 2
	jne	SHORT $LN2@main

; 31   : 	{
; 32   : 		startProgram(chartowchar(argv[1]),"wyjscie.txt");

	push	OFFSET ??_C@_0M@MNBCEFAH@wyjscie?4txt?$AA@
	mov	eax, 4
	shl	eax, 0
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+eax]
	push	edx
	call	_chartowchar
	add	esp, 4
	push	eax
	call	_startProgram
	add	esp, 8

; 33   : 		//resultTime=(endTime-startTime);
; 34   : 		//printf("Execution time for %d units: %d\n", nLogicalProcessors, resultTime);-
; 35   : 		//getchar();
; 36   : 		startProgramWithThreads(chartowchar(argv[1]),"wyjscie.txt");

	push	OFFSET ??_C@_0M@MNBCEFAH@wyjscie?4txt?$AA@
	mov	eax, 4
	shl	eax, 0
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+eax]
	push	edx
	call	_chartowchar
	add	esp, 4
	push	eax
	call	_startProgramWithThreads
	add	esp, 8
$LN2@main:

; 37   : 
; 38   : 	}
; 39   : 	getchar();

	mov	esi, esp
	call	DWORD PTR __imp__getchar
	cmp	esi, esp
	call	__RTC_CheckEsp

; 40   : 	
; 41   : 	return 0;

	xor	eax, eax

; 42   : 
; 43   : 	/*zmieniono parametr dodano lib do projektu - zsynchronizowane 
; 44   : 	wyniki do jednej tablicy, trzeba posortowac, mierzeni czasu wykonania algorytmu
; 45   : 	poususwac  w start program i w main testy reczne 
; 46   : 	dodac czyszczenie pamieci
; 47   : 	*/
; 48   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 208				; 000000d0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
END
