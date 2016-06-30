.model large
.stack 100h 
.386
bufferLen 	equ 16
nameLen		equ 40


.data
opk00	db "ADD       $",1
opk01	db "ADD       $",1
opk02	db "ADD       $",1
opk03	db "ADD       $",1
opk04	db "ADD    AL,$",2
opk05	db "ADD    AX,$",2
opk06	db "PUSH    ES$",3
opk07	db "POP     ES$",3
opk08	db "OR        $",1
opk09	db "OR        $",1
opk0A	db "OR        $",1
opk0B	db "OR        $",1
opk0C	db "OR     AL,$",2
opk0D	db "OR     AX,$",2
opk0E	db "PUSH    CS$",3
opk0F	db "POP     CS$",3

opk10	db "ADC       $",1
opk11	db "ADC       $",1
opk12	db "ADC       $",1
opk13	db "ADC       $",1
opk14	db "ADC    AL,$",2
opk15	db "ADC    AX,$",2
opk16	db "PUSH    SS$",3
opk17	db "POP     SS$",3
opk18	db "SBB       $",1
opk19	db "SBB       $",1
opk1A	db "SBB       $",1
opk1B	db "SBB       $",1
opk1C	db "SBB    AL,$",2
opk1D	db "SBB    AX,$",2
opk1E	db "PUSH DS   $",3
opk1F	db "POP DS    $",3

opk20	db "AND       $",1
opk21	db "AND       $",1
opk22	db "AND       $",1
opk23	db "AND       $",1
opk24	db "AND    AL,$",2
opk25	db "AND    AX,$",2
opk26	db "ES:	      $",3
opk27	db "DAA       $",3
opk28	db "SUB       $",1
opk29	db "SUB       $",1
opk2A	db "SUB       $",1
opk2B	db "SUB       $",1
opk2C	db "SUB    AL,$",2
opk2D	db "SUB    AX,$",2
opk2E	db "CS:       $",3
opk2F	db "DAS       $",3

opk30	db "XOR       $",1
opk31	db "XOR       $",1
opk32	db "XOR       $",1
opk33	db "XOR       $",1
opk34	db "XOR    AL,$",2
opk35	db "XOR    AX,$",2
opk36	db "SS:       $",3
opk37	db "AAA       $",3
opk38	db "CMP       $",1
opk39	db "CMP       $",1
opk3A	db "CMP       $",1
opk3B	db "CMP       $",1
opk3C	db "CMP    AL,$",2
opk3D	db "CMP    AX,$",2
opk3E	db "DS:       $",3
opk3F	db "AAS       $",3

opk40	db "INC	AX    $",3
opk41	db "INC	CX    $",3
opk42	db "INC	DX    $",3
opk43	db "INC	BX    $",3
opk44	db "INC	SP    $",3
opk45	db "INC	BP    $",3
opk46	db "INC	SI    $",3
opk47	db "INC	DI    $",3
opk48	db "DEC	AX    $",3
opk49	db "DEC	CX    $",3
opk4A	db "DEC	DX    $",3
opk4B	db "DEC	BX    $",3
opk4C	db "DEC	SP    $",3
opk4D	db "DEC	BP    $",3
opk4E	db "DEC	SI    $",3
opk4F	db "DEC	DI    $",3

opk50	db "PUSH AX   $",3
opk51	db "PUSH CX   $",3
opk52	db "PUSH DX   $",3
opk53	db "PUSH BX   $",3
opk54	db "PUSH SP   $",3
opk55	db "PUSH BP   $",3
opk56	db "PUSH SI   $",3
opk57	db "PUSH DI   $",3
opk58	db "POP	AX    $",3
opk59	db "POP	CX    $",3
opk5A	db "POP	DX    $",3
opk5B	db "POP	BX    $",3
opk5C	db "POP	SP    $",3
opk5D	db "POP	BP    $",3
opk5E	db "POP	SI    $",3
opk5F	db "POP	DI    $",3

