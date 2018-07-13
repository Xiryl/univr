#		+------------------------------------------------+
#		|           FILENAME: controller_ASM.s           |
#		+------------------------------------------------+
#		| UNIVERSITA DEGLI STUDI DI VERONA - INFORMATICA |
#		| 8 LUGIO 2017 A.A. 16/17                        |
#		| CHIARANI FABIO                                 |
#		| MATRICOLA VR408541                             |
#		+------------------------------------------------+
#
# 	SCHEMA DELLO STACK BUFFERIN
# 	+----+-------+----+------+
# 	| /n |  pH   | pH |  pH  | [4B]
# 	+----+-------+----+------+
# 	|  , | RESET |  , | INIT | [4B]
# 	+----+-------+----+------+
#
#		SCHEMA DELLO STACK BUFFEROUT
#		+-----+-----+-----+----+
#		| /n  | VLV | VLV | ,  | [4B]
#		+-----+-----+-----+----+
#		| NCK | NCK |   , | ST | [4B]
#		+-----+-----+-----+----+
#
#		SCHEMA OTTENIMENTO DATO DAL PUNTATORE
# 	#+---------+---------+---------+---------+
# 	| 7(%esi) | 6(%esi) | 5(%esi) | 4(%esi) |
# 	+---------+---------+---------+---------+
# 	| 3(%esi) | 2(%esi) | 1(%esi) | (%esi)  |
# 	+---------+---------+---------+---------+
#
# 	Leggenda caratteri ASCII usati:
#		#+-----+-----+
#		| Num | Val |
#		+-----+-----+
#		| $44 | ,   |
#		| $45 | -   |
#		| $48 | 0   |
#		| $49 | 1   |
#		| $54 | 6   |
#		| $56 | 8   |
#		| $65 | A   |
#		| $66 | B   |
#		| $78 | N   |
#		| $83 | S   |
#		+-----+-----+

.section .data
.section .text
.global controllerASM
.type controllerASM, @function # Func Name

