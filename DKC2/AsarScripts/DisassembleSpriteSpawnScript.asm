@asar 1.81

; Modify these as needed
hirom						; The memory map of the ROM. Change this if the ROM uses a different memory map, or else the output may be wrong.
!ROMOffset = $FFDC67				; The ROM offset to begin disassembly from.
!DoTwoPassesFlag = 1				; If 1, the script will run twice, with the purpose of generating labels that appear before the branch that points to it. Turning this on may slow down disassembly speed, however.
!MaxBytes = 8963			; The maximum amount of bytes that will be read at a time. Setting this lower/higher will speed up/slow down disassembly.

; Don't touch these
!Input1 = $00
!Input2 = $00
!Output = ""
!ByteCounter = 0
!LoopCounter = 0
!Pass = 0
!CurrentOffset = 0

macro GetOpcode()
	!Input1 #= read2(!ROMOffset+!ByteCounter)
	;!Input1 #= !LoopCounter
	!ByteCounter #= !ByteCounter+2
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

macro readlong(Input)
	!<Input> #= read3(!ROMOffset+!ByteCounter)
	;!<Input> = $012345
	!ByteCounter #= !ByteCounter+3
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
	print "	dw $",hex(!Input1, 4)," : dw $",hex(!Input2, 4)
endif
endmacro

macro Op128()
if !Pass == 1
	print "	dw $8000"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op129()
	%readword(Input1)
if !Pass == 1
	print "	dw $8100 : dw $",hex(!Input1, 4)
endif
endmacro

macro Op130()
	%readword(Input1)
if !Pass == 1
	print "	dw $8200 : dw $",hex(!Input1, 4)
endif
endmacro

macro Op131()
	%readword(Input1)
	!Input2 #= !Input1+($FF<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	dw $8300 : dw DATA_FF",hex(!Input1, 4)
endif
endmacro

macro Op132()
	%readword(Input1)
if !Pass == 1
	print "	dw $8400 : dw $",hex(!Input1, 4)
endif
endmacro

macro Op133()
	%readword(Input1)
if !Pass == 1
	print "	dw $8500 : dw $",hex(!Input1, 4)
endif
endmacro

macro Op134()
	%readword(Input1)
	%readword(Input2)
if !Pass == 1
	print "	dw $8600 : dw $",hex(!Input1, 4),",$",hex(!Input2, 4)
endif
endmacro

macro Op135()
	%readword(Input1)
	%readword(Input2)
if !Pass == 1
	print "	dw $8700 : dw $",hex(!Input1, 4),",$",hex(!Input2, 4)
endif
endmacro

macro Op136()
if !Pass == 1
	print "	dw $8800"
endif
endmacro

macro Op137()
	%readword(Input1)
	%readword(Input2)
	%readlong(Input3)
	%readbyte(Input4)
if !Pass == 1
	print "	dw $8900 : dw $",hex(!Input1, 4),",$",hex(!Input2, 4)," : dl DATA_",hex(!Input3, 6)," : db $",hex(!Input4, 2)
endif
endmacro

macro Op138()
	%readword(Input1)
	%readword(Input2)
	%readword(Input3)
	%readword(Input4)
	%readword(Input5)
	%readword(Input6)
	%readword(Input7)
	%readword(Input8)
	%readword(Input9)
	%readword(Input10)
	%readword(Input11)
	%readword(Input12)
	%readword(Input13)
if !Pass == 1
	print "	dw $8A00 : dw $",hex(!Input1, 4),",$",hex(!Input2, 4),",$",hex(!Input3, 4),",$",hex(!Input4, 4),",$",hex(!Input5, 4),",$",hex(!Input6, 4),",$",hex(!Input7, 4),",$",hex(!Input8, 4),",$",hex(!Input9, 4),",$",hex(!Input10, 4),",$",hex(!Input11, 4),",$",hex(!Input12, 4),",$",hex(!Input13, 4)
endif
endmacro

macro Op139()
	%readword(Input1)
if !Pass == 1
	print "	dw $8B00 : dw $",hex(!Input1, 4)
endif
endmacro

macro Op140()
	%readword(Input1)
if !Pass == 1
	print "	dw $8C00 : dw $",hex(!Input1, 4)
endif
endmacro

macro Op141()
	%readword(Input1)
if !Pass == 1
	print "	dw $8D00 : dw $",hex(!Input1, 4)
endif
endmacro

macro Op142()
	%readword(Input1)
	%readword(Input2)
	%readlong(Input3)
	%readbyte(Input4)
if !Pass == 1
	print "	dw $8E00 : dw $",hex(!Input1, 4),",$",hex(!Input2, 4)," : dl DATA_",hex(!Input3, 6)," : db $",hex(!Input4, 2)
endif
endmacro

macro Op143()
if !Pass == 1
	print "	Invalid opcode: $",hex(!Input1, 4)
endif
endmacro

org !ROMOffset
if !DoTwoPassesFlag == 1
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		if !Input1/$0100 < 128
			%Op0()
		elseif !Input1/$0100 > 143
			%Op143()
		else
			!Input2 #= !Input1/$0100
			%Op!Input2()
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
	if !Input1/$0100 < 128
		%Op0()
	elseif !Input1/$0100 > 143
		%Op143()
	else
		!Input2 #= !Input1/$0100
		%Op!Input2()
	endif
	!LoopCounter #= !LoopCounter+1
endif

!Input1 #= !ROMOffset+!ByteCounter
print "Disassembly has ended at $",hex(!ROMOffset+!ByteCounter, 6)