opk60	db "PUSHA     $",99
opk61	db "POPA      $",99
opk62	db "BOUND     $",99
opk63	db "ARPL      $",99
opk64	db "FS:       $",99
opk65	db "GS:       $",99
opk66	db "          $",99
opk67	db "          $",99
opk68	db "PUSH      $",99
opk69	db "IMUL      $",99
opk6A	db "PUSH      $",99
opk6B	db "IMUL      $",99
opk6C	db "INSB      $",99
opk6D	db "INS       $",99
opk6E	db "OUTSB     $",99
opk6F	db "OUTS      $",99

opk70	db "JO        $",4
opk71	db "JNO       $",4
opk72	db "JC        $",4
opk73	db "JNC       $",4
opk74	db "JZ        $",4
opk75	db "JNZ       $",4
opk76	db "JNA       $",4
opk77	db "JA        $",4
opk78	db "JS        $",4
opk79	db "JNS       $",4
opk7A	db "JP        $",4
opk7B	db "JNP       $",4
opk7C	db "JL        $",4
opk7D	db "JNL       $",4
opk7E	db "JNG       $",4
opk7F	db "JG        $",4

opk80	db "code ext  $",5
opk81	db "code ext  $",5
opk82	db "code ext  $",5
opk83	db "code ext  $",5
opk84	db "TEST      $",7
opk85	db "TEST      $",7
opk86	db "XCHG      $",7
opk87	db "XCHG      $",7
opk88	db "MOV       $",1
opk89	db "MOV       $",1
opk8A	db "MOV       $",1
opk8B	db "MOV       $",1
opk8C	db "code ext  $",6
opk8D	db "LEA       $",26
opk8E	db "code ext  $",99
opk8F	db "code ext  $",6

opk90	db "NOP       $",3
opk91	db "XCHG AX,CX$",3
opk92	db "XCHG AX,DX$",3
opk93	db "XCHG AX,BX$",3
opk94	db "XCHG AX,SP$",3
opk95	db "XCHG AX,BP$",3
opk96	db "XCHG AX,SI$",3
opk97	db "XCHG AX,DI$",3
opk98	db "CBW       $",3
opk99	db "CWD       $",3
opk9A	db "CALL  FAR $",9
opk9B	db "WAIT      $",3
opk9C	db "PUSHF     $",3
opk9D	db "POPF      $",3
opk9E	db "SAHF      $",3
opk9F	db "LAHF      $",3

opkA0	db "MOV	      $",10
opkA1	db "MOV       $",10
opkA2	db "MOV       $",10
opkA3	db "MOV       $",10
opkA4	db "MOVSB     $",3
opkA5	db "MOVSW     $",3
opkA6	db "CMPSB     $",3
opkA7	db "CMPSW     $",3
opkA8	db "TEST   AL,$",2
opkA9	db "TEST   AX,$",2
opkAA	db "STOSB     $",3
opkAB	db "STOSW     $",3
opkAC	db "LODSB     $",3
opkAD	db "LODSW     $",3
opkAE	db "SCASB     $",3
opkAF	db "SCASW     $",3

opkB0	db "MOV    AL $",11 
opkB1	db "MOV    CL $",11
opkB2	db "MOV    DL $",11
opkB3	db "MOV    BL $",11
opkB4	db "MOV    AH $",11
opkB5	db "MOV    CH $",11
opkB6	db "MOV    DH $",11
opkB7	db "MOV    BH $",11
opkB8	db "MOV    AX $",11
opkB9	db "MOV    CX $",11
opkBA	db "MOV    DX $",11
opkBB	db "MOV    BX $",11
opkBC	db "MOV    SP $",11
opkBD	db "MOV    BP $",11
opkBE	db "MOV    SI $",11
opkBF	db "MOV    DI $",11

opkC0	db "          $",99
opkC1	db "          $",99
opkC2	db "RET	NEAR  $",3
opkC3	db "RET	NEAR  $",3
opkC4 	db "LES       $",13
opkC5	db "LDS       $",13
opkC6	db "          $",14
opkC7	db "          $",14
opkC8	db "ENTER     $",99
opkC9	db "LEAVE     $",99
opkCA	db "RET	FAR   $",3
opkCB	db "RET	FAR   $",3
opkCC	db "INT 3     $",3
opkCD	db "INT       $",15
opkCE	db "INTO      $",3
opkCF	db "IRET      $",3

