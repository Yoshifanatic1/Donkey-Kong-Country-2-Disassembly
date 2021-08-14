
!RAM_DKC2_Global_CurrentMusicLo = $00001C
!RAM_DKC2_Global_CurrentMusicHi = !RAM_DKC2_Global_CurrentMusicLo+$01
!RAM_DKC2_Global_MonoSoundFlag = $00001E

!RAM_DKC2_Global_RNGSeedLo = $00002E
!RAM_DKC2_Global_RNGSeedHi = !RAM_DKC2_Global_RNGSeedLo+$01

; $000094 = BG scroll related

!RAM_DKC2_Global_CurrentLevelLo = $0000D3
!RAM_DKC2_Global_CurrentLevelHi = !RAM_DKC2_Global_CurrentLevelLo+$01

!RAM_DKC2_Global_OAMBuffer = $000200

!RAM_DKC2_Global_PreviouslyHeldButtonsLoP1 = $000502
!RAM_DKC2_Global_PreviouslyHeldButtonsHiP1 = !RAM_DKC2_Global_PreviouslyHeldButtonsLoP1+$01
!RAM_DKC2_Global_PreviouslyHeldButtonsLoP2 = $000504
!RAM_DKC2_Global_PreviouslyHeldButtonsHiP2 = !RAM_DKC2_Global_PreviouslyHeldButtonsLoP1+$01
!RAM_DKC2_Global_PreviouslyPressedButtonsLoP1 = $000506
!RAM_DKC2_Global_PreviouslyPressedButtonsHiP1 = !RAM_DKC2_Global_PreviouslyPressedButtonsLoP1+$01
!RAM_DKC2_Global_PreviouslyPressedButtonsLoP2 = $000508
!RAM_DKC2_Global_PreviouslyPressedButtonsHiP2 = !RAM_DKC2_Global_PreviouslyPressedButtonsLoP1+$01

!RAM_DKC2_Global_HeldButtonsLo = $00050E
!RAM_DKC2_Global_HeldButtonsHi = !RAM_DKC2_Global_HeldButtonsLo+$01
!RAM_DKC2_Global_PressedButtonsLo = $000510
!RAM_DKC2_Global_PressedButtonsHi = !RAM_DKC2_Global_PressedButtonsLo+$01

!RAM_DKC2_Global_ScreenDisplayRegister = $000512

!RAM_DKC2_Level_ActivePlayerRAMIndexLo = $000593
!RAM_DKC2_Level_ActivePlayerRAMIndexHi = !RAM_DKC2_Level_ActivePlayerRAMIndexLo+$01
; $0005A7 = 16-Bit pointer to the player palette?

!RAM_DKC2_Global_PlayerSelectMenuOptionLo = $00060D
!RAM_DKC2_Global_PlayerSelectMenuOptionHi = !RAM_DKC2_Global_PlayerSelectMenuOptionLo+$01

!RAM_DKC2_FileSelectMenu_CurrentlyHighlightedSelectionLo = $000611
!RAM_DKC2_FileSelectMenu_CurrentlyHighlightedSelectionHi = !RAM_DKC2_FileSelectMenu_CurrentlyHighlightedSelectionLo+$01
; $000613 = Set when saving the game through Wrinkly Kong.

!RAM_DKC2_Global_FrenchTextFlag = $000617

!RAM_DKC2_Krow_RandomFallingEggTimerLo = $000658
!RAM_DKC2_Krow_RandomFallingEggTimerHi = !RAM_DKC2_Krow_RandomFallingEggTimerLo+$01

; $0006AB = Index for what level's overworld arrows to show?

; $0006B5 = Player X position on the map
; $0006B7 = Player Y position on the map

!RAM_DKC2_Level_BackupOfBananaCountLo = $0008BC
!RAM_DKC2_Level_BackupOfBananaCountHi = !RAM_DKC2_Level_BackupOfBananaCountLo+$01
!RAM_DKC2_Global_CurrentLifeCountLo = $0008BE
!RAM_DKC2_Global_CurrentLifeCountHi = !RAM_DKC2_Global_CurrentLifeCountLo+$01
!RAM_DKC2_Global_DisplayedLifeCountLo = $0008C0
!RAM_DKC2_Global_DisplayedLifeCountHi = !RAM_DKC2_Global_DisplayedLifeCountLo+$01

!RAM_DKC2_Global_CurrentBananaCountLo = $00096B
!RAM_DKC2_Global_CurrentBananaCountHi = !RAM_DKC2_Global_CurrentBananaCountLo+$01

!RAM_DKC2_Global_ShowBananaCountTimerLo = $00096F
!RAM_DKC2_Global_ShowBananaCountTimerHi = !RAM_DKC2_Global_ShowBananaCountTimerLo+$01

!RAM_DKC2_NorSpr0028_AirBubbleGenerator_AirbubbleTile = $000921
!RAM_DKC2_NorSpr0028_AirBubbleGenerator_AirbubbleProp = !RAM_DKC2_NorSpr0028_AirBubbleGenerator_AirbubbleTile+$01

; $000A36 = Lock screen in place flag?

!RAM_DKC2_Level_SpriteDataRAM = $000DE2

;$16DC = Another held button mirror?

!RAM_DKC2_Global_Layer1SubXPos = $0017B9
!RAM_DKC2_Global_Layer1XPosLo = !RAM_DKC2_Global_Layer1SubXPos+$01
!RAM_DKC2_Global_Layer1XPosHi = !RAM_DKC2_Global_Layer1SubXPos+$02

;$7E3202 = Related to the overworld level tile sprites.

struct DKC2_Global_OAMBuffer !RAM_DKC2_Global_OAMBuffer
	.XDisp: skip $01
	.YDisp: skip $01
	.Tile: skip $01
	.Prop: skip $01
endstruct align $04

struct DKC2_Global_UpperOAMBuffer !RAM_DKC2_Global_OAMBuffer+$0200
	.Slot: skip $01
endstruct align $01

struct DKC2_Level_SpriteDataRAM $00 ;!RAM_DKC2_Level_SpriteDataRAM
	.SpriteIDLo: skip $01		; $00
	.SpriteIDHi: skip $01		; $01
	skip $01					; $02
	skip $01					; $03
	skip $01					; $04
	.SubXPos: skip $01			; $05
	.XPosLo: skip $01			; $06
	.XPosHi: skip $01			; $07
	skip $01					; $08
	.SubYPos: skip $01			; $09
	.YPosLo: skip $01			; $0A
	.YPosHi: skip $01			; $0B
	skip $01					; $0C
	skip $01					; $0D
	skip $01					; $0E
	skip $01					; $0F
	skip $01					; $10
	skip $01					; $11
	skip $01					; $12
	skip $01					; $13
	skip $01					; $14
	skip $01					; $15
	skip $01					; $16
	skip $01					; $17
	skip $01					; $18
	skip $01					; $19
	.CurrentPoseLo: skip $01	; $1A
	.CurrentPoseHi: skip $01	; $1B
	skip $01					; $1C
	skip $01					; $1D
	skip $01					; $1E
	skip $01					; $1F
	.XSpeedLo: skip $01			; $20
	.XSpeedHi: skip $01			; $21
	skip $01					; $22
	skip $01					; $23
	.YSpeedLo: skip $01			; $24
	.YSpeedHi: skip $01			; $25
	skip $01					; $26
	skip $01					; $27
	skip $01					; $28
	skip $01					; $29
	skip $01					; $2A
	skip $01					; $2B
	skip $01					; $2C
	skip $01					; $2D
	skip $01					; $2E
	skip $01					; $2F
	skip $01					; $30
	skip $01					; $31
	skip $01					; $32
	skip $01					; $33
	skip $01					; $34
	skip $01					; $35
	.CurrentAnimationLo: skip $01					; $36
	.CurrentAnimationHi: skip $01					; $37
	skip $01					; $38
	skip $01					; $39
	skip $01					; $3A
	skip $01					; $3B
	.AnimationScriptIndexLo: skip $01		; $3C
	.AnimationScriptIndexHi: skip $01		; $3D
	skip $01					; $3E
	skip $01					; $3F
	skip $01					; $40
	skip $01					; $41
	skip $01					; $42
	skip $01					; $43
	skip $01					; $44
	skip $01					; $45
	skip $01					; $46
	skip $01					; $47
	skip $01					; $48
	skip $01					; $49
	skip $01					; $4A
	skip $01					; $4B
	skip $01					; $4C
	skip $01					; $4D
	skip $01					; $4E
	skip $01					; $4F
	skip $01					; $50
	skip $01					; $51
	skip $01					; $52
	skip $01					; $53
	skip $01					; $54
	skip $01					; $55
	skip $01					; $56
	skip $01					; $57
	skip $01					; $58
	skip $01					; $59
	skip $01					; $5A
	skip $01					; $5B
	skip $01					; $5C
	skip $01					; $5D
endstruct align $5E