controllerASM:

		#  Salvo lo stato di EBP, ESP ED EBX
		pushl %ebp
		movl %esp, %ebp

		# Ottengo dallo stack l'indirizzo dei puntatori dei due buffer
		movl 8(%esp), %esi 	# indirizzo puntatore sorgente (bufferin)
		movl 12(%esp), %edi # indirizzo puntatore destinazione (bufferout)

		pushl %ebx		# Salvo lo stato di EBX
		movb $10, %bl #	Preparo bl per le divisioni
	 	xorb %dl, %dl #	Azzero i registri
		xorb %cl, %cl #	Azzero i registri

		init:	# INIZIO
					# IF (INIT == 0)
					cmpb $48, (%esi) 	# Controllo se in [INIT|1] c'e 0
					je reset 			  	# Salto all'etichetta reset se c'e 0

					# IF (reset == 1)
					cmpb $49, 2(%esi) # Controllo se in [RESET|1] c'e 1
					je reset					# Salto all'etichetta reset se c'e 1

					# IF (PH[3] == 1)
					cmpb $49, 4(%esi) # Se il 3^ val. e' 1 (i.e. 185, 1 e' il 3^ val)
					jge basico				# Se e' >= 1 allora setto [ST|1] = B

					# IF( PH[2] < 6 )
					cmpb $54, 5(%esi) # Controllo se il pH e' minore di 6x
					jl acido					# Se si, setto [ST|1] = A

					# IF( PH[2] < 8 )
					cmpb $56, 5(%esi)	# Controllo se 2^ val. e' > o < di 8
					jl neutro					# Se e' < 8 allora setto [ST|1] = N
					jg basico					# Se e' > 8 allora setto [ST|1] = B

					cmpb $49, 6(%esi) # Se arriva qua vuol dire che e' = 8, Controllo
					jge basico				# se la 1^ cifra e' >=1. Se si [ST|1] = B

					movb $78, (%edi)	# Se no, per esclusione setto [ST|1] = N

		goto:	cmpb (%edi), %dl	# Controllo se il vecchio stato e' = all'attuale
					jne statiNONuguali		# Se si, salta a 'statiNONuguali'

					addb $1, %cl			# 	Se gli stati sono uguali
					movzb %cl, %ax		# 	incremento il contatore
					movb $10, %bl			# 	e stampo il nck su 2 char di out
					div %bl
					addb $48, %ah
					movb %ah, 3(%edi)
					xorb %ah, %ah
					div %bl
					addb $48, %ah
					movb %ah, 2(%edi)

		cmpb $4, %cl			# Controllo se sono al 5^ ciclo di clock
						jg checkValvole		# Se si, controlo di aprire delle valvole
						movb $45, 5(%edi)	# Se no non apro valvole: SET -
						movb $45, 6(%edi)	# Se no non apro valvole: SET -

		movb $44, 1(%edi)	# SET ,
						movb $44, 4(%edi)	# SET ,
						movb $10, 7(%edi)	# SET \n
						movb (%edi), %dl	# Aggiorno lo stato attuale
					 	addl $8, %esi			# Passo a due linee dopo nel puntatore
					 	addl $8, %edi			# Passo a due linee dopo nel puntatore

						cmpb $0, (%esi)		# Controllo eof
						je end						# Termina
						jne init					# Cicla

						# L'etichetta di reset mette in out [-,--,--]
		reset:	movb $45, (%edi) 	# SET -
						movb $44, 1(%edi)	# SET ,
						movb $45, 2(%edi)	# SET -
						movb $45, 3(%edi)	# SET -
						movb $44, 4(%edi)	# SET ,
						movb $45, 5(%edi)	# SET -
						movb $45, 6(%edi)	# SET -
						movb $10, 7(%edi)	# SET \n
						movb (%edi), %dl
						addl $8, %esi
						addl $8, %edi
						xorb %cl, %cl
						cmpb $0, (%esi)
						je end
						jmp init

		basico: movb $66, (%edi) 	# SET [ST|1] = B
						jmp goto					# Ritorna al flusso principale

		acido:	movb $65, (%edi) 	# SET [ST|1] = A
						jmp goto					# Ritorna al flusso principale

		neutro:	movb $78, (%edi) 	# SET [ST|1] = N
						jmp goto					# Ritorna al flusso principale

		statiNONuguali:						xorb %cl, %cl			# Se no, esegue questo codice:
							movzb %cl, %ax		#	Azzero il contatore
							movb $10, %bl			#
							div %bl						#
							addb $48, %ah			#
							movb %ah, 3(%edi)	# Divido cl per poterlo rappresentare
							xorb %ah, %ah			# con due caratteri asci
							div %bl						#
							addb $48, %ah			#
							movb %ah, 2(%edi)	#
							cmpb $4, %cl			# Controllo se sono al 5^ ciclo di clock
							cmpb $4, %cl			# Controllo se sono al 5^ ciclo di clock
											jg checkValvole		# Se si, controlo di aprire delle valvole
											movb $45, 5(%edi)	# Se no non apro valvole: SET -
											movb $45, 6(%edi)	# Se no non apro valvole: SET -
											movb $44, 1(%edi)	# SET ,
															movb $44, 4(%edi)	# SET ,
															movb $10, 7(%edi)	# SET \n
															movb (%edi), %dl	# Aggiorno lo stato attuale
														 	addl $8, %esi			# Passo a due linee dopo nel puntatore
														 	addl $8, %edi			# Passo a due linee dopo nel puntatore

															cmpb $0, (%esi)		# Controllo eof
															je end						# Termina
															jne init					# Cicla




		openBS:	movb $66, 5(%edi)	# SET [VLV|2] = A
						movb $83, 6(%edi)	# SET [VLV|2] = S
						movb $44, 1(%edi)	# SET ,
										movb $44, 4(%edi)	# SET ,
										movb $10, 7(%edi)	# SET \n
										movb (%edi), %dl	# Aggiorno lo stato attuale
									 	addl $8, %esi			# Passo a due linee dopo nel puntatore
									 	addl $8, %edi			# Passo a due linee dopo nel puntatore

										cmpb $0, (%esi)		# Controllo eof
										je end						# Termina
										jne init					# Cicla

		openAS:	movb $65, 5(%edi)	# SET [VLV|2] = B
						movb $83, 6(%edi)	# SET [VLV|2] = S
						movb $44, 1(%edi)	# SET ,
										movb $44, 4(%edi)	# SET ,
										movb $10, 7(%edi)	# SET \n
										movb (%edi), %dl	# Aggiorno lo stato attuale
									 	addl $8, %esi			# Passo a due linee dopo nel puntatore
									 	addl $8, %edi			# Passo a due linee dopo nel puntatore

										cmpb $0, (%esi)		# Controllo eof
										je end						# Termina
										jne init					# Cicla

		checkValvole: cmpb $66, (%edi)	# Se lo stato corrente e' B
									je openAS					# Apre la valvola AS
									cmpb $65, (%edi)	# Se lo stato corrente e' A
									je openBS					# Apre la valvola BS
									movb $45, 5(%edi)	# SET [VLV|2] = -
									movb $45, 6(%edi)	# SET [VLV|2] = -
									movb $44, 1(%edi)	# SET ,
													movb $44, 4(%edi)	# SET ,
													movb $10, 7(%edi)	# SET \n
													movb (%edi), %dl	# Aggiorno lo stato attuale
												 	addl $8, %esi			# Passo a due linee dopo nel puntatore
												 	addl $8, %edi			# Passo a due linee dopo nel puntatore

													cmpb $0, (%esi)		# Controllo eof
													je end						# Termina
													jne init					# Cicla

		# Ripristino lo stato dei registri
		end:	popl %ebx
					movl %ebp, %esp
					popl %ebp

ret