opkD0	db "          $",16
opkD1	db "          $",16
opkD2	db "          $",16
opkD3	db "          $",16
opkD4	db "AAM       $",17
opkD5	db "AAD       $",17
opkD6	db "SETALC    $",3			
opkD7	db "XLAT      $",3
opkD8	db "ESC       $",18
opkD9	db "ESC       $",18
opkDA	db "ESC       $",18
opkDB	db "ESC       $",18
opkDC	db "ESC       $",18
opkDD	db "ESC       $",18
opkDE	db "ESC       $",18
opkDF	db "ESC       $",18

opkE0	db "LOOPNZ    $",19
opkE1	db "LOOPZ     $",19
opkE2	db "LOOP      $",19
opkE3	db "JCXZ      $",19
opkE4	db "IN        $",20
opkE5	db "IN        $",20
opkE6	db "OUT       $",20
opkE7	db "OUT       $",20
opkE8	db "CALL NEAR $",21
opkE9	db "JMP NEAR  $",21
opkEA	db "JMP FAR   $",9
opkEB	db "JMP SHORT $",19
opkEC	db "IN AL,DX  $",3
opkED	db "IN AX,DX  $",3
opkEE	db "OUT DX,AL $",3
opkEF	db "OUT DX,Ah $",3

opkF0	db "LOCK      $",3
opkF1	db "SMI       $",3
opkF2	db "REPNZ     $",3
opkF3	db "REP/REPZ  $",3
opkF4	db "HLT       $",3
opkF5	db "CMC       $",3
opkF6	db "cod       $",22
opkF7	db "cod       $",22
opkF8	db "CLC       $",3
opkF9	db "STC       $",3
opkFA	db "CLI       $",3
opkFB	db "STI       $",3
opkFC	db "CLD       $",3
opkFD	db "STD       $",3
opkFE	db "code exten$",24
opkFF	db "code exten$",25
  pavCom 		db nameLen dup (0) ; Failo pavadinimas pasibaigiantis nuliu
  pavAsm 		db nameLen dup (0) 
  
  info			db "Karolis Uzdanavicius 6PS grupe",13,10,"Programa konvertuoja masinini koda i asm eilutes",  "$"
  kmsg1 		db "Nurodykite failo pavadinima", 13, 10, "$"
  kmsg2 		db "Failo pavadinimas per ilgas", 13, 10, "$"
  kmsg3 		db "Failo atidaryti nepavyko", 13, 10, "$"
  kmsg4 		db "Nuskaityti failo nepavyko", 13, 10, "$"
  kmsg5 		db "Spausdinimo klaida", 13, 10, "$"
  kmsg6 		db "klaida nuskaitant failu vardus",13,10,"$"
  kmsg7 		db "Nepavyko sukurti failo",13,10,"$"
  
  buffer 		db bufferLen dup ("$") ; Buferis skaitymui
  PirmasB		db 0
  antrasB      	db 0
  prefix		db 0
  prefixa       dw 0
  
  handCom   	dw 0
  handAsm  		dw 0
  
  enteris 		db 13,10,"$"
  nuskaite		dw 0
  panaudoti     dw 0
  
  case 			db 0
  dabarRodo		dw 0
  kombuf 		db bufferLen dup (0)
  binbuf 		db bufferLen dup (0)
  kiekb db 0
  opk db 0
  
prefds db "DS:["
prefss db "SS:["
prefes db "ES:["
prefcs db "CS:["
dvitask db ": "
 
kabl db ", " 
regB db "ALCLDLBLAHCHDHBH"  
regW db "AXCXDXBXSPBPSIDI"
reg db 0
preg db 0  
d db 0
w db 0
s db 0
v db 0  
sr db "ESCSSSDS"
psr db 0
modas db 0
du db 2
baituSkaicius dw 100h

baituSkaiciusBuff db 4 dup(0)
baituKelimobufferis db bufferLen dup(0)
baituKelimoIndeksas db 0

posilgis db 0
p1 db 30h
p2 db 30h
p3 db 30h
p4 db 30h
skliaustas db "]"

neatpazinta db "Neatpazino"

rm00 db "BX+SI BX+DI BP+SI BP+DI SI    DI    !     BX    "
rm01 db"BX+SI+BX+DI+BP+SI+BP+DI+SI+   DI+   BP+   BX+   "
prm db 0
rm db 0
.code
start:
  mov dx, @data
  mov ds, dx
