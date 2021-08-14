@asar 1.81

; Modify these as needed
hirom						; The memory map of the ROM. Change this if the ROM uses a different memory map, or else the output may be wrong.
!ROMOffset = $F90D00				; The ROM offset to begin disassembly from.
!DoTwoPassesFlag = 1				; If 1, the script will run twice, with the purpose of generating labels that appear before the branch that points to it. Turning this on may slow down disassembly speed, however.
!MaxBytes = 34560				; The maximum amount of bytes that will be read at a time. Setting this lower/higher will speed up/slow down disassembly.

; Don't touch these
!Input1 = $00
!Input2 = $00
!Output = ""
!ByteCounter = 0
!LoopCounter = 0
!Pass = 0
!CurrentOffset = 0

macro GetOpcode()
	!Input1 #= read1(!ROMOffset+!ByteCounter)
	;!Input1 #= !LoopCounter
	!ByteCounter #= !ByteCounter+1
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readbyte(Input)
	!<Input> #= read1(!ROMOffset+!ByteCounter)
	;!<Input> = $01
	!ByteCounter #= !ByteCounter+1
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readword(Input)
	!<Input> #= read2(!ROMOffset+!ByteCounter)
	;!<Input> = $0123
	!ByteCounter #= !ByteCounter+2
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro PrintLabel(Address)
if defined("ROM_<Address>") == 1
	if !ROM_<Address> == 1
		print ""
	endif
	print "DATA_",hex(!ROMOffset+!ByteCounter, 6),":"
endif
endmacro

macro DefineLabelAfterNoPassOpcode(Address)
	!ROM_<Address> = 1
endmacro

macro HandleJump(Address)
if defined("ROM_<Address>") == 0
	!ROM_<Address> = 0
endif
endmacro

macro Op0()
	%readword(Input2)
if !Pass == 1
	print "	db $",hex(!Input1, 2)," : dw $",hex(!Input2, 4)
endif
endmacro

macro Op128()
	%readbyte(Input1)
if !Pass == 1
	print "	db $80"
	if !Input1 == 0
		!CurrentOffset #= !CurrentOffset-1
		print ""
		print "	%FREE_BYTES($",hex(!CurrentOffset, 6),", 1, $00)"
		!CurrentOffset #= !CurrentOffset+1
	else
		!ByteCounter #= !ByteCounter-1
		!CurrentOffset #= !ROMOffset+!ByteCounter
	endif
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op129()
	%readword(Input1)
if !Pass == 1
	print "	db $81 : dw CODE_B9",hex(!Input1, 4)
endif
endmacro

macro Op130()
	%readword(Input1)
	!Input2 #= !Input1+($F9<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	db $82 : dw DATA_F9",hex(!Input1, 4)
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op131()
	%readword(Input1)
if !Pass == 1
	print "	db $83 : dw CODE_B9",hex(!Input1, 4)
endif
endmacro

macro Op132()
	%readword(Input1)
if !Pass == 1
	print "	db $84 : dw CODE_B9",hex(!Input1, 4)
endif
endmacro

macro Op133()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
if !Pass == 1
	print "	db $85 : db $",hex(!Input1, 2)," : dw $",hex(!Input2, 4),",$",hex(!Input3, 4)
endif
endmacro

macro Op134()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	%readword(Input4)
	%readword(Input5)
if !Pass == 1
	print "	db $86 : db $",hex(!Input1, 2)," : dw $",hex(!Input2, 4),",$",hex(!Input3, 4),",$",hex(!Input4, 4),",$",hex(!Input5, 4)
endif
endmacro

macro Op135()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	%readword(Input4)
if !Pass == 1
	print "	db $87 : db $",hex(!Input1, 2)," : dw $",hex(!Input2, 4),",$",hex(!Input3, 4),",$",hex(!Input4, 4)
endif
endmacro

macro Op136()
	%readword(Input1)
	%readword(Input2)
if !Pass == 1
	print "	db $88 : dw $",hex(!Input1, 4),",$",hex(!Input2, 4)
endif
endmacro

macro Op137()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
if !Pass == 1
	print "	db $89 : db $",hex(!Input1, 2)," : dw $",hex(!Input2, 4),",$",hex(!Input3, 4)
endif
endmacro

macro Op138()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	%readword(Input4)
	%readword(Input5)
if !Pass == 1
	print "	db $8A : db $",hex(!Input1, 2)," : dw $",hex(!Input2, 4),",$",hex(!Input3, 4),",$",hex(!Input4, 4),",$",hex(!Input5, 4)
endif
endmacro

macro Op139()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	%readword(Input4)
if !Pass == 1
	print "	db $8B : db $",hex(!Input1, 2)," : dw $",hex(!Input2, 4),",$",hex(!Input3, 4),",$",hex(!Input4, 4)
endif
endmacro

macro Op140()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
if !Pass == 1
	print "	db $8C : db $",hex(!Input1, 2)," : dw $",hex(!Input2, 4),",$",hex(!Input3, 4)
endif
endmacro

macro Op141()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	%readword(Input4)
if !Pass == 1
	print "	db $8D : db $",hex(!Input1, 2)," : dw $",hex(!Input2, 4),",$",hex(!Input3, 4),",$",hex(!Input4, 4)
endif
endmacro

macro Op142()
	%readword(Input1)
if !Pass == 1
	print "	db $8E : dw $",hex(!Input1, 4)
endif
endmacro

macro Op143()
	%readword(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($F9<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	db $8F : dw CODE_B9",hex(!Input1, 4),",DATA_F9",hex(!Input2, 4)
endif
endmacro

macro Op144()
	%readword(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($F9<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	db $90 : dw CODE_B9",hex(!Input1, 4),",$",hex(!Input2, 4)
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op145()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($F9<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	db $91 : db $",hex(!Input1, 2)," : dw DATA_F9",hex(!Input2, 4)
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op146()
	%readbyte(Input1)
if !Pass == 1
	print "	db $92 : db $",hex(!Input1, 2)
endif
endmacro

macro Op147()
	%readword(Input1)
if !Pass == 1
	print "	db $93 : dw $",hex(!Input1, 4)
endif
endmacro

macro Op148()
	%readbyte(Input1)
if !Pass == 1
	print "	db $94 : db $",hex(!Input1, 2)
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op149()
if !Pass == 1
	print "	Invalid opcode: $",hex(!Input1, 2)
endif
endmacro

org !ROMOffset
if !DoTwoPassesFlag == 1
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		if !Input1 < 128
			%Op0()
		elseif !Input1 > 148
			%Op149()
		else
			%Op!Input1()
		endif
		!LoopCounter #= !LoopCounter+1
	endif
	!LoopCounter #= 0
	!ByteCounter #= 0
endif
	!Pass = 1
while !ByteCounter < !MaxBytes
	%PrintLabel(!CurrentOffset)
	%GetOpcode()
	if !Input1 < 128
		%Op0()
	elseif !Input1 > 148
		%Op149()
	else
		%Op!Input1()
	endif
	!LoopCounter #= !LoopCounter+1
endif

!Input1 #= !ROMOffset+!ByteCounter
print "Disassembly has ended at $",hex(!ROMOffset+!ByteCounter, 6)
