; This will dump the data for an asar patch that will be applied to the USA V1.0 DKC2 ROM. Said patch will dump the hundreds of tables in bank BC pointed to from $BCB602 when applied to the ROM.
; The reason I'm generating a patch and not the tables directly is because of asar limitations. I don't think it's possible for asar to resolve commands through a define while in a print statement.
; Also, it may take a second before asar starts displaying anything on the command line. In addition, you'll need to replace the ' with " in the output patch, otherwise asar won't assemble the patch.
; Also, at $BCB602, there is a large difference between table entries, due to the data being extracted being split by the pointer table.
; Lastly, the last data block will be larger than it should be and must be cleaned up.

!Offset = $BCB602
!EndOffset = $BCD0D0

hirom

macro HandleVariableDefine(ID)
	!Output<ID> #= !Input3
endmacro

macro ClearDefines()
	!Output0 = ""
	!Output1 = ""
	!Output2 = ""
	!Output3 = ""
	!Output4 = ""
	!Output5 = ""
	!Output6 = ""
	!Output7 = ""
	!Output8 = ""
	!Output9 = ""
	!Output10 = ""
	!Output11 = ""
	!Output12 = ""
	!Output13 = ""
	!Output14 = ""
	!Output15 = ""
endmacro

macro HandleLineOfData(ID)
	if <ID> == 0
		!PrintData += "	dw $',hex(!Output<ID>, 4)"
	else
		!PrintData += ",',$',hex(!Output<ID>, 4)"
	endif
endmacro

macro PrintVariableData(Data)
	print "print '	<Data>"
endmacro

!SkipBytes = 0
!LoopCounter = 0
print "hirom"

while !Offset+!LoopCounter < !EndOffset
	!Input1 = read2(!Offset+!LoopCounter)+(!Offset&$FF0000)
	!Input2 = read2(!Offset+!LoopCounter+$02+!SkipBytes)+(!Offset&$FF0000)
	%ClearDefines()
	!ByteCount = 0
	!RowByteCount = 0
	!PrintData = ""
	if !Input2 > !Input1
		print "print 'DATA_',hex(!Input1),':'"
		while !Input2-(!ByteCount+!Input1) != $00
			!Input3 = read2(!Input1+!ByteCount)
			%HandleVariableDefine(!RowByteCount)
			%HandleLineOfData(!RowByteCount)
			!ByteCount #= !ByteCount+2
			!RowByteCount #= !RowByteCount+2
			if !RowByteCount == 16
				%PrintVariableData("!PrintData")
				%ClearDefines()
				!PrintData = ""
				!RowByteCount #= $00
			endif
		endif
		if !RowByteCount != 0
			%PrintVariableData("!PrintData")
		endif
		!LoopCounter #= !LoopCounter+2+!SkipBytes
		!SkipBytes #= 0
		print "print ''"
	else
		!SkipBytes #= !SkipBytes+2
	endif
endif