;-------------------------------------------------------------------------------------------------------- 
MOV BX, 81h;parametrai paduoti leidziant programa guli ekstra segmente adresu 0081h
	
ParametruTikrinimas:				;tikrinami parametrai!!!!
	MOV AX, ES:[BX]		;i ax ikeli pirmus 2 baitus (nes ne al) esancius ekstra segmente adresu es bx (lauztiniai skliaustai duoda adresa)
	INC BX				;bx++ 
						
	CMP AL, 13			;jei zmogus paspaude enter, tai soka i "toliau" cmp veikia atimdamas (13 nes soka i al jis is 13, 10)
	JE klaida6			;jump if equal, jei (al-13==0) jz ta pati daro
 	CMP AL, 20h			;20h- tarpas
	JE ParametruTikrinimas			;grizta i tikrinam
	CMP AX, "?/"		;atvirkscia tvarka, nes is pradziu deda i al o po to i ah, tai todel susikeicia tvarka
	JNE ComPavad			
	MOV AX, ES:[BX]		;
	CMP AH, 13			; tikrina ar enter buvo po /?
	JE help
	
ComPavad:
	xor cx,cx
ComTikr:
	cmp Al, 20h			;tarpas
	je 	AsmPavad
	cmp Al,13 			;enter
	je 	klaida6
	cmp Al, 2Eh			;taskas
	je 	ComSaug		
	CMP Al, 61h			;tikrina ar maziau a raides
	JB klaida6
	CMP Al, 7Ah			;ar maziau uz z
	JA klaida6
ComSaug:
	push bx
    mov bx,offset pavCom
	add bx,cx
    mov DS:[bx],al
	pop bx
	
	INC CX
	cmp cx,nameLen
	ja klaida6
	
	MOV AX, ES:[BX]		;i ax ikeli pirmus 2 baitus (nes ne al) esancius ekstra segmente adresu es bx (lauztiniai skliaustai duoda adresa)
	INC BX
	jmp ComTikr
pradziaStop:
jmp pradzia	
AsmPavad:
	xor cx,cx
AsmTikr:
    MOV AX, ES:[BX]		;i ax ikeli pirmus 2 baitus (nes ne al) esancius ekstra segmente adresu es bx (lauztiniai skliaustai duoda adresa)
	INC BX
	
	cmp Al, 20h			;tarpas
	cmp Al, 20h			;tarpas
	je 	AsmTikr
	cmp Al,13 			;enter
	je 	pradziaStop
	cmp Al, 2Eh			;taskas
	je 	AsmSaug		
	CMP Al, 61h			;tikrina ar maziau a raides
	JB klaida6
	CMP Al, 7Ah			;ar maziau uz z
	JA klaida6
AsmSaug:
	push bx
    mov bx,offset pavAsm
	add bx,cx
    mov DS:[bx],al
	pop bx
	
	INC CX
	cmp cx,nameLen
	ja klaida6
	jmp AsmTikr

help:	
	MOV DX, offset info			
	MOV AH, 09h					;spausdinti simboliu eilute i konsole         (02 spausdina 1 simboli)
	INT 21h
	jmp iseiti					;perduoda valdyma, kad ivyktu funkcija
klaida6:
    mov dx, offset kmsg6
    jmp spausdinti_klaida
;----------------------------------------------------------------------------------------------------
sukurtiFaila:
	mov ah, 3Ch ; DOS create file
	mov cx, 0 ; attribute
	mov dx, offset pavAsm ; filename in ASCIIZ
	int 21h
	ret
atidaryti:
	mov ah, 3Dh ; Atidarymo funkcija
	mov al, 1 ; Atidaryti tik skaitymui (0-skaitymui,1 - tik raÅ¡ymui, 2 - skaitymui ir raÅ¡ymui)
	mov dx, offset pavAsm; Pavadinimas
	int 21h
  
	jc klaida3 ; Jei CF nustatytas - Ä¯vyko klaida
	
	mov [handAsm], ax ; IÅ¡sisaugome failo identifikatoriÅ³  
