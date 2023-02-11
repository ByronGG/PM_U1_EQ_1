TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Hernandez Santos Reyna Margarita
;         Salas Alardin Luis Fernando

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
;tipo de datos = byte, word, dword
variable1_2 byte 10		;1 byte
variable2_2 word 240	;2 byte
variable3_2 dword 300h	;4 byte

.code

	main2 PROC
	
		;Lógica del Programa
	
		;Registros de proposito general: EAX, EBX, ECX, EDX

		;EAX = 32bits
		;E = 16bits AX = 16bits

		;Cada registro de Proposito General, cuenta con la parte "E" (Extend) y su complemento (Ej: AX)
		;La parte extendida, no se puede utilizar independientemente del registro
		;Sin embargo, su complemento, si se puede ser utilizado
		;Si se utiliza AX, entonces se tendra una "Variable" de 16bits
		;A su vez, AX se pueden descomponer en "Parte alte y Parte baja"
		;Cada uno con 8 bits de capacidad
		;Ej: AX seria AH y AL 
		;FF = 255

		; MOV AH, 5
		; MOV AL, 3

		; 00 00 05 00
		; 00 00 05 03

		; AH PARTE ALTA
		;00 00 00 00
		;E      AX

		;10 D =A
		;11 D = B HEX 0-15


		;10H = 16D
		;11H = 17D
		;MOV Destino, origen -> Destino = Origen
		
		MOV AH, 12D
		MOV AX, 43H
		MOV EAX, 1


		exit	
	
	main2 ENDP
	
	END main2