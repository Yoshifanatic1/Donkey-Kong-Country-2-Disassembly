
macro DKC2_GameSpecificAssemblySettings()
	!ROM_DKC2_U1 = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_DKC2_U2 = $0002							;|
	!ROM_DKC2_E1 = $0004							;|
	!ROM_DKC2_E2 = $0008							;|
	!ROM_DKC2_J1 = $0010							;|
	!ROM_DKC2_J2 = $0020							;|
	!ROM_DKC2_G1 = $0040							;|
	!ROM_DKC2_G2 = $0080							;/

!Define_DKC2_Global_DisableCopyDetection = !FALSE

	%SetROMToAssembleForHack(DKC2_U1, !ROMID)
endmacro

macro DKC2_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_DKC2.asm
	incsrc ../RAM_Map_DKC2.asm
	incsrc ../Routine_Macros_DKC2.asm
	incsrc ../SNES_Macros_DKC2.asm
	%LoadExtraRAMFile("SRAM_Map_DKC2.asm", !ROMID, DKC2)
endmacro

macro DKC2_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_DKC2.asm
	incsrc ../Misc_Defines_DKC2.asm
	incsrc ../SPC700/SPC700_Macros_DKC2.asm
endmacro

macro DKC2_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro DKC2_LoadGameSpecificMSU1Files()
endmacro

macro DKC2_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $02
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 1
	!Define_Global_ROMFrameworkSubSubVer = 2
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Nintendo"
	!Define_Global_DeveloperName = "Rare"
	!Define_Global_ReleaseDate = "December 1995"
	!Define_Global_BaseROMMD5Hash = "98458530599b9dff8a7414a7f20b777a"

	!Define_Global_MakerCode = "01"
	!Define_Global_GameCode = "ADNE"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "DIDDY'S KONG QUEST   "
	!Define_Global_ROMLayout = !ROMLayout_HiROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM_RAM_SRAM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize1 = !ROMSize_4MB
	!Define_Global_ROMSize2 = !ROMSize_0KB
	!Define_Global_SRAMSize = !SRAMSize_2KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $33
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $1202
	!UnusedNativeModeVector1 = $4944				;\ Note: "DIDDY " in ASCII
	!UnusedNativeModeVector2 = $4444				;|
	!NativeModeCOPVector = $2059					;/
	!NativeModeBRKVector = $7003
	!NativeModeAbortVector = $0000
	!NativeModeNMIVector = CODE_80F37D
	!NativeModeResetVector = $0000
	!NativeModeIRQVector = CODE_80F3B9
	!UnusedEmulationModeVector1 = $4944				;\ Note: "DIDDY KONG"  in ASCII
	!UnusedEmulationModeVector2 = $4444				;| Poor Dixie doesn't get a cameo in the header.
	!EmulationModeCOPVector = $2059					;|
	!EmulationModeBRKVector = $4F4B					;|
	!EmulationModeAbortVector = $474E				;/
	!EmulationModeNMIVector = $F800
	!EmulationModeResetVector = CODE_8083F7
	!EmulationModeIRQVector = $7000
endmacro

macro DKC2_LoadROMMap()
	%DKC2BankC0Macros(!BANK_00, !BANK_00)
	%DKC2BankC1Macros(!BANK_01, !BANK_01)
	%DKC2BankC2Macros(!BANK_02, !BANK_02)
	%DKC2BankC3Macros(!BANK_03, !BANK_03)
	%DKC2BankC4Macros(!BANK_04, !BANK_04)
	%DKC2BankC5Macros(!BANK_05, !BANK_05)
	%DKC2BankC6Macros(!BANK_06, !BANK_06)
	%DKC2BankC7Macros(!BANK_07, !BANK_07)
	%DKC2BankC8Macros(!BANK_08, !BANK_08)
	%DKC2BankC9Macros(!BANK_09, !BANK_09)
	%DKC2BankCAMacros(!BANK_0A, !BANK_0A)
	%DKC2BankCBMacros(!BANK_0B, !BANK_0B)
	%DKC2BankCCMacros(!BANK_0C, !BANK_0C)
	%DKC2BankCDMacros(!BANK_0D, !BANK_0D)
	%DKC2BankCEMacros(!BANK_0E, !BANK_0E)
	%DKC2BankCFMacros(!BANK_0F, !BANK_0F)
	%DKC2BankD0Macros(!BANK_10, !BANK_10)
	%DKC2BankD1Macros(!BANK_11, !BANK_11)
	%DKC2BankD2Macros(!BANK_12, !BANK_12)
	%DKC2BankD3Macros(!BANK_13, !BANK_13)
	%DKC2BankD4Macros(!BANK_14, !BANK_14)
	%DKC2BankD5Macros(!BANK_15, !BANK_15)
	%DKC2BankD6Macros(!BANK_16, !BANK_16)
	%DKC2BankD7Macros(!BANK_17, !BANK_17)
	%DKC2BankD8Macros(!BANK_18, !BANK_18)
	%DKC2BankD9Macros(!BANK_19, !BANK_19)
	%DKC2BankDAMacros(!BANK_1A, !BANK_1A)
	%DKC2BankDBMacros(!BANK_1B, !BANK_1B)
	%DKC2BankDCMacros(!BANK_1C, !BANK_1C)
	%DKC2BankDDMacros(!BANK_1D, !BANK_1D)
	%DKC2BankDEMacros(!BANK_1E, !BANK_1E)
	%DKC2BankDFMacros(!BANK_1F, !BANK_2C)
	%DKC2BankEDMacros(!BANK_2D, !BANK_2D)
	%DKC2BankEEMacros(!BANK_2E, !BANK_32)
	%DKC2BankF3Macros(!BANK_33, !BANK_33)
	%DKC2BankF4Macros(!BANK_34, !BANK_34)
	%DKC2BankF5Macros(!BANK_35, !BANK_35)
	%DKC2BankF6Macros(!BANK_36, !BANK_36)
	%DKC2BankF7Macros(!BANK_37, !BANK_37)
	%DKC2BankF8Macros(!BANK_38, !BANK_38)
	%DKC2BankF9Macros(!BANK_39, !BANK_39)
	%DKC2BankFAMacros(!BANK_3A, !BANK_3A)
	%DKC2BankFBMacros(!BANK_3B, !BANK_3B)
	%DKC2BankFCMacros(!BANK_3C, !BANK_3C)
	%DKC2BankFDMacros(!BANK_3D, !BANK_3D)
	%DKC2BankFEMacros(!BANK_3E, !BANK_3E)
	%DKC2BankFFMacros(!BANK_3F, !BANK_3F)
endmacro