;Atidarytas destination
	mov ah, 3Dh 
	mov al, 0 
	mov dx, offset pavCom
	int 21h
  
	jc klaida3 
  
	mov [handCom], ax   
;Atidarytas OpkList
	ret
klaida7:
	mov dx, offset kmsg7
    jmp spausdinti_klaida
klaida3:
	mov dx, offset kmsg3
	jmp spausdinti_klaida 
;------------------------------------------------------------------------------------------------------
naujasBuffer:
	mov ah, 3Fh ; Skaitymas iÅ¡ failo
	mov bx, [handCom] ; Failo identifikatorius
	mov cx, bufferLen ; Kiek baitÅ³ skaityti
	mov dx, offset buffer ; Ä® kur skaityti
	int 21h
  
	jc klaida4 ; Jei Ä¯vyko klaida
	mov nuskaite,ax
	mov ax,0
	mov panaudoti,ax
	mov ax,offset buffer
	mov dabarRodo,ax
	
	ret
klaida5:
	mov dx, offset kmsg5
	jmp spausdinti_klaida
klaida4:
	mov dx, offset kmsg4
	jmp spausdinti_klaida
	
	
nulis:
mov al,0
	mov prefix,al
	
		mov p1,30h
mov p2,30h
mov p3,30h
mov p4,30h

mov baituKelimoIndeksas, 0
mov modas,0
mov rm,0
mov posilgis,0
mov reg,0
mov prefixa,0
mov prefix,0

mov cx,0
mov bx,offset baituKelimoBufferis
baituKelimoBufferioNulinimas:
mov al,0
inc cx
mov DS:[bx],al
inc bx
cmp cx,16
jne baituKelimoBufferioNulinimas
;------------------------------------------------

eilutesNumeris:
xor ax,ax
xor dx,dx

mov bl,10h
mov ax, baituskaicius
div bl

mov bl, pirmasB
mov pirmasB,al
call hex
mov pirmasB,bl

mov bx, offset baituskaiciusBuff
add bl,3
mov ds:[bx],ah
dec bl
mov ds:[bx],al

mov bl, pirmasB
mov pirmasB,dl
call hex
mov pirmasB,bl

mov bx, offset baituskaiciusBuff
add bl,1
mov ds:[bx],ah
dec bl
mov ds:[bx],al

mov dx,offset baituSkaiciusBuff
mov bx, [handAsm]
mov cx,4
mov ah,40h
int 21h



call dvitaskis

ret

dvitaskis:

mov dx,offset dvitask
mov ah, 40h
mov cx,2
mov bx,[handAsm]
int 21h

ret


;-----------------------------------------------



ret
;=====================================================================================================
 Pradzia:
	call sukurtiFaila
	call atidaryti
main:
	call eilutesNumeris
	call nulis
	call checkbuff
	call prefixCheck
	mov bl, pirmasB
	mov opk,bl
	call opkradimas
	call funkcija
jmp main

opkradimas:
mov ax,12
mul pirmasB
add ax,offset opk00  
mov bx,ax

xor ax,ax
mov ax,ds:[bx+11]

mov case,al
ret

neatpazino:
mov ah,40h
mov dx, offset neatpazinta
mov cx,10
mov bx,[handAsm]
int 21h

call newline

ret


;======================================================================================================	
funkcija:
cmp case,1
je case1
cmp case,2 
je case2
cmp case,3
je case3
cmp case,4
je case4

cmp case,7
je case7

cmp case,11
je case11

cmp case,15
je case4
;cmp case,10
;je case10


jne neatpazino
ret
;================================================================================================================
;FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
case1:
call rastidw
call checkbuff
call rastirmr
call checkposl
call checkpref
call spausdintiBaituKelimas
call spauscase1
call newLine

ret

;FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
spausdintiBaituKelimas:
mov dx,offset baituKelimoBufferis
mov ah, 40h
mov cx,16
mov bx,[handAsm]
int 21h
ret

checkpref:
cmp prefix,0
jnz griztmain

cmp rm,3
jb prefiksasds
cmp rm,5
jb prefiksasss
cmp rm,8
jbe prefiksasds

prefiksasss:
mov prefixa, offset prefss
jmp griztmain

prefiksasds:
mov prefixa,offset prefds

griztmain:
ret


spauscase1:

mov ax,12
mul opk
add ax,offset opk00  
mov bx,ax

mov cx,10
mov dx,ax
mov ah,40h
mov bx,[handAsm]
int 21h     

cmp d,0
jz srmreg
jnz sregrm

sregrm:
call spaus_reg
call kablelis
call spaus_rm
jmp spauscase1pab

srmreg:
call spaus_rm
call kablelis
call spaus_reg 

spauscase1pab:

ret

checkposl:
cmp modas,1
jz modone
cmp modas,2
jz modtwo
cmp modas,0
jz modzero
cmp modas,3
jz grizti

modzero:
cmp rm,6
jz modtwo
jnz grizti

modone:
mov posilgis,1
mov bx, offset p4
call poslinkis
jmp griztiCheckPosl
modtwo:
mov posilgis,2
mov bx, offset p4
call poslinkis
jmp griztiCheckPosl

grizti: 
mov posilgis,0
griztiCheckPosl:


ret

;FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
case2:

call rastidw
cmp w,1
jz case2posilgis2
mov posilgis,1
jmp case2testi

case2posilgis2:
mov posilgis,2

case2testi:
mov bx, offset p4
call poslinkis

call spaus_case2

ret
;FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rastirmr:
xor ax,ax
mov al,pirmasB
mov rm,0
mov cx,0

daroRm:
mov ah,0
div du
push ax
mov al,ah
mov ah,0
shl ax,cl
inc cl
add rm,al
pop ax
cmp cl,3
jnz daroRm
;----------
mov reg,0
mov cx,0
daroReg:
mov ah,0
div du
push ax
mov al,ah
mov ah,0
shl ax,cl
inc cl
add reg,al
pop ax
cmp cl,3
jnz daroReg
;-----------------
mov modas,0
mov cx,0
daromod:
mov ah,0
div du
push ax
mov al,ah
mov ah,0
shl ax,cl
inc cl
add modas,al
pop ax
cmp cl,2
jnz daromod
ret

ret

rastidw:
mov bl,2
xor ax,ax
mov al,pirmasb
div bl
mov w,ah

mov ah,0
div bl
mov d,ah

ret

hex:
push bx
xor ax,ax
mov al,pirmasB

mov bl,16
div bl
cmp al,10
jb paverstisk
jmp paverstiraide
paverstisk:
add al,30h
jmp testipavsk
paverstiraide:
add al,55
testipavsk:
cmp ah,10
jb paverstisk2
jmp paverstiraide2
paverstisk2:
add ah,30h
jmp testipavsk2

paverstiraide2:
add ah,55
testipavsk2:


pop bx
ret
;FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF

case3:
call spausdintiBaituKelimas
mov ax,12
mul opk
add ax,offset opk00  
mov bx,ax

mov cx,10
mov dx,ax
mov ah,40h
mov bx,[handAsm]
int 21h   
call newline
ret
;FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF

case4:
mov posilgis,1
mov bx, offset p4
call poslinkis

call spaus_case2

ret

;FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF

case7:


call case1

ret
;FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
case11:


xor ax,ax
mov al,pirmasb
div du
mov ah,0
div du
mov ah,0
div du
mov ah,0
div du
mov w,ah



cmp w,0
jz posilgis111

mov posilgis,2
mov bx, offset p4
call poslinkis
call spaus_case2
jmp spaus_case11

posilgis111:
mov posilgis,1
mov bx, offset p4
call poslinkis
call spaus_case2

spaus_case11:



ret



poslinkis:
push bx
call checkbuff 
pop bx
call hex
mov ds:[bx],ah
dec bx
mov ds:[bx],al
dec bx
dec posilgis
cmp posilgis, 0
ja poslinkis


ret
;ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
spaus_reg:

cmp w,0
jz fun_regB
jnz fun_regW

fun_regb: mov dx, offset regB
jmp testiregrm

fun_regW: mov dx, offset regW

testiregrm:

xor ax,ax
mov ax,2
mul reg
add dx,ax

mov cx,2
mov ah,40h
mov bx,[handAsm]
int 21h  

ret
;ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
spaus_rm:



cmp modas,0
jz rmmod0
cmp modas,1
jz rmmod1
cmp modas,2
jz rmmod1

cmp w,0
jz fun_rmB
jnz fun_rmW

fun_rmb: mov dx, offset regB
jmp testirm

fun_rmW: mov dx, offset regW

testirm:

xor ax,ax
mov ax,2
mul rm
add dx,ax

mov cx,2
mov ah,40h
mov bx,[handAsm]
int 21h 

jmp rmpab

rmmod0:
mov dx, offset rm00
cmp rm,6
jz tiesiogadresas
jmp rmmod0t
rmmod1:
mov dx, offset rm01
rmmod0t:
xor ax,ax
mov ax,6
mul rm
add dx,ax
push dx

mov dx, prefixa
mov cx,4
mov ah,40h
mov bx,[handAsm]
int 21h 

pop dx
mov cx,6
mov ah,40h
mov bx,[handAsm]
int 21h 

cmp modas,0
jz rmSpausIskart

mov dx, offset p1
mov cx,4
mov ah,40h
mov bx,[handAsm]
int 21h 

rmSpausIskart:

mov dx, offset skliaustas
mov cx,1
mov ah,40h
mov bx,[handAsm]
int 21h 


 

jmp rmpab

tiesiogadresas:

mov dx, offset p1
mov cx,4
mov ah,40h
mov bx,[handAsm]
int 21h 

rmpab:
ret
;sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
;sssssssssssssssssssssssssssssssssssssssssssssssssssssssss
spaus_case2:
call spausdintiBaituKelimas
mov ax,12
mul opk
add ax,offset opk00  
mov bx,ax

mov cx,10
mov dx,ax
mov ah,40h
mov bx,[handAsm]
int 21h   

mov dx, offset kabl
mov cx,2
mov ah,40h
mov bx,[handAsm]
int 21h 

mov dx, offset p1
mov cx,4
mov ah,40h
mov bx,[handAsm]
int 21h 


call newline
ret


;ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
kablelis:

mov dx, offset kabl
mov cx,2
mov ah,40h
mov bx,[handAsm]
int 21h 
ret

prefixCheck:
	cmp pirmasB, 26h ;ES CS SS DS
	je prefixES
	cmp pirmasB, 2Eh
	je prefixCS
	cmp pirmasB, 36h
	je prefixSS
	cmp pirmasB, 3Eh
	je prefixDS
ret
prefixES:

mov prefixa, offset prefes
ret
prefixCS:
mov prefixa, offset prefcs 
ret
prefixSS:
mov prefixa, offset prefss
ret
prefixDS:
mov prefixa, offset prefds
ret
spausdinti:
mov ax,12
mul opk
add ax,offset opk00  
mov bx,ax

mov cx,11
mov dx,ax
mov ah,40h
mov bx,[handAsm]
int 21h     

         
call newLine

ret

newLine:
mov dx,offset enteris
mov cx,2
mov ah,40h
mov bx,[handAsm]
int 21h
ret

checkBuff:
	mov ax,panaudoti
	cmp nuskaite,ax
	ja checkBuff2
	call naujasBuffer	
checkBuff2:
	call skaitytiB
	cmp nuskaite,0
	je uzdaryti_ir_iseiti
	ret
	
skaitytiB:
mov si,dabarRodo
mov ax,ds:si
mov pirmasB,al
mov antrasB,ah
call BaituKelimas
inc baituSkaicius
inc panaudoti
inc dabarRodo
ret

BaituKelimas:
mov bl,pirmasB
call hex
mov pirmasB,bl
mov bx, offset baitukelimobufferis
add bl,baituKelimoIndeksas
mov ds:[bx],al
inc baituKelimoIndeksas
inc bx
mov ds:[bx],ah
inc baituKelimoIndeksas
ret

spausdinti_klaida:
	mov ah, 9
	int 21h
uzdaryti_ir_iseiti:
	mov ah, 3eh ; Uždaryti failą
	mov bx, [handCom]
	int 21h
;uzdaro com faila
	mov ah, 3eh ; Uždaryti failą
	mov bx, [handAsm]
	int 21h
;uzdaro isvedima
iseiti:
  mov ax, 4C00h
  int 21h

end start