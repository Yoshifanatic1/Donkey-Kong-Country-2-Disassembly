; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

hirom
;!ROMVer = $0000						; Note: This is set within the batch script
!DKC2_U1 = $0001
!DKC2_U2 = $0002
!DKC2_E1 = $0004
!DKC2_E2 = $0008
!DKC2_J1 = $0010
!DKC2_J2 = $0020
!DKC2_G1 = $0040
!DKC2_G2 = $0080

check bankcross off
org $C00000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl DynamicSpriteGFXPointersStart,(DynamicSpriteGFXPointersEnd-DynamicSpriteGFXPointersStart)/$0C
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl UncompressedTilemapsPointersStart,(UncompressedTilemapsPointersEnd-UncompressedTilemapsPointersStart)/$0C
	dl CompressedTilemapsPointersStart,(CompressedTilemapsPointersEnd-CompressedTilemapsPointersStart)/$0C
	dl Map32PointersStart,(Map32PointersEnd-Map32PointersStart)/$0C
	dl LevelDataPointersStart,(LevelDataPointersEnd-LevelDataPointersStart)/$0C
	dl LevelSpritePointersStart,(LevelSpritePointersEnd-LevelSpritePointersStart)/$0C
	dl BananaDataPointersStart,(BananaDataPointersEnd-BananaDataPointersStart)/$0C
	dl PalettesPointersStart,(PalettesPointersEnd-PalettesPointersStart)/$0C
	dl MusicPointersStart,(MusicPointersEnd-MusicPointersStart)/$0C
	dl SoundEffectPointersStart,(SoundEffectPointersEnd-SoundEffectPointersStart)/$0C
	dl BRRPointersStart,(BRRPointersEnd-BRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $C006E1,$C008E1,GFX_Sprite_PuftupSpike,GFX_Sprite_PuftupSpikeEnd
	dl $C008E1,$C00B21,GFX_Sprite_Unknown1,GFX_Sprite_Unknown1End
	dl $C00B21,$C00C01,GFX_Sprite_AirBubbles,GFX_Sprite_AirBubblesEnd
	dl $C00C01,$C00DA1,GFX_Sprite_Sparkles,GFX_Sprite_SparklesEnd
	dl $C00DA1,$C01021,GFX_Sprite_MetalHook,GFX_Sprite_MetalHookEnd
	dl $C01021,$C01421,GFX_Sprite_CannonballPieces,GFX_Sprite_CannonballPiecesEnd
	dl $C01421,$C01741,GFX_Sprite_EggShellPieces1,GFX_Sprite_EggShellPieces1End
	dl $C01741,$C01B21,GFX_Sprite_EggShellPieces2,GFX_Sprite_EggShellPieces2End
	dl $C01B21,$C01F21,GFX_Sprite_Unknown2,GFX_Sprite_Unknown2End
	dl $C01F21,$C02321,GFX_Sprite_SquawksEgg,GFX_Sprite_SquawksEggEnd
	dl $C02321,$C02401,GFX_Sprite_SmallSmokePuff,GFX_Sprite_SmallSmokePuffEnd
	dl $C02401,$C02601,GFX_Sprite_CollectedKONGLetters,GFX_Sprite_CollectedKONGLettersEnd
	dl $E199BE,$E1BF3E,GFX_Layer1_Level_Castle,GFX_Layer1_Level_CastleEnd
	dl $E1BF3E,$E1EFDE,GFX_Layer2_Level_Castle,GFX_Layer2_Level_CastleEnd
	dl $EAA93D,$EAA94D,GFX_Layer3_GlimmersGalleon,GFX_Layer3_GlimmersGalleonEnd
	dl $EC2A29,$EC4749,GFX_Layer1_WebWoodsFog,GFX_Layer1_WebWoodsFogEnd
	dl $ED57EF,$ED5E3F,GFX_Layer3_DialogueFont,GFX_Layer3_DialogueFontEnd
	dl $F30EBB,$F3173B,GFX_Layer3_WindyWellLeaves,GFX_Layer3_WindyWellLeavesEnd
	dl $F321E8,$F36EE8,GFX_Layer2_Level_KrocodileKoreEnergyBeam,GFX_Layer2_Level_KrocodileKoreEnergyBeamEnd
	dl $F36EE8,$F37EE8,GFX_Layer1_SlowRain,GFX_Layer1_SlowRainEnd
	dl $F405A2,$F41592,GFX_Layer3_IceCave,GFX_Layer3_IceCaveEnd
	dl $F41852,$F429D2,GFX_Layer2_KackleHand,GFX_Layer2_KackleHandEnd
	dl $F429D2,$F444D2,GFX_Layer2_KackleHead,GFX_Layer2_KackleHeadEnd
	dl $F50147,$F517C7,GFX_Layer2_SmallLavaBubbles,GFX_Layer2_SmallLavaBubblesEnd
	dl $F517C7,$F51CC7,GFX_Layer2_BeeLarva,GFX_Layer2_BeeLarvaEnd
	dl $F51CC7,$F52087,GFX_Layer2_Bee,GFX_Layer2_BeeEnd
	dl $F52BA7,$F52FC7,GFX_Layer3_ShipDeck,GFX_Layer3_ShipDeckEnd
	dl $F5484A,$F55D4A,GFX_FGBG_AnimatedCastleTiles,GFX_FGBG_AnimatedCastleTilesEnd
	dl $F56C13,$F57D13,GFX_Layer1_FallingLeaves,GFX_Layer1_FallingLeavesEnd
	dl $F641C1,$F661C1,GFX_Layer3_FastRain,GFX_Layer3_FastRainEnd
	dl $F80FA6,$F82106,GFX_Layer1_CopyrightScreen,GFX_Layer1_CopyrightScreenEnd
	dl $FA0000,$FA0360,GFX_Sprite_KleeverBonePiece,GFX_Sprite_KleeverBonePieceEnd
	dl $FA0360,$FA0660,GFX_Sprite_FlyingKrocRoofPieces1,GFX_Sprite_FlyingKrocRoofPieces1End
	dl $FA0660,$FA0A60,GFX_Sprite_BarrelPieces,GFX_Sprite_BarrelPiecesEnd
	dl $FA0A60,$FA0B20,GFX_Layer2_GlimmersGalleonWindowBoards,GFX_Layer2_GlimmersGalleonWindowBoardsEnd
	dl $FA0B20,$FA2720,GFX_Layer1_LostWorldEnergyBeam,GFX_Layer1_LostWorldEnergyBeamEnd
	dl $FA2720,$FA4320,GFX_Layer1_MapKrocodileKore,GFX_Layer1_MapKrocodileKoreEnd
	dl $FA443E,$FA4C3E,GFX_Sprite_SkullMapIcon,GFX_Sprite_SkullMapIconEnd
	;dl $FA5DC1,$FA5FC1,GFX_Sprite_CollectedKONGLetters,GFX_Sprite_CollectedKONGLettersEnd
	dl $FA5FC1,$FA7DC1,GFX_Layer1_AnimatedPirateFlag,GFX_Layer1_AnimatedPirateFlagEnd
	dl $FB0000,$FB0400,GFX_Sprite_DKCoinIcon,GFX_Sprite_DKCoinIconEnd
	dl $FB0400,$FB0800,GFX_Sprite_KremcoinIcon,GFX_Sprite_KremcoinIconEnd
	dl $FB0800,$FB0AE0,GFX_Sprite_ChestPieces,GFX_Sprite_ChestPiecesEnd
	dl $FB0AE0,$FB3420,GFX_Layer2_LargeLavaBubbles1,GFX_Layer2_LargeLavaBubbles1End
	dl $FB3420,$FB64E0,GFX_Layer2_LargeLavaBubbles2,GFX_Layer2_LargeLavaBubbles2End
	dl $FB64E0,$FB67C0,GFX_Sprite_FlyingKrocRoofPieces2,GFX_Sprite_FlyingKrocRoofPieces2End
	dl $FB67C0,$FB6BC0,GFX_Sprite_FlyingKrocRoofPieces3,GFX_Sprite_FlyingKrocRoofPieces3End
	dl $FB6BC0,$FB6FC0,GFX_Sprite_FlyingKrocRoofPieces4,GFX_Sprite_FlyingKrocRoofPieces4End
	dl $FB6FC0,$FB7FC0,GFX_Layer3_Level_Forest,GFX_Layer3_Level_ForestEnd
	dl $FC0000,$FC0660,GFX_Layer1_TheEnd,GFX_Layer1_TheEndEnd
	dl $FC0660,$FC14A0,GFX_Sprite_AreaNameFont,GFX_Sprite_AreaNameFontEnd
	dl $FC14A0,$FC14E0,GFX_Sprite_OverworldArrows,GFX_Sprite_OverworldArrowsEnd
	dl $FC14E0,$FC54E0,GFX_Sprite_MapIcons,GFX_Sprite_MapIconsEnd
	dl $FC54E0,$FC5680,GFX_Sprite_WaterDrop,GFX_Sprite_WaterDropEnd
	dl $FC5680,$FC5900,GFX_Sprite_FlyingKrocRoofPieces5,GFX_Sprite_FlyingKrocRoofPieces5End
	dl $FD88CD,$FD8B4D,GFX_Sprite_HUDNumbers,GFX_Sprite_HUDNumbersEnd
	dl $FD8B4D,$FD8F4D,GFX_Sprite_Bananas,GFX_Sprite_BananasEnd
	dl $FD8F4D,$FD934D,GFX_Sprite_CollectableStar,GFX_Sprite_CollectableStarEnd
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

DynamicSpriteGFXPointersStart:
	dl $C0261F,$C0283F,GFX_Diddy_Run1,GFX_Diddy_Run1End
	dl $C02859,$C02A99,GFX_Diddy_Run2,GFX_Diddy_Run2End
	dl $C02AB7,$C02CD7,GFX_Diddy_Run3,GFX_Diddy_Run3End
	dl $C02CF7,$C02F37,GFX_Diddy_Run4,GFX_Diddy_Run4End
	dl $C02F55,$C03175,GFX_Diddy_Run5,GFX_Diddy_Run5End
	dl $C03195,$C033D5,GFX_Diddy_Run6,GFX_Diddy_Run6End
	dl $C033F5,$C03635,GFX_Diddy_Run7,GFX_Diddy_Run7End
	dl $C03655,$C03895,GFX_Diddy_Run8,GFX_Diddy_Run8End
	dl $C038B5,$C03AF5,GFX_Diddy_Run9,GFX_Diddy_Run9End
	dl $C03B15,$C03D55,GFX_Diddy_Run10,GFX_Diddy_Run10End
	dl $C03D73,$C03F93,GFX_Diddy_Run11,GFX_Diddy_Run11End
	dl $C03FB3,$C041F3,GFX_Diddy_Run12,GFX_Diddy_Run12End
	dl $C04213,$C04453,GFX_Diddy_Run13,GFX_Diddy_Run13End
	dl $C04467,$C04767,GFX_BarrelCannon_AutoFire1,GFX_BarrelCannon_AutoFire1End
	dl $C04783,$C04B03,GFX_BarrelCannon_AutoFire2,GFX_BarrelCannon_AutoFire2End
	dl $C04B29,$C04E89,GFX_BarrelCannon_AutoFire3,GFX_BarrelCannon_AutoFire3End
	dl $C04EA7,$C051E7,GFX_BarrelCannon_AutoFire4,GFX_BarrelCannon_AutoFire4End
	dl $C051FB,$C054FB,GFX_BarrelCannon_AutoFire5,GFX_BarrelCannon_AutoFire5End
	dl $C0551B,$C0587B,GFX_BarrelCannon_AutoFire6,GFX_BarrelCannon_AutoFire6End
	dl $C05897,$C05C17,GFX_BarrelCannon_AutoFire7,GFX_BarrelCannon_AutoFire7End
	dl $C05C37,$C05F97,GFX_BarrelCannon_AutoFire8,GFX_BarrelCannon_AutoFire8End
	dl $C05FAB,$C062AB,GFX_BarrelCannon_AutoFire9,GFX_BarrelCannon_AutoFire9End
	dl $C062C7,$C06647,GFX_BarrelCannon_AutoFire10,GFX_BarrelCannon_AutoFire10End
	dl $C0666D,$C069CD,GFX_BarrelCannon_AutoFire11,GFX_BarrelCannon_AutoFire11End
	dl $C069EB,$C06D2B,GFX_BarrelCannon_AutoFire12,GFX_BarrelCannon_AutoFire12End
	dl $C06D3F,$C0703F,GFX_BarrelCannon_AutoFire13,GFX_BarrelCannon_AutoFire13End
	dl $C0705F,$C073BF,GFX_BarrelCannon_AutoFire14,GFX_BarrelCannon_AutoFire14End
	dl $C073DB,$C0775B,GFX_BarrelCannon_AutoFire15,GFX_BarrelCannon_AutoFire15End
	dl $C0777B,$C07ADB,GFX_BarrelCannon_AutoFire16,GFX_BarrelCannon_AutoFire16End
	dl $C10016,$C10216,GFX_Dixie_Run1,GFX_Dixie_Run1End
	dl $C1022A,$C1046A,GFX_Dixie_Run2,GFX_Dixie_Run2End
	dl $C10480,$C10680,GFX_Dixie_Run3,GFX_Dixie_Run3End
	dl $C10698,$C108B8,GFX_Dixie_Run4,GFX_Dixie_Run4End
	dl $C108D2,$C10B12,GFX_Dixie_Run5,GFX_Dixie_Run5End
	dl $C10B2E,$C10D8E,GFX_Dixie_Run6,GFX_Dixie_Run6End
	dl $C10DA8,$C11048,GFX_Dixie_Run7,GFX_Dixie_Run7End
	dl $C11066,$C112E6,GFX_Dixie_Run8,GFX_Dixie_Run8End
	dl $C11304,$C11584,GFX_Dixie_Run9,GFX_Dixie_Run9End
	dl $C115A2,$C11822,GFX_Dixie_Run10,GFX_Dixie_Run10End
	dl $C11840,$C11AC0,GFX_Dixie_Run11,GFX_Dixie_Run11End
	dl $C11ADA,$C11D1A,GFX_Dixie_Run12,GFX_Dixie_Run12End
	dl $C11D36,$C11F96,GFX_Dixie_Run13,GFX_Dixie_Run13End
	dl $C11FB2,$C121B2,GFX_Dixie_Run14,GFX_Dixie_Run14End
	dl $C121CE,$C1242E,GFX_Dixie_Run15,GFX_Dixie_Run15End
	dl $C12448,$C12688,GFX_Dixie_Run16,GFX_Dixie_Run16End
	dl $C1269E,$C1289E,GFX_Dixie_Walk1,GFX_Dixie_Walk1End
	dl $C128B4,$C12AB4,GFX_Dixie_Walk2,GFX_Dixie_Walk2End
	dl $C12ACA,$C12CCA,GFX_Dixie_Walk3,GFX_Dixie_Walk3End
	dl $C12CE2,$C12F02,GFX_Dixie_Walk4,GFX_Dixie_Walk4End
	dl $C12F18,$C13118,GFX_Dixie_Walk5,GFX_Dixie_Walk5End
	dl $C1312E,$C1332E,GFX_Dixie_Walk6,GFX_Dixie_Walk6End
	dl $C13344,$C13544,GFX_Dixie_Walk7,GFX_Dixie_Walk7End
	dl $C1355E,$C1379E,GFX_Dixie_Walk8,GFX_Dixie_Walk8End
	dl $C137B2,$C139F2,GFX_Dixie_Walk9,GFX_Dixie_Walk9End
	dl $C13A06,$C13C46,GFX_Dixie_Walk10,GFX_Dixie_Walk10End
	dl $C13C5A,$C13E9A,GFX_Dixie_Walk11,GFX_Dixie_Walk11End
	dl $C13EAE,$C140EE,GFX_Dixie_Walk12,GFX_Dixie_Walk12End
	dl $C14102,$C14342,GFX_Dixie_Walk13,GFX_Dixie_Walk13End
	dl $C14354,$C14574,GFX_Dixie_Walk14,GFX_Dixie_Walk14End
	dl $C14588,$C147C8,GFX_Dixie_Walk15,GFX_Dixie_Walk15End
	dl $C147DC,$C14A1C,GFX_Dixie_Walk16,GFX_Dixie_Walk16End
	dl $C14A32,$C14C32,GFX_Diddy_Walk1,GFX_Diddy_Walk1End
	dl $C14C48,$C14E48,GFX_Diddy_Walk2,GFX_Diddy_Walk2End
	dl $C14E64,$C15064,GFX_Diddy_Walk3,GFX_Diddy_Walk3End
	dl $C1507A,$C1527A,GFX_Diddy_Walk4,GFX_Diddy_Walk4End
	dl $C15292,$C154B2,GFX_Diddy_Walk5,GFX_Diddy_Walk5End
	dl $C154CC,$C1570C,GFX_Diddy_Walk6,GFX_Diddy_Walk6End
	dl $C15722,$C15982,GFX_Diddy_Walk7,GFX_Diddy_Walk7End
	dl $C1599C,$C15BDC,GFX_Diddy_Walk8,GFX_Diddy_Walk8End
	dl $C15BF8,$C15E58,GFX_Diddy_Walk9,GFX_Diddy_Walk9End
	dl $C15E74,$C160D4,GFX_Diddy_Walk10,GFX_Diddy_Walk10End
	dl $C160EA,$C1634A,GFX_Diddy_Walk11,GFX_Diddy_Walk11End
	dl $C16364,$C165A4,GFX_Diddy_Walk12,GFX_Diddy_Walk12End
	dl $C165C2,$C167E2,GFX_Diddy_Walk13,GFX_Diddy_Walk13End
	dl $C16800,$C16A20,GFX_Diddy_Walk14,GFX_Diddy_Walk14End
	dl $C16A3E,$C16C5E,GFX_Diddy_Walk15,GFX_Diddy_Walk15End
	dl $C16C7C,$C16E9C,GFX_Diddy_Walk16,GFX_Diddy_Walk16End
	dl $C16EB2,$C170B2,GFX_Dixie_StandIdle1,GFX_Dixie_StandIdle1End
	dl $C170C8,$C172C8,GFX_Dixie_Jump1,GFX_Dixie_Jump1End
	dl $C172DE,$C174DE,GFX_Dixie_Jump2,GFX_Dixie_Jump2End
	dl $C174F4,$C176F4,GFX_Dixie_Jump3,GFX_Dixie_Jump3End
	dl $C1770E,$C1794E,GFX_Dixie_Jump4,GFX_Dixie_Jump4End
	dl $C17962,$C17B42,GFX_Dixie_Jump5,GFX_Dixie_Jump5End
	dl $C17B5A,$C17D7A,GFX_Dixie_Jump6,GFX_Dixie_Jump6End
	dl $C17D90,$C17F90,GFX_Dixie_Jump7,GFX_Dixie_Jump7End
	dl $C17FA6,$C181A6,GFX_Dixie_Jump8,GFX_Dixie_Jump8End
	dl $C181BC,$C183BC,GFX_Dixie_Jump9,GFX_Dixie_Jump9End
	dl $C183D0,$C185B0,GFX_Dixie_Jump10,GFX_Dixie_Jump10End
	dl $C185C2,$C18782,GFX_Dixie_Jump11,GFX_Dixie_Jump11End
	dl $C18794,$C18954,GFX_Dixie_Jump12,GFX_Dixie_Jump12End
	dl $C1896C,$C18B8C,GFX_Dixie_Jump13,GFX_Dixie_Jump13End
	dl $C18BA6,$C18DE6,GFX_Dixie_Jump14,GFX_Dixie_Jump14End
	dl $C18E00,$C19040,GFX_Dixie_Jump15,GFX_Dixie_Jump15End
	dl $C19056,$C19256,GFX_Dixie_Jump16,GFX_Dixie_Jump16End
	dl $C1926C,$C1946C,GFX_Dixie_Jump17,GFX_Dixie_Jump17End
	dl $C19486,$C196C6,GFX_Dixie_Jump18,GFX_Dixie_Jump18End
	dl $C196E2,$C19942,GFX_Dixie_Jump19,GFX_Dixie_Jump19End
	dl $C19962,$C19BA2,GFX_Dixie_Jump20,GFX_Dixie_Jump20End
	dl $C19BBE,$C19E1E,GFX_Dixie_Jump21,GFX_Dixie_Jump21End
	dl $C19E38,$C1A078,GFX_Dixie_Jump22,GFX_Dixie_Jump22End
	dl $C1A092,$C1A2D2,GFX_Dixie_Jump23,GFX_Dixie_Jump23End
	dl $C1A2E8,$C1A4E8,GFX_Dixie_Jump24,GFX_Dixie_Jump24End
	dl $C1A500,$C1A720,GFX_Dixie_Jump25,GFX_Dixie_Jump25End
	dl $C1A736,$C1A936,GFX_Dixie_Jump26,GFX_Dixie_Jump26End
	dl $C1A946,$C1AB46,GFX_Dixie_Jump27,GFX_Dixie_Jump27End
	dl $C1AB5C,$C1AD5C,GFX_Dixie_DrinkJuiceBox1,GFX_Dixie_DrinkJuiceBox1End
	dl $C1AD74,$C1AF34,GFX_Dixie_DrinkJuiceBox2,GFX_Dixie_DrinkJuiceBox2End
	dl $C1AF4C,$C1B10C,GFX_Dixie_DrinkJuiceBox3,GFX_Dixie_DrinkJuiceBox3End
	dl $C1B124,$C1B2E4,GFX_Dixie_DrinkJuiceBox4,GFX_Dixie_DrinkJuiceBox4End
	dl $C1B2FA,$C1B49A,GFX_Dixie_DrinkJuiceBox5,GFX_Dixie_DrinkJuiceBox5End
	dl $C1B4AE,$C1B62E,GFX_Dixie_DrinkJuiceBox6,GFX_Dixie_DrinkJuiceBox6End
	dl $C1B642,$C1B7C2,GFX_Dixie_DrinkJuiceBox7,GFX_Dixie_DrinkJuiceBox7End
	dl $C1B7D6,$C1B956,GFX_Dixie_DrinkJuiceBox8,GFX_Dixie_DrinkJuiceBox8End
	dl $C1B96C,$C1BB0C,GFX_Dixie_DrinkJuiceBox9,GFX_Dixie_DrinkJuiceBox9End
	dl $C1BB20,$C1BCA0,GFX_Dixie_DrinkJuiceBox10,GFX_Dixie_DrinkJuiceBox10End
	dl $C1BCB4,$C1BE34,GFX_Dixie_DrinkJuiceBox11,GFX_Dixie_DrinkJuiceBox11End
	dl $C1BE4A,$C1BFEA,GFX_Dixie_DrinkJuiceBox12,GFX_Dixie_DrinkJuiceBox12End
	dl $C1C000,$C1C1A0,GFX_Dixie_DrinkJuiceBox13,GFX_Dixie_DrinkJuiceBox13End
	dl $C1C1B6,$C1C356,GFX_Dixie_DrinkJuiceBox14,GFX_Dixie_DrinkJuiceBox14End
	dl $C1C36C,$C1C50C,GFX_Dixie_DrinkJuiceBox15,GFX_Dixie_DrinkJuiceBox15End
	dl $C1C522,$C1C6C2,GFX_Dixie_DrinkJuiceBox16,GFX_Dixie_DrinkJuiceBox16End
	dl $C1C6D6,$C1C856,GFX_Dixie_DrinkJuiceBox17,GFX_Dixie_DrinkJuiceBox17End
	dl $C1C86C,$C1CA0C,GFX_Dixie_DrinkJuiceBox18,GFX_Dixie_DrinkJuiceBox18End
	dl $C1CA22,$C1CBC2,GFX_Dixie_DrinkJuiceBox19,GFX_Dixie_DrinkJuiceBox19End
	dl $C1CBD8,$C1CD78,GFX_Dixie_DrinkJuiceBox20,GFX_Dixie_DrinkJuiceBox20End
	dl $C1CD8C,$C1CF6C,GFX_Dixie_DrinkJuiceBox21,GFX_Dixie_DrinkJuiceBox21End
	dl $C1CF82,$C1D182,GFX_Dixie_DrinkJuiceBox22,GFX_Dixie_DrinkJuiceBox22End
	dl $C1D198,$C1D398,GFX_Dixie_DrinkJuiceBox23,GFX_Dixie_DrinkJuiceBox23End
	dl $C1D3AC,$C1D5EC,GFX_Dixie_DrinkJuiceBox24,GFX_Dixie_DrinkJuiceBox24End
	dl $C1D602,$C1D862,GFX_Dixie_DrinkJuiceBox25,GFX_Dixie_DrinkJuiceBox25End
	dl $C1D878,$C1DAD8,GFX_Dixie_DrinkJuiceBox26,GFX_Dixie_DrinkJuiceBox26End
	dl $C1DAEE,$C1DD4E,GFX_Dixie_DrinkJuiceBox27,GFX_Dixie_DrinkJuiceBox27End
	dl $C1DD64,$C1DFC4,GFX_Dixie_DrinkJuiceBox28,GFX_Dixie_DrinkJuiceBox28End
	dl $C1DFDA,$C1E23A,GFX_Dixie_DrinkJuiceBox29,GFX_Dixie_DrinkJuiceBox29End
	dl $C1E250,$C1E4B0,GFX_Dixie_DrinkJuiceBox30,GFX_Dixie_DrinkJuiceBox30End
	dl $C1E4C8,$C1E688,GFX_Dixie_Roll1,GFX_Dixie_Roll1End
	dl $C1E6A0,$C1E860,GFX_Dixie_Roll2,GFX_Dixie_Roll2End
	dl $C1E878,$C1EA38,GFX_Dixie_Roll3,GFX_Dixie_Roll3End
	dl $C1EA52,$C1EC32,GFX_Dixie_Roll4,GFX_Dixie_Roll4End
	dl $C1EC4A,$C1EE6A,GFX_Dixie_Roll5,GFX_Dixie_Roll5End
	dl $C1EE80,$C1F080,GFX_Dixie_Roll6,GFX_Dixie_Roll6End
	dl $C1F098,$C1F2B8,GFX_Dixie_Roll7,GFX_Dixie_Roll7End
	dl $C1F2CE,$C1F4CE,GFX_Dixie_Roll8,GFX_Dixie_Roll8End
	dl $C1F4E8,$C1F6C8,GFX_Dixie_Roll9,GFX_Dixie_Roll9End
	dl $C1F6DE,$C1F8DE,GFX_Dixie_Roll10,GFX_Dixie_Roll10End
	dl $C1F8F6,$C1FB16,GFX_Dixie_Roll11,GFX_Dixie_Roll11End
	dl $C1FB28,$C1FC88,GFX_Dixie_Roll12,GFX_Dixie_Roll12End
	dl $C1FCA0,$C1FEC0,GFX_Dixie_Roll13,GFX_Dixie_Roll13End
	dl $C200D5,$C20355,GFX_Dixie_Roll14,GFX_Dixie_Roll14End
	dl $C20369,$C205A9,GFX_Dixie_Roll15,GFX_Dixie_Roll15End
	dl $C205C1,$C20781,GFX_Dixie_Roll16,GFX_Dixie_Roll16End
	dl $C20799,$C20959,GFX_Dixie_Roll17,GFX_Dixie_Roll17End
	dl $C2096F,$C20B0F,GFX_Dixie_Roll18,GFX_Dixie_Roll18End
	dl $C20B23,$C20D03,GFX_Dixie_Roll19,GFX_Dixie_Roll19End
	dl $C20D17,$C20EF7,GFX_Dixie_Roll20,GFX_Dixie_Roll20End
	dl $C20F1F,$C2123F,GFX_Dixie_Hover1,GFX_Dixie_Hover1End
	dl $C2125D,$C214DD,GFX_Dixie_Hover2,GFX_Dixie_Hover2End
	dl $C214F7,$C21797,GFX_Dixie_Hover3,GFX_Dixie_Hover3End
	dl $C217B3,$C21A73,GFX_Dixie_Hover4,GFX_Dixie_Hover4End
	dl $C21A91,$C21D71,GFX_Dixie_Hover5,GFX_Dixie_Hover5End
	dl $C21D8D,$C2204D,GFX_Dixie_Hover6,GFX_Dixie_Hover6End
	dl $C2206B,$C2234B,GFX_Dixie_Hover7,GFX_Dixie_Hover7End
	dl $C22369,$C22649,GFX_Dixie_Hover8,GFX_Dixie_Hover8End
	dl $C22663,$C22903,GFX_Dixie_Hover9,GFX_Dixie_Hover9End
	dl $C2291B,$C22B9B,GFX_Dixie_Hover10,GFX_Dixie_Hover10End
	dl $C22BB3,$C22E33,GFX_Dixie_Hover11,GFX_Dixie_Hover11End
	dl $C22E4F,$C230AF,GFX_Dixie_Hover12,GFX_Dixie_Hover12End
	dl $C230C3,$C23243,GFX_Dixie_Turn1,GFX_Dixie_Turn1End
	dl $C23255,$C233B5,GFX_Dixie_Turn2,GFX_Dixie_Turn2End
	dl $C233D3,$C23653,GFX_Dixie_Hurt1,GFX_Dixie_Hurt1End
	dl $C2366D,$C238AD,GFX_Dixie_Hurt2,GFX_Dixie_Hurt2End
	dl $C238C5,$C23AE5,GFX_Dixie_Hurt3,GFX_Dixie_Hurt3End
	dl $C23B01,$C23D61,GFX_Dixie_Hurt4,GFX_Dixie_Hurt4End
	dl $C23D7D,$C23F7D,GFX_Dixie_Hurt5,GFX_Dixie_Hurt5End
	dl $C23F95,$C24155,GFX_Dixie_Hurt6,GFX_Dixie_Hurt6End
	dl $C2416D,$C2432D,GFX_Dixie_Hurt7,GFX_Dixie_Hurt7End
	dl $C24347,$C24527,GFX_Dixie_Hurt8,GFX_Dixie_Hurt8End
	dl $C24541,$C24721,GFX_Dixie_Hurt9,GFX_Dixie_Hurt9End
	dl $C2473F,$C2495F,GFX_Dixie_Hurt10,GFX_Dixie_Hurt10End
	dl $C2497F,$C24BBF,GFX_Dixie_Hurt11,GFX_Dixie_Hurt11End
	dl $C24BDB,$C24DDB,GFX_Dixie_Hurt12,GFX_Dixie_Hurt12End
	dl $C24DF3,$C24FB3,GFX_Dixie_Hurt13,GFX_Dixie_Hurt13End
	dl $C24FCB,$C2518B,GFX_Dixie_Hurt14,GFX_Dixie_Hurt14End
	dl $C251AB,$C253EB,GFX_Dixie_Hurt15,GFX_Dixie_Hurt15End
	dl $C25403,$C25623,GFX_Dixie_Hurt16,GFX_Dixie_Hurt16End
	dl $C25637,$C25817,GFX_Dixie_Hurt17,GFX_Dixie_Hurt17End
	dl $C2582B,$C259AB,GFX_Dixie_Hurt18,GFX_Dixie_Hurt18End
	dl $C259BF,$C25B3F,GFX_Dixie_Hurt19,GFX_Dixie_Hurt19End
	dl $C25B55,$C25CF5,GFX_Dixie_Hurt20,GFX_Dixie_Hurt20End
	dl $C25D09,$C25E89,GFX_Dixie_Hurt21,GFX_Dixie_Hurt21End
	dl $C25E9F,$C2603F,GFX_Dixie_Hurt22,GFX_Dixie_Hurt22End
	dl $C26055,$C261F5,GFX_Dixie_Hurt23,GFX_Dixie_Hurt23End
	dl $C26201,$C26241,GFX_Dixie_Hurt24,GFX_Dixie_Hurt24End
	dl $C26251,$C262D1,GFX_Dixie_Hurt25,GFX_Dixie_Hurt25End
	dl $C262DF,$C2633F,GFX_Dixie_Hurt26,GFX_Dixie_Hurt26End
	dl $C2634D,$C263AD,GFX_Dixie_Hurt27,GFX_Dixie_Hurt27End
	dl $C263BB,$C2641B,GFX_Dixie_Hurt28,GFX_Dixie_Hurt28End
	dl $C2642B,$C264AB,GFX_Dixie_Hurt29,GFX_Dixie_Hurt29End
	dl $C264C5,$C266A5,GFX_DiddyIdleSway1,GFX_DiddyIdleSway1End
	dl $C266BF,$C2689F,GFX_DiddyIdleSway2,GFX_DiddyIdleSway2End
	dl $C268B9,$C26A99,GFX_DiddyIdleSway3,GFX_DiddyIdleSway3End
	dl $C26AAF,$C26C4F,GFX_DiddyIdleSway4,GFX_DiddyIdleSway4End
	dl $C26C65,$C26E05,GFX_DiddyIdleSway5,GFX_DiddyIdleSway5End
	dl $C26E1B,$C26FBB,GFX_DiddyIdleSway6,GFX_DiddyIdleSway6End
	dl $C26FD3,$C27193,GFX_DiddyIdleSway7,GFX_DiddyIdleSway7End
	dl $C271AB,$C2736B,GFX_DiddyIdleSway8,GFX_DiddyIdleSway8End
	dl $C27385,$C27565,GFX_DiddyIdleSway9,GFX_DiddyIdleSway9End
	dl $C27581,$C27781,GFX_DiddyIdleSway10,GFX_DiddyIdleSway10End
	dl $C27797,$C27997,GFX_DiddyIdleSway11,GFX_DiddyIdleSway11End
	dl $C279B3,$C27BB3,GFX_DiddyIdleSway12,GFX_DiddyIdleSway12End
	dl $C27BCF,$C27DCF,GFX_DiddyIdleSway13,GFX_DiddyIdleSway13End
	dl $C27DEB,$C27FEB,GFX_DiddyIdleSway14,GFX_DiddyIdleSway14End
	dl $C28007,$C28207,GFX_DiddyIdleSway15,GFX_DiddyIdleSway15End
	dl $C28225,$C28445,GFX_DiddyIdleSway16,GFX_DiddyIdleSway16End
	dl $C2845B,$C2865B,GFX_DiddyIdleSway17,GFX_DiddyIdleSway17End
	dl $C28671,$C28871,GFX_DiddyIdleSway18,GFX_DiddyIdleSway18End
	dl $C28887,$C28A87,GFX_DiddyIdleSway19,GFX_DiddyIdleSway19End
	dl $C28A9F,$C28CBF,GFX_DiddyIdleSway20,GFX_DiddyIdleSway20End
	dl $C28CD9,$C28EB9,GFX_DiddyIdleSway21,GFX_DiddyIdleSway21End
	dl $C28ED3,$C290B3,GFX_DiddyIdleSway22,GFX_DiddyIdleSway22End
	dl $C290C7,$C292A7,GFX_Diddy_Jump1,GFX_Diddy_Jump1End
	dl $C292C1,$C294A1,GFX_Diddy_Jump2,GFX_Diddy_Jump2End
	dl $C294B5,$C29695,GFX_Diddy_Jump3,GFX_Diddy_Jump3End
	dl $C296B3,$C298D3,GFX_Diddy_Jump4,GFX_Diddy_Jump4End
	dl $C298F1,$C29B11,GFX_Diddy_Jump5,GFX_Diddy_Jump5End
	dl $C29B2B,$C29D6B,GFX_Diddy_Jump6,GFX_Diddy_Jump6End
	dl $C29D89,$C2A009,GFX_Diddy_Jump7,GFX_Diddy_Jump7End
	dl $C2A02B,$C2A28B,GFX_Diddy_Jump8,GFX_Diddy_Jump8End
	dl $C2A2AD,$C2A50D,GFX_Diddy_Jump9,GFX_Diddy_Jump9End
	dl $C2A52D,$C2A76D,GFX_Diddy_Jump10,GFX_Diddy_Jump10End
	dl $C2A787,$C2A9C7,GFX_Diddy_Jump11,GFX_Diddy_Jump11End
	dl $C2A9E3,$C2AC43,GFX_Diddy_Jump12,GFX_Diddy_Jump12End
	dl $C2AC63,$C2AEA3,GFX_Diddy_Jump13,GFX_Diddy_Jump13End
	dl $C2AEC5,$C2B125,GFX_Diddy_Jump14,GFX_Diddy_Jump14End
	dl $C2B145,$C2B385,GFX_Diddy_Jump15,GFX_Diddy_Jump15End
	dl $C2B3A5,$C2B5E5,GFX_Diddy_Jump16,GFX_Diddy_Jump16End
	dl $C2B605,$C2B845,GFX_Diddy_Jump17,GFX_Diddy_Jump17End
	dl $C2B865,$C2BAA5,GFX_Diddy_Jump18,GFX_Diddy_Jump18End
	dl $C2BABF,$C2BC9F,GFX_Diddy_Jump19,GFX_Diddy_Jump19End
	dl $C2BCB7,$C2BED7,GFX_Diddy_Jump20,GFX_Diddy_Jump20End
	dl $C2BEF3,$C2C0F3,GFX_Diddy_Roll1,GFX_Diddy_Roll1End
	dl $C2C10F,$C2C36F,GFX_Diddy_Roll2,GFX_Diddy_Roll2End
	dl $C2C389,$C2C5C9,GFX_Diddy_Roll3,GFX_Diddy_Roll3End
	dl $C2C5E7,$C2C807,GFX_Diddy_Roll4,GFX_Diddy_Roll4End
	dl $C2C825,$C2CA45,GFX_Diddy_Roll5,GFX_Diddy_Roll5End
	dl $C2CA61,$C2CC61,GFX_Diddy_Roll6,GFX_Diddy_Roll6End
	dl $C2CC83,$C2CE83,GFX_Diddy_Roll7,GFX_Diddy_Roll7End
	dl $C2CE9F,$C2D0FF,GFX_Diddy_Roll8,GFX_Diddy_Roll8End
	dl $C2D121,$C2D381,GFX_Diddy_Roll9,GFX_Diddy_Roll9End
	dl $C2D3A3,$C2D603,GFX_Diddy_Roll10,GFX_Diddy_Roll10End
	dl $C2D61F,$C2D81F,GFX_Diddy_Roll11,GFX_Diddy_Roll11End
	dl $C2D83F,$C2DA7F,GFX_Diddy_Roll12,GFX_Diddy_Roll12End
	dl $C2DA9D,$C2DCBD,GFX_Diddy_Roll13,GFX_Diddy_Roll13End
	dl $C2DCDD,$C2DF1D,GFX_Diddy_Roll14,GFX_Diddy_Roll14End
	dl $C2DF3B,$C2E1BB,GFX_Diddy_Roll15,GFX_Diddy_Roll15End
	dl $C2E1DF,$C2E45F,GFX_Diddy_Roll16,GFX_Diddy_Roll16End
	dl $C2E47F,$C2E6BF,GFX_Diddy_Roll17,GFX_Diddy_Roll17End
	dl $C2E6E1,$C2E941,GFX_Diddy_Roll18,GFX_Diddy_Roll18End
	dl $C2E963,$C2EBC3,GFX_Diddy_Roll19,GFX_Diddy_Roll19End
	dl $C2EBE1,$C2EE01,GFX_Diddy_Roll20,GFX_Diddy_Roll20End
	dl $C2EE17,$C2F017,GFX_Dixie_StandIdle2,GFX_Dixie_StandIdle2End
	dl $C2F02D,$C2F22D,GFX_Dixie_StandIdle3,GFX_Dixie_StandIdle3End
	dl $C2F243,$C2F443,GFX_Dixie_StandIdle4,GFX_Dixie_StandIdle4End
	dl $C2F459,$C2F659,GFX_Dixie_StandIdle5,GFX_Dixie_StandIdle5End
	dl $C2F671,$C2F891,GFX_Dixie_StandIdle6,GFX_Dixie_StandIdle6End
	dl $C2F8A9,$C2FAC9,GFX_Dixie_StandIdle7,GFX_Dixie_StandIdle7End
	dl $C300FB,$C3031B,GFX_Dixie_StandIdle8,GFX_Dixie_StandIdle8End
	dl $C30333,$C30553,GFX_Dixie_StandIdle9,GFX_Dixie_StandIdle9End
	dl $C3056B,$C3078B,GFX_Dixie_StandIdle10,GFX_Dixie_StandIdle10End
	dl $C307A3,$C309C3,GFX_Dixie_StandIdle11,GFX_Dixie_StandIdle11End
	dl $C309DB,$C30BFB,GFX_Dixie_StandIdle12,GFX_Dixie_StandIdle12End
	dl $C30C15,$C30E55,GFX_Dixie_StandIdle13,GFX_Dixie_StandIdle13End
	dl $C30E6F,$C310AF,GFX_Dixie_StandIdle14,GFX_Dixie_StandIdle14End
	dl $C310C9,$C31309,GFX_Dixie_StandIdle15,GFX_Dixie_StandIdle15End
	dl $C31327,$C315A7,GFX_Dixie_StandIdle16,GFX_Dixie_StandIdle16End
	dl $C315BD,$C317BD,GFX_Dixie_Duck1,GFX_Dixie_Duck1End
	dl $C317D1,$C31A11,GFX_Dixie_Duck2,GFX_Dixie_Duck2End
	dl $C31A25,$C31C05,GFX_Dixie_Duck3,GFX_Dixie_Duck3End
	dl $C31C19,$C31DF9,GFX_Dixie_Duck4,GFX_Dixie_Duck4End
	dl $C31E0F,$C31FAF,GFX_Dixie_Duck5,GFX_Dixie_Duck5End
	dl $C31FBF,$C3215F,GFX_Dixie_Duck6,GFX_Dixie_Duck6End
	dl $C32171,$C32331,GFX_Dixie_Duck7,GFX_Dixie_Duck7End
	dl $C32343,$C32503,GFX_Dixie_Duck8,GFX_Dixie_Duck8End
	dl $C3251D,$C326FD,GFX_Diddy_Duck1,GFX_Diddy_Duck1End
	dl $C32715,$C32935,GFX_Diddy_Duck2,GFX_Diddy_Duck2End
	dl $C32953,$C32B73,GFX_Diddy_Duck3,GFX_Diddy_Duck3End
	dl $C32B91,$C32DB1,GFX_Diddy_Duck4,GFX_Diddy_Duck4End
	dl $C32DC9,$C32F89,GFX_Diddy_Duck5,GFX_Diddy_Duck5End
	dl $C32FA1,$C33161,GFX_Diddy_Duck6,GFX_Diddy_Duck6End
	dl $C33179,$C33339,GFX_Diddy_Duck7,GFX_Diddy_Duck7End
	dl $C3334D,$C3352D,GFX_Diddy_Duck8,GFX_Diddy_Duck8End
	dl $C3353F,$C336FF,GFX_Diddy_Duck9,GFX_Diddy_Duck9End
	dl $C33713,$C338F3,GFX_Diddy_Duck10,GFX_Diddy_Duck10End
	dl $C33909,$C33B09,GFX_Diddy_Duck11,GFX_Diddy_Duck11End
	dl $C33B1D,$C33CFD,GFX_Diddy_Duck12,GFX_Diddy_Duck12End
	dl $C33D13,$C33F13,GFX_Diddy_Duck13,GFX_Diddy_Duck13End
	dl $C33F2B,$C340EB,GFX_Diddy_Hurt1,GFX_Diddy_Hurt1End
	dl $C34101,$C342A1,GFX_Diddy_Hurt2,GFX_Diddy_Hurt2End
	dl $C342B7,$C34457,GFX_Diddy_Hurt3,GFX_Diddy_Hurt3End
	dl $C34477,$C34657,GFX_Diddy_Hurt4,GFX_Diddy_Hurt4End
	dl $C34679,$C348D9,GFX_Diddy_Hurt5,GFX_Diddy_Hurt5End
	dl $C348FB,$C34B5B,GFX_Diddy_Hurt6,GFX_Diddy_Hurt6End
	dl $C34B7D,$C34DDD,GFX_Diddy_Hurt7,GFX_Diddy_Hurt7End
	dl $C34DF3,$C34FF3,GFX_Diddy_Hurt8,GFX_Diddy_Hurt8End
	dl $C35007,$C351E7,GFX_Diddy_Hurt9,GFX_Diddy_Hurt9End
	dl $C351FD,$C3539D,GFX_Diddy_Hurt10,GFX_Diddy_Hurt10End
	dl $C353B3,$C35553,GFX_Diddy_Hurt11,GFX_Diddy_Hurt11End
	dl $C3556D,$C356ED,GFX_Diddy_Hurt12,GFX_Diddy_Hurt12End
	dl $C35707,$C35887,GFX_Diddy_Hurt13,GFX_Diddy_Hurt13End
	dl $C3589F,$C35A5F,GFX_Diddy_Hurt14,GFX_Diddy_Hurt14End
	dl $C35A77,$C35C37,GFX_Diddy_Hurt15,GFX_Diddy_Hurt15End
	dl $C35C4F,$C35E0F,GFX_Diddy_Hurt16,GFX_Diddy_Hurt16End
	dl $C35E2F,$C3606F,GFX_Diddy_Hurt17,GFX_Diddy_Hurt17End
	dl $C3607D,$C360DD,GFX_Diddy_Hurt18,GFX_Diddy_Hurt18End
	dl $C360EB,$C3614B,GFX_Diddy_Hurt19,GFX_Diddy_Hurt19End
	dl $C36159,$C361B9,GFX_Diddy_Hurt20,GFX_Diddy_Hurt20End
	dl $C361DF,$C3647F,GFX_Squitter_Walk1,GFX_Squitter_Walk1End
	dl $C364A5,$C36745,GFX_Squitter_Walk2,GFX_Squitter_Walk2End
	dl $C36763,$C369E3,GFX_Squitter_Walk3,GFX_Squitter_Walk3End
	dl $C36A01,$C36C81,GFX_Squitter_Walk4,GFX_Squitter_Walk4End
	dl $C36CA1,$C36F41,GFX_Squitter_Walk5,GFX_Squitter_Walk5End
	dl $C36F61,$C37201,GFX_Squitter_Walk6,GFX_Squitter_Walk6End
	dl $C3721B,$C3745B,GFX_Squitter_Walk7,GFX_Squitter_Walk7End
	dl $C37477,$C376D7,GFX_Squitter_Walk8,GFX_Squitter_Walk8End
	dl $C376F3,$C37953,GFX_Squitter_Walk9,GFX_Squitter_Walk9End
	dl $C3796F,$C37BCF,GFX_Squitter_Walk10,GFX_Squitter_Walk10End
	dl $C37BED,$C37E6D,GFX_Squitter_Walk11,GFX_Squitter_Walk11End
	dl $C37E8B,$C3810B,GFX_Squitter_Walk12,GFX_Squitter_Walk12End
	dl $C38129,$C383A9,GFX_Squitter_Walk13,GFX_Squitter_Walk13End
	dl $C383C9,$C38669,GFX_Squitter_Walk14,GFX_Squitter_Walk14End
	dl $C38689,$C38929,GFX_Squitter_Walk15,GFX_Squitter_Walk15End
	dl $C3894B,$C38C0B,GFX_Squitter_Walk16,GFX_Squitter_Walk16End
	dl $C38C29,$C38EA9,GFX_Squitter_Stand1,GFX_Squitter_Stand1End
	dl $C38EC7,$C39147,GFX_Squitter_Stand2,GFX_Squitter_Stand2End
	dl $C39165,$C393E5,GFX_Squitter_Stand3,GFX_Squitter_Stand3End
	dl $C39403,$C39683,GFX_Squitter_Jump1,GFX_Squitter_Jump1End
	dl $C396A1,$C39981,GFX_Squitter_Jump2,GFX_Squitter_Jump2End
	dl $C399A7,$C39CA7,GFX_Squitter_Jump3,GFX_Squitter_Jump3End
	dl $C39CC7,$C3A027,GFX_Squitter_Jump4,GFX_Squitter_Jump4End
	dl $C3A045,$C3A385,GFX_Squitter_Jump5,GFX_Squitter_Jump5End
	dl $C3A39F,$C3A57F,GFX_Squitter_Jump6,GFX_Squitter_Jump6End
	dl $C3A593,$C3A713,GFX_WoodenBox_Idle,GFX_WoodenBox_IdleEnd
	dl $C3A729,$C3A869,GFX_WoodenBox_Grabbed1,GFX_WoodenBox_Grabbed1End
	dl $C3A87D,$C3A9FD,GFX_WoodenBox_Grabbed2,GFX_WoodenBox_Grabbed2End
	dl $C3AA11,$C3ABF1,GFX_Dixie_SitOnAnimalBuddy1,GFX_Dixie_SitOnAnimalBuddy1End
	dl $C3AC0B,$C3AE4B,GFX_Dixie_SitOnAnimalBuddy2,GFX_Dixie_SitOnAnimalBuddy2End
	dl $C3AE61,$C3B061,GFX_Dixie_SitOnAnimalBuddy3,GFX_Dixie_SitOnAnimalBuddy3End
	dl $C3B079,$C3B299,GFX_Dixie_SitOnAnimalBuddy4,GFX_Dixie_SitOnAnimalBuddy4End
	dl $C3B2AF,$C3B4AF,GFX_Dixie_SitOnAnimalBuddy5,GFX_Dixie_SitOnAnimalBuddy5End
	dl $C3B4C5,$C3B6C5,GFX_Dixie_SitOnAnimalBuddy6,GFX_Dixie_SitOnAnimalBuddy6End
	dl $C3B6DB,$C3B8DB,GFX_Dixie_SitOnAnimalBuddy7,GFX_Dixie_SitOnAnimalBuddy7End
	dl $C3B8F1,$C3BAF1,GFX_Dixie_SitOnAnimalBuddy8,GFX_Dixie_SitOnAnimalBuddy8End
	dl $C3BB07,$C3BD07,GFX_Dixie_SitOnAnimalBuddy9,GFX_Dixie_SitOnAnimalBuddy9End
	dl $C3BD1F,$C3BF3F,GFX_Dixie_SitOnAnimalBuddy10,GFX_Dixie_SitOnAnimalBuddy10End
	dl $C3BF57,$C3C177,GFX_Dixie_SitOnAnimalBuddy11,GFX_Dixie_SitOnAnimalBuddy11End
	dl $C3C18F,$C3C3AF,GFX_Dixie_SitOnAnimalBuddy12,GFX_Dixie_SitOnAnimalBuddy12End
	dl $C3C3C5,$C3C625,GFX_ThrowBarrel_Idle,GFX_ThrowBarrel_IdleEnd
	dl $C3C63B,$C3C89B,GFX_ThrowBarrel_Grabbed1,GFX_ThrowBarrel_Grabbed1End
	dl $C3C8AB,$C3CAAB,GFX_ThrowBarrel_Grabbed2,GFX_ThrowBarrel_Grabbed2End
	dl $C3CABB,$C3CCBB,GFX_ThrowBarrel_Grabbed3,GFX_ThrowBarrel_Grabbed3End
	dl $C3CCCF,$C3CF0F,GFX_ThrowBarrel_Grabbed4,GFX_ThrowBarrel_Grabbed4End
	dl $C3CF27,$C3D1A7,GFX_TNTBarrel_Idle,GFX_TNTBarrel_IdleEnd
	dl $C3D1BD,$C3D2FD,GFX_DKBarrel_Letters1,GFX_DKBarrel_Letters1End
	dl $C3D313,$C3D453,GFX_DKBarrel_Letters2,GFX_DKBarrel_Letters2End
	dl $C3D469,$C3D5A9,GFX_DKBarrel_Letters3,GFX_DKBarrel_Letters3End
	dl $C3D5BF,$C3D6FF,GFX_DKBarrel_Letters4,GFX_DKBarrel_Letters4End
	dl $C3D713,$C3D833,GFX_DKBarrel_Letters5,GFX_DKBarrel_Letters5End
	dl $C3D847,$C3D967,GFX_DKBarrel_Letters6,GFX_DKBarrel_Letters6End
	dl $C3D97B,$C3DA9B,GFX_DKBarrel_Letters7,GFX_DKBarrel_Letters7End
	dl $C3DAB1,$C3DBF1,GFX_DKBarrel_Letters8,GFX_DKBarrel_Letters8End
	dl $C3DC07,$C3DE67,GFX_DKBarrel_Barrel1,GFX_DKBarrel_Barrel1End
	dl $C3DE7D,$C3E0DD,GFX_DKBarrel_Barrel2,GFX_DKBarrel_Barrel2End
	dl $C3E0F3,$C3E353,GFX_DKBarrel_Barrel3,GFX_DKBarrel_Barrel3End
	dl $C3E369,$C3E5C9,GFX_DKBarrel_Barrel4,GFX_DKBarrel_Barrel4End
	dl $C3E5DF,$C3E83F,GFX_DKBarrel_Barrel5,GFX_DKBarrel_Barrel5End
	dl $C3E855,$C3EAB5,GFX_DKBarrel_Barrel6,GFX_DKBarrel_Barrel6End
	dl $C3EACB,$C3ED2B,GFX_DKBarrel_Barrel7,GFX_DKBarrel_Barrel7End
	dl $C3ED41,$C3EFA1,GFX_DKBarrel_Barrel8,GFX_DKBarrel_Barrel8End
	dl $C3EFB5,$C3F2B5,GFX_BarrelCannon_Base1,GFX_BarrelCannon_Base1End
	dl $C3F2D1,$C3F651,GFX_BarrelCannon_Base2,GFX_BarrelCannon_Base2End
	dl $C3F677,$C3F9D7,GFX_BarrelCannon_Base3,GFX_BarrelCannon_Base3End
	dl $C3F9F5,$C3FD35,GFX_BarrelCannon_Base4,GFX_BarrelCannon_Base4End
	dl $C402AC,$C405AC,GFX_BarrelCannon_Base5,GFX_BarrelCannon_Base5End
	dl $C405CC,$C4092C,GFX_BarrelCannon_Base6,GFX_BarrelCannon_Base6End
	dl $C40948,$C40CC8,GFX_BarrelCannon_Base7,GFX_BarrelCannon_Base7End
	dl $C40CE8,$C41048,GFX_BarrelCannon_Base8,GFX_BarrelCannon_Base8End
	dl $C4105C,$C4135C,GFX_BarrelCannon_Base9,GFX_BarrelCannon_Base9End
	dl $C41378,$C416F8,GFX_BarrelCannon_Base10,GFX_BarrelCannon_Base10End
	dl $C4171E,$C41A7E,GFX_BarrelCannon_Base11,GFX_BarrelCannon_Base11End
	dl $C41A9C,$C41DDC,GFX_BarrelCannon_Base12,GFX_BarrelCannon_Base12End
	dl $C41DF0,$C420F0,GFX_BarrelCannon_Base13,GFX_BarrelCannon_Base13End
	dl $C42110,$C42470,GFX_BarrelCannon_Base14,GFX_BarrelCannon_Base14End
	dl $C4248C,$C4280C,GFX_BarrelCannon_Base15,GFX_BarrelCannon_Base15End
	dl $C4282C,$C42B8C,GFX_BarrelCannon_Base16,GFX_BarrelCannon_Base16End
	dl $C42BA2,$C42E02,GFX_ThrowBarrel_Thrown1,GFX_ThrowBarrel_Thrown1End
	dl $C42E18,$C43078,GFX_ThrowBarrel_Thrown2,GFX_ThrowBarrel_Thrown2End
	dl $C4308E,$C432EE,GFX_ThrowBarrel_Thrown3,GFX_ThrowBarrel_Thrown3End
	dl $C43302,$C43542,GFX_ThrowBarrel_Thrown4,GFX_ThrowBarrel_Thrown4End
	dl $C43556,$C43796,GFX_ThrowBarrel_Thrown5,GFX_ThrowBarrel_Thrown5End
	dl $C437AA,$C439EA,GFX_ThrowBarrel_Thrown6,GFX_ThrowBarrel_Thrown6End
	dl $C43A00,$C43C60,GFX_ThrowBarrel_Thrown7,GFX_ThrowBarrel_Thrown7End
	dl $C43C76,$C43ED6,GFX_ThrowBarrel_Thrown8,GFX_ThrowBarrel_Thrown8End
	dl $C43EF4,$C441D4,GFX_Klomp_Walk1,GFX_Klomp_Walk1End
	dl $C441F6,$C44516,GFX_Klomp_Walk2,GFX_Klomp_Walk2End
	dl $C44538,$C44858,GFX_Klomp_Walk3,GFX_Klomp_Walk3End
	dl $C4487A,$C44B3A,GFX_Klomp_Walk4,GFX_Klomp_Walk4End
	dl $C44B5C,$C44E1C,GFX_Klomp_Walk5,GFX_Klomp_Walk5End
	dl $C44E3E,$C450FE,GFX_Klomp_Walk6,GFX_Klomp_Walk6End
	dl $C4511E,$C4541E,GFX_Klomp_Walk7,GFX_Klomp_Walk7End
	dl $C4543E,$C456DE,GFX_Klomp_Walk8,GFX_Klomp_Walk8End
	dl $C45700,$C459C0,GFX_Klomp_Walk9,GFX_Klomp_Walk9End
	dl $C459F2,$C45F32,GFX_Kannon_Walk1,GFX_Kannon_Walk1End
	dl $C45F5A,$C463FA,GFX_Kannon_Walk2,GFX_Kannon_Walk2End
	dl $C46422,$C468C2,GFX_Kannon_Walk3,GFX_Kannon_Walk3End
	dl $C468D8,$C46B38,GFX_CheckpointBarrel_Idle1,GFX_CheckpointBarrel_Idle1End
	dl $C46B4E,$C46DAE,GFX_CheckpointBarrel_Idle2,GFX_CheckpointBarrel_Idle2End
	dl $C46DC4,$C47024,GFX_CheckpointBarrel_Idle3,GFX_CheckpointBarrel_Idle3End
	dl $C4703A,$C4729A,GFX_CheckpointBarrel_Idle4,GFX_CheckpointBarrel_Idle4End
	dl $C472B0,$C47510,GFX_CheckpointBarrel_Idle5,GFX_CheckpointBarrel_Idle5End
	dl $C47526,$C47786,GFX_CheckpointBarrel_Idle6,GFX_CheckpointBarrel_Idle6End
	dl $C4779C,$C479FC,GFX_CheckpointBarrel_Idle7,GFX_CheckpointBarrel_Idle7End
	dl $C47A12,$C47C72,GFX_CheckpointBarrel_Idle8,GFX_CheckpointBarrel_Idle8End
	dl $C47C90,$C47EB0,GFX_Chest_Idle,GFX_Chest_IdleEnd
	dl $C47EC6,$C48126,GFX_InvincibilityBarrel_Idle,GFX_InvincibilityBarrel_IdleEnd
	dl $C48136,$C48216,GFX_Hook_Idle,GFX_Hook_IdleEnd
	dl $C48234,$C485D4,GFX_AnimalBuddyBox_Rambi,GFX_AnimalBuddyBox_RambiEnd
	dl $C485F2,$C48992,GFX_AnimalBuddyBox_Squawks,GFX_AnimalBuddyBox_SquawksEnd
	dl $C489B0,$C48D50,GFX_AnimalBuddyBox_Enguarde,GFX_AnimalBuddyBox_EnguardeEnd
	dl $C48D6E,$C4910E,GFX_AnimalBuddyBox_Rattly,GFX_AnimalBuddyBox_RattlyEnd
	dl $C4912C,$C494CC,GFX_AnimalBuddyBox_Squitter,GFX_AnimalBuddyBox_SquitterEnd
	dl $C494EA,$C498EA,GFX_AnimalBuddyBox_Open,GFX_AnimalBuddyBox_OpenEnd
	dl $C49902,$C49C42,GFX_BonusCannon_Idle,GFX_BonusCannon_IdleEnd
	dl $C49C56,$C49D76,GFX_Cannonball_Thrown1,GFX_Cannonball_Thrown1End
	dl $C49D8A,$C49EAA,GFX_Cannonball_Thrown2,GFX_Cannonball_Thrown2End
	dl $C49EBE,$C49FDE,GFX_Cannonball_Thrown3,GFX_Cannonball_Thrown3End
	dl $C49FF2,$C4A112,GFX_Cannonball_Thrown4,GFX_Cannonball_Thrown4End
	dl $C4A126,$C4A306,GFX_Dixie_Pickup1,GFX_Dixie_Pickup1End
	dl $C4A31E,$C4A4DE,GFX_Dixie_Pickup2,GFX_Dixie_Pickup2End
	dl $C4A4F4,$C4A694,GFX_Dixie_Pickup3,GFX_Dixie_Pickup3End
	dl $C4A6A8,$C4A828,GFX_Dixie_Pickup4,GFX_Dixie_Pickup4End
	dl $C4A83C,$C4A9BC,GFX_Dixie_Pickup5,GFX_Dixie_Pickup5End
	dl $C4A9D0,$C4ABB0,GFX_Dixie_Pickup6,GFX_Dixie_Pickup6End
	dl $C4ABC8,$C4AD88,GFX_Dixie_Pickup7,GFX_Dixie_Pickup7End
	dl $C4AD9C,$C4AF7C,GFX_Dixie_Pickup8,GFX_Dixie_Pickup8End
	dl $C4AF94,$C4B1B4,GFX_Dixie_Pickup9,GFX_Dixie_Pickup9End
	dl $C4B1D2,$C4B452,GFX_Dixie_Pickup10,GFX_Dixie_Pickup10End
	dl $C4B470,$C4B6F0,GFX_Dixie_Pickup11,GFX_Dixie_Pickup11End
	dl $C4B70A,$C4B9AA,GFX_Dixie_Pickup12,GFX_Dixie_Pickup12End
	dl $C4B9BE,$C4BC5E,GFX_Dixie_Pickup13,GFX_Dixie_Pickup13End
	dl $C4BC7E,$C4BF1E,GFX_Dixie_Throw1,GFX_Dixie_Throw1End
	dl $C4BF3E,$C4C1DE,GFX_Dixie_Throw2,GFX_Dixie_Throw2End
	dl $C4C1FC,$C4C47C,GFX_Dixie_Throw3,GFX_Dixie_Throw3End
	dl $C4C49A,$C4C71A,GFX_Dixie_Throw4,GFX_Dixie_Throw4End
	dl $C4C736,$C4C996,GFX_Dixie_Throw5,GFX_Dixie_Throw5End
	dl $C4C9AA,$C4CBEA,GFX_Dixie_Throw6,GFX_Dixie_Throw6End
	dl $C4CBFE,$C4CE3E,GFX_Dixie_Throw7,GFX_Dixie_Throw7End
	dl $C4CE54,$C4D0B4,GFX_Dixie_Throw8,GFX_Dixie_Throw8End
	dl $C4D0D0,$C4D330,GFX_Dixie_Throw9,GFX_Dixie_Throw9End
	dl $C4D34A,$C4D58A,GFX_Dixie_Throw10,GFX_Dixie_Throw10End
	dl $C4D5A2,$C4D822,GFX_Dixie_Throw11,GFX_Dixie_Throw11End
	dl $C4D83C,$C4DADC,GFX_Dixie_Throw12,GFX_Dixie_Throw12End
	dl $C4DAF8,$C4DD58,GFX_Dixie_Throw13,GFX_Dixie_Throw13End
	dl $C4DD74,$C4DFD4,GFX_Dixie_Throw14,GFX_Dixie_Throw14End
	dl $C4DFF2,$C4E272,GFX_Dixie_Throw15,GFX_Dixie_Throw15End
	dl $C4E28E,$C4E4EE,GFX_Dixie_Throw16,GFX_Dixie_Throw16End
	dl $C4E50A,$C4E76A,GFX_Dixie_Throw17,GFX_Dixie_Throw17End
	dl $C4E786,$C4E9E6,GFX_Dixie_Throw18,GFX_Dixie_Throw18End
	dl $C4EA02,$C4EC02,GFX_Dixie_Throw19,GFX_Dixie_Throw19End
	dl $C4EC18,$C4EDB8,GFX_Dixie_Throw20,GFX_Dixie_Throw20End
	dl $C4EDCA,$C4EF8A,GFX_Dixie_Throw21,GFX_Dixie_Throw21End
	dl $C4EF9E,$C4F11E,GFX_Shuri_Idle1,GFX_Shuri_Idle1End
	dl $C4F136,$C4F296,GFX_Shuri_Idle2,GFX_Shuri_Idle2End
	dl $C4F2A8,$C4F408,GFX_Shuri_Idle3,GFX_Shuri_Idle3End
	dl $C4F41A,$C4F57A,GFX_Shuri_Idle4,GFX_Shuri_Idle4End
	dl $C4F590,$C4F6D0,GFX_Shuri_Idle5,GFX_Shuri_Idle5End
	dl $C4F6E8,$C4F848,GFX_Shuri_Idle6,GFX_Shuri_Idle6End
	dl $C4F860,$C4F9C0,GFX_Shuri_Idle7,GFX_Shuri_Idle7End
	dl $C500AE,$C5022E,GFX_Shuri_Idle8,GFX_Shuri_Idle8End
	dl $C50246,$C50406,GFX_Diddy_Pickup1,GFX_Diddy_Pickup1End
	dl $C50422,$C50622,GFX_Diddy_Pickup2,GFX_Diddy_Pickup2End
	dl $C50640,$C50860,GFX_Diddy_Pickup3,GFX_Diddy_Pickup3End
	dl $C5087E,$C50A9E,GFX_Diddy_Pickup4,GFX_Diddy_Pickup4End
	dl $C50ABC,$C50CDC,GFX_Diddy_Pickup5,GFX_Diddy_Pickup5End
	dl $C50CF8,$C50EF8,GFX_Diddy_HoldWalk1,GFX_Diddy_HoldWalk1End
	dl $C50F18,$C51158,GFX_Diddy_HoldWalk2,GFX_Diddy_HoldWalk2End
	dl $C51174,$C51374,GFX_Diddy_HoldWalk3,GFX_Diddy_HoldWalk3End
	dl $C51392,$C515B2,GFX_Diddy_HoldWalk4,GFX_Diddy_HoldWalk4End
	dl $C515D0,$C517F0,GFX_Diddy_HoldWalk5,GFX_Diddy_HoldWalk5End
	dl $C5180E,$C51A2E,GFX_Diddy_HoldWalk6,GFX_Diddy_HoldWalk6End
	dl $C51A4E,$C51C8E,GFX_Diddy_HoldWalk7,GFX_Diddy_HoldWalk7End
	dl $C51CAA,$C51EAA,GFX_Diddy_HoldWalk8,GFX_Diddy_HoldWalk8End
	dl $C51EC6,$C520C6,GFX_Diddy_HoldWalk9,GFX_Diddy_HoldWalk9End
	dl $C520E4,$C52304,GFX_Diddy_Throw1,GFX_Diddy_Throw1End
	dl $C52320,$C52520,GFX_Diddy_Throw2,GFX_Diddy_Throw2End
	dl $C5253A,$C5271A,GFX_Diddy_Throw3,GFX_Diddy_Throw3End
	dl $C52730,$C52930,GFX_Diddy_Throw4,GFX_Diddy_Throw4End
	dl $C52948,$C52B68,GFX_Diddy_Throw5,GFX_Diddy_Throw5End
	dl $C52B7E,$C52D7E,GFX_Diddy_Throw6,GFX_Diddy_Throw6End
	dl $C52D98,$C52F18,GFX_Diddy_Throw7,GFX_Diddy_Throw7End
	dl $C52F32,$C53112,GFX_Diddy_Throw8,GFX_Diddy_Throw8End
	dl $C5312A,$C5334A,GFX_Diddy_Throw9,GFX_Diddy_Throw9End
	dl $C53366,$C535C6,GFX_Diddy_Throw10,GFX_Diddy_Throw10End
	dl $C535E4,$C53864,GFX_Diddy_Throw11,GFX_Diddy_Throw11End
	dl $C53880,$C53AE0,GFX_Diddy_Throw12,GFX_Diddy_Throw12End
	dl $C53B00,$C53D40,GFX_Diddy_Throw13,GFX_Diddy_Throw13End
	dl $C53D5A,$C53F3A,GFX_Diddy_Throw14,GFX_Diddy_Throw14End
	dl $C53F52,$C54112,GFX_Shuri_Spin1,GFX_Shuri_Spin1End
	dl $C54126,$C542A6,GFX_Shuri_Spin2,GFX_Shuri_Spin2End
	dl $C542BC,$C5445C,GFX_Shuri_Spin3,GFX_Shuri_Spin3End
	dl $C54472,$C54612,GFX_Shuri_Spin4,GFX_Shuri_Spin4End
	dl $C54628,$C547C8,GFX_Shuri_Spin5,GFX_Shuri_Spin5End
	dl $C547E0,$C549A0,GFX_Shuri_Spin6,GFX_Shuri_Spin6End
	dl $C549B8,$C54B78,GFX_Shuri_Spin7,GFX_Shuri_Spin7End
	dl $C54B8C,$C54D0C,GFX_Shuri_Spin8,GFX_Shuri_Spin8End
	dl $C54D20,$C54EA0,GFX_Shuri_Spin9,GFX_Shuri_Spin9End
	dl $C54EB8,$C55078,GFX_Shuri_Spin10,GFX_Shuri_Spin10End
	dl $C55090,$C55250,GFX_Shuri_Spin11,GFX_Shuri_Spin11End
	dl $C55266,$C55406,GFX_Shuri_Spin12,GFX_Shuri_Spin12End
	dl $C5541A,$C5559A,GFX_Shuri_Spin13,GFX_Shuri_Spin13End
	dl $C555B0,$C55750,GFX_Shuri_Spin14,GFX_Shuri_Spin14End
	dl $C55768,$C559E8,GFX_Kruncha_Walk1,GFX_Kruncha_Walk1End
	dl $C55A0C,$C55D4C,GFX_Kruncha_Walk2,GFX_Kruncha_Walk2End
	dl $C55D72,$C56132,GFX_Kruncha_Walk3,GFX_Kruncha_Walk3End
	dl $C56156,$C564F6,GFX_Kruncha_Walk4,GFX_Kruncha_Walk4End
	dl $C5651E,$C568FE,GFX_Kruncha_Walk5,GFX_Kruncha_Walk5End
	dl $C56924,$C56C84,GFX_Kruncha_Walk6,GFX_Kruncha_Walk6End
	dl $C56CA0,$C56F60,GFX_Kruncha_Walk7,GFX_Kruncha_Walk7End
	dl $C56F7E,$C5719E,GFX_Kruncha_Walk8,GFX_Kruncha_Walk8End
	dl $C571B0,$C573D0,GFX_Kruncha_Walk9,GFX_Kruncha_Walk9End
	dl $C573E4,$C57624,GFX_Kruncha_Walk10,GFX_Kruncha_Walk10End
	dl $C57640,$C578A0,GFX_Kruncha_Walk11,GFX_Kruncha_Walk11End
	dl $C578BA,$C57B5A,GFX_Dixie_HoldWalk1,GFX_Dixie_HoldWalk1End
	dl $C57B76,$C57E36,GFX_Dixie_HoldWalk2,GFX_Dixie_HoldWalk2End
	dl $C57E52,$C58112,GFX_Dixie_HoldWalk3,GFX_Dixie_HoldWalk3End
	dl $C5812C,$C583CC,GFX_Dixie_HoldWalk4,GFX_Dixie_HoldWalk4End
	dl $C583E6,$C58686,GFX_Dixie_HoldWalk5,GFX_Dixie_HoldWalk5End
	dl $C586A0,$C58940,GFX_Dixie_HoldWalk6,GFX_Dixie_HoldWalk6End
	dl $C5895A,$C58BFA,GFX_Dixie_HoldWalk7,GFX_Dixie_HoldWalk7End
	dl $C58C14,$C58EB4,GFX_Dixie_HoldWalk8,GFX_Dixie_HoldWalk8End
	dl $C58ECE,$C5916E,GFX_Dixie_HoldWalk9,GFX_Dixie_HoldWalk9End
	dl $C59188,$C59428,GFX_Dixie_HoldWalk10,GFX_Dixie_HoldWalk10End
	dl $C59444,$C59704,GFX_Dixie_HoldWalk11,GFX_Dixie_HoldWalk11End
	dl $C5971E,$C599BE,GFX_Dixie_HoldWalk12,GFX_Dixie_HoldWalk12End
	dl $C599D8,$C59C78,GFX_Dixie_HoldWalk13,GFX_Dixie_HoldWalk13End
	dl $C59C92,$C59F32,GFX_Dixie_HoldWalk14,GFX_Dixie_HoldWalk14End
	dl $C59F4E,$C5A20E,GFX_Dixie_HoldWalk15,GFX_Dixie_HoldWalk15End
	dl $C5A228,$C5A4C8,GFX_Dixie_HoldWalk16,GFX_Dixie_HoldWalk16End
	dl $C5A4DA,$C5A69A,GFX_Dixie_Bounce1,GFX_Dixie_Bounce1End
	dl $C5A6AC,$C5A86C,GFX_Dixie_Bounce2,GFX_Dixie_Bounce2End
	dl $C5A87E,$C5A9DE,GFX_Dixie_Bounce3,GFX_Dixie_Bounce3End
	dl $C5A9F2,$C5AB72,GFX_Dixie_Bounce4,GFX_Dixie_Bounce4End
	dl $C5AB86,$C5AD06,GFX_Dixie_Bounce5,GFX_Dixie_Bounce5End
	dl $C5AD1C,$C5AEBC,GFX_Dixie_Bounce6,GFX_Dixie_Bounce6End
	dl $C5AED2,$C5B072,GFX_Dixie_Bounce7,GFX_Dixie_Bounce7End
	dl $C5B088,$C5B228,GFX_Dixie_Bounce8,GFX_Dixie_Bounce8End
	dl $C5B23A,$C5B3FA,GFX_Dixie_Bounce9,GFX_Dixie_Bounce9End
	dl $C5B40C,$C5B5CC,GFX_Dixie_Bounce10,GFX_Dixie_Bounce10End
	dl $C5B5E0,$C5B760,GFX_Dixie_Bounce11,GFX_Dixie_Bounce11End
	dl $C5B776,$C5B916,GFX_Dixie_Bounce12,GFX_Dixie_Bounce12End
	dl $C5B92C,$C5BACC,GFX_Dixie_Bounce13,GFX_Dixie_Bounce13End
	dl $C5BAE2,$C5BC82,GFX_Dixie_Bounce14,GFX_Dixie_Bounce14End
	dl $C5BC94,$C5BDF4,GFX_Dixie_Bounce15,GFX_Dixie_Bounce15End
	dl $C5BE0A,$C5BFAA,GFX_Dixie_Bounce16,GFX_Dixie_Bounce16End
	dl $C5BFBE,$C5C25E,GFX_Dixie_HoldIdle1,GFX_Dixie_HoldIdle1End
	dl $C5C272,$C5C512,GFX_Dixie_HoldIdle2,GFX_Dixie_HoldIdle2End
	dl $C5C51E,$C5C55E,GFX_WorldMapTorch_Idle1,GFX_WorldMapTorch_Idle1End
	dl $C5C56A,$C5C5AA,GFX_WorldMapTorch_Idle2,GFX_WorldMapTorch_Idle2End
	dl $C5C5B6,$C5C5F6,GFX_WorldMapTorch_Idle3,GFX_WorldMapTorch_Idle3End
	dl $C5C602,$C5C642,GFX_WorldMapTorch_Idle4,GFX_WorldMapTorch_Idle4End
	dl $C5C64E,$C5C68E,GFX_WorldMapTorch_Idle5,GFX_WorldMapTorch_Idle5End
	dl $C5C69A,$C5C6DA,GFX_WorldMapTorch_Idle6,GFX_WorldMapTorch_Idle6End
	dl $C5C6E6,$C5C726,GFX_WorldMapTorch_Idle7,GFX_WorldMapTorch_Idle7End
	dl $C5C732,$C5C772,GFX_WorldMapTorch_Idle8,GFX_WorldMapTorch_Idle8End
	dl $C5C77C,$C5C79C,GFX_WorldMapBat_Fly1,GFX_WorldMapBat_Fly1End
	dl $C5C7A6,$C5C7C6,GFX_WorldMapBat_Fly2,GFX_WorldMapBat_Fly2End
	dl $C5C7D2,$C5C812,GFX_WorldMapBat_Fly3,GFX_WorldMapBat_Fly3End
	dl $C5C81C,$C5C83C,GFX_WorldMapBat_Fly4,GFX_WorldMapBat_Fly4End
	dl $C5C846,$C5C866,GFX_WorldMapBat_Fly5,GFX_WorldMapBat_Fly5End
	dl $C5C872,$C5C8B2,GFX_WorldMapBat_Fly6,GFX_WorldMapBat_Fly6End
	dl $C5C8BE,$C5C8FE,GFX_WorldMapBat_Fly7,GFX_WorldMapBat_Fly7End
	dl $C5C90A,$C5C94A,GFX_WorldMapBat_Fly8,GFX_WorldMapBat_Fly8End
	dl $C5C954,$C5C974,GFX_WorldMapBat_Fly9,GFX_WorldMapBat_Fly9End
	dl $C5C980,$C5C9C0,GFX_WorldMapBat_Fly10,GFX_WorldMapBat_Fly10End
	dl $C5C9CA,$C5C9EA,GFX_WorldMapBat_Fly11,GFX_WorldMapBat_Fly11End
	dl $C5C9F6,$C5CA36,GFX_WorldMapBat_Fly12,GFX_WorldMapBat_Fly12End
	dl $C5CA40,$C5CA60,GFX_WorldMapBat_Fly13,GFX_WorldMapBat_Fly13End
	dl $C5CA6A,$C5CA8A,GFX_WorldMapBat_Fly14,GFX_WorldMapBat_Fly14End
	dl $C5CA96,$C5CAD6,GFX_WorldMapBat_Fly15,GFX_WorldMapBat_Fly15End
	dl $C5CAE2,$C5CB22,GFX_WorldMapBat_Fly16,GFX_WorldMapBat_Fly16End
	dl $C5CB2C,$C5CB4C,GFX_WorldMapBat_Fly17,GFX_WorldMapBat_Fly17End
	dl $C5CB56,$C5CB76,GFX_WorldMapBat_Fly18,GFX_WorldMapBat_Fly18End
	dl $C5CB82,$C5CBC2,GFX_WorldMapBat_Fly19,GFX_WorldMapBat_Fly19End
	dl $C5CBCC,$C5CBEC,GFX_WorldMapBat_Fly20,GFX_WorldMapBat_Fly20End
	dl $C5CBF6,$C5CC16,GFX_WorldMapBat_Fly21,GFX_WorldMapBat_Fly21End
	dl $C5CC22,$C5CC62,GFX_WorldMapBat_Fly22,GFX_WorldMapBat_Fly22End
	dl $C5CC6E,$C5CCAE,GFX_WorldMapBat_Fly23,GFX_WorldMapBat_Fly23End
	dl $C5CCBA,$C5CCFA,GFX_WorldMapBat_Fly24,GFX_WorldMapBat_Fly24End
	dl $C5CD04,$C5CD24,GFX_WorldMapBat_Fly25,GFX_WorldMapBat_Fly25End
	dl $C5CD30,$C5CD70,GFX_WorldMapBat_Fly26,GFX_WorldMapBat_Fly26End
	dl $C5CD7A,$C5CD9A,GFX_WorldMapBat_Fly27,GFX_WorldMapBat_Fly27End
	dl $C5CDA6,$C5CDE6,GFX_WorldMapBat_Fly28,GFX_WorldMapBat_Fly28End
	dl $C5CDF0,$C5CE10,GFX_WorldMapBat_Fly29,GFX_WorldMapBat_Fly29End
	dl $C5CE1C,$C5CE5C,GFX_WorldMapBat_Fly30,GFX_WorldMapBat_Fly30End
	dl $C5CE68,$C5CEA8,GFX_WorldMapBat_Fly31,GFX_WorldMapBat_Fly31End
	dl $C5CEB4,$C5CEF4,GFX_WorldMapBat_Fly32,GFX_WorldMapBat_Fly32End
	dl $C5CF06,$C5D006,GFX_WorldMapFlag_Idle1,GFX_WorldMapFlag_Idle1End
	dl $C5D018,$C5D118,GFX_WorldMapFlag_Idle2,GFX_WorldMapFlag_Idle2End
	dl $C5D12A,$C5D22A,GFX_WorldMapFlag_Idle3,GFX_WorldMapFlag_Idle3End
	dl $C5D23C,$C5D33C,GFX_WorldMapFlag_Idle4,GFX_WorldMapFlag_Idle4End
	dl $C5D34E,$C5D44E,GFX_WorldMapFlag_Idle5,GFX_WorldMapFlag_Idle5End
	dl $C5D460,$C5D560,GFX_WorldMapFlag_Idle6,GFX_WorldMapFlag_Idle6End
	dl $C5D572,$C5D672,GFX_WorldMapFlag_Idle7,GFX_WorldMapFlag_Idle7End
	dl $C5D684,$C5D784,GFX_WorldMapFlag_Idle8,GFX_WorldMapFlag_Idle8End
	dl $C5D796,$C5D896,GFX_WorldMapFlag_Idle9,GFX_WorldMapFlag_Idle9End
	dl $C5D8A8,$C5D9A8,GFX_WorldMapFlag_Idle10,GFX_WorldMapFlag_Idle10End
	dl $C5D9BA,$C5DABA,GFX_WorldMapFlag_Idle11,GFX_WorldMapFlag_Idle11End
	dl $C5DACC,$C5DBCC,GFX_WorldMapFlag_Idle12,GFX_WorldMapFlag_Idle12End
	dl $C5DBD8,$C5DC18,GFX_WorldMapSmoke_Puff1,GFX_WorldMapSmoke_Puff1End
	dl $C5DC26,$C5DC86,GFX_WorldMapSmoke_Puff2,GFX_WorldMapSmoke_Puff2End
	dl $C5DC94,$C5DCF4,GFX_WorldMapSmoke_Puff3,GFX_WorldMapSmoke_Puff3End
	dl $C5DD00,$C5DDA0,GFX_WorldMapSmoke_Puff4,GFX_WorldMapSmoke_Puff4End
	dl $C5DDB2,$C5DEB2,GFX_WorldMapSmoke_Puff5,GFX_WorldMapSmoke_Puff5End
	dl $C5DEC6,$C5DFE6,GFX_WorldMapSmoke_Puff6,GFX_WorldMapSmoke_Puff6End
	dl $C5DFFA,$C5E17A,GFX_WorldMapSmoke_Puff7,GFX_WorldMapSmoke_Puff7End
	dl $C5E18E,$C5E36E,GFX_WorldMapSmoke_Puff8,GFX_WorldMapSmoke_Puff8End
	dl $C5E37E,$C5E57E,GFX_WorldMapSmoke_Puff9,GFX_WorldMapSmoke_Puff9End
	dl $C5E590,$C5E750,GFX_WorldMapSmoke_Puff10,GFX_WorldMapSmoke_Puff10End
	dl $C5E760,$C5E8A0,GFX_WorldMapSmoke_Puff11,GFX_WorldMapSmoke_Puff11End
	dl $C5E8B4,$C5E9D4,GFX_WorldMapSmoke_Puff12,GFX_WorldMapSmoke_Puff12End
	dl $C5E9E4,$C5EAC4,GFX_WorldMapSmoke_Puff13,GFX_WorldMapSmoke_Puff13End
	dl $C5EAD4,$C5EBB4,GFX_WorldMapSmoke_Puff14,GFX_WorldMapSmoke_Puff14End
	dl $C5EBC2,$C5EC82,GFX_WorldMapSmoke_Puff15,GFX_WorldMapSmoke_Puff15End
	dl $C5EC90,$C5ED50,GFX_WorldMapSmoke_Puff16,GFX_WorldMapSmoke_Puff16End
	dl $C5ED60,$C5EDE0,GFX_WorldMapShark_Swim1,GFX_WorldMapShark_Swim1End
	dl $C5EDF0,$C5EE70,GFX_WorldMapShark_Swim2,GFX_WorldMapShark_Swim2End
	dl $C5EE7E,$C5EEDE,GFX_WorldMapShark_Swim3,GFX_WorldMapShark_Swim3End
	dl $C5EEEC,$C5EF4C,GFX_WorldMapShark_Swim4,GFX_WorldMapShark_Swim4End
	dl $C5EF58,$C5EF98,GFX_WorldMapShark_Swim5,GFX_WorldMapShark_Swim5End
	dl $C5EFA4,$C5EFE4,GFX_WorldMapShark_Swim6,GFX_WorldMapShark_Swim6End
	dl $C5EFF2,$C5F052,GFX_WorldMapShark_Swim7,GFX_WorldMapShark_Swim7End
	dl $C5F060,$C5F0C0,GFX_WorldMapShark_Swim8,GFX_WorldMapShark_Swim8End
	dl $C5F0D0,$C5F150,GFX_WorldMapShark_Swim9,GFX_WorldMapShark_Swim9End
	dl $C5F15E,$C5F1BE,GFX_WorldMapShark_Swim10,GFX_WorldMapShark_Swim10End
	dl $C5F1CC,$C5F22C,GFX_WorldMapShark_Swim11,GFX_WorldMapShark_Swim11End
	dl $C5F23A,$C5F29A,GFX_WorldMapShark_Swim12,GFX_WorldMapShark_Swim12End
	dl $C5F2A6,$C5F2E6,GFX_WorldMapShark_Swim13,GFX_WorldMapShark_Swim13End
	dl $C5F2F2,$C5F332,GFX_WorldMapShark_Swim14,GFX_WorldMapShark_Swim14End
	dl $C5F340,$C5F3A0,GFX_WorldMapShark_Swim15,GFX_WorldMapShark_Swim15End
	dl $C5F3AE,$C5F40E,GFX_WorldMapShark_Swim16,GFX_WorldMapShark_Swim16End
	dl $C5F41C,$C5F47C,GFX_WorldMapZinger_Fly1,GFX_WorldMapZinger_Fly1End
	dl $C5F486,$C5F506,GFX_WorldMapZinger_Fly2,GFX_WorldMapZinger_Fly2End
	dl $C5F512,$C5F5B2,GFX_WorldMapZinger_Fly3,GFX_WorldMapZinger_Fly3End
	dl $C5F5BC,$C5F63C,GFX_WorldMapZinger_Fly4,GFX_WorldMapZinger_Fly4End
	dl $C5F64A,$C5F6AA,GFX_WorldMapZinger_Fly5,GFX_WorldMapZinger_Fly5End
	dl $C5F6B4,$C5F734,GFX_WorldMapZinger_Fly6,GFX_WorldMapZinger_Fly6End
	dl $C5F744,$C5F7C4,GFX_WorldMapZinger_Fly7,GFX_WorldMapZinger_Fly7End
	dl $C5F7CE,$C5F84E,GFX_WorldMapZinger_Fly8,GFX_WorldMapZinger_Fly8End
	dl $C5F868,$C5FAA8,GFX_Dixie_Swim1,GFX_Dixie_Swim1End
	dl $C60183,$C603C3,GFX_Dixie_Swim2,GFX_Dixie_Swim2End
	dl $C603DD,$C6061D,GFX_Dixie_Swim3,GFX_Dixie_Swim3End
	dl $C6063D,$C6087D,GFX_Dixie_Swim4,GFX_Dixie_Swim4End
	dl $C6089F,$C60AFF,GFX_Dixie_Swim5,GFX_Dixie_Swim5End
	dl $C60B1F,$C60D5F,GFX_Dixie_Swim6,GFX_Dixie_Swim6End
	dl $C60D7D,$C60F9D,GFX_Dixie_Swim7,GFX_Dixie_Swim7End
	dl $C60FBD,$C611FD,GFX_Dixie_Swim8,GFX_Dixie_Swim8End
	dl $C6121B,$C6143B,GFX_Dixie_Swim9,GFX_Dixie_Swim9End
	dl $C61459,$C61679,GFX_Dixie_Swim10,GFX_Dixie_Swim10End
	dl $C61697,$C618B7,GFX_Dixie_Swim11,GFX_Dixie_Swim11End
	dl $C618D5,$C61AF5,GFX_Dixie_Swim12,GFX_Dixie_Swim12End
	dl $C61B11,$C61D11,GFX_Dixie_Swim13,GFX_Dixie_Swim13End
	dl $C61D2D,$C61F2D,GFX_Dixie_Swim14,GFX_Dixie_Swim14End
	dl $C61F4D,$C6218D,GFX_Dixie_Swim15,GFX_Dixie_Swim15End
	dl $C621AD,$C623ED,GFX_Dixie_Swim16,GFX_Dixie_Swim16End
	dl $C623FD,$C625FD,GFX_Sun_Idle,GFX_Sun_IdleEnd
	dl $C6261B,$C6289B,GFX_Rattly_IdleBounce1,GFX_Rattly_IdleBounce1End
	dl $C628B9,$C62B39,GFX_Rattly_IdleBounce2,GFX_Rattly_IdleBounce2End
	dl $C62B57,$C62DD7,GFX_Rattly_IdleBounce3,GFX_Rattly_IdleBounce3End
	dl $C62DF1,$C63091,GFX_Rattly_IdleBounce4,GFX_Rattly_IdleBounce4End
	dl $C630B1,$C63351,GFX_Rattly_IdleBounce5,GFX_Rattly_IdleBounce5End
	dl $C6336D,$C6362D,GFX_Rattly_IdleBounce6,GFX_Rattly_IdleBounce6End
	dl $C63649,$C63909,GFX_Rattly_Jump1,GFX_Rattly_Jump1End
	dl $C63927,$C63C07,GFX_Rattly_Jump2,GFX_Rattly_Jump2End
	dl $C63C29,$C63F49,GFX_Rattly_Jump3,GFX_Rattly_Jump3End
	dl $C63F67,$C642A7,GFX_Rattly_Jump4,GFX_Rattly_Jump4End
	dl $C642D1,$C64611,GFX_Rattly_Jump5,GFX_Rattly_Jump5End
	dl $C64639,$C64959,GFX_Rattly_Jump6,GFX_Rattly_Jump6End
	dl $C64981,$C64CA1,GFX_Rattly_Jump7,GFX_Rattly_Jump7End
	dl $C64CC9,$C64FE9,GFX_Rattly_Jump8,GFX_Rattly_Jump8End
	dl $C65011,$C65331,GFX_Rattly_Jump9,GFX_Rattly_Jump9End
	dl $C6533B,$C653BB,GFX_BurstEffect_Idle1,GFX_BurstEffect_Idle1End
	dl $C653CD,$C654CD,GFX_BurstEffect_Idle2,GFX_BurstEffect_Idle2End
	dl $C654E3,$C656E3,GFX_BurstEffect_Idle3,GFX_BurstEffect_Idle3End
	dl $C656F9,$C65959,GFX_BurstEffect_Idle4,GFX_BurstEffect_Idle4End
	dl $C65983,$C65BA3,GFX_BurstEffect_Idle5,GFX_BurstEffect_Idle5End
	dl $C65BC5,$C65D65,GFX_BurstEffect_Idle6,GFX_BurstEffect_Idle6End
	dl $C65D7D,$C65F9D,GFX_Dixie_RideRattly1,GFX_Dixie_RideRattly1End
	dl $C65FB1,$C661F1,GFX_Dixie_RideRattly2,GFX_Dixie_RideRattly2End
	dl $C6620B,$C6644B,GFX_Dixie_RideRattly3,GFX_Dixie_RideRattly3End
	dl $C66463,$C66683,GFX_Dixie_RideRattly4,GFX_Dixie_RideRattly4End
	dl $C6669D,$C668DD,GFX_Dixie_RideRattly5,GFX_Dixie_RideRattly5End
	dl $C668F7,$C66B37,GFX_Dixie_RideRattly6,GFX_Dixie_RideRattly6End
	dl $C66B51,$C66D91,GFX_Dixie_RideRattly7,GFX_Dixie_RideRattly7End
	dl $C66DA9,$C66FC9,GFX_Dixie_RideRattly8,GFX_Dixie_RideRattly8End
	dl $C66FE3,$C67223,GFX_Dixie_RideRattly9,GFX_Dixie_RideRattly9End
	dl $C6723B,$C6745B,GFX_Dixie_RideRattly10,GFX_Dixie_RideRattly10End
	dl $C67473,$C67693,GFX_Dixie_RideRattly11,GFX_Dixie_RideRattly11End
	dl $C676AB,$C678CB,GFX_Dixie_RideRattly12,GFX_Dixie_RideRattly12End
	dl $C678E3,$C67B03,GFX_Dixie_RideRattly13,GFX_Dixie_RideRattly13End
	dl $C67B1B,$C67D3B,GFX_Dixie_RideRattly14,GFX_Dixie_RideRattly14End
	dl $C67D51,$C67EF1,GFX_Lockjaw_Swim1,GFX_Lockjaw_Swim1End
	dl $C67F05,$C68085,GFX_Lockjaw_Swim2,GFX_Lockjaw_Swim2End
	dl $C68099,$C68219,GFX_Lockjaw_Swim3,GFX_Lockjaw_Swim3End
	dl $C6822F,$C683CF,GFX_Lockjaw_Swim4,GFX_Lockjaw_Swim4End
	dl $C683E5,$C68585,GFX_Lockjaw_Swim5,GFX_Lockjaw_Swim5End
	dl $C6859B,$C6873B,GFX_Lockjaw_Swim6,GFX_Lockjaw_Swim6End
	dl $C68753,$C688B3,GFX_Lockjaw_Swim7,GFX_Lockjaw_Swim7End
	dl $C688C7,$C68A47,GFX_Lockjaw_Swim8,GFX_Lockjaw_Swim8End
	dl $C68A5D,$C68B9D,GFX_Lockjaw_Swim9,GFX_Lockjaw_Swim9End
	dl $C68BB1,$C68D31,GFX_Lockjaw_Swim10,GFX_Lockjaw_Swim10End
	dl $C68D47,$C68EE7,GFX_Lockjaw_Swim11,GFX_Lockjaw_Swim11End
	dl $C68EFD,$C6909D,GFX_Lockjaw_Swim12,GFX_Lockjaw_Swim12End
	dl $C690B1,$C69231,GFX_Lockjaw_Attack1,GFX_Lockjaw_Attack1End
	dl $C69245,$C693C5,GFX_Lockjaw_Attack2,GFX_Lockjaw_Attack2End
	dl $C693DF,$C6955F,GFX_Lockjaw_Attack3,GFX_Lockjaw_Attack3End
	dl $C69579,$C696F9,GFX_Lockjaw_Attack4,GFX_Lockjaw_Attack4End
	dl $C6970D,$C6988D,GFX_Lockjaw_Attack5,GFX_Lockjaw_Attack5End
	dl $C698A5,$C69A65,GFX_Lockjaw_Attack6,GFX_Lockjaw_Attack6End
	dl $C69A7D,$C69C3D,GFX_Lockjaw_Attack7,GFX_Lockjaw_Attack7End
	dl $C69C55,$C69E15,GFX_Lockjaw_Attack8,GFX_Lockjaw_Attack8End
	dl $C69E2F,$C6A00F,GFX_Dixie_HangOnVerticalRope,GFX_Dixie_HangOnVerticalRopeEnd
	dl $C6A027,$C6A1E7,GFX_Dixie_TurnOnVerticalRope1,GFX_Dixie_TurnOnVerticalRope1End
	dl $C6A1FF,$C6A3BF,GFX_Dixie_TurnOnVerticalRope2,GFX_Dixie_TurnOnVerticalRope2End
	dl $C6A3CF,$C6A50F,GFX_Dixie_TurnOnVerticalRope3,GFX_Dixie_TurnOnVerticalRope3End
	dl $C6A523,$C6A6A3,GFX_Dixie_GrabAdjacentVerticalRope1,GFX_Dixie_GrabAdjacentVerticalRope1End
	dl $C6A6BB,$C6A87B,GFX_Dixie_GrabAdjacentVerticalRope2,GFX_Dixie_GrabAdjacentVerticalRope2End
	dl $C6A897,$C6AA97,GFX_Dixie_GrabAdjacentVerticalRope3,GFX_Dixie_GrabAdjacentVerticalRope3End
	dl $C6AAB1,$C6AC91,GFX_Dixie_GrabAdjacentVerticalRope4,GFX_Dixie_GrabAdjacentVerticalRope4End
	dl $C6ACAF,$C6AECF,GFX_Dixie_GrabAdjacentVerticalRope5,GFX_Dixie_GrabAdjacentVerticalRope5End
	dl $C6AEED,$C6B10D,GFX_Dixie_GrabAdjacentVerticalRope6,GFX_Dixie_GrabAdjacentVerticalRope6End
	dl $C6B12D,$C6B36D,GFX_Dixie_GrabAdjacentVerticalRope7,GFX_Dixie_GrabAdjacentVerticalRope7End
	dl $C6B389,$C6B589,GFX_Dixie_GrabAdjacentVerticalRope8,GFX_Dixie_GrabAdjacentVerticalRope8End
	dl $C6B5A3,$C6B7E3,GFX_Squawks_Fly1,GFX_Squawks_Fly1End
	dl $C6B7FF,$C6B9FF,GFX_Squawks_Fly2,GFX_Squawks_Fly2End
	dl $C6BA19,$C6BBF9,GFX_Squawks_Fly3,GFX_Squawks_Fly3End
	dl $C6BC15,$C6BE15,GFX_Squawks_Fly4,GFX_Squawks_Fly4End
	dl $C6BE33,$C6C053,GFX_Squawks_Fly5,GFX_Squawks_Fly5End
	dl $C6C071,$C6C291,GFX_Squawks_Fly6,GFX_Squawks_Fly6End
	dl $C6C2AD,$C6C4AD,GFX_Squawks_Fly7,GFX_Squawks_Fly7End
	dl $C6C4C9,$C6C6C9,GFX_Squawks_Fly8,GFX_Squawks_Fly8End
	dl $C6C6E5,$C6C8E5,GFX_Squawks_Fly9,GFX_Squawks_Fly9End
	dl $C6C901,$C6CB01,GFX_Squawks_Fly10,GFX_Squawks_Fly10End
	dl $C6CB1D,$C6CD7D,GFX_Squawks_Fly11,GFX_Squawks_Fly11End
	dl $C6CD99,$C6CFF9,GFX_Squawks_Fly12,GFX_Squawks_Fly12End
	dl $C6D015,$C6D275,GFX_Squawks_Fly13,GFX_Squawks_Fly13End
	dl $C6D299,$C6D519,GFX_Squawks_Fly14,GFX_Squawks_Fly14End
	dl $C6D52F,$C6D6CF,GFX_ClickClack_Walk1,GFX_ClickClack_Walk1End
	dl $C6D6E5,$C6D885,GFX_ClickClack_Walk2,GFX_ClickClack_Walk2End
	dl $C6D89D,$C6DA5D,GFX_ClickClack_Walk3,GFX_ClickClack_Walk3End
	dl $C6DA75,$C6DC35,GFX_ClickClack_Walk4,GFX_ClickClack_Walk4End
	dl $C6DC4D,$C6DE0D,GFX_ClickClack_Walk5,GFX_ClickClack_Walk5End
	dl $C6DE25,$C6DFE5,GFX_ClickClack_Walk6,GFX_ClickClack_Walk6End
	dl $C6DFFD,$C6E1BD,GFX_ClickClack_Walk7,GFX_ClickClack_Walk7End
	dl $C6E1D5,$C6E395,GFX_ClickClack_Walk8,GFX_ClickClack_Walk8End
	dl $C6E3AF,$C6E58F,GFX_ClickClack_FlipOver1,GFX_ClickClack_FlipOver1End
	dl $C6E5A7,$C6E767,GFX_ClickClack_FlipOver2,GFX_ClickClack_FlipOver2End
	dl $C6E77D,$C6E91D,GFX_ClickClack_FlipOver3,GFX_ClickClack_FlipOver3End
	dl $C6E933,$C6EAD3,GFX_ClickClack_FlipOver4,GFX_ClickClack_FlipOver4End
	dl $C6EAE7,$C6EC67,GFX_ClickClack_FlipOver5,GFX_ClickClack_FlipOver5End
	dl $C6EC7D,$C6EE1D,GFX_ClickClack_FlipOver6,GFX_ClickClack_FlipOver6End
	dl $C6EE33,$C6EFD3,GFX_ClickClack_FlipOver7,GFX_ClickClack_FlipOver7End
	dl $C6EFE9,$C6F189,GFX_ClickClack_FlipOver8,GFX_ClickClack_FlipOver8End
	dl $C6F19D,$C6F31D,GFX_ClickClack_Helpless1,GFX_ClickClack_Helpless1End
	dl $C6F333,$C6F4D3,GFX_ClickClack_Helpless2,GFX_ClickClack_Helpless2End
	dl $C6F4E9,$C6F689,GFX_ClickClack_Helpless3,GFX_ClickClack_Helpless3End
	dl $C6F6A1,$C6F861,GFX_ClickClack_Helpless4,GFX_ClickClack_Helpless4End
	dl $C6F879,$C6FA39,GFX_ClickClack_Helpless5,GFX_ClickClack_Helpless5End
	dl $C6FA51,$C6FC11,GFX_ClickClack_Helpless6,GFX_ClickClack_Helpless6End
	dl $C7009E,$C7023E,GFX_ClickClack_Helpless7,GFX_ClickClack_Helpless7End
	dl $C70254,$C703F4,GFX_ClickClack_Helpless8,GFX_ClickClack_Helpless8End
	dl $C7040E,$C7064E,GFX_Dixie_HangFromSquawks1,GFX_Dixie_HangFromSquawks1End
	dl $C70668,$C708A8,GFX_Dixie_HangFromSquawks2,GFX_Dixie_HangFromSquawks2End
	dl $C708C0,$C70AE0,GFX_Dixie_HangFromSquawks3,GFX_Dixie_HangFromSquawks3End
	dl $C70AF6,$C70CF6,GFX_Dixie_HangFromSquawks4,GFX_Dixie_HangFromSquawks4End
	dl $C70D0E,$C70F2E,GFX_Dixie_HangFromSquawks5,GFX_Dixie_HangFromSquawks5End
	dl $C70F46,$C71166,GFX_Dixie_HangFromSquawks6,GFX_Dixie_HangFromSquawks6End
	dl $C7117E,$C7139E,GFX_Dixie_HangFromSquawks7,GFX_Dixie_HangFromSquawks7End
	dl $C713B6,$C715D6,GFX_Dixie_HangFromSquawks8,GFX_Dixie_HangFromSquawks8End
	dl $C715E2,$C716E2,GFX_WaterSplash_Idle1,GFX_WaterSplash_Idle1End
	dl $C716F2,$C71832,GFX_WaterSplash_Idle2,GFX_WaterSplash_Idle2End
	dl $C71846,$C719C6,GFX_WaterSplash_Idle3,GFX_WaterSplash_Idle3End
	dl $C719DA,$C71C1A,GFX_WaterSplash_Idle4,GFX_WaterSplash_Idle4End
	dl $C71C38,$C71F18,GFX_WaterSplash_Idle5,GFX_WaterSplash_Idle5End
	dl $C71F3A,$C721FA,GFX_WaterSplash_Idle6,GFX_WaterSplash_Idle6End
	dl $C7221E,$C7255E,GFX_WaterSplash_Idle7,GFX_WaterSplash_Idle7End
	dl $C72588,$C728C8,GFX_WaterSplash_Idle8,GFX_WaterSplash_Idle8End
	dl $C728F0,$C72C10,GFX_WaterSplash_Idle9,GFX_WaterSplash_Idle9End
	dl $C72C2C,$C72EEC,GFX_WaterSplash_Idle10,GFX_WaterSplash_Idle10End
	dl $C72F0C,$C731AC,GFX_WaterSplash_Idle11,GFX_WaterSplash_Idle11End
	dl $C731C0,$C733A0,GFX_WaterSplash_Idle12,GFX_WaterSplash_Idle12End
	dl $C733B2,$C735D2,GFX_WaterSplash_Idle13,GFX_WaterSplash_Idle13End
	dl $C735E4,$C73804,GFX_WaterSplash_Idle14,GFX_WaterSplash_Idle14End
	dl $C73820,$C73960,GFX_WaterSplash_Idle15,GFX_WaterSplash_Idle15End
	dl $C7397A,$C73A9A,GFX_WaterSplash_Idle16,GFX_WaterSplash_Idle16End
	dl $C73AB0,$C73B90,GFX_CrocodileCauldronNosePiece_Idle,GFX_CrocodileCauldronNosePiece_IdleEnd
	dl $C73BAC,$C73ECC,GFX_Kutlass_Walk1,GFX_Kutlass_Walk1End
	dl $C73EE8,$C74208,GFX_Kutlass_Walk2,GFX_Kutlass_Walk2End
	dl $C74228,$C74588,GFX_Kutlass_Walk3,GFX_Kutlass_Walk3End
	dl $C745A8,$C748A8,GFX_Kutlass_Walk4,GFX_Kutlass_Walk4End
	dl $C748C8,$C74BC8,GFX_Kutlass_Walk5,GFX_Kutlass_Walk5End
	dl $C74BEE,$C74EEE,GFX_Kutlass_Walk6,GFX_Kutlass_Walk6End
	dl $C74F0E,$C7520E,GFX_Kutlass_Walk7,GFX_Kutlass_Walk7End
	dl $C75230,$C75550,GFX_Kutlass_Walk8,GFX_Kutlass_Walk8End
	dl $C75560,$C755E0,GFX_MapDixie_Walk1,GFX_MapDixie_Walk1End
	dl $C755F0,$C75670,GFX_MapDixie_Walk2,GFX_MapDixie_Walk2End
	dl $C75680,$C75700,GFX_MapDixie_Walk3,GFX_MapDixie_Walk3End
	dl $C75710,$C75790,GFX_MapDixie_Walk4,GFX_MapDixie_Walk4End
	dl $C757A0,$C75820,GFX_MapDixie_Walk5,GFX_MapDixie_Walk5End
	dl $C75830,$C758B0,GFX_MapDixie_Walk6,GFX_MapDixie_Walk6End
	dl $C758C0,$C75940,GFX_MapDixie_Walk7,GFX_MapDixie_Walk7End
	dl $C75950,$C759D0,GFX_MapDixie_Walk8,GFX_MapDixie_Walk8End
	dl $C759E0,$C75A60,GFX_MapDiddy_Walk1,GFX_MapDiddy_Walk1End
	dl $C75A70,$C75AF0,GFX_MapDiddy_Walk2,GFX_MapDiddy_Walk2End
	dl $C75B00,$C75B80,GFX_MapDiddy_Walk3,GFX_MapDiddy_Walk3End
	dl $C75B90,$C75C10,GFX_MapDiddy_Walk4,GFX_MapDiddy_Walk4End
	dl $C75C20,$C75CA0,GFX_MapDiddy_Walk5,GFX_MapDiddy_Walk5End
	dl $C75CB0,$C75D30,GFX_MapDiddy_Walk6,GFX_MapDiddy_Walk6End
	dl $C75D40,$C75DC0,GFX_MapDiddy_Walk7,GFX_MapDiddy_Walk7End
	dl $C75DD0,$C75E50,GFX_MapDiddy_Walk8,GFX_MapDiddy_Walk8End
	dl $C75E72,$C76132,GFX_Squawks_SpitEgg1,GFX_Squawks_SpitEgg1End
	dl $C7614A,$C763CA,GFX_Squawks_SpitEgg2,GFX_Squawks_SpitEgg2End
	dl $C763E6,$C76646,GFX_Squawks_SpitEgg3,GFX_Squawks_SpitEgg3End
	dl $C76660,$C76900,GFX_Squawks_SpitEgg4,GFX_Squawks_SpitEgg4End
	dl $C76920,$C76BC0,GFX_Squawks_SpitEgg5,GFX_Squawks_SpitEgg5End
	dl $C76BD6,$C76E36,GFX_Kremcoin_Idle1,GFX_Kremcoin_Idle1End
	dl $C76E50,$C770F0,GFX_Kremcoin_Idle2,GFX_Kremcoin_Idle2End
	dl $C7710A,$C773AA,GFX_Kremcoin_Idle3,GFX_Kremcoin_Idle3End
	dl $C773C0,$C77620,GFX_Kremcoin_Idle4,GFX_Kremcoin_Idle4End
	dl $C77638,$C777F8,GFX_Kremcoin_Idle5,GFX_Kremcoin_Idle5End
	dl $C7780A,$C778AA,GFX_Kremcoin_Idle6,GFX_Kremcoin_Idle6End
	dl $C778BA,$C779FA,GFX_Kremcoin_Idle7,GFX_Kremcoin_Idle7End
	dl $C77A12,$C77C32,GFX_Kremcoin_Idle8,GFX_Kremcoin_Idle8End
	dl $C77C4A,$C77E6A,GFX_Diddy_Bounce1,GFX_Diddy_Bounce1End
	dl $C77E80,$C78020,GFX_Diddy_Bounce2,GFX_Diddy_Bounce2End
	dl $C78034,$C781B4,GFX_Diddy_Bounce3,GFX_Diddy_Bounce3End
	dl $C781CA,$C7836A,GFX_Diddy_Bounce4,GFX_Diddy_Bounce4End
	dl $C7837E,$C784FE,GFX_Diddy_Bounce5,GFX_Diddy_Bounce5End
	dl $C78512,$C78692,GFX_Diddy_Bounce6,GFX_Diddy_Bounce6End
	dl $C786A8,$C78848,GFX_Diddy_Bounce7,GFX_Diddy_Bounce7End
	dl $C7885C,$C789DC,GFX_Diddy_Bounce8,GFX_Diddy_Bounce8End
	dl $C789F0,$C78B70,GFX_Diddy_Bounce9,GFX_Diddy_Bounce9End
	dl $C78B84,$C78D04,GFX_Diddy_Bounce10,GFX_Diddy_Bounce10End
	dl $C78D18,$C78E98,GFX_Diddy_Bounce11,GFX_Diddy_Bounce11End
	dl $C78EAC,$C7902C,GFX_Diddy_Bounce12,GFX_Diddy_Bounce12End
	dl $C79040,$C791C0,GFX_Diddy_Bounce13,GFX_Diddy_Bounce13End
	dl $C791D2,$C79392,GFX_Diddy_Bounce14,GFX_Diddy_Bounce14End
	dl $C793A8,$C79548,GFX_Diddy_Bounce15,GFX_Diddy_Bounce15End
	dl $C7955C,$C796DC,GFX_Diddy_Bounce16,GFX_Diddy_Bounce16End
	dl $C796F2,$C79892,GFX_Diddy_Bounce17,GFX_Diddy_Bounce17End
	dl $C798A8,$C79A48,GFX_Diddy_Bounce18,GFX_Diddy_Bounce18End
	dl $C79A66,$C79C86,GFX_Fireworks_Launch1,GFX_Fireworks_Launch1End
	dl $C79CA4,$C79EC4,GFX_Fireworks_Launch2,GFX_Fireworks_Launch2End
	dl $C79EE2,$C7A102,GFX_Fireworks_Launch3,GFX_Fireworks_Launch3End
	dl $C7A120,$C7A340,GFX_Fireworks_Launch4,GFX_Fireworks_Launch4End
	dl $C7A35C,$C7A55C,GFX_Fireworks_Launch5,GFX_Fireworks_Launch5End
	dl $C7A578,$C7A778,GFX_Fireworks_Launch6,GFX_Fireworks_Launch6End
	dl $C7A796,$C7A9B6,GFX_Fireworks_Launch7,GFX_Fireworks_Launch7End
	dl $C7A9D2,$C7ABD2,GFX_Fireworks_Launch8,GFX_Fireworks_Launch8End
	dl $C7ABF0,$C7AE10,GFX_Fireworks_Launch9,GFX_Fireworks_Launch9End
	dl $C7AE34,$C7B114,GFX_Kutlass_Attack1,GFX_Kutlass_Attack1End
	dl $C7B132,$C7B472,GFX_Kutlass_Attack2,GFX_Kutlass_Attack2End
	dl $C7B49C,$C7B77C,GFX_Kutlass_Attack3,GFX_Kutlass_Attack3End
	dl $C7B7A2,$C7BA42,GFX_Kutlass_Attack4,GFX_Kutlass_Attack4End
	dl $C7BA62,$C7BD02,GFX_Kutlass_Attack5,GFX_Kutlass_Attack5End
	dl $C7BD22,$C7BFC2,GFX_Kutlass_Attack6,GFX_Kutlass_Attack6End
	dl $C7BFE2,$C7C282,GFX_Kutlass_Attack7,GFX_Kutlass_Attack7End
	dl $C7C29C,$C7C59C,GFX_Kutlass_Attack8,GFX_Kutlass_Attack8End
	dl $C7C5BA,$C7C89A,GFX_Kutlass_Attack9,GFX_Kutlass_Attack9End
	dl $C7C8B2,$C7CB32,GFX_Kutlass_Attack10,GFX_Kutlass_Attack10End
	dl $C7CB48,$C7CDA8,GFX_Kutlass_Attack11,GFX_Kutlass_Attack11End
	dl $C7CDCA,$C7D0EA,GFX_Kutlass_Attack12,GFX_Kutlass_Attack12End
	dl $C7D10C,$C7D3CC,GFX_Kutlass_Attack13,GFX_Kutlass_Attack13End
	dl $C7D3EE,$C7D70E,GFX_Kutlass_Attack14,GFX_Kutlass_Attack14End
	dl $C7D728,$C7DA28,GFX_Kutlass_Attack15,GFX_Kutlass_Attack15End
	dl $C7DA44,$C7DD64,GFX_Kutlass_Attack16,GFX_Kutlass_Attack16End
	dl $C7DD82,$C7E062,GFX_Kutlass_Attack17,GFX_Kutlass_Attack17End
	dl $C7E084,$C7E3A4,GFX_Kutlass_Attack18,GFX_Kutlass_Attack18End
	dl $C7E3D0,$C7E730,GFX_Kutlass_Attack19,GFX_Kutlass_Attack19End
	dl $C7E75C,$C7EABC,GFX_Kutlass_Attack20,GFX_Kutlass_Attack20End
	dl $C7EADE,$C7EDFE,GFX_Kutlass_Attack21,GFX_Kutlass_Attack21End
	dl $C7EE0A,$C7EE4A,GFX_UnknownEffect1_Idle1,GFX_UnknownEffect1_Idle1End
	dl $C7EE5A,$C7EF3A,GFX_UnknownEffect1_Idle2,GFX_UnknownEffect1_Idle2End
	dl $C7EF46,$C7F046,GFX_UnknownEffect1_Idle3,GFX_UnknownEffect1_Idle3End
	dl $C7F060,$C7F240,GFX_UnknownEffect1_Idle4,GFX_UnknownEffect1_Idle4End
	dl $C7F25A,$C7F43A,GFX_UnknownEffect1_Idle5,GFX_UnknownEffect1_Idle5End
	dl $C7F450,$C7F5F0,GFX_UnknownEffect1_Idle6,GFX_UnknownEffect1_Idle6End
	dl $C7F608,$C7F768,GFX_UnknownEffect1_Idle7,GFX_UnknownEffect1_Idle7End
	dl $C7F778,$C7F7F8,GFX_UnknownEffect1_Idle8,GFX_UnknownEffect1_Idle8End
	dl $C7F80E,$C7FA6E,GFX_LevelExit_Barrel,GFX_LevelExit_BarrelEnd
	dl $C7FA98,$C7FCB8,GFX_LevelExit_Pole,GFX_LevelExit_PoleEnd
	dl $C8011E,$C8019E,GFX_BarrelCannonSymbols_One,GFX_BarrelCannonSymbols_OneEnd
	dl $C801A8,$C80228,GFX_BarrelCannonSymbols_Two,GFX_BarrelCannonSymbols_TwoEnd
	dl $C80232,$C802B2,GFX_BarrelCannonSymbols_Three,GFX_BarrelCannonSymbols_ThreeEnd
	dl $C802BC,$C8033C,GFX_BarrelCannonSymbols_Four,GFX_BarrelCannonSymbols_FourEnd
	dl $C80346,$C803C6,GFX_BarrelCannonSymbols_Five,GFX_BarrelCannonSymbols_FiveEnd
	dl $C803E0,$C805C0,GFX_LifeBallon_Idle1,GFX_LifeBallon_Idle1End
	dl $C805DA,$C807BA,GFX_LifeBallon_Idle2,GFX_LifeBallon_Idle2End
	dl $C807D4,$C809B4,GFX_LifeBallon_Idle3,GFX_LifeBallon_Idle3End
	dl $C809CE,$C80BAE,GFX_LifeBallon_Idle4,GFX_LifeBallon_Idle4End
	dl $C80BC8,$C80DA8,GFX_LifeBallon_Idle5,GFX_LifeBallon_Idle5End
	dl $C80DC2,$C80FA2,GFX_LifeBallon_Idle6,GFX_LifeBallon_Idle6End
	dl $C80FBC,$C8119C,GFX_LifeBallon_Idle7,GFX_LifeBallon_Idle7End
	dl $C811B6,$C81396,GFX_LifeBallon_Idle8,GFX_LifeBallon_Idle8End
	dl $C813B6,$C816B6,GFX_NoAnimalBuddySign_Rattly,GFX_NoAnimalBuddySign_RattlyEnd
	dl $C816D6,$C819D6,GFX_NoAnimalBuddySign_Enguarde,GFX_NoAnimalBuddySign_EnguardeEnd
	dl $C819F6,$C81CF6,GFX_NoAnimalBuddySign_Squawks,GFX_NoAnimalBuddySign_SquawksEnd
	dl $C81D16,$C82016,GFX_NoAnimalBuddySign_Rambi,GFX_NoAnimalBuddySign_RambiEnd
	dl $C82036,$C82336,GFX_NoAnimalBuddySign_Squitter,GFX_NoAnimalBuddySign_SquitterEnd
	dl $C8234A,$C8240A,GFX_DKCoin_Idle1,GFX_DKCoin_Idle1End
	dl $C82422,$C82642,GFX_DKCoin_Idle2,GFX_DKCoin_Idle2End
	dl $C8265A,$C8299A,GFX_DKCoin_Idle3,GFX_DKCoin_Idle3End
	dl $C829B6,$C82D36,GFX_DKCoin_Idle4,GFX_DKCoin_Idle4End
	dl $C82D52,$C830D2,GFX_DKCoin_Idle5,GFX_DKCoin_Idle5End
	dl $C830EE,$C8346E,GFX_DKCoin_Idle6,GFX_DKCoin_Idle6End
	dl $C83484,$C83744,GFX_DKCoin_Idle7,GFX_DKCoin_Idle7End
	dl $C8375C,$C8397C,GFX_DKCoin_Idle8,GFX_DKCoin_Idle8End
	dl $C83992,$C83B32,GFX_Lockjaw_Turn1,GFX_Lockjaw_Turn1End
	dl $C83B44,$C83D04,GFX_Lockjaw_Turn2,GFX_Lockjaw_Turn2End
	dl $C83D1A,$C83E5A,GFX_Lockjaw_Turn3,GFX_Lockjaw_Turn3End
	dl $C83E6A,$C83FAA,GFX_Lockjaw_Turn4,GFX_Lockjaw_Turn4End
	dl $C83FBC,$C840BC,GFX_Lockjaw_Turn5,GFX_Lockjaw_Turn5End
	dl $C840D2,$C84212,GFX_Lockjaw_Turn6,GFX_Lockjaw_Turn6End
	dl $C8422C,$C843AC,GFX_Lockjaw_Turn7,GFX_Lockjaw_Turn7End
	dl $C843C4,$C84584,GFX_Lockjaw_Dead,GFX_Lockjaw_DeadEnd
	dl $C8459A,$C846DA,GFX_Shuri_Dead,GFX_Shuri_DeadEnd
	dl $C846F2,$C848B2,GFX_Neek_Walk1,GFX_Neek_Walk1End
	dl $C848CA,$C84A8A,GFX_Neek_Walk2,GFX_Neek_Walk2End
	dl $C84AA4,$C84C84,GFX_Neek_Walk3,GFX_Neek_Walk3End
	dl $C84C9C,$C84E5C,GFX_Neek_Walk4,GFX_Neek_Walk4End
	dl $C84E76,$C85056,GFX_Neek_Walk5,GFX_Neek_Walk5End
	dl $C8506E,$C8522E,GFX_Neek_Walk6,GFX_Neek_Walk6End
	dl $C85246,$C85406,GFX_Neek_Walk7,GFX_Neek_Walk7End
	dl $C8541E,$C855DE,GFX_Neek_Walk8,GFX_Neek_Walk8End
	dl $C855FA,$C8585A,GFX_Neek_Dead1,GFX_Neek_Dead1End
	dl $C8587A,$C85ABA,GFX_Neek_Dead2,GFX_Neek_Dead2End
	dl $C85ADA,$C85D1A,GFX_Neek_Dead3,GFX_Neek_Dead3End
	dl $C85D36,$C85F96,GFX_Neek_Dead4,GFX_Neek_Dead4End
	dl $C85FAE,$C8616E,GFX_Neek_Turn1,GFX_Neek_Turn1End
	dl $C86182,$C86302,GFX_Neek_Turn2,GFX_Neek_Turn2End
	dl $C86316,$C86436,GFX_Neek_Turn3,GFX_Neek_Turn3End
	dl $C8645C,$C867BC,GFX_Klomp_Dead1,GFX_Klomp_Dead1End
	dl $C867E6,$C86B26,GFX_Klomp_Dead2,GFX_Klomp_Dead2End
	dl $C86B56,$C86E96,GFX_Klomp_Dead3,GFX_Klomp_Dead3End
	dl $C86EBE,$C871DE,GFX_Klomp_Dead4,GFX_Klomp_Dead4End
	dl $C87202,$C87542,GFX_Klomp_Turn1,GFX_Klomp_Turn1End
	dl $C87562,$C878C2,GFX_Klomp_Turn2,GFX_Klomp_Turn2End
	dl $C878E4,$C87C04,GFX_Klomp_Turn3,GFX_Klomp_Turn3End
	dl $C87C10,$C87CB0,GFX_SmokePuff_Idle1,GFX_SmokePuff_Idle1End
	dl $C87CC4,$C87DE4,GFX_SmokePuff_Idle2,GFX_SmokePuff_Idle2End
	dl $C87DF8,$C87F78,GFX_SmokePuff_Idle3,GFX_SmokePuff_Idle3End
	dl $C87F8C,$C881CC,GFX_SmokePuff_Idle4,GFX_SmokePuff_Idle4End
	dl $C881E2,$C884A2,GFX_SmokePuff_Idle5,GFX_SmokePuff_Idle5End
	dl $C884BA,$C8879A,GFX_SmokePuff_Idle6,GFX_SmokePuff_Idle6End
	dl $C887B8,$C889D8,GFX_SmokePuff_Idle7,GFX_SmokePuff_Idle7End
	dl $C889EA,$C88AEA,GFX_SmokePuff_Idle8,GFX_SmokePuff_Idle8End
	dl $C88B00,$C88D60,GFX_MiniNecky_Idle1,GFX_MiniNecky_Idle1End
	dl $C88D7A,$C88FBA,GFX_MiniNecky_Idle2,GFX_MiniNecky_Idle2End
	dl $C88FD0,$C891D0,GFX_MiniNecky_Idle3,GFX_MiniNecky_Idle3End
	dl $C891E4,$C89364,GFX_MiniNecky_Idle4,GFX_MiniNecky_Idle4End
	dl $C8937A,$C8951A,GFX_MiniNecky_Idle5,GFX_MiniNecky_Idle5End
	dl $C8952E,$C8970E,GFX_MiniNecky_Idle6,GFX_MiniNecky_Idle6End
	dl $C89722,$C89902,GFX_MiniNecky_Idle7,GFX_MiniNecky_Idle7End
	dl $C89918,$C89AB8,GFX_MiniNecky_Idle8,GFX_MiniNecky_Idle8End
	dl $C89ACC,$C89CAC,GFX_MiniNecky_Idle9,GFX_MiniNecky_Idle9End
	dl $C89CC0,$C89EA0,GFX_MiniNecky_Idle10,GFX_MiniNecky_Idle10End
	dl $C89EB6,$C8A0B6,GFX_MiniNecky_Idle11,GFX_MiniNecky_Idle11End
	dl $C8A0D0,$C8A310,GFX_MiniNecky_Idle12,GFX_MiniNecky_Idle12End
	dl $C8A320,$C8A3A0,GFX_Klobber_Emerge1,GFX_Klobber_Emerge1End
	dl $C8A3AE,$C8A46E,GFX_Klobber_Emerge2,GFX_Klobber_Emerge2End
	dl $C8A47E,$C8A55E,GFX_Klobber_Emerge3,GFX_Klobber_Emerge3End
	dl $C8A574,$C8A6B4,GFX_Klobber_Emerge4,GFX_Klobber_Emerge4End
	dl $C8A6C6,$C8A886,GFX_Klobber_Emerge5,GFX_Klobber_Emerge5End
	dl $C8A89A,$C8AA1A,GFX_Klobber_Emerge6,GFX_Klobber_Emerge6End
	dl $C8AA2C,$C8AB8C,GFX_Klobber_Emerge7,GFX_Klobber_Emerge7End
	dl $C8AB9C,$C8ACDC,GFX_Klobber_Emerge8,GFX_Klobber_Emerge8End
	dl $C8ACF4,$C8AE54,GFX_Klobber_Emerge9,GFX_Klobber_Emerge9End
	dl $C8AE70,$C8B010,GFX_Klobber_Emerge10,GFX_Klobber_Emerge10End
	dl $C8B02A,$C8B20A,GFX_Klobber_Emerge11,GFX_Klobber_Emerge11End
	dl $C8B224,$C8B464,GFX_Klobber_Emerge12,GFX_Klobber_Emerge12End
	dl $C8B47A,$C8B6DA,GFX_Klobber_Emerge13,GFX_Klobber_Emerge13End
	dl $C8B6EE,$C8B8CE,GFX_MiniNecky_Attack1,GFX_MiniNecky_Attack1End
	dl $C8B8E4,$C8BAE4,GFX_MiniNecky_Attack2,GFX_MiniNecky_Attack2End
	dl $C8BAFA,$C8BCFA,GFX_MiniNecky_Attack3,GFX_MiniNecky_Attack3End
	dl $C8BD0E,$C8BEEE,GFX_MiniNecky_Attack4,GFX_MiniNecky_Attack4End
	dl $C8BF08,$C8C0E8,GFX_MiniNecky_Attack5,GFX_MiniNecky_Attack5End
	dl $C8C102,$C8C2E2,GFX_MiniNecky_Attack6,GFX_MiniNecky_Attack6End
	dl $C8C2F8,$C8C438,GFX_MiniNecky_Attack7,GFX_MiniNecky_Attack7End
	dl $C8C44A,$C8C5AA,GFX_MiniNecky_Attack8,GFX_MiniNecky_Attack8End
	dl $C8C5C0,$C8C760,GFX_MiniNecky_Attack9,GFX_MiniNecky_Attack9End
	dl $C8C774,$C8C8F4,GFX_MiniNecky_Attack10,GFX_MiniNecky_Attack10End
	dl $C8C906,$C8CA66,GFX_MiniNecky_Attack11,GFX_MiniNecky_Attack11End
	dl $C8CA7A,$C8CBFA,GFX_MiniNecky_Attack12,GFX_MiniNecky_Attack12End
	dl $C8CC10,$C8CE70,GFX_KrowsEggs_Bounce1,GFX_KrowsEggs_Bounce1End
	dl $C8CE86,$C8D0E6,GFX_KrowsEggs_Bounce2,GFX_KrowsEggs_Bounce2End
	dl $C8D0FC,$C8D35C,GFX_KrowsEggs_Bounce3,GFX_KrowsEggs_Bounce3End
	dl $C8D36E,$C8D58E,GFX_KrowsEggs_Bounce4,GFX_KrowsEggs_Bounce4End
	dl $C8D5A2,$C8D7E2,GFX_KrowsEggs_Bounce5,GFX_KrowsEggs_Bounce5End
	dl $C8D7F4,$C8DA14,GFX_KrowsEggs_Bounce6,GFX_KrowsEggs_Bounce6End
	dl $C8DA28,$C8DC68,GFX_KrowsEggs_Bounce7,GFX_KrowsEggs_Bounce7End
	dl $C8DC7E,$C8DEDE,GFX_KrowsEggs_Bounce8,GFX_KrowsEggs_Bounce8End
	dl $C8DEF4,$C8E154,GFX_KrowsEggs_Bounce9,GFX_KrowsEggs_Bounce9End
	dl $C8E168,$C8E3A8,GFX_KrowsEggs_Bounce10,GFX_KrowsEggs_Bounce10End
	dl $C8E3BC,$C8E5FC,GFX_KrowsEggs_Bounce11,GFX_KrowsEggs_Bounce11End
	dl $C8E60E,$C8E82E,GFX_KrowsEggs_Bounce12,GFX_KrowsEggs_Bounce12End
	dl $C8E842,$C8EA82,GFX_KrowsEggs_Bounce13,GFX_KrowsEggs_Bounce13End
	dl $C8EA94,$C8ECB4,GFX_KrowsEggs_Bounce14,GFX_KrowsEggs_Bounce14End
	dl $C8ECC8,$C8EF08,GFX_KrowsEggs_Bounce15,GFX_KrowsEggs_Bounce15End
	dl $C8EF1E,$C8F17E,GFX_KrowsEggs_Bounce16,GFX_KrowsEggs_Bounce16End
	dl $C8F196,$C8F2F6,GFX_Klobber_Run1,GFX_Klobber_Run1End
	dl $C8F310,$C8F490,GFX_Klobber_Run2,GFX_Klobber_Run2End
	dl $C8F4AC,$C8F64C,GFX_Klobber_Run3,GFX_Klobber_Run3End
	dl $C8F664,$C8F824,GFX_Klobber_Run4,GFX_Klobber_Run4End
	dl $C8F83C,$C8F99C,GFX_Klobber_Run5,GFX_Klobber_Run5End
	dl $C9003A,$C901BA,GFX_Klobber_Run6,GFX_Klobber_Run6End
	dl $C901D0,$C903D0,GFX_Klobber_Run7,GFX_Klobber_Run7End
	dl $C903EA,$C9062A,GFX_Klobber_Run8,GFX_Klobber_Run8End
	dl $C90648,$C90868,GFX_Klobber_Run9,GFX_Klobber_Run9End
	dl $C90884,$C90A84,GFX_Klobber_Run10,GFX_Klobber_Run10End
	dl $C90A9A,$C90C3A,GFX_Klobber_Run11,GFX_Klobber_Run11End
	dl $C90C50,$C90EB0,GFX_KlobberBarrel_Run1,GFX_KlobberBarrel_Run1End
	dl $C90EC6,$C91126,GFX_KlobberBarrel_Run2,GFX_KlobberBarrel_Run2End
	dl $C9113E,$C913BE,GFX_KlobberBarrel_Run3,GFX_KlobberBarrel_Run3End
	dl $C913D4,$C91634,GFX_KlobberBarrel_Run4,GFX_KlobberBarrel_Run4End
	dl $C9164A,$C918AA,GFX_KlobberBarrel_Run5,GFX_KlobberBarrel_Run5End
	dl $C918C0,$C91B20,GFX_KlobberBarrel_Run6,GFX_KlobberBarrel_Run6End
	dl $C91B36,$C91D96,GFX_KlobberBarrel_Run7,GFX_KlobberBarrel_Run7End
	dl $C91DAC,$C9200C,GFX_KlobberBarrel_Run8,GFX_KlobberBarrel_Run8End
	dl $C92022,$C92282,GFX_KlobberBarrel_Run9,GFX_KlobberBarrel_Run9End
	dl $C92298,$C924F8,GFX_KlobberBarrel_Run10,GFX_KlobberBarrel_Run10End
	dl $C9250E,$C9276E,GFX_KlobberBarrel_Run11,GFX_KlobberBarrel_Run11End
	dl $C92784,$C929E4,GFX_KrowsEggs_Crack1,GFX_KrowsEggs_Crack1End
	dl $C929FA,$C92C5A,GFX_KrowsEggs_Crack2,GFX_KrowsEggs_Crack2End
	dl $C92C70,$C92ED0,GFX_KrowsEggs_Crack3,GFX_KrowsEggs_Crack3End
	dl $C92EE6,$C93146,GFX_KrowsEggs_Crack4,GFX_KrowsEggs_Crack4End
	dl $C9315C,$C933BC,GFX_KrowsEggs_Crack5,GFX_KrowsEggs_Crack5End
	dl $C933D8,$C935D8,GFX_Dixie_TeamUpWalk1,GFX_Dixie_TeamUpWalk1End
	dl $C935F6,$C93816,GFX_Dixie_TeamUpWalk2,GFX_Dixie_TeamUpWalk2End
	dl $C93832,$C93A32,GFX_Dixie_TeamUpWalk3,GFX_Dixie_TeamUpWalk3End
	dl $C93A4E,$C93C4E,GFX_Dixie_TeamUpWalk4,GFX_Dixie_TeamUpWalk4End
	dl $C93C66,$C93E86,GFX_Dixie_TeamUpWalk5,GFX_Dixie_TeamUpWalk5End
	dl $C93E9E,$C940BE,GFX_Dixie_TeamUpWalk6,GFX_Dixie_TeamUpWalk6End
	dl $C940D8,$C94318,GFX_Dixie_TeamUpWalk7,GFX_Dixie_TeamUpWalk7End
	dl $C94332,$C94572,GFX_Dixie_TeamUpWalk8,GFX_Dixie_TeamUpWalk8End
	dl $C94590,$C947B0,GFX_Dixie_TeamUpWalk9,GFX_Dixie_TeamUpWalk9End
	dl $C947CE,$C949EE,GFX_Dixie_TeamUpWalk10,GFX_Dixie_TeamUpWalk10End
	dl $C94A08,$C94BE8,GFX_Dixie_TeamUpWalk11,GFX_Dixie_TeamUpWalk11End
	dl $C94C02,$C94DE2,GFX_Diddy_Carried1,GFX_Diddy_Carried1End
	dl $C94DF8,$C94FF8,GFX_Diddy_Carried2,GFX_Diddy_Carried2End
	dl $C95010,$C95230,GFX_Diddy_Carried3,GFX_Diddy_Carried3End
	dl $C95248,$C95468,GFX_Diddy_Carried4,GFX_Diddy_Carried4End
	dl $C95482,$C95662,GFX_Diddy_Carried5,GFX_Diddy_Carried5End
	dl $C9567E,$C9587E,GFX_Diddy_Carried6,GFX_Diddy_Carried6End
	dl $C9589A,$C95A9A,GFX_Diddy_Carried7,GFX_Diddy_Carried7End
	dl $C95AAE,$C95C8E,GFX_Diddy_Carried8,GFX_Diddy_Carried8End
	dl $C95CA4,$C95E44,GFX_Diddy_Carried9,GFX_Diddy_Carried9End
	dl $C95E58,$C95FD8,GFX_Diddy_Carried10,GFX_Diddy_Carried10End
	dl $C95FEC,$C9616C,GFX_Diddy_Carried11,GFX_Diddy_Carried11End
	dl $C96180,$C96300,GFX_Diddy_Carried12,GFX_Diddy_Carried12End
	dl $C96330,$C967F0,GFX_KrowBody_Idle1,GFX_KrowBody_Idle1End
	dl $C96826,$C96C86,GFX_KrowBody_Idle2,GFX_KrowBody_Idle2End
	dl $C96CB4,$C97154,GFX_KrowBody_Idle3,GFX_KrowBody_Idle3End
	dl $C9717A,$C9759A,GFX_KrowBody_Idle4,GFX_KrowBody_Idle4End
	dl $C975B8,$C97958,GFX_KrowBody_Idle5,GFX_KrowBody_Idle5End
	dl $C97980,$C97DC0,GFX_KrowBody_Idle6,GFX_KrowBody_Idle6End
	dl $C97DEA,$C982AA,GFX_KrowBody_Idle7,GFX_KrowBody_Idle7End
	dl $C982D4,$C98734,GFX_KrowBody_Idle8,GFX_KrowBody_Idle8End
	dl $C98760,$C98C40,GFX_KrowBody_Idle9,GFX_KrowBody_Idle9End
	dl $C98C60,$C990E0,GFX_KrowBody_Idle10,GFX_KrowBody_Idle10End
	dl $C99110,$C995D0,GFX_KrowBody_Turn1,GFX_KrowBody_Turn1End
	dl $C995F2,$C99912,GFX_KrowBody_Turn2,GFX_KrowBody_Turn2End
	dl $C99934,$C99C54,GFX_KrowHead_Dazed1,GFX_KrowHead_Dazed1End
	dl $C99C76,$C99F96,GFX_KrowHead_Dazed2,GFX_KrowHead_Dazed2End
	dl $C99FB0,$C9A2B0,GFX_KrowHead_Turn1,GFX_KrowHead_Turn1End
	dl $C9A2C8,$C9A5A8,GFX_KrowHead_Turn2,GFX_KrowHead_Turn2End
	dl $C9A5C4,$C9A8E4,GFX_KrowHead_Turn3,GFX_KrowHead_Turn3End
	dl $C9A904,$C9AC64,GFX_KrowHead_Crow1,GFX_KrowHead_Crow1End
	dl $C9AC84,$C9B044,GFX_KrowHead_Crow2,GFX_KrowHead_Crow2End
	dl $C9B074,$C9B474,GFX_KrowHead_Crow3,GFX_KrowHead_Crow3End
	dl $C9B48C,$C9B6AC,GFX_Dixie_TeamUpThrow1,GFX_Dixie_TeamUpThrow1End
	dl $C9B6C2,$C9B8C2,GFX_Dixie_TeamUpThrow2,GFX_Dixie_TeamUpThrow2End
	dl $C9B8DA,$C9BAFA,GFX_Dixie_TeamUpThrow3,GFX_Dixie_TeamUpThrow3End
	dl $C9BB16,$C9BD76,GFX_Dixie_TeamUpThrow4,GFX_Dixie_TeamUpThrow4End
	dl $C9BD96,$C9BFD6,GFX_Dixie_TeamUpThrow5,GFX_Dixie_TeamUpThrow5End
	dl $C9BFF2,$C9C252,GFX_Dixie_TeamUpThrow6,GFX_Dixie_TeamUpThrow6End
	dl $C9C26C,$C9C44C,GFX_Dixie_TeamUpThrow7,GFX_Dixie_TeamUpThrow7End
	dl $C9C464,$C9C624,GFX_Dixie_TeamUpThrow8,GFX_Dixie_TeamUpThrow8End
	dl $C9C638,$C9C7B8,GFX_Dixie_TeamUpThrow9,GFX_Dixie_TeamUpThrow9End
	dl $C9C7CE,$C9C96E,GFX_Dixie_TeamUpThrow10,GFX_Dixie_TeamUpThrow10End
	dl $C9C980,$C9CAE0,GFX_Dixie_TeamUpThrow11,GFX_Dixie_TeamUpThrow11End
	dl $C9CAF6,$C9CC36,GFX_Dixie_TeamUpThrow12,GFX_Dixie_TeamUpThrow12End
	dl $C9CC50,$C9CE30,GFX_Dixie_TeamUpIdle1,GFX_Dixie_TeamUpIdle1End
	dl $C9CE4A,$C9D02A,GFX_Dixie_TeamUpIdle2,GFX_Dixie_TeamUpIdle2End
	dl $C9D044,$C9D224,GFX_Dixie_TeamUpIdle3,GFX_Dixie_TeamUpIdle3End
	dl $C9D23C,$C9D45C,GFX_Diddy_TeamUpWalk1,GFX_Diddy_TeamUpWalk1End
	dl $C9D474,$C9D694,GFX_Diddy_TeamUpWalk2,GFX_Diddy_TeamUpWalk2End
	dl $C9D6AC,$C9D8CC,GFX_Diddy_TeamUpWalk3,GFX_Diddy_TeamUpWalk3End
	dl $C9D8E8,$C9DAE8,GFX_Diddy_TeamUpWalk4,GFX_Diddy_TeamUpWalk4End
	dl $C9DB06,$C9DD26,GFX_Diddy_TeamUpWalk5,GFX_Diddy_TeamUpWalk5End
	dl $C9DD46,$C9DF86,GFX_Diddy_TeamUpWalk6,GFX_Diddy_TeamUpWalk6End
	dl $C9DFA6,$C9E1E6,GFX_Diddy_TeamUpWalk7,GFX_Diddy_TeamUpWalk7End
	dl $C9E206,$C9E446,GFX_Diddy_TeamUpWalk8,GFX_Diddy_TeamUpWalk8End
	dl $C9E464,$C9E684,GFX_Diddy_TeamUpWalk9,GFX_Diddy_TeamUpWalk9End
	dl $C9E6A2,$C9E8C2,GFX_Diddy_TeamUpWalk10,GFX_Diddy_TeamUpWalk10End
	dl $C9E8DE,$C9EADE,GFX_Diddy_TeamUpWalk11,GFX_Diddy_TeamUpWalk11End
	dl $C9EAF4,$C9ECF4,GFX_Diddy_CarriedWalk1,GFX_Diddy_CarriedWalk1End
	dl $C9ED0A,$C9EF0A,GFX_Diddy_CarriedWalk2,GFX_Diddy_CarriedWalk2End
	dl $C9EF20,$C9F120,GFX_Diddy_CarriedWalk3,GFX_Diddy_CarriedWalk3End
	dl $C9F134,$C9F314,GFX_Diddy_CarriedWalk4,GFX_Diddy_CarriedWalk4End
	dl $C9F32A,$C9F52A,GFX_Diddy_CarriedWalk5,GFX_Diddy_CarriedWalk5End
	dl $C9F542,$C9F762,GFX_Diddy_CarriedWalk6,GFX_Diddy_CarriedWalk6End
	dl $C9F77A,$C9F99A,GFX_Diddy_CarriedWalk7,GFX_Diddy_CarriedWalk7End
	dl $CA009C,$CA02BC,GFX_Diddy_CarriedWalk8,GFX_Diddy_CarriedWalk8End
	dl $CA02D4,$CA04F4,GFX_Diddy_CarriedWalk9,GFX_Diddy_CarriedWalk9End
	dl $CA050C,$CA072C,GFX_Diddy_CarriedWalk10,GFX_Diddy_CarriedWalk10End
	dl $CA0742,$CA0942,GFX_Diddy_CarriedWalk11,GFX_Diddy_CarriedWalk11End
	dl $CA095A,$CA0B7A,GFX_Diddy_RideSkullKart1,GFX_Diddy_RideSkullKart1End
	dl $CA0B96,$CA0D96,GFX_Diddy_RideSkullKart2,GFX_Diddy_RideSkullKart2End
	dl $CA0DB2,$CA0FB2,GFX_Diddy_RideSkullKart3,GFX_Diddy_RideSkullKart3End
	dl $CA0FD2,$CA1212,GFX_Diddy_RideSkullKart4,GFX_Diddy_RideSkullKart4End
	dl $CA1232,$CA1472,GFX_Diddy_RideSkullKart5,GFX_Diddy_RideSkullKart5End
	dl $CA1490,$CA16B0,GFX_Diddy_RideSkullKart6,GFX_Diddy_RideSkullKart6End
	dl $CA16CE,$CA18EE,GFX_Diddy_RideSkullKart7,GFX_Diddy_RideSkullKart7End
	dl $CA190C,$CA1B2C,GFX_Diddy_RideSkullKart8,GFX_Diddy_RideSkullKart8End
	dl $CA1B44,$CA1D64,GFX_Diddy_RideSkullKart9,GFX_Diddy_RideSkullKart9End
	dl $CA1D80,$CA1F80,GFX_Diddy_RideSkullKart10,GFX_Diddy_RideSkullKart10End
	dl $CA1F9E,$CA21BE,GFX_Diddy_RideSkullKart11,GFX_Diddy_RideSkullKart11End
	dl $CA21D2,$CA23B2,GFX_Diddy_RideSkullKart12,GFX_Diddy_RideSkullKart12End
	dl $CA23CC,$CA25AC,GFX_Diddy_RideSkullKart13,GFX_Diddy_RideSkullKart13End
	dl $CA25C8,$CA27C8,GFX_Diddy_RideSkullKart14,GFX_Diddy_RideSkullKart14End
	dl $CA27DE,$CA29DE,GFX_Diddy_RideSkullKart15,GFX_Diddy_RideSkullKart15End
	dl $CA29F0,$CA2BB0,GFX_Diddy_RideSkullKart16,GFX_Diddy_RideSkullKart16End
	dl $CA2BC0,$CA2D60,GFX_Diddy_RideSkullKart17,GFX_Diddy_RideSkullKart17End
	dl $CA2D74,$CA2F54,GFX_Diddy_RideSkullKart18,GFX_Diddy_RideSkullKart18End
	dl $CA2F6C,$CA312C,GFX_Diddy_RideSkullKart19,GFX_Diddy_RideSkullKart19End
	dl $CA314E,$CA34CE,GFX_SkullKart_Moving1,GFX_SkullKart_Moving1End
	dl $CA34F0,$CA3870,GFX_SkullKart_Moving2,GFX_SkullKart_Moving2End
	dl $CA3894,$CA3C34,GFX_SkullKart_Moving3,GFX_SkullKart_Moving3End
	dl $CA3C58,$CA3FF8,GFX_SkullKart_Moving4,GFX_SkullKart_Moving4End
	dl $CA401C,$CA43BC,GFX_SkullKart_Moving5,GFX_SkullKart_Moving5End
	dl $CA43DE,$CA475E,GFX_SkullKart_Moving6,GFX_SkullKart_Moving6End
	dl $CA4782,$CA4B22,GFX_SkullKart_Moving7,GFX_SkullKart_Moving7End
	dl $CA4B46,$CA4EE6,GFX_SkullKart_Moving8,GFX_SkullKart_Moving8End
	dl $CA4F0E,$CA528E,GFX_SkullKart_Moving9,GFX_SkullKart_Moving9End
	dl $CA52B2,$CA5652,GFX_SkullKart_Moving10,GFX_SkullKart_Moving10End
	dl $CA5672,$CA59D2,GFX_SkullKart_Moving11,GFX_SkullKart_Moving11End
	dl $CA59F4,$CA5D74,GFX_SkullKart_Moving12,GFX_SkullKart_Moving12End
	dl $CA5D98,$CA6138,GFX_SkullKart_Moving13,GFX_SkullKart_Moving13End
	dl $CA615E,$CA651E,GFX_SkullKart_Moving14,GFX_SkullKart_Moving14End
	dl $CA6548,$CA6948,GFX_SkullKart_Moving15,GFX_SkullKart_Moving15End
	dl $CA6968,$CA6D28,GFX_SkullKart_Moving16,GFX_SkullKart_Moving16End
	dl $CA6D4A,$CA712A,GFX_SkullKart_Moving17,GFX_SkullKart_Moving17End
	dl $CA714A,$CA750A,GFX_SkullKart_Moving18,GFX_SkullKart_Moving18End
	dl $CA752A,$CA788A,GFX_SkullKart_Moving19,GFX_SkullKart_Moving19End
	dl $CA78A6,$CA7B06,GFX_Dixie_RideSkullKart1,GFX_Dixie_RideSkullKart1End
	dl $CA7B20,$CA7D60,GFX_Dixie_RideSkullKart2,GFX_Dixie_RideSkullKart2End
	dl $CA7D78,$CA7FF8,GFX_Dixie_RideSkullKart3,GFX_Dixie_RideSkullKart3End
	dl $CA8014,$CA8274,GFX_Dixie_RideSkullKart4,GFX_Dixie_RideSkullKart4End
	dl $CA8290,$CA84F0,GFX_Dixie_RideSkullKart5,GFX_Dixie_RideSkullKart5End
	dl $CA850C,$CA876C,GFX_Dixie_RideSkullKart6,GFX_Dixie_RideSkullKart6End
	dl $CA8786,$CA89C6,GFX_Dixie_RideSkullKart7,GFX_Dixie_RideSkullKart7End
	dl $CA89E2,$CA8C42,GFX_Dixie_RideSkullKart8,GFX_Dixie_RideSkullKart8End
	dl $CA8C5C,$CA8E9C,GFX_Dixie_RideSkullKart9,GFX_Dixie_RideSkullKart9End
	dl $CA8EAE,$CA90CE,GFX_Dixie_RideSkullKart10,GFX_Dixie_RideSkullKart10End
	dl $CA90E0,$CA9300,GFX_Dixie_RideSkullKart11,GFX_Dixie_RideSkullKart11End
	dl $CA9312,$CA9532,GFX_Dixie_RideSkullKart12,GFX_Dixie_RideSkullKart12End
	dl $CA9548,$CA9748,GFX_Dixie_RideSkullKart13,GFX_Dixie_RideSkullKart13End
	dl $CA975E,$CA995E,GFX_Dixie_RideSkullKart14,GFX_Dixie_RideSkullKart14End
	dl $CA9978,$CA9BB8,GFX_Dixie_RideSkullKart15,GFX_Dixie_RideSkullKart15End
	dl $CA9BD0,$CA9DF0,GFX_Dixie_RideSkullKart16,GFX_Dixie_RideSkullKart16End
	dl $CA9E06,$CAA006,GFX_Dixie_RideSkullKart17,GFX_Dixie_RideSkullKart17End
	dl $CAA01C,$CAA21C,GFX_Dixie_RideSkullKart18,GFX_Dixie_RideSkullKart18End
	dl $CAA232,$CAA432,GFX_Dixie_RideSkullKart19,GFX_Dixie_RideSkullKart19End
	dl $CAA44A,$CAA66A,GFX_Klobber_Turn1,GFX_Klobber_Turn1End
	dl $CAA688,$CAA8A8,GFX_Klobber_Turn2,GFX_Klobber_Turn2End
	dl $CAA8C0,$CAAB40,GFX_KlobberBarrel_Turn1,GFX_KlobberBarrel_Turn1End
	dl $CAAB58,$CAADD8,GFX_KlobberBarrel_Turn2,GFX_KlobberBarrel_Turn2End
	dl $CAADF4,$CAB054,GFX_Klobber_Hit,GFX_Klobber_HitEnd
	dl $CAB070,$CAB270,GFX_Diddy_TeamUpLookBehind1,GFX_Diddy_TeamUpLookBehind1End
	dl $CAB28A,$CAB46A,GFX_Diddy_TeamUpLookBehind2,GFX_Diddy_TeamUpLookBehind2End
	dl $CAB484,$CAB664,GFX_Diddy_TeamUpLookBehind3,GFX_Diddy_TeamUpLookBehind3End
	dl $CAB680,$CAB880,GFX_Diddy_TeamUpLookBehind4,GFX_Diddy_TeamUpLookBehind4End
	dl $CAB89C,$CABA9C,GFX_Diddy_TeamUpLookBehind5,GFX_Diddy_TeamUpLookBehind5End
	dl $CABAB8,$CABCB8,GFX_Diddy_TeamUpLookBehind6,GFX_Diddy_TeamUpLookBehind6End
	dl $CABCD2,$CABEB2,GFX_Diddy_TeamUpLookBehind7,GFX_Diddy_TeamUpLookBehind7End
	dl $CABEC6,$CAC0A6,GFX_Diddy_TeamUpLookBehind8,GFX_Diddy_TeamUpLookBehind8End
	dl $CAC0C4,$CAC2E4,GFX_Diddy_TeamUpIdle1,GFX_Diddy_TeamUpIdle1End
	dl $CAC300,$CAC500,GFX_Diddy_TeamUpIdle2,GFX_Diddy_TeamUpIdle2End
	dl $CAC51C,$CAC71C,GFX_Diddy_TeamUpIdle3,GFX_Diddy_TeamUpIdle3End
	dl $CAC734,$CAC954,GFX_Dixie_TeamUpLookBehindIdle1,GFX_Dixie_TeamUpLookBehindIdle1End
	dl $CAC96C,$CACB8C,GFX_Dixie_TeamUpLookBehindIdle2,GFX_Dixie_TeamUpLookBehindIdle2End
	dl $CACBA4,$CACDC4,GFX_Dixie_TeamUpLookBehindIdle3,GFX_Dixie_TeamUpLookBehindIdle3End
	dl $CACDDC,$CACFFC,GFX_Dixie_TeamUpLookBehindIdle4,GFX_Dixie_TeamUpLookBehindIdle4End
	dl $CAD014,$CAD234,GFX_Dixie_TeamUpLookBehindIdle5,GFX_Dixie_TeamUpLookBehindIdle5End
	dl $CAD24C,$CAD46C,GFX_Dixie_TeamUpLookBehindIdle6,GFX_Dixie_TeamUpLookBehindIdle6End
	dl $CAD484,$CAD6A4,GFX_Dixie_TeamUpLookBehindIdle7,GFX_Dixie_TeamUpLookBehindIdle7End
	dl $CAD6BC,$CAD8DC,GFX_Dixie_TeamUpLookBehindIdle8,GFX_Dixie_TeamUpLookBehindIdle8End
	dl $CAD8F2,$CADAF2,GFX_Dixie_TeamUpLookBehindIdle9,GFX_Dixie_TeamUpLookBehindIdle9End
	dl $CADB08,$CADD08,GFX_Dixie_TeamUpLookBehindIdle10,GFX_Dixie_TeamUpLookBehindIdle10End
	dl $CADD20,$CADEE0,GFX_Dixie_TeamUpLookBehindIdle11,GFX_Dixie_TeamUpLookBehindIdle11End
	dl $CADEF4,$CAE074,GFX_Dixie_TeamUpLookBehindIdle12,GFX_Dixie_TeamUpLookBehindIdle12End
	dl $CAE08A,$CAE1CA,GFX_Dixie_TeamUpLookBehindIdle13,GFX_Dixie_TeamUpLookBehindIdle13End
	dl $CAE1E2,$CAE342,GFX_Dixie_TeamUpLookBehindIdle14,GFX_Dixie_TeamUpLookBehindIdle14End
	dl $CAE35A,$CAE4BA,GFX_Dixie_TeamUpLookBehindIdle15,GFX_Dixie_TeamUpLookBehindIdle15End
	dl $CAE4D2,$CAE632,GFX_Dixie_TeamUpLookBehindIdle16,GFX_Dixie_TeamUpLookBehindIdle16End
	dl $CAE658,$CAE8F8,GFX_Diddy_ClimbHorizontalRope1,GFX_Diddy_ClimbHorizontalRope1End
	dl $CAE920,$CAEBE0,GFX_Diddy_ClimbHorizontalRope2,GFX_Diddy_ClimbHorizontalRope2End
	dl $CAEC02,$CAEE62,GFX_Diddy_ClimbHorizontalRope3,GFX_Diddy_ClimbHorizontalRope3End
	dl $CAEE82,$CAF0C2,GFX_Diddy_ClimbHorizontalRope4,GFX_Diddy_ClimbHorizontalRope4End
	dl $CAF0E2,$CAF322,GFX_Diddy_ClimbHorizontalRope5,GFX_Diddy_ClimbHorizontalRope5End
	dl $CAF346,$CAF5C6,GFX_Diddy_ClimbHorizontalRope6,GFX_Diddy_ClimbHorizontalRope6End
	dl $CAF5E2,$CAF842,GFX_Diddy_ClimbHorizontalRope7,GFX_Diddy_ClimbHorizontalRope7End
	dl $CAF85E,$CAFABE,GFX_Diddy_ClimbHorizontalRope8,GFX_Diddy_ClimbHorizontalRope8End
	dl $CB0247,$CB0447,GFX_Diddy_ClimbHorizontalRope9,GFX_Diddy_ClimbHorizontalRope9End
	dl $CB0461,$CB06A1,GFX_Diddy_ClimbHorizontalRope10,GFX_Diddy_ClimbHorizontalRope10End
	dl $CB06BF,$CB087F,GFX_Diddy_ClimbHorizontalRope11,GFX_Diddy_ClimbHorizontalRope11End
	dl $CB089D,$CB0A5D,GFX_Diddy_ClimbHorizontalRope12,GFX_Diddy_ClimbHorizontalRope12End
	dl $CB0A7D,$CB0C5D,GFX_Diddy_ClimbHorizontalRope13,GFX_Diddy_ClimbHorizontalRope13End
	dl $CB0C79,$CB0E79,GFX_Diddy_ClimbHorizontalRope14,GFX_Diddy_ClimbHorizontalRope14End
	dl $CB0E95,$CB1095,GFX_Diddy_ClimbHorizontalRope15,GFX_Diddy_ClimbHorizontalRope15End
	dl $CB10AF,$CB12EF,GFX_Diddy_ClimbHorizontalRope16,GFX_Diddy_ClimbHorizontalRope16End
	dl $CB1311,$CB15D1,GFX_Diddy_ClimbHorizontalRope17,GFX_Diddy_ClimbHorizontalRope17End
	dl $CB15F5,$CB18D5,GFX_Diddy_ClimbHorizontalRope18,GFX_Diddy_ClimbHorizontalRope18End
	dl $CB18ED,$CB1AAD,GFX_ClickClack_Turn1,GFX_ClickClack_Turn1End
	dl $CB1AC3,$CB1C03,GFX_ClickClack_Turn2,GFX_ClickClack_Turn2End
	dl $CB1C39,$CB21B9,GFX_Kannon_Dead1,GFX_Kannon_Dead1End
	dl $CB21F5,$CB2775,GFX_Kannon_Dead2,GFX_Kannon_Dead2End
	dl $CB27AD,$CB2CED,GFX_Kannon_Dead3,GFX_Kannon_Dead3End
	dl $CB2D23,$CB31E3,GFX_Kannon_Dead4,GFX_Kannon_Dead4End
	dl $CB3213,$CB36D3,GFX_Kannon_ShootSideways1,GFX_Kannon_ShootSideways1End
	dl $CB3703,$CB3C23,GFX_Kannon_ShootSideways2,GFX_Kannon_ShootSideways2End
	dl $CB3C53,$CB4173,GFX_Kannon_ShootSideways3,GFX_Kannon_ShootSideways3End
	dl $CB41A3,$CB46C3,GFX_Kannon_ShootSideways4,GFX_Kannon_ShootSideways4End
	dl $CB46EF,$CB4C2F,GFX_Kannon_ShootSideways5,GFX_Kannon_ShootSideways5End
	dl $CB4C5F,$CB517F,GFX_Kannon_ShootSideways6,GFX_Kannon_ShootSideways6End
	dl $CB51AD,$CB570D,GFX_Kannon_ShootSideways7,GFX_Kannon_ShootSideways7End
	dl $CB5739,$CB5AF9,GFX_Kruncha_Turn1,GFX_Kruncha_Turn1End
	dl $CB5B1B,$CB5EFB,GFX_Kruncha_Turn2,GFX_Kruncha_Turn2End
	dl $CB5F1F,$CB631F,GFX_Kruncha_Dead1,GFX_Kruncha_Dead1End
	dl $CB6345,$CB66A5,GFX_Kruncha_Dead2,GFX_Kruncha_Dead2End
	dl $CB66CB,$CB6A2B,GFX_Kruncha_Dead3,GFX_Kruncha_Dead3End
	dl $CB6A4B,$CB6E0B,GFX_Kruncha_Dead4,GFX_Kruncha_Dead4End
	dl $CB6E31,$CB71F1,GFX_Kruncha_Dead5,GFX_Kruncha_Dead5End
	dl $CB7215,$CB75B5,GFX_Kruncha_Dead6,GFX_Kruncha_Dead6End
	dl $CB75DF,$CB797F,GFX_Kruncha_Enrage1,GFX_Kruncha_Enrage1End
	dl $CB79A7,$CB7D27,GFX_Kruncha_Enrage2,GFX_Kruncha_Enrage2End
	dl $CB7D51,$CB80F1,GFX_Kruncha_Enrage3,GFX_Kruncha_Enrage3End
	dl $CB8115,$CB8455,GFX_Kruncha_Enrage4,GFX_Kruncha_Enrage4End
	dl $CB847D,$CB87FD,GFX_Kruncha_Enrage5,GFX_Kruncha_Enrage5End
	dl $CB8825,$CB8BA5,GFX_Kruncha_Enrage6,GFX_Kruncha_Enrage6End
	dl $CB8BD1,$CB8F91,GFX_Kruncha_Enrage7,GFX_Kruncha_Enrage7End
	dl $CB8FC1,$CB93C1,GFX_Kruncha_Enrage8,GFX_Kruncha_Enrage8End
	dl $CB93EB,$CB97EB,GFX_Kruncha_Enrage9,GFX_Kruncha_Enrage9End
	dl $CB9815,$CB9C15,GFX_Kruncha_Enrage10,GFX_Kruncha_Enrage10End
	dl $CB9C47,$CBA187,GFX_Kannon_ShootDown1,GFX_Kannon_ShootDown1End
	dl $CBA1B7,$CBA6D7,GFX_Kannon_ShootDown2,GFX_Kannon_ShootDown2End
	dl $CBA709,$CBAC49,GFX_Kannon_ShootDown3,GFX_Kannon_ShootDown3End
	dl $CC051F,$CC0A9F,GFX_Kannon_ShootDown4,GFX_Kannon_ShootDown4End
	dl $CC0AD9,$CC1099,GFX_Kannon_ShootDown5,GFX_Kannon_ShootDown5End
	dl $CC10D1,$CC1671,GFX_Kannon_ShootDown6,GFX_Kannon_ShootDown6End
	dl $CC1687,$CC18E7,GFX_TNTKlobberBarrel_Run1,GFX_TNTKlobberBarrel_Run1End
	dl $CC18FD,$CC1B5D,GFX_TNTKlobberBarrel_Run2,GFX_TNTKlobberBarrel_Run2End
	dl $CC1B73,$CC1DD3,GFX_TNTKlobberBarrel_Run3,GFX_TNTKlobberBarrel_Run3End
	dl $CC1DE9,$CC2049,GFX_TNTKlobberBarrel_Run4,GFX_TNTKlobberBarrel_Run4End
	dl $CC205F,$CC22BF,GFX_TNTKlobberBarrel_Run5,GFX_TNTKlobberBarrel_Run5End
	dl $CC22D5,$CC2535,GFX_TNTKlobberBarrel_Run6,GFX_TNTKlobberBarrel_Run6End
	dl $CC254B,$CC27AB,GFX_TNTKlobberBarrel_Run7,GFX_TNTKlobberBarrel_Run7End
	dl $CC27C1,$CC2A21,GFX_TNTKlobberBarrel_Run8,GFX_TNTKlobberBarrel_Run8End
	dl $CC2A37,$CC2C97,GFX_TNTKlobberBarrel_Run9,GFX_TNTKlobberBarrel_Run9End
	dl $CC2CAD,$CC2F0D,GFX_TNTKlobberBarrel_Run10,GFX_TNTKlobberBarrel_Run10End
	dl $CC2F23,$CC3183,GFX_TNTKlobberBarrel_Run11,GFX_TNTKlobberBarrel_Run11End
	dl $CC3199,$CC33F9,GFX_TNTKlobberBarrel_Run12,GFX_TNTKlobberBarrel_Run12End
	dl $CC3419,$CC36B9,GFX_Kutlass_Turn1,GFX_Kutlass_Turn1End
	dl $CC36D5,$CC3995,GFX_Kutlass_Turn2,GFX_Kutlass_Turn2End
	dl $CC39B9,$CC3C99,GFX_Kutlass_Dead1,GFX_Kutlass_Dead1End
	dl $CC3CBD,$CC405D,GFX_Kutlass_Dead2,GFX_Kutlass_Dead2End
	dl $CC407F,$CC43FF,GFX_Kutlass_Dead3,GFX_Kutlass_Dead3End
	dl $CC4423,$CC47C3,GFX_Kutlass_Dead4,GFX_Kutlass_Dead4End
	dl $CC47CD,$CC484D,GFX_Explosion_Idle1,GFX_Explosion_Idle1End
	dl $CC485F,$CC495F,GFX_Explosion_Idle2,GFX_Explosion_Idle2End
	dl $CC4971,$CC4AD1,GFX_Explosion_Idle3,GFX_Explosion_Idle3End
	dl $CC4AE7,$CC4C87,GFX_Explosion_Idle4,GFX_Explosion_Idle4End
	dl $CC4C9F,$CC4E5F,GFX_Explosion_Idle5,GFX_Explosion_Idle5End
	dl $CC4E75,$CC5075,GFX_Explosion_Idle6,GFX_Explosion_Idle6End
	dl $CC508B,$CC52EB,GFX_Explosion_Idle7,GFX_Explosion_Idle7End
	dl $CC5305,$CC5545,GFX_Explosion_Idle8,GFX_Explosion_Idle8End
	dl $CC5567,$CC5827,GFX_Explosion_Idle9,GFX_Explosion_Idle9End
	dl $CC5841,$CC5B41,GFX_Explosion_Idle10,GFX_Explosion_Idle10End
	dl $CC5B59,$CC5E39,GFX_Explosion_Idle11,GFX_Explosion_Idle11End
	dl $CC5E53,$CC60F3,GFX_Explosion_Idle12,GFX_Explosion_Idle12End
	dl $CC6111,$CC6331,GFX_Explosion_Idle13,GFX_Explosion_Idle13End
	dl $CC6343,$CC6503,GFX_Explosion_Idle14,GFX_Explosion_Idle14End
	dl $CC6515,$CC6675,GFX_Explosion_Idle15,GFX_Explosion_Idle15End
	dl $CC668B,$CC68EB,GFX_TNTBarrel_PickUp1,GFX_TNTBarrel_PickUp1End
	dl $CC68FB,$CC6AFB,GFX_TNTBarrel_PickUp2,GFX_TNTBarrel_PickUp2End
	dl $CC6B0B,$CC6D0B,GFX_TNTBarrel_PickUp3,GFX_TNTBarrel_PickUp3End
	dl $CC6D1F,$CC6F5F,GFX_TNTBarrel_PickUp4,GFX_TNTBarrel_PickUp4End
	dl $CC6F69,$CC6FE9,GFX_Fireworks_CircleExplosion1,GFX_Fireworks_CircleExplosion1End
	dl $CC6FFB,$CC70FB,GFX_Fireworks_CircleExplosion2,GFX_Fireworks_CircleExplosion2End
	dl $CC710D,$CC72CD,GFX_Fireworks_CircleExplosion3,GFX_Fireworks_CircleExplosion3End
	dl $CC72DD,$CC74DD,GFX_Fireworks_CircleExplosion4,GFX_Fireworks_CircleExplosion4End
	dl $CC74ED,$CC76ED,GFX_Fireworks_CircleExplosion5,GFX_Fireworks_CircleExplosion5End
	dl $CC76FD,$CC78FD,GFX_Fireworks_CircleExplosion6,GFX_Fireworks_CircleExplosion6End
	dl $CC7913,$CC7B73,GFX_Fireworks_CircleExplosion7,GFX_Fireworks_CircleExplosion7End
	dl $CC7B89,$CC7DE9,GFX_Fireworks_CircleExplosion8,GFX_Fireworks_CircleExplosion8End
	dl $CC7DFD,$CC803D,GFX_Fireworks_CircleExplosion9,GFX_Fireworks_CircleExplosion9End
	dl $CC8053,$CC81F3,GFX_Fireworks_CircleExplosion10,GFX_Fireworks_CircleExplosion10End
	dl $CC81FD,$CC821D,GFX_Fireworks_OvalExplosion1,GFX_Fireworks_OvalExplosion1End
	dl $CC8229,$CC8269,GFX_Fireworks_OvalExplosion2,GFX_Fireworks_OvalExplosion2End
	dl $CC8277,$CC82D7,GFX_Fireworks_OvalExplosion3,GFX_Fireworks_OvalExplosion3End
	dl $CC82E5,$CC83A5,GFX_Fireworks_OvalExplosion4,GFX_Fireworks_OvalExplosion4End
	dl $CC83B5,$CC8495,GFX_Fireworks_OvalExplosion5,GFX_Fireworks_OvalExplosion5End
	dl $CC84A1,$CC85A1,GFX_Fireworks_OvalExplosion6,GFX_Fireworks_OvalExplosion6End
	dl $CC85B1,$CC86F1,GFX_Fireworks_OvalExplosion7,GFX_Fireworks_OvalExplosion7End
	dl $CC870B,$CC88EB,GFX_KRoolsNote_Float,GFX_KRoolsNote_FloatEnd
	dl $CC8907,$CC8B07,GFX_Diddy_TeamUpThrow1,GFX_Diddy_TeamUpThrow1End
	dl $CC8B23,$CC8D23,GFX_Diddy_TeamUpThrow2,GFX_Diddy_TeamUpThrow2End
	dl $CC8D3F,$CC8F3F,GFX_Diddy_TeamUpThrow3,GFX_Diddy_TeamUpThrow3End
	dl $CC8F5D,$CC917D,GFX_Diddy_TeamUpThrow4,GFX_Diddy_TeamUpThrow4End
	dl $CC9199,$CC9399,GFX_Diddy_TeamUpThrow5,GFX_Diddy_TeamUpThrow5End
	dl $CC93AF,$CC95AF,GFX_Diddy_TeamUpThrow6,GFX_Diddy_TeamUpThrow6End
	dl $CC95C5,$CC97C5,GFX_Diddy_TeamUpThrow7,GFX_Diddy_TeamUpThrow7End
	dl $CC97DB,$CC99DB,GFX_Dixie_BeingThrown1,GFX_Dixie_BeingThrown1End
	dl $CC99F5,$CC9BD5,GFX_Dixie_BeingThrown2,GFX_Dixie_BeingThrown2End
	dl $CC9BEB,$CC9D8B,GFX_Dixie_BeingThrown3,GFX_Dixie_BeingThrown3End
	dl $CC9D99,$CC9F19,GFX_Dixie_BeingThrown4,GFX_Dixie_BeingThrown4End
	dl $CC9F2D,$CCA04D,GFX_Dixie_BeingThrown5,GFX_Dixie_BeingThrown5End
	dl $CCA05D,$CCA13D,GFX_Dixie_BeingThrown6,GFX_Dixie_BeingThrown6End
	dl $CCA151,$CCA211,GFX_Dixie_BeingThrown7,GFX_Dixie_BeingThrown7End
	dl $CCA225,$CCA405,GFX_Dixie_Carried1,GFX_Dixie_Carried1End
	dl $CCA41B,$CCA61B,GFX_Dixie_Carried2,GFX_Dixie_Carried2End
	dl $CCA631,$CCA831,GFX_Dixie_Carried3,GFX_Dixie_Carried3End
	dl $CCA84B,$CCAA2B,GFX_Dixie_ClimbHorizontalRope1,GFX_Dixie_ClimbHorizontalRope1End
	dl $CCAA45,$CCAC25,GFX_Dixie_ClimbHorizontalRope2,GFX_Dixie_ClimbHorizontalRope2End
	dl $CCAC3F,$CCAE1F,GFX_Dixie_ClimbHorizontalRope3,GFX_Dixie_ClimbHorizontalRope3End
	dl $CCAE39,$CCB019,GFX_Dixie_ClimbHorizontalRope4,GFX_Dixie_ClimbHorizontalRope4End
	dl $CCB035,$CCB235,GFX_Dixie_ClimbHorizontalRope5,GFX_Dixie_ClimbHorizontalRope5End
	dl $CCB24F,$CCB42F,GFX_Dixie_ClimbHorizontalRope6,GFX_Dixie_ClimbHorizontalRope6End
	dl $CCB449,$CCB629,GFX_Dixie_ClimbHorizontalRope7,GFX_Dixie_ClimbHorizontalRope7End
	dl $CCB643,$CCB823,GFX_Dixie_ClimbHorizontalRope8,GFX_Dixie_ClimbHorizontalRope8End
	dl $CCB83B,$CCB9FB,GFX_Dixie_ClimbHorizontalRope9,GFX_Dixie_ClimbHorizontalRope9End
	dl $CCBA11,$CCBBB1,GFX_Dixie_ClimbHorizontalRope10,GFX_Dixie_ClimbHorizontalRope10End
	dl $CCBBC9,$CCBD89,GFX_Dixie_ClimbHorizontalRope11,GFX_Dixie_ClimbHorizontalRope11End
	dl $CCBDA3,$CCBF83,GFX_Dixie_ClimbHorizontalRope12,GFX_Dixie_ClimbHorizontalRope12End
	dl $CCBF9D,$CCC17D,GFX_Dixie_ClimbHorizontalRope13,GFX_Dixie_ClimbHorizontalRope13End
	dl $CCC197,$CCC377,GFX_Dixie_ClimbHorizontalRope14,GFX_Dixie_ClimbHorizontalRope14End
	dl $CCC38F,$CCC54F,GFX_Dixie_ClimbHorizontalRope15,GFX_Dixie_ClimbHorizontalRope15End
	dl $CCC567,$CCC727,GFX_Dixie_ClimbHorizontalRope16,GFX_Dixie_ClimbHorizontalRope16End
	dl $CCC73F,$CCC8FF,GFX_Dixie_ClimbUpSingleVerticalRope1,GFX_Dixie_ClimbUpSingleVerticalRope1End
	dl $CCC915,$CCCB15,GFX_Dixie_ClimbUpSingleVerticalRope2,GFX_Dixie_ClimbUpSingleVerticalRope2End
	dl $CCCB2B,$CCCD2B,GFX_Dixie_ClimbUpSingleVerticalRope3,GFX_Dixie_ClimbUpSingleVerticalRope3End
	dl $CCCD43,$CCCF03,GFX_Dixie_ClimbUpSingleVerticalRope4,GFX_Dixie_ClimbUpSingleVerticalRope4End
	dl $CCCF1B,$CCD0DB,GFX_Dixie_ClimbUpSingleVerticalRope5,GFX_Dixie_ClimbUpSingleVerticalRope5End
	dl $CCD0F3,$CCD2B3,GFX_Dixie_ClimbUpSingleVerticalRope6,GFX_Dixie_ClimbUpSingleVerticalRope6End
	dl $CCD2C7,$CCD447,GFX_Dixie_ClimbUpSingleVerticalRope7,GFX_Dixie_ClimbUpSingleVerticalRope7End
	dl $CCD45B,$CCD5DB,GFX_Dixie_ClimbUpSingleVerticalRope8,GFX_Dixie_ClimbUpSingleVerticalRope8End
	dl $CCD5EF,$CCD76F,GFX_Dixie_ClimbUpSingleVerticalRope9,GFX_Dixie_ClimbUpSingleVerticalRope9End
	dl $CCD787,$CCD947,GFX_Dixie_ClimbUpSingleVerticalRope10,GFX_Dixie_ClimbUpSingleVerticalRope10End
	dl $CCD961,$CCDB41,GFX_Dixie_ClimbUpSingleVerticalRope11,GFX_Dixie_ClimbUpSingleVerticalRope11End
	dl $CCDB5F,$CCDD7F,GFX_Dixie_ClimbUpSingleVerticalRope12,GFX_Dixie_ClimbUpSingleVerticalRope12End
	dl $CCDD9F,$CCE0FF,GFX_RollercoasterGate_Idle,GFX_RollercoasterGate_IdleEnd
	dl $CCE109,$CCE129,GFX_GhostRope_Appear1,GFX_GhostRope_Appear1End
	dl $CCE139,$CCE1B9,GFX_GhostRope_Appear2,GFX_GhostRope_Appear2End
	dl $CCE1CD,$CCE28D,GFX_GhostRope_Appear3,GFX_GhostRope_Appear3End
	dl $CCE2A5,$CCE3A5,GFX_GhostRope_Appear4,GFX_GhostRope_Appear4End
	dl $CCE3BD,$CCE51D,GFX_GhostRope_Appear5,GFX_GhostRope_Appear5End
	dl $CCE539,$CCE6D9,GFX_GhostRope_Appear6,GFX_GhostRope_Appear6End
	dl $CCE6F9,$CCE8D9,GFX_GhostRope_Appear7,GFX_GhostRope_Appear7End
	dl $CCE8E5,$CCE925,GFX_GhostRope_Disappear1,GFX_GhostRope_Disappear1End
	dl $CCE937,$CCE9D7,GFX_GhostRope_Disappear2,GFX_GhostRope_Disappear2End
	dl $CCE9F1,$CCEB11,GFX_GhostRope_Disappear3,GFX_GhostRope_Disappear3End
	dl $CCEB2F,$CCEC8F,GFX_GhostRope_Disappear4,GFX_GhostRope_Disappear4End
	dl $CCECB1,$CCEE51,GFX_GhostRope_Disappear5,GFX_GhostRope_Disappear5End
	dl $CCEE73,$CCF013,GFX_GhostRope_Disappear6,GFX_GhostRope_Disappear6End
	dl $CCF035,$CCF1D5,GFX_GhostRope_Disappear7,GFX_GhostRope_Disappear7End
	dl $CCF1FB,$CCF3DB,GFX_GhostRope_Disappear8,GFX_GhostRope_Disappear8End
	dl $CCF3FF,$CCF61F,GFX_GhostRope_AboutToDisappear,GFX_GhostRope_AboutToDisappearEnd
	dl $CCF643,$CCF863,GFX_GhostRope_Idle,GFX_GhostRope_IdleEnd
	dl $CCF88B,$CCFAEB,GFX_GhostRope_Unknown1,GFX_GhostRope_Unknown1End
	dl $CCFB15,$CCFD95,GFX_GhostRope_Unknown2,GFX_GhostRope_Unknown2End
	dl $CD0029,$CD02E9,GFX_Kaboing_Jumping1,GFX_Kaboing_Jumping1End
	dl $CD0303,$CD05A3,GFX_Kaboing_Jumping2,GFX_Kaboing_Jumping2End
	dl $CD05BF,$CD087F,GFX_Kaboing_Jumping3,GFX_Kaboing_Jumping3End
	dl $CD089D,$CD0B7D,GFX_Kaboing_Jumping4,GFX_Kaboing_Jumping4End
	dl $CD0B9B,$CD0E7B,GFX_Kaboing_Jumping5,GFX_Kaboing_Jumping5End
	dl $CD0E9B,$CD119B,GFX_Kaboing_Jumping6,GFX_Kaboing_Jumping6End
	dl $CD11B9,$CD1439,GFX_Kaboing_Jumping7,GFX_Kaboing_Jumping7End
	dl $CD1457,$CD16D7,GFX_Kaboing_Jumping8,GFX_Kaboing_Jumping8End
	dl $CD16F3,$CD19B3,GFX_Kaboing_Jumping9,GFX_Kaboing_Jumping9End
	dl $CD19D1,$CD1CB1,GFX_Kaboing_Jumping10,GFX_Kaboing_Jumping10End
	dl $CD1CCF,$CD1FAF,GFX_Kaboing_Jumping11,GFX_Kaboing_Jumping11End
	dl $CD1FCD,$CD22AD,GFX_Kaboing_Jumping12,GFX_Kaboing_Jumping12End
	dl $CD22D5,$CD2595,GFX_Kaboing_Jumping13,GFX_Kaboing_Jumping13End
	dl $CD25AF,$CD284F,GFX_Zinger_Fly1,GFX_Zinger_Fly1End
	dl $CD2869,$CD2B09,GFX_Zinger_Fly2,GFX_Zinger_Fly2End
	dl $CD2B23,$CD2E23,GFX_Zinger_Fly3,GFX_Zinger_Fly3End
	dl $CD2E41,$CD3121,GFX_Zinger_Fly4,GFX_Zinger_Fly4End
	dl $CD313D,$CD33FD,GFX_Zinger_Fly5,GFX_Zinger_Fly5End
	dl $CD341B,$CD36FB,GFX_Zinger_Fly6,GFX_Zinger_Fly6End
	dl $CD3715,$CD3A15,GFX_Zinger_Fly7,GFX_Zinger_Fly7End
	dl $CD3A33,$CD3D13,GFX_Zinger_Fly8,GFX_Zinger_Fly8End
	dl $CD3D2F,$CD3F8F,GFX_Zinger_Turn1,GFX_Zinger_Turn1End
	dl $CD3FA5,$CD41A5,GFX_Zinger_Turn2,GFX_Zinger_Turn2End
	dl $CD41BD,$CD43DD,GFX_Puftup_Dead1,GFX_Puftup_Dead1End
	dl $CD43F5,$CD4615,GFX_Puftup_Dead2,GFX_Puftup_Dead2End
	dl $CD462F,$CD480F,GFX_Puftup_Dead3,GFX_Puftup_Dead3End
	dl $CD4829,$CD4A09,GFX_Puftup_Dead4,GFX_Puftup_Dead4End
	dl $CD4A23,$CD4C63,GFX_Puftup_Swim1,GFX_Puftup_Swim1End
	dl $CD4C79,$CD4E79,GFX_Puftup_Swim2,GFX_Puftup_Swim2End
	dl $CD4E95,$CD5095,GFX_Puftup_Swim3,GFX_Puftup_Swim3End
	dl $CD50AF,$CD528F,GFX_Puftup_Swim4,GFX_Puftup_Swim4End
	dl $CD52A9,$CD5489,GFX_Puftup_Swim5,GFX_Puftup_Swim5End
	dl $CD54A3,$CD5683,GFX_Puftup_Swim6,GFX_Puftup_Swim6End
	dl $CD569D,$CD587D,GFX_Puftup_Swim7,GFX_Puftup_Swim7End
	dl $CD5897,$CD5A77,GFX_Puftup_Swim8,GFX_Puftup_Swim8End
	dl $CD5A95,$CD5CB5,GFX_Puftup_Swim9,GFX_Puftup_Swim9End
	dl $CD5CCF,$CD5F0F,GFX_Puftup_Swim10,GFX_Puftup_Swim10End
	dl $CD5F29,$CD6169,GFX_Puftup_Swim11,GFX_Puftup_Swim11End
	dl $CD6183,$CD63C3,GFX_Puftup_Swim12,GFX_Puftup_Swim12End
	dl $CD63DD,$CD661D,GFX_Puftup_Swim13,GFX_Puftup_Swim13End
	dl $CD6639,$CD6839,GFX_Puftup_PuffUp1,GFX_Puftup_PuffUp1End
	dl $CD6857,$CD6A77,GFX_Puftup_PuffUp2,GFX_Puftup_PuffUp2End
	dl $CD6A8F,$CD6D0F,GFX_Puftup_PuffUp3,GFX_Puftup_PuffUp3End
	dl $CD6D23,$CD6FC3,GFX_Puftup_PuffUp4,GFX_Puftup_PuffUp4End
	dl $CD6FD9,$CD7299,GFX_Puftup_PuffUp5,GFX_Puftup_PuffUp5End
	dl $CD72B3,$CD75B3,GFX_Puftup_PuffUp6,GFX_Puftup_PuffUp6End
	dl $CD75D1,$CD7911,GFX_Puftup_PuffUp7,GFX_Puftup_PuffUp7End
	dl $CD7933,$CD7CB3,GFX_Puftup_PuffUp8,GFX_Puftup_PuffUp8End
	dl $CD7CD7,$CD8077,GFX_Puftup_PuffUp9,GFX_Puftup_PuffUp9End
	dl $CD80A1,$CD84A1,GFX_Puftup_PuffUp10,GFX_Puftup_PuffUp10End
	dl $CD84C3,$CD88A3,GFX_Puftup_PuffUp11,GFX_Puftup_PuffUp11End
	dl $CD88C7,$CD8CC7,GFX_Puftup_PuffUp12,GFX_Puftup_PuffUp12End
	dl $CD8CD7,$CD8DB7,GFX_BananaBunch_Idle1,GFX_BananaBunch_Idle1End
	dl $CD8DC7,$CD8EA7,GFX_BananaBunch_Idle2,GFX_BananaBunch_Idle2End
	dl $CD8EB7,$CD8F97,GFX_BananaBunch_Idle3,GFX_BananaBunch_Idle3End
	dl $CD8FA9,$CD90A9,GFX_BananaBunch_Idle4,GFX_BananaBunch_Idle4End
	dl $CD90BB,$CD91BB,GFX_BananaBunch_Idle5,GFX_BananaBunch_Idle5End
	dl $CD91CD,$CD92CD,GFX_BananaBunch_Idle6,GFX_BananaBunch_Idle6End
	dl $CD92E9,$CD9669,GFX_LevelEndTarget_Idle,GFX_LevelEndTarget_IdleEnd
	dl $CD9687,$CD9A27,GFX_LevelEndTarget_Hit1,GFX_LevelEndTarget_Hit1End
	dl $CD9A45,$CD9DE5,GFX_LevelEndTarget_Hit2,GFX_LevelEndTarget_Hit2End
	dl $CD9E05,$CDA045,GFX_Klinger_Climbing1,GFX_Klinger_Climbing1End
	dl $CDA065,$CDA2A5,GFX_Klinger_Climbing2,GFX_Klinger_Climbing2End
	dl $CDA2C5,$CDA505,GFX_Klinger_Climbing3,GFX_Klinger_Climbing3End
	dl $CDA523,$CDA743,GFX_Klinger_Climbing4,GFX_Klinger_Climbing4End
	dl $CDA767,$CDA9E7,GFX_Klinger_Climbing5,GFX_Klinger_Climbing5End
	dl $CDAA05,$CDAC25,GFX_Klinger_Climbing6,GFX_Klinger_Climbing6End
	dl $CDAC41,$CDAE41,GFX_Klinger_Climbing7,GFX_Klinger_Climbing7End
	dl $CDAE5F,$CDB07F,GFX_Klinger_Climbing8,GFX_Klinger_Climbing8End
	dl $CDB09B,$CDB29B,GFX_Klinger_Climbing9,GFX_Klinger_Climbing9End
	dl $CDB2BD,$CDB51D,GFX_Klinger_Climbing10,GFX_Klinger_Climbing10End
	dl $CDB53D,$CDB77D,GFX_Klinger_Climbing11,GFX_Klinger_Climbing11End
	dl $CDB79D,$CDB9DD,GFX_Klinger_Climbing12,GFX_Klinger_Climbing12End
	dl $CDBA01,$CDBC81,GFX_Klinger_Climbing13,GFX_Klinger_Climbing13End
	dl $CDBCA7,$CDBF47,GFX_Klinger_Climbing14,GFX_Klinger_Climbing14End
	dl $CDBF6B,$CDC1EB,GFX_Klinger_Climbing15,GFX_Klinger_Climbing15End
	dl $CDC20B,$CDC4AB,GFX_Klinger_Climbing16,GFX_Klinger_Climbing16End
	dl $CDC4C5,$CDC6A5,GFX_Flitter_Fly1,GFX_Flitter_Fly1End
	dl $CDC6C5,$CDC8A5,GFX_Flitter_Fly2,GFX_Flitter_Fly2End
	dl $CDC8C1,$CDCB21,GFX_Flitter_Fly3,GFX_Flitter_Fly3End
	dl $CDCB37,$CDCD37,GFX_Flitter_Fly4,GFX_Flitter_Fly4End
	dl $CDCD51,$CDCF31,GFX_Flitter_Fly5,GFX_Flitter_Fly5End
	dl $CDCF49,$CDD169,GFX_Flitter_Fly6,GFX_Flitter_Fly6End
	dl $CDD185,$CDD3E5,GFX_Flitter_Fly7,GFX_Flitter_Fly7End
	dl $CDD403,$CDD623,GFX_Flitter_Fly8,GFX_Flitter_Fly8End
	dl $CDD63D,$CDD81D,GFX_Flitter_Turn1,GFX_Flitter_Turn1End
	dl $CDD837,$CDDA77,GFX_Flitter_Turn2,GFX_Flitter_Turn2End
	dl $CDDA95,$CDDCB5,GFX_Flitter_Turn3,GFX_Flitter_Turn3End
	dl $CDDCCD,$CDDEED,GFX_Flitter_Turn4,GFX_Flitter_Turn4End
	dl $CDDF05,$CDE0C5,GFX_Flitter_Turn5,GFX_Flitter_Turn5End
	dl $CDE0DD,$CDE23D,GFX_Flitter_Turn6,GFX_Flitter_Turn6End
	dl $CDE257,$CDE437,GFX_Flitter_Turn7,GFX_Flitter_Turn7End
	dl $CDE44D,$CDE5ED,GFX_Flitter_Turn8,GFX_Flitter_Turn8End
	dl $CDE611,$CDE891,GFX_Klinger_SlideDown1,GFX_Klinger_SlideDown1End
	dl $CDE8B3,$CDEB13,GFX_Klinger_SlideDown2,GFX_Klinger_SlideDown2End
	dl $CDEB39,$CDEDD9,GFX_Klinger_SlideDown3,GFX_Klinger_SlideDown3End
	dl $CDEDFD,$CDF0DD,GFX_Klinger_SlideDown4,GFX_Klinger_SlideDown4End
	dl $CDF101,$CDF3E1,GFX_Klinger_SlideDown5,GFX_Klinger_SlideDown5End
	dl $CDF405,$CDF6E5,GFX_Klinger_SlideDown6,GFX_Klinger_SlideDown6End
	dl $CDF707,$CDF9C7,GFX_Klinger_SlideDown7,GFX_Klinger_SlideDown7End
	dl $CDF9EB,$CDFCCB,GFX_Klinger_SlideDown8,GFX_Klinger_SlideDown8End
	dl $CDFCE1,$CDFEE1,GFX_Flitter_Dead1,GFX_Flitter_Dead1End
	dl $CE00F5,$CE0335,GFX_Flitter_Dead2,GFX_Flitter_Dead2End
	dl $CE0349,$CE04C9,GFX_Flitter_Dead3,GFX_Flitter_Dead3End
	dl $CE04DF,$CE073F,GFX_Flitter_Dead4,GFX_Flitter_Dead4End
	dl $CE074D,$CE08CD,GFX_Flitter_Dead5,GFX_Flitter_Dead5End
	dl $CE08E5,$CE0B05,GFX_Flitter_Dead6,GFX_Flitter_Dead6End
	dl $CE0B17,$CE0C77,GFX_Flitter_Dead7,GFX_Flitter_Dead7End
	dl $CE0C93,$CE0FB3,GFX_Klinger_Dead1,GFX_Klinger_Dead1End
	dl $CE0FD5,$CE1235,GFX_Klinger_Dead2,GFX_Klinger_Dead2End
	dl $CE125B,$CE14FB,GFX_Klinger_Dead3,GFX_Klinger_Dead3End
	dl $CE1521,$CE17C1,GFX_Klinger_Dead4,GFX_Klinger_Dead4End
	dl $CE17CD,$CE180D,GFX_UnknownEffect3_Idle,GFX_UnknownEffect3_IdleEnd
	dl $CE1821,$CE19A1,GFX_Flotsam_Swim1,GFX_Flotsam_Swim1End
	dl $CE19B5,$CE1B35,GFX_Flotsam_Swim2,GFX_Flotsam_Swim2End
	dl $CE1B49,$CE1CC9,GFX_Flotsam_Swim3,GFX_Flotsam_Swim3End
	dl $CE1CDB,$CE1E3B,GFX_Flotsam_Swim4,GFX_Flotsam_Swim4End
	dl $CE1E4F,$CE1FCF,GFX_Flotsam_Swim5,GFX_Flotsam_Swim5End
	dl $CE1FE1,$CE2141,GFX_Flotsam_Swim6,GFX_Flotsam_Swim6End
	dl $CE2155,$CE22D5,GFX_Flotsam_Swim7,GFX_Flotsam_Swim7End
	dl $CE22E9,$CE2469,GFX_Flotsam_Swim8,GFX_Flotsam_Swim8End
	dl $CE247D,$CE25FD,GFX_Flotsam_Swim9,GFX_Flotsam_Swim9End
	dl $CE260F,$CE276F,GFX_Flotsam_Swim10,GFX_Flotsam_Swim10End
	dl $CE2783,$CE2903,GFX_Flotsam_Swim11,GFX_Flotsam_Swim11End
	dl $CE2915,$CE2A75,GFX_Flotsam_Swim12,GFX_Flotsam_Swim12End
	dl $CE2AA3,$CE2F43,GFX_KrowsBody_Dying1,GFX_KrowsBody_Dying1End
	dl $CE2F6F,$CE33EF,GFX_KrowsBody_Dying2,GFX_KrowsBody_Dying2End
	dl $CE341B,$CE389B,GFX_KrowsBody_Dying3,GFX_KrowsBody_Dying3End
	dl $CE38C3,$CE3D03,GFX_KrowsBody_Dying4,GFX_KrowsBody_Dying4End
	dl $CE3D21,$CE40C1,GFX_KrowsBody_Dying5,GFX_KrowsBody_Dying5End
	dl $CE40DD,$CE43FD,GFX_KrowsBody_Dying6,GFX_KrowsBody_Dying6End
	dl $CE4415,$CE46F5,GFX_KrowsHead_Dying1,GFX_KrowsHead_Dying1End
	dl $CE470D,$CE49ED,GFX_KrowsHead_Dying2,GFX_KrowsHead_Dying2End
	dl $CE4A01,$CE4CA1,GFX_KrowsHead_Dying3,GFX_KrowsHead_Dying3End
	dl $CE4CBD,$CE4F1D,GFX_KrowsHead_Dying4,GFX_KrowsHead_Dying4End
	dl $CE4F39,$CE5199,GFX_KrowsHead_Dying5,GFX_KrowsHead_Dying5End
	dl $CE51B3,$CE5453,GFX_KrowsHead_Dying6,GFX_KrowsHead_Dying6End
	dl $CE5469,$CE55A9,GFX_AnimalBuddyIcon_Squitter,GFX_AnimalBuddyIcon_SquitterEnd
	dl $CE55B9,$CE5699,GFX_AnimalBuddyIcon_Rattly,GFX_AnimalBuddyIcon_RattlyEnd
	dl $CE56AB,$CE57AB,GFX_AnimalBuddyIcon_Squawks,GFX_AnimalBuddyIcon_SquawksEnd
	dl $CE57C3,$CE5923,GFX_AnimalBuddyIcon_Rambi,GFX_AnimalBuddyIcon_RambiEnd
	dl $CE5937,$CE5A57,GFX_AnimalBuddyIcon_Enguarde,GFX_AnimalBuddyIcon_EnguardeEnd
	dl $CE5A79,$CE5CD9,GFX_Zinger_Dead1,GFX_Zinger_Dead1End
	dl $CE5CF7,$CE5F77,GFX_Zinger_Dead2,GFX_Zinger_Dead2End
	dl $CE5F99,$CE6259,GFX_Zinger_Dead3,GFX_Zinger_Dead3End
	dl $CE627B,$CE653B,GFX_Zinger_Dead4,GFX_Zinger_Dead4End
	dl $CE6555,$CE6795,GFX_Zinger_Dead5,GFX_Zinger_Dead5End
	dl $CE67AF,$CE698F,GFX_Dixie_ClimbUpTwoVerticalRopes1,GFX_Dixie_ClimbUpTwoVerticalRopes1End
	dl $CE69AB,$CE6BAB,GFX_Dixie_ClimbUpTwoVerticalRopes2,GFX_Dixie_ClimbUpTwoVerticalRopes2End
	dl $CE6BC7,$CE6DC7,GFX_Dixie_ClimbUpTwoVerticalRopes3,GFX_Dixie_ClimbUpTwoVerticalRopes3End
	dl $CE6DD9,$CE6F99,GFX_Dixie_ClimbUpTwoVerticalRopes4,GFX_Dixie_ClimbUpTwoVerticalRopes4End
	dl $CE6FAB,$CE716B,GFX_Dixie_ClimbUpTwoVerticalRopes5,GFX_Dixie_ClimbUpTwoVerticalRopes5End
	dl $CE717F,$CE735F,GFX_Dixie_ClimbUpTwoVerticalRopes6,GFX_Dixie_ClimbUpTwoVerticalRopes6End
	dl $CE7377,$CE7537,GFX_Dixie_ClimbUpTwoVerticalRopes7,GFX_Dixie_ClimbUpTwoVerticalRopes7End
	dl $CE754D,$CE76ED,GFX_Dixie_ClimbUpTwoVerticalRopes8,GFX_Dixie_ClimbUpTwoVerticalRopes8End
	dl $CE7707,$CE78E7,GFX_Dixie_ClimbDownTwoVerticalRopes1,GFX_Dixie_ClimbDownTwoVerticalRopes1End
	dl $CE7901,$CE7AE1,GFX_Dixie_ClimbDownTwoVerticalRopes2,GFX_Dixie_ClimbDownTwoVerticalRopes2End
	dl $CE7AF5,$CE7CD5,GFX_Dixie_ClimbDownTwoVerticalRopes3,GFX_Dixie_ClimbDownTwoVerticalRopes3End
	dl $CE7CE9,$CE7EC9,GFX_Dixie_ClimbDownTwoVerticalRopes4,GFX_Dixie_ClimbDownTwoVerticalRopes4End
	dl $CE7EDD,$CE80BD,GFX_Dixie_ClimbDownTwoVerticalRopes5,GFX_Dixie_ClimbDownTwoVerticalRopes5End
	dl $CE80D5,$CE8295,GFX_Dixie_ClimbDownTwoVerticalRopes6,GFX_Dixie_ClimbDownTwoVerticalRopes6End
	dl $CE82AD,$CE846D,GFX_Dixie_ClimbDownTwoVerticalRopes7,GFX_Dixie_ClimbDownTwoVerticalRopes7End
	dl $CE8481,$CE8661,GFX_Dixie_ClimbDownTwoVerticalRopes8,GFX_Dixie_ClimbDownTwoVerticalRopes8End
	dl $CE8677,$CE8877,GFX_Diddy_ClimbUpSingleRope1,GFX_Diddy_ClimbUpSingleRope1End
	dl $CE888B,$CE8A6B,GFX_Diddy_ClimbUpSingleRope2,GFX_Diddy_ClimbUpSingleRope2End
	dl $CE8A7F,$CE8C5F,GFX_Diddy_ClimbUpSingleRope3,GFX_Diddy_ClimbUpSingleRope3End
	dl $CE8C75,$CE8E75,GFX_Diddy_ClimbUpSingleRope4,GFX_Diddy_ClimbUpSingleRope4End
	dl $CE8E8D,$CE90AD,GFX_Diddy_ClimbUpSingleRope5,GFX_Diddy_ClimbUpSingleRope5End
	dl $CE90C3,$CE92C3,GFX_Diddy_ClimbUpSingleRope6,GFX_Diddy_ClimbUpSingleRope6End
	dl $CE92D9,$CE94D9,GFX_Diddy_ClimbUpSingleRope7,GFX_Diddy_ClimbUpSingleRope7End
	dl $CE94EF,$CE96EF,GFX_Diddy_ClimbUpSingleRope8,GFX_Diddy_ClimbUpSingleRope8End
	dl $CE9705,$CE9905,GFX_Diddy_ClimbUpSingleRope9,GFX_Diddy_ClimbUpSingleRope9End
	dl $CE991B,$CE9B1B,GFX_Diddy_ClimbUpSingleRope10,GFX_Diddy_ClimbUpSingleRope10End
	dl $CE9B2F,$CE9D0F,GFX_Diddy_ClimbUpSingleRope11,GFX_Diddy_ClimbUpSingleRope11End
	dl $CE9D23,$CE9F03,GFX_Diddy_ClimbUpSingleRope12,GFX_Diddy_ClimbUpSingleRope12End
	dl $CE9F1D,$CEA0FD,GFX_Diddy_HangOnVerticalRope,GFX_Diddy_HangOnVerticalRopeEnd
	dl $CEA10F,$CEA2CF,GFX_Diddy_TurnOnVerticalRope1,GFX_Diddy_TurnOnVerticalRope1End
	dl $CEA2DF,$CEA47F,GFX_Diddy_TurnOnVerticalRope2,GFX_Diddy_TurnOnVerticalRope2End
	dl $CEA493,$CEA673,GFX_Diddy_GrabAdjacentVerticalRope1,GFX_Diddy_GrabAdjacentVerticalRope1End
	dl $CEA683,$CEA823,GFX_Diddy_GrabAdjacentVerticalRope2,GFX_Diddy_GrabAdjacentVerticalRope2End
	dl $CEA839,$CEAA39,GFX_Diddy_GrabAdjacentVerticalRope3,GFX_Diddy_GrabAdjacentVerticalRope3End
	dl $CEAA51,$CEAC71,GFX_Diddy_GrabAdjacentVerticalRope4,GFX_Diddy_GrabAdjacentVerticalRope4End
	dl $CEAC8F,$CEAEAF,GFX_Diddy_GrabAdjacentVerticalRope5,GFX_Diddy_GrabAdjacentVerticalRope5End
	dl $CEAECD,$CEB0ED,GFX_Diddy_GrabAdjacentVerticalRope6,GFX_Diddy_GrabAdjacentVerticalRope6End
	dl $CEB113,$CEB3B3,GFX_Diddy_GrabAdjacentVerticalRope7,GFX_Diddy_GrabAdjacentVerticalRope7End
	dl $CEB3D5,$CEB635,GFX_Diddy_GrabAdjacentVerticalRope8,GFX_Diddy_GrabAdjacentVerticalRope8End
	dl $CEB653,$CEB873,GFX_Diddy_GrabAdjacentVerticalRope9,GFX_Diddy_GrabAdjacentVerticalRope9End
	dl $CEB893,$CEBAD3,GFX_Diddy_HangOnTwoVerticalRopes,GFX_Diddy_HangOnTwoVerticalRopesEnd
	dl $CEBAEF,$CEBDAF,GFX_Kaboing_Turn1,GFX_Kaboing_Turn1End
	dl $CEBDCD,$CEC0AD,GFX_Kaboing_Turn2,GFX_Kaboing_Turn2End
	dl $CEC0CF,$CEC38F,GFX_Kaboing_Dead1,GFX_Kaboing_Dead1End
	dl $CEC3B7,$CEC6D7,GFX_Kaboing_Dead2,GFX_Kaboing_Dead2End
	dl $CEC6FF,$CECA1F,GFX_Kaboing_Dead3,GFX_Kaboing_Dead3End
	dl $CECA49,$CECD89,GFX_Kaboing_Dead4,GFX_Kaboing_Dead4End
	dl $CECDAB,$CED06B,GFX_Kaboing_Dead5,GFX_Kaboing_Dead5End
	dl $CED089,$CED309,GFX_Flotsam_Dead1,GFX_Flotsam_Dead1End
	dl $CED325,$CED585,GFX_Flotsam_Dead2,GFX_Flotsam_Dead2End
	dl $CED59D,$CED7BD,GFX_Flotsam_Dead3,GFX_Flotsam_Dead3End
	dl $CED7D3,$CED9D3,GFX_Flotsam_Dead4,GFX_Flotsam_Dead4End
	dl $CED9ED,$CEDBCD,GFX_Flotsam_Turn1,GFX_Flotsam_Turn1End
	dl $CEDBE5,$CEDDA5,GFX_Flotsam_Turn2,GFX_Flotsam_Turn2End
	dl $CEDDBB,$CEDF5B,GFX_Flotsam_Turn3,GFX_Flotsam_Turn3End
	dl $CEDF6D,$CEE06D,GFX_Flotsam_Turn4,GFX_Flotsam_Turn4End
	dl $CEE081,$CEE141,GFX_Flotsam_Turn5,GFX_Flotsam_Turn5End
	dl $CEE153,$CEE1F3,GFX_Flotsam_Turn6,GFX_Flotsam_Turn6End
	dl $CEE207,$CEE327,GFX_Flotsam_Turn7,GFX_Flotsam_Turn7End
	dl $CEE345,$CEE565,GFX_Diddy_ClimbUpTwoVerticalRopes1,GFX_Diddy_ClimbUpTwoVerticalRopes1End
	dl $CEE583,$CEE7A3,GFX_Diddy_ClimbUpTwoVerticalRopes2,GFX_Diddy_ClimbUpTwoVerticalRopes2End
	dl $CEE7C1,$CEE9E1,GFX_Diddy_ClimbUpTwoVerticalRopes3,GFX_Diddy_ClimbUpTwoVerticalRopes3End
	dl $CEE9FF,$CEEC1F,GFX_Diddy_ClimbUpTwoVerticalRopes4,GFX_Diddy_ClimbUpTwoVerticalRopes4End
	dl $CEEC3B,$CEEE3B,GFX_Diddy_ClimbUpTwoVerticalRopes5,GFX_Diddy_ClimbUpTwoVerticalRopes5End
	dl $CEEE59,$CEF079,GFX_Diddy_ClimbUpTwoVerticalRopes6,GFX_Diddy_ClimbUpTwoVerticalRopes6End
	dl $CEF099,$CEF2D9,GFX_Diddy_ClimbUpTwoVerticalRopes7,GFX_Diddy_ClimbUpTwoVerticalRopes7End
	dl $CEF2F7,$CEF517,GFX_Diddy_ClimbUpTwoVerticalRopes8,GFX_Diddy_ClimbUpTwoVerticalRopes8End
	dl $CEF52F,$CEF6EF,GFX_Glimmer_Swim1,GFX_Glimmer_Swim1End
	dl $CEF707,$CEF8C7,GFX_Glimmer_Swim2,GFX_Glimmer_Swim2End
	dl $CEF8DF,$CEFA9F,GFX_Glimmer_Swim3,GFX_Glimmer_Swim3End
	dl $CF01B7,$CF0377,GFX_Glimmer_Swim4,GFX_Glimmer_Swim4End
	dl $CF038F,$CF054F,GFX_Glimmer_Swim5,GFX_Glimmer_Swim5End
	dl $CF0569,$CF0749,GFX_Glimmer_Swim6,GFX_Glimmer_Swim6End
	dl $CF0765,$CF0965,GFX_Glimmer_Swim7,GFX_Glimmer_Swim7End
	dl $CF097B,$CF0B1B,GFX_Glimmer_Swim8,GFX_Glimmer_Swim8End
	dl $CF0B31,$CF0CD1,GFX_Glimmer_Swim9,GFX_Glimmer_Swim9End
	dl $CF0CE7,$CF0E87,GFX_Glimmer_Swim10,GFX_Glimmer_Swim10End
	dl $CF0E9D,$CF103D,GFX_Glimmer_Swim11,GFX_Glimmer_Swim11End
	dl $CF1055,$CF1215,GFX_Glimmer_Swim12,GFX_Glimmer_Swim12End
	dl $CF122D,$CF13ED,GFX_Glimmer_Swim13,GFX_Glimmer_Swim13End
	dl $CF1407,$CF1587,GFX_Glimmer_Swim14,GFX_Glimmer_Swim14End
	dl $CF15A3,$CF1743,GFX_Glimmer_Swim15,GFX_Glimmer_Swim15End
	dl $CF175D,$CF18DD,GFX_Glimmer_Swim16,GFX_Glimmer_Swim16End
	dl $CF18F3,$CF1A93,GFX_Glimmer_Turn1,GFX_Glimmer_Turn1End
	dl $CF1AAB,$CF1C0B,GFX_Glimmer_Turn2,GFX_Glimmer_Turn2End
	dl $CF1C21,$CF1D61,GFX_Glimmer_Turn3,GFX_Glimmer_Turn3End
	dl $CF1D73,$CF1E73,GFX_Glimmer_Turn4,GFX_Glimmer_Turn4End
	dl $CF1E85,$CF1F85,GFX_Glimmer_Turn5,GFX_Glimmer_Turn5End
	dl $CF1F99,$CF20B9,GFX_Glimmer_Turn6,GFX_Glimmer_Turn6End
	dl $CF20D3,$CF2253,GFX_Glimmer_Turn7,GFX_Glimmer_Turn7End
	dl $CF2269,$CF2409,GFX_Glimmer_Turn8,GFX_Glimmer_Turn8End
	dl $CF2427,$CF25E7,GFX_Diddy_ClimbDownTwoVerticalRopes1,GFX_Diddy_ClimbDownTwoVerticalRopes1End
	dl $CF2601,$CF27E1,GFX_Diddy_ClimbDownTwoVerticalRopes2,GFX_Diddy_ClimbDownTwoVerticalRopes2End
	dl $CF27FB,$CF29DB,GFX_Diddy_ClimbDownTwoVerticalRopes3,GFX_Diddy_ClimbDownTwoVerticalRopes3End
	dl $CF29F5,$CF2BD5,GFX_Diddy_ClimbDownTwoVerticalRopes4,GFX_Diddy_ClimbDownTwoVerticalRopes4End
	dl $CF2BF3,$CF2DB3,GFX_Diddy_ClimbDownTwoVerticalRopes5,GFX_Diddy_ClimbDownTwoVerticalRopes5End
	dl $CF2DD1,$CF2F91,GFX_Diddy_ClimbDownTwoVerticalRopes6,GFX_Diddy_ClimbDownTwoVerticalRopes6End
	dl $CF2FAD,$CF314D,GFX_Diddy_ClimbDownTwoVerticalRopes7,GFX_Diddy_ClimbDownTwoVerticalRopes7End
	dl $CF316B,$CF332B,GFX_Diddy_ClimbDownTwoVerticalRopes8,GFX_Diddy_ClimbDownTwoVerticalRopes8End
	dl $CF3349,$CF3569,GFX_Diddy_Juggling1,GFX_Diddy_Juggling1End
	dl $CF3581,$CF37A1,GFX_Diddy_Juggling2,GFX_Diddy_Juggling2End
	dl $CF37BF,$CF39DF,GFX_Diddy_Juggling3,GFX_Diddy_Juggling3End
	dl $CF39FD,$CF3C1D,GFX_Diddy_Juggling4,GFX_Diddy_Juggling4End
	dl $CF3C35,$CF3E55,GFX_Diddy_Juggling5,GFX_Diddy_Juggling5End
	dl $CF3E71,$CF4071,GFX_Diddy_Juggling6,GFX_Diddy_Juggling6End
	dl $CF408D,$CF428D,GFX_Diddy_Juggling7,GFX_Diddy_Juggling7End
	dl $CF42A9,$CF44A9,GFX_Diddy_Juggling8,GFX_Diddy_Juggling8End
	dl $CF44C3,$CF4703,GFX_Diddy_Juggling9,GFX_Diddy_Juggling9End
	dl $CF471F,$CF491F,GFX_Diddy_Juggling10,GFX_Diddy_Juggling10End
	dl $CF493D,$CF4B5D,GFX_Diddy_Juggling11,GFX_Diddy_Juggling11End
	dl $CF4B7B,$CF4D9B,GFX_Diddy_Juggling12,GFX_Diddy_Juggling12End
	dl $CF4DB1,$CF4FB1,GFX_Diddy_Juggling13,GFX_Diddy_Juggling13End
	dl $CF4FCD,$CF51CD,GFX_Diddy_Juggling14,GFX_Diddy_Juggling14End
	dl $CF51E7,$CF53C7,GFX_Diddy_Juggling15,GFX_Diddy_Juggling15End
	dl $CF53E5,$CF5605,GFX_Diddy_Juggling16,GFX_Diddy_Juggling16End
	dl $CF5621,$CF5821,GFX_Diddy_Juggling17,GFX_Diddy_Juggling17End
	dl $CF583D,$CF5A3D,GFX_Diddy_Juggling18,GFX_Diddy_Juggling18End
	dl $CF5A59,$CF5C59,GFX_Diddy_Juggling19,GFX_Diddy_Juggling19End
	dl $CF5C75,$CF5E75,GFX_Diddy_Juggling20,GFX_Diddy_Juggling20End
	dl $CF5E8B,$CF608B,GFX_Diddy_Juggling21,GFX_Diddy_Juggling21End
	dl $CF60A7,$CF62A7,GFX_Diddy_Juggling22,GFX_Diddy_Juggling22End
	dl $CF62C3,$CF64C3,GFX_Diddy_Juggling23,GFX_Diddy_Juggling23End
	dl $CF64DD,$CF66BD,GFX_Diddy_Juggling24,GFX_Diddy_Juggling24End
	dl $CF66D7,$CF68B7,GFX_Diddy_Juggling25,GFX_Diddy_Juggling25End
	dl $CF68CF,$CF6A8F,GFX_Diddy_Juggling26,GFX_Diddy_Juggling26End
	dl $CF6AA7,$CF6C67,GFX_Diddy_Juggling27,GFX_Diddy_Juggling27End
	dl $CF6C7F,$CF6E3F,GFX_Diddy_Juggling28,GFX_Diddy_Juggling28End
	dl $CF6E57,$CF7017,GFX_Diddy_Juggling29,GFX_Diddy_Juggling29End
	dl $CF7031,$CF7211,GFX_Diddy_Juggling30,GFX_Diddy_Juggling30End
	dl $CF7223,$CF73E3,GFX_Diddy_Juggling31,GFX_Diddy_Juggling31End
	dl $CF7403,$CF7763,GFX_KrowsBody_Dead1,GFX_KrowsBody_Dead1End
	dl $CF7787,$CF7AC7,GFX_KrowsBody_Dead2,GFX_KrowsBody_Dead2End
	dl $CF7AE3,$CF7CE3,GFX_Dixie_TasteHoney1,GFX_Dixie_TasteHoney1End
	dl $CF7CFF,$CF7EFF,GFX_Dixie_TasteHoney2,GFX_Dixie_TasteHoney2End
	dl $CF7F17,$CF8137,GFX_Dixie_TasteHoney3,GFX_Dixie_TasteHoney3End
	dl $CF814F,$CF836F,GFX_Dixie_TasteHoney4,GFX_Dixie_TasteHoney4End
	dl $CF8387,$CF85A7,GFX_Dixie_TasteHoney5,GFX_Dixie_TasteHoney5End
	dl $CF85C1,$CF8801,GFX_Dixie_TasteHoney6,GFX_Dixie_TasteHoney6End
	dl $CF881B,$CF8A5B,GFX_Dixie_TasteHoney7,GFX_Dixie_TasteHoney7End
	dl $CF8A73,$CF8C93,GFX_Dixie_TasteHoney8,GFX_Dixie_TasteHoney8End
	dl $CF8CAF,$CF8EAF,GFX_Dixie_TasteHoney9,GFX_Dixie_TasteHoney9End
	dl $CF8ECB,$CF90CB,GFX_Dixie_TasteHoney10,GFX_Dixie_TasteHoney10End
	dl $CF90E7,$CF92E7,GFX_Dixie_TasteHoney11,GFX_Dixie_TasteHoney11End
	dl $CF9303,$CF9503,GFX_Dixie_TasteHoney12,GFX_Dixie_TasteHoney12End
	dl $CF9529,$CF98E9,GFX_Rambi_PrepareCharge1,GFX_Rambi_PrepareCharge1End
	dl $CF9911,$CF9CF1,GFX_Rambi_PrepareCharge2,GFX_Rambi_PrepareCharge2End
	dl $CF9D19,$CFA0F9,GFX_Rambi_PrepareCharge3,GFX_Rambi_PrepareCharge3End
	dl $CFA11D,$CFA4BD,GFX_Rambi_PrepareCharge4,GFX_Rambi_PrepareCharge4End
	dl $CFA4DF,$CFA85F,GFX_Rambi_PrepareCharge5,GFX_Rambi_PrepareCharge5End
	dl $CFA885,$CFAC45,GFX_Rambi_PrepareCharge6,GFX_Rambi_PrepareCharge6End
	dl $CFAC67,$CFAFE7,GFX_Rambi_Stab1,GFX_Rambi_Stab1End
	dl $CFB005,$CFB3A5,GFX_Rambi_Stab2,GFX_Rambi_Stab2End
	dl $CFB3C3,$CFB763,GFX_Rambi_Stab3,GFX_Rambi_Stab3End
	dl $CFB783,$CFBB43,GFX_Rambi_Stab4,GFX_Rambi_Stab4End
	dl $CFBB61,$CFBF01,GFX_Rambi_Stab5,GFX_Rambi_Stab5End
	dl $CFBF25,$CFC325,GFX_Rambi_Stab6,GFX_Rambi_Stab6End
	dl $CFC34D,$CFC72D,GFX_Rambi_Stab7,GFX_Rambi_Stab7End
	dl $CFC757,$CFCB57,GFX_Rambi_Stab8,GFX_Rambi_Stab8End
	dl $CFCB7F,$CFCF5F,GFX_Rambi_Walk1,GFX_Rambi_Walk1End
	dl $CFCF87,$CFD367,GFX_Rambi_Walk2,GFX_Rambi_Walk2End
	dl $CFD397,$CFD797,GFX_Rambi_Walk3,GFX_Rambi_Walk3End
	dl $CFD7C5,$CFDBA5,GFX_Rambi_Walk4,GFX_Rambi_Walk4End
	dl $CFDBD3,$CFDFB3,GFX_Rambi_Walk5,GFX_Rambi_Walk5End
	dl $CFDFDD,$CFE37D,GFX_Rambi_Walk6,GFX_Rambi_Walk6End
	dl $CFE3AB,$CFE78B,GFX_Rambi_Walk7,GFX_Rambi_Walk7End
	dl $CFE7B9,$CFEB99,GFX_Rambi_Walk8,GFX_Rambi_Walk8End
	dl $CFEBC7,$CFEFA7,GFX_Rambi_Walk9,GFX_Rambi_Walk9End
	dl $CFEFD7,$CFF3D7,GFX_Rambi_Walk10,GFX_Rambi_Walk10End
	dl $CFF403,$CFF7C3,GFX_Rambi_Walk11,GFX_Rambi_Walk11End
	dl $CFF7EF,$CFFBAF,GFX_Rambi_Walk12,GFX_Rambi_Walk12End
	dl $CFFBD9,$CFFFD9,GFX_Rambi_Walk13,GFX_Rambi_Walk13End
	dl $D00369,$D00769,GFX_Rambi_Walk14,GFX_Rambi_Walk14End
	dl $D0078B,$D00B6B,GFX_Rambi_Walk15,GFX_Rambi_Walk15End
	dl $D00B91,$D00F51,GFX_Rambi_Idle1,GFX_Rambi_Idle1End
	dl $D00F77,$D01337,GFX_Rambi_Idle2,GFX_Rambi_Idle2End
	dl $D0135D,$D0171D,GFX_Rambi_Idle3,GFX_Rambi_Idle3End
	dl $D01741,$D01AE1,GFX_Rambi_Idle4,GFX_Rambi_Idle4End
	dl $D01B05,$D01EA5,GFX_Rambi_Idle5,GFX_Rambi_Idle5End
	dl $D01EC9,$D02269,GFX_Rambi_Idle6,GFX_Rambi_Idle6End
	dl $D0228D,$D0262D,GFX_Rambi_Panting1,GFX_Rambi_Panting1End
	dl $D02651,$D029F1,GFX_Rambi_Panting2,GFX_Rambi_Panting2End
	dl $D02A0D,$D02D8D,GFX_Rambi_Panting3,GFX_Rambi_Panting3End
	dl $D02DB1,$D030F1,GFX_Rambi_Panting4,GFX_Rambi_Panting4End
	dl $D03111,$D03471,GFX_Rambi_Panting5,GFX_Rambi_Panting5End
	dl $D03493,$D037B3,GFX_Rambi_Panting6,GFX_Rambi_Panting6End
	dl $D037D5,$D03AF5,GFX_Rambi_Panting7,GFX_Rambi_Panting7End
	dl $D03B17,$D03E37,GFX_Rambi_Panting8,GFX_Rambi_Panting8End
	dl $D03E57,$D041B7,GFX_Rambi_Panting9,GFX_Rambi_Panting9End
	dl $D041D7,$D04537,GFX_Rambi_Panting10,GFX_Rambi_Panting10End
	dl $D04555,$D04895,GFX_Rambi_Panting11,GFX_Rambi_Panting11End
	dl $D048B3,$D04BF3,GFX_Rambi_Panting12,GFX_Rambi_Panting12End
	dl $D04C17,$D04F57,GFX_Rambi_Panting13,GFX_Rambi_Panting13End
	dl $D04F77,$D052D7,GFX_Rambi_Panting14,GFX_Rambi_Panting14End
	dl $D052F7,$D056B7,GFX_Rambi_Panting15,GFX_Rambi_Panting15End
	dl $D056DD,$D05A9D,GFX_Rambi_Panting16,GFX_Rambi_Panting16End
	dl $D05AB9,$D05E39,GFX_Rambi_Turn1,GFX_Rambi_Turn1End
	dl $D05E53,$D060F3,GFX_Rambi_Turn2,GFX_Rambi_Turn2End
	dl $D06117,$D064B7,GFX_Rambi_Jump1,GFX_Rambi_Jump1End
	dl $D064DD,$D0689D,GFX_Rambi_Jump2,GFX_Rambi_Jump2End
	dl $D068C5,$D06CA5,GFX_Rambi_Jump3,GFX_Rambi_Jump3End
	dl $D06CCD,$D070AD,GFX_Rambi_Jump4,GFX_Rambi_Jump4End
	dl $D070D5,$D074B5,GFX_Rambi_Jump5,GFX_Rambi_Jump5End
	dl $D074DB,$D0789B,GFX_Rambi_Jump6,GFX_Rambi_Jump6End
	dl $D078BF,$D07C5F,GFX_Rambi_Jump7,GFX_Rambi_Jump7End
	dl $D07C73,$D07E53,GFX_Diddy_StuckToHoneyWall1,GFX_Diddy_StuckToHoneyWall1End
	dl $D07E67,$D08047,GFX_Diddy_StuckToHoneyWall2,GFX_Diddy_StuckToHoneyWall2End
	dl $D0805D,$D0825D,GFX_Diddy_StuckToHoneyWall3,GFX_Diddy_StuckToHoneyWall3End
	dl $D08271,$D08451,GFX_Diddy_StuckToHoneyWall4,GFX_Diddy_StuckToHoneyWall4End
	dl $D08465,$D08645,GFX_Diddy_StuckToHoneyWall5,GFX_Diddy_StuckToHoneyWall5End
	dl $D0865B,$D0885B,GFX_Diddy_StuckToHoneyWall6,GFX_Diddy_StuckToHoneyWall6End
	dl $D08875,$D08AB5,GFX_Diddy_HangFromSquawks1,GFX_Diddy_HangFromSquawks1End
	dl $D08ACF,$D08D0F,GFX_Diddy_HangFromSquawks2,GFX_Diddy_HangFromSquawks2End
	dl $D08D29,$D08F69,GFX_Diddy_HangFromSquawks3,GFX_Diddy_HangFromSquawks3End
	dl $D08F81,$D091A1,GFX_Diddy_HangFromSquawks4,GFX_Diddy_HangFromSquawks4End
	dl $D091B9,$D093D9,GFX_Diddy_HangFromSquawks5,GFX_Diddy_HangFromSquawks5End
	dl $D093F1,$D09611,GFX_Diddy_HangFromSquawks6,GFX_Diddy_HangFromSquawks6End
	dl $D0962D,$D0988D,GFX_KrowHead_Dead1,GFX_KrowHead_Dead1End
	dl $D098A7,$D09AE7,GFX_KrowHead_Dead2,GFX_KrowHead_Dead2End
	dl $D09AFF,$D09D1F,GFX_Dixie_HangFromHook1,GFX_Dixie_HangFromHook1End
	dl $D09D39,$D09F79,GFX_Dixie_HangFromHook2,GFX_Dixie_HangFromHook2End
	dl $D09F8F,$D0A1EF,GFX_Dixie_HangFromHook3,GFX_Dixie_HangFromHook3End
	dl $D0A205,$D0A465,GFX_Dixie_HangFromHook4,GFX_Dixie_HangFromHook4End
	dl $D0A47B,$D0A6DB,GFX_Dixie_HangFromHook5,GFX_Dixie_HangFromHook5End
	dl $D0A6F1,$D0A951,GFX_Dixie_HangFromHook6,GFX_Dixie_HangFromHook6End
	dl $D0A96D,$D0AC2D,GFX_Rattly_Hurt,GFX_Rattly_HurtEnd
	dl $D0AC57,$D0B057,GFX_Squitter_Hurt,GFX_Squitter_HurtEnd
	dl $D0B06F,$D0B28F,GFX_Squawks_Hurt,GFX_Squawks_HurtEnd
	dl $D0B2B1,$D0B511,GFX_Diddy_HangFromHook1,GFX_Diddy_HangFromHook1End
	dl $D0B533,$D0B793,GFX_Diddy_HangFromHook2,GFX_Diddy_HangFromHook2End
	dl $D0B7B5,$D0BA15,GFX_Diddy_HangFromHook3,GFX_Diddy_HangFromHook3End
	dl $D0BA39,$D0BCB9,GFX_Diddy_HangFromHook4,GFX_Diddy_HangFromHook4End
	dl $D0BCDF,$D0BFDF,GFX_Diddy_HangFromHook5,GFX_Diddy_HangFromHook5End
	dl $D0C003,$D0C2E3,GFX_Diddy_HangFromHook6,GFX_Diddy_HangFromHook6End
	dl $D0C2FB,$D0C57B,GFX_Diddy_HangFromHorizontalRope,GFX_Diddy_CopyOfHangFromHorizontalRopeEnd
	dl $D0C599,$D0C879,GFX_Kaboing_Idle1,GFX_Kaboing_Idle1End
	dl $D0C899,$D0CB99,GFX_Kaboing_Idle2,GFX_Kaboing_Idle2End
	dl $D0CBB9,$D0CEB9,GFX_Kaboing_Idle3,GFX_Kaboing_Idle3End
	dl $D0CED3,$D0D0B3,GFX_Dixie_HangFromHorizontalRope1,GFX_Dixie_HangFromHorizontalRope1End
	dl $D0D0CD,$D0D2AD,GFX_Dixie_HangFromHorizontalRope2,GFX_Dixie_HangFromHorizontalRope2End
	dl $D0D2C7,$D0D4A7,GFX_Dixie_HangFromHorizontalRope3,GFX_Dixie_HangFromHorizontalRope3End
	dl $D0D4C1,$D0D6A1,GFX_Dixie_HangFromHorizontalRope4,GFX_Dixie_HangFromHorizontalRope4End
	dl $D0D6BB,$D0D89B,GFX_Dixie_HangFromHorizontalRope5,GFX_Dixie_HangFromHorizontalRope5End
	dl $D0D8AD,$D0D9AD,GFX_BigSmokeCloud_Idle1,GFX_BigSmokeCloud_Idle1End
	dl $D0D9BF,$D0DB1F,GFX_BigSmokeCloud_Idle2,GFX_BigSmokeCloud_Idle2End
	dl $D0DB33,$D0DD13,GFX_BigSmokeCloud_Idle3,GFX_BigSmokeCloud_Idle3End
	dl $D0DD23,$D0DF23,GFX_BigSmokeCloud_Idle4,GFX_BigSmokeCloud_Idle4End
	dl $D0DF37,$D0E177,GFX_BigSmokeCloud_Idle5,GFX_BigSmokeCloud_Idle5End
	dl $D0E18D,$D0E3ED,GFX_BigSmokeCloud_Idle6,GFX_BigSmokeCloud_Idle6End
	dl $D0E407,$D0E6A7,GFX_BigSmokeCloud_Idle7,GFX_BigSmokeCloud_Idle7End
	dl $D0E6C1,$D0E961,GFX_BigSmokeCloud_Idle8,GFX_BigSmokeCloud_Idle8End
	dl $D0E97D,$D0EC3D,GFX_BigSmokeCloud_Idle9,GFX_BigSmokeCloud_Idle9End
	dl $D0EC5B,$D0EE7B,GFX_BigSmokeCloud_Idle10,GFX_BigSmokeCloud_Idle10End
	dl $D0EE97,$D0F097,GFX_BigSmokeCloud_Idle11,GFX_BigSmokeCloud_Idle11End
	dl $D0F0AB,$D0F22B,GFX_BigSmokeCloud_Idle12,GFX_BigSmokeCloud_Idle12End
	dl $D0F241,$D0F321,GFX_BigSmokeCloud_Idle13,GFX_BigSmokeCloud_Idle13End
	dl $D0F33D,$D0F53D,GFX_Diddy_Swimming1,GFX_Diddy_Swimming1End
	dl $D0F559,$D0F759,GFX_Diddy_Swimming2,GFX_Diddy_Swimming2End
	dl $D0F773,$D0F9B3,GFX_Diddy_Swimming3,GFX_Diddy_Swimming3End
	dl $D0F9CF,$D0FBCF,GFX_Diddy_Swimming4,GFX_Diddy_Swimming4End
	dl $D0FBED,$D0FE0D,GFX_Diddy_Swimming5,GFX_Diddy_Swimming5End
	dl $D10189,$D103A9,GFX_Diddy_Swimming6,GFX_Diddy_Swimming6End
	dl $D103C7,$D105E7,GFX_Diddy_Swimming7,GFX_Diddy_Swimming7End
	dl $D10605,$D10825,GFX_Diddy_Swimming8,GFX_Diddy_Swimming8End
	dl $D10845,$D10A85,GFX_Diddy_Swimming9,GFX_Diddy_Swimming9End
	dl $D10AA3,$D10CC3,GFX_Diddy_Swimming10,GFX_Diddy_Swimming10End
	dl $D10CE1,$D10F01,GFX_Diddy_Swimming11,GFX_Diddy_Swimming11End
	dl $D10F1F,$D1113F,GFX_Diddy_Swimming12,GFX_Diddy_Swimming12End
	dl $D1115D,$D1137D,GFX_Diddy_Swimming13,GFX_Diddy_Swimming13End
	dl $D1139B,$D115BB,GFX_Diddy_Swimming14,GFX_Diddy_Swimming14End
	dl $D115D3,$D117F3,GFX_Diddy_Swimming15,GFX_Diddy_Swimming15End
	dl $D11809,$D11A09,GFX_Diddy_TurnWhileSwimming1,GFX_Diddy_TurnWhileSwimming1End
	dl $D11A21,$D11B81,GFX_Diddy_TurnWhileSwimming2,GFX_Diddy_TurnWhileSwimming2End
	dl $D11B99,$D11D59,GFX_Dixie_TurnWhileSwimming1,GFX_Dixie_TurnWhileSwimming1End
	dl $D11D6F,$D11EAF,GFX_Dixie_TurnWhileSwimming2,GFX_Dixie_TurnWhileSwimming2End
	dl $D11ECB,$D120CB,GFX_Diddy_RideRattly1,GFX_Diddy_RideRattly1End
	dl $D120E3,$D122A3,GFX_Diddy_RideRattly2,GFX_Diddy_RideRattly2End
	dl $D122BB,$D1247B,GFX_Diddy_RideRattly3,GFX_Diddy_RideRattly3End
	dl $D1248F,$D1266F,GFX_Diddy_RideRattly4,GFX_Diddy_RideRattly4End
	dl $D12689,$D12869,GFX_Diddy_RideRattly5,GFX_Diddy_RideRattly5End
	dl $D1288B,$D12BAB,GFX_Spiny_Walk1,GFX_Spiny_Walk1End
	dl $D12BC9,$D12F09,GFX_Spiny_Walk2,GFX_Spiny_Walk2End
	dl $D12F25,$D13245,GFX_Spiny_Walk3,GFX_Spiny_Walk3End
	dl $D13263,$D135A3,GFX_Spiny_Walk4,GFX_Spiny_Walk4End
	dl $D135BF,$D138DF,GFX_Spiny_Walk5,GFX_Spiny_Walk5End
	dl $D138FD,$D13C3D,GFX_Spiny_Walk6,GFX_Spiny_Walk6End
	dl $D13C5B,$D13F9B,GFX_Spiny_Walk7,GFX_Spiny_Walk7End
	dl $D13FB7,$D142D7,GFX_Spiny_Walk8,GFX_Spiny_Walk8End
	dl $D142F5,$D14695,GFX_Kleever_Swing1,GFX_Kleever_Swing1End
	dl $D146B7,$D14A97,GFX_Kleever_Swing2,GFX_Kleever_Swing2End
	dl $D14ABD,$D14E1D,GFX_Kleever_Swing3,GFX_Kleever_Swing3End
	dl $D14E43,$D15203,GFX_Kleever_Swing4,GFX_Kleever_Swing4End
	dl $D15229,$D155E9,GFX_Kleever_Swing5,GFX_Kleever_Swing5End
	dl $D1560F,$D159CF,GFX_Kleever_Swing6,GFX_Kleever_Swing6End
	dl $D159EF,$D15DAF,GFX_Kleever_Swing7,GFX_Kleever_Swing7End
	dl $D15DCF,$D1618F,GFX_Kleever_Swing8,GFX_Kleever_Swing8End
	dl $D161B3,$D16553,GFX_Kleever_Swing9,GFX_Kleever_Swing9End
	dl $D1657D,$D1691D,GFX_Kleever_Swing10,GFX_Kleever_Swing10End
	dl $D16941,$D16CE1,GFX_Kleever_Swing11,GFX_Kleever_Swing11End
	dl $D16D03,$D17083,GFX_Kleever_Swing12,GFX_Kleever_Swing12End
	dl $D170A5,$D17425,GFX_Kleever_Swing13,GFX_Kleever_Swing13End
	dl $D17449,$D17789,GFX_Kleever_Swing14,GFX_Kleever_Swing14End
	dl $D177AD,$D17AED,GFX_Kleever_Swing15,GFX_Kleever_Swing15End
	dl $D17B09,$D17E29,GFX_Kleever_Swing16,GFX_Kleever_Swing16End
	dl $D17E43,$D18083,GFX_KleeverHand_Idle1,GFX_KleeverHand_Idle1End
	dl $D1809D,$D182DD,GFX_KleeverHand_Idle2,GFX_KleeverHand_Idle2End
	dl $D182F5,$D18515,GFX_KleeverHand_Idle3,GFX_KleeverHand_Idle3End
	dl $D1852D,$D1874D,GFX_KleeverHand_Idle4,GFX_KleeverHand_Idle4End
	dl $D18765,$D18985,GFX_KleeverHand_Idle5,GFX_KleeverHand_Idle5End
	dl $D1899F,$D18BDF,GFX_KleeverHand_Idle6,GFX_KleeverHand_Idle6End
	dl $D18BF9,$D18E39,GFX_KleeverHand_Idle7,GFX_KleeverHand_Idle7End
	dl $D18E53,$D19093,GFX_KleeverHand_Idle8,GFX_KleeverHand_Idle8End
	dl $D190B5,$D19435,GFX_Kleever_Turn1,GFX_Kleever_Turn1End
	dl $D19459,$D196D9,GFX_Kleever_Turn2,GFX_Kleever_Turn2End
	dl $D196FD,$D1991D,GFX_Kleever_Turn3,GFX_Kleever_Turn3End
	dl $D19939,$D19B99,GFX_KleeverHand_Turn1,GFX_KleeverHand_Turn1End
	dl $D19BB1,$D19DD1,GFX_KleeverHand_Turn2,GFX_KleeverHand_Turn2End
	dl $D19DEB,$D19FCB,GFX_KleeverHand_Turn3,GFX_KleeverHand_Turn3End
	dl $D19FDB,$D1A0BB,GFX_Kleever_SwingFireTrail1,GFX_Kleever_SwingFireTrail1End
	dl $D1A0CF,$D1A1EF,GFX_Kleever_SwingFireTrail2,GFX_Kleever_SwingFireTrail2End
	dl $D1A201,$D1A361,GFX_Kleever_SwingFireTrail3,GFX_Kleever_SwingFireTrail3End
	dl $D1A373,$D1A4D3,GFX_Kleever_SwingFireTrail4,GFX_Kleever_SwingFireTrail4End
	dl $D1A4E9,$D1A689,GFX_Kleever_SwingFireTrail5,GFX_Kleever_SwingFireTrail5End
	dl $D1A699,$D1A839,GFX_Kleever_SwingFireTrail6,GFX_Kleever_SwingFireTrail6End
	dl $D1A84F,$D1A9EF,GFX_Kleever_SwingFireTrail7,GFX_Kleever_SwingFireTrail7End
	dl $D1AA09,$D1ABE9,GFX_Kleever_SwingFireTrail8,GFX_Kleever_SwingFireTrail8End
	dl $D1ABFF,$D1ADFF,GFX_Kleever_SwingFireTrail9,GFX_Kleever_SwingFireTrail9End
	dl $D1AE17,$D1B037,GFX_Kleever_SwingFireTrail10,GFX_Kleever_SwingFireTrail10End
	dl $D1B049,$D1B269,GFX_Kleever_SwingFireTrail11,GFX_Kleever_SwingFireTrail11End
	dl $D1B27F,$D1B47F,GFX_Kleever_SwingFireTrail12,GFX_Kleever_SwingFireTrail12End
	dl $D1B491,$D1B651,GFX_Kleever_SwingFireTrail13,GFX_Kleever_SwingFireTrail13End
	dl $D1B661,$D1B801,GFX_Kleever_SwingFireTrail14,GFX_Kleever_SwingFireTrail14End
	dl $D1B80F,$D1B92F,GFX_Kleever_SwingFireTrail15,GFX_Kleever_SwingFireTrail15End
	dl $D1B93F,$D1BA1F,GFX_Kleever_SwingFireTrail16,GFX_Kleever_SwingFireTrail16End
	dl $D1BA2F,$D1BC2F,GFX_KleeverFireball_Burn1,GFX_KleeverFireball_Burn1End
	dl $D1BC3F,$D1BE3F,GFX_KleeverFireball_Burn2,GFX_KleeverFireball_Burn2End
	dl $D1BE4F,$D1C04F,GFX_KleeverFireball_Burn3,GFX_KleeverFireball_Burn3End
	dl $D1C05F,$D1C25F,GFX_KleeverFireball_Burn4,GFX_KleeverFireball_Burn4End
	dl $D1C26F,$D1C46F,GFX_KleeverFireball_Burn5,GFX_KleeverFireball_Burn5End
	dl $D1C47F,$D1C67F,GFX_KleeverFireball_Burn6,GFX_KleeverFireball_Burn6End
	dl $D1C68F,$D1C88F,GFX_KleeverFireball_Burn7,GFX_KleeverFireball_Burn7End
	dl $D1C89F,$D1CA9F,GFX_KleeverFireball_Burn8,GFX_KleeverFireball_Burn8End
	dl $D1CAB7,$D1CD37,GFX_Spiny_Turn1,GFX_Spiny_Turn1End
	dl $D1CD4D,$D1CFAD,GFX_Spiny_Turn2,GFX_Spiny_Turn2End
	dl $D1CFCF,$D1D2EF,GFX_Spiny_Dead1,GFX_Spiny_Dead1End
	dl $D1D30D,$D1D5ED,GFX_Spiny_Dead2,GFX_Spiny_Dead2End
	dl $D1D609,$D1D8C9,GFX_Spiny_Dead3,GFX_Spiny_Dead3End
	dl $D1D8E7,$D1DBC7,GFX_Spiny_Dead4,GFX_Spiny_Dead4End
	dl $D1DBE3,$D1DEA3,GFX_Spiny_Dead5,GFX_Spiny_Dead5End
	dl $D1DEAD,$D1DECD,GFX_UnknownEffect4_Idle1,GFX_UnknownEffect4_Idle1End
	dl $D1DED9,$D1DF19,GFX_UnknownEffect4_Idle2,GFX_UnknownEffect4_Idle2End
	dl $D1DF23,$D1DFA3,GFX_UnknownEffect4_Idle3,GFX_UnknownEffect4_Idle3End
	dl $D1DFB3,$D1E033,GFX_UnknownEffect4_Idle4,GFX_UnknownEffect4_Idle4End
	dl $D1E04F,$D1E24F,GFX_Dixie_StuckToHoneyWall1,GFX_Dixie_StuckToHoneyWall1End
	dl $D1E26B,$D1E46B,GFX_Dixie_StuckToHoneyWall2,GFX_Dixie_StuckToHoneyWall2End
	dl $D1E487,$D1E687,GFX_Dixie_StuckToHoneyWall3,GFX_Dixie_StuckToHoneyWall3End
	dl $D1E6A3,$D1E8A3,GFX_Diddy_AttachToHook1,GFX_Diddy_AttachToHook1End
	dl $D1E8C3,$D1EB03,GFX_Diddy_AttachToHook2,GFX_Diddy_AttachToHook2End
	dl $D1EB29,$D1EDC9,GFX_Diddy_AttachToHook3,GFX_Diddy_AttachToHook3End
	dl $D1EDEB,$D1F0AB,GFX_Diddy_AttachToHook4,GFX_Diddy_AttachToHook4End
	dl $D1F0D1,$D1F371,GFX_Diddy_AttachToHook5,GFX_Diddy_AttachToHook5End
	dl $D1F37D,$D1F3BD,GFX_LavaSmoke_Pose1,GFX_LavaSmoke_Pose1End
	dl $D1F3CB,$D1F42B,GFX_LavaSmoke_Pose2,GFX_LavaSmoke_Pose2End
	dl $D1F439,$D1F4F9,GFX_LavaSmoke_Pose3,GFX_LavaSmoke_Pose3End
	dl $D1F50B,$D1F66B,GFX_LavaSmoke_Pose4,GFX_LavaSmoke_Pose4End
	dl $D1F67D,$D1F7DD,GFX_LavaSmoke_Pose5,GFX_LavaSmoke_Pose5End
	dl $D1F7F1,$D1F971,GFX_LavaSmoke_Pose6,GFX_LavaSmoke_Pose6End
	dl $D200D1,$D20231,GFX_LavaSmoke_Pose7,GFX_LavaSmoke_Pose7End
	dl $D20241,$D20381,GFX_LavaSmoke_Pose8,GFX_LavaSmoke_Pose8End
	dl $D20393,$D20493,GFX_LavaSmoke_Pose9,GFX_LavaSmoke_Pose9End
	dl $D204A3,$D20583,GFX_LavaSmoke_Pose10,GFX_LavaSmoke_Pose10End
	dl $D20593,$D20673,GFX_LavaSmoke_Pose11,GFX_LavaSmoke_Pose11End
	dl $D2067F,$D2071F,GFX_LavaSmoke_Pose12,GFX_LavaSmoke_Pose12End
	dl $D20739,$D20919,GFX_Diddy_Turn1,GFX_Diddy_Turn1End
	dl $D2092D,$D20AAD,GFX_Diddy_Turn2,GFX_Diddy_Turn2End
	dl $D20AC1,$D20C41,GFX_Dixie_AttachToHook1,GFX_Dixie_AttachToHook1End
	dl $D20C59,$D20E19,GFX_Dixie_AttachToHook2,GFX_Dixie_AttachToHook2End
	dl $D20E31,$D21051,GFX_Dixie_AttachToHook3,GFX_Dixie_AttachToHook3End
	dl $D2106D,$D212CD,GFX_Dixie_AttachToHook4,GFX_Dixie_AttachToHook4End
	dl $D212DD,$D2135D,GFX_Diddy_LifeIcon,GFX_Diddy_LifeIconEnd
	dl $D21369,$D213A9,GFX_UnknownEffect6_Idle1,GFX_UnknownEffect6_Idle1End
	dl $D213B7,$D21417,GFX_UnknownEffect6_Idle2,GFX_UnknownEffect6_Idle2End
	dl $D21427,$D214A7,GFX_UnknownEffect6_Idle3,GFX_UnknownEffect6_Idle3End
	dl $D214B9,$D21559,GFX_UnknownEffect6_Idle4,GFX_UnknownEffect6_Idle4End
	dl $D21567,$D215C7,GFX_UnknownEffect6_Idle5,GFX_UnknownEffect6_Idle5End
	dl $D215DF,$D217FF,GFX_Klampon_Walk1,GFX_Klampon_Walk1End
	dl $D21817,$D21A37,GFX_Klampon_Walk2,GFX_Klampon_Walk2End
	dl $D21A4F,$D21C6F,GFX_Klampon_Walk3,GFX_Klampon_Walk3End
	dl $D21C85,$D21E85,GFX_Klampon_Walk4,GFX_Klampon_Walk4End
	dl $D21E9B,$D2209B,GFX_Klampon_Walk5,GFX_Klampon_Walk5End
	dl $D220AF,$D2228F,GFX_Klampon_Walk6,GFX_Klampon_Walk6End
	dl $D222A9,$D224E9,GFX_Klampon_Walk7,GFX_Klampon_Walk7End
	dl $D22505,$D22765,GFX_Klampon_Walk8,GFX_Klampon_Walk8End
	dl $D22781,$D229E1,GFX_Klampon_Walk9,GFX_Klampon_Walk9End
	dl $D22A01,$D22CA1,GFX_Klampon_Walk10,GFX_Klampon_Walk10End
	dl $D22CBD,$D22F1D,GFX_Klampon_Walk11,GFX_Klampon_Walk11End
	dl $D22F35,$D23155,GFX_Klampon_Turn1,GFX_Klampon_Turn1End
	dl $D2316B,$D2330B,GFX_Klampon_Turn2,GFX_Klampon_Turn2End
	dl $D2331D,$D234DD,GFX_Klampon_Dead1,GFX_Klampon_Dead1End
	dl $D234F1,$D23671,GFX_Klampon_Dead2,GFX_Klampon_Dead2End
	dl $D23683,$D237E3,GFX_Klampon_Dead3,GFX_Klampon_Dead3End
	dl $D237F9,$D239F9,GFX_Klampon_Dead4,GFX_Klampon_Dead4End
	dl $D23A17,$D23C97,GFX_Klampon_Dead5,GFX_Klampon_Dead5End
	dl $D23CB5,$D23ED5,GFX_Diddy_HangOntoStabbingEnguarde1,GFX_Diddy_HangOntoStabbingEnguarde1End
	dl $D23EF5,$D24135,GFX_Diddy_HangOntoStabbingEnguarde2,GFX_Diddy_HangOntoStabbingEnguarde2End
	dl $D2414F,$D2438F,GFX_Diddy_HangOntoStabbingEnguarde3,GFX_Diddy_HangOntoStabbingEnguarde3End
	dl $D243AB,$D245AB,GFX_Diddy_HangOntoStabbingEnguarde4,GFX_Diddy_HangOntoStabbingEnguarde4End
	dl $D245C9,$D247E9,GFX_Diddy_HangOntoStabbingEnguarde5,GFX_Diddy_HangOntoStabbingEnguarde5End
	dl $D24803,$D249E3,GFX_Diddy_RideAnimalBuddy1,GFX_Diddy_RideAnimalBuddy1End
	dl $D24A01,$D24C21,GFX_Diddy_RideAnimalBuddy2,GFX_Diddy_RideAnimalBuddy2End
	dl $D24C37,$D24E37,GFX_Diddy_RideAnimalBuddy3,GFX_Diddy_RideAnimalBuddy3End
	dl $D24E51,$D25031,GFX_Diddy_RideAnimalBuddy4,GFX_Diddy_RideAnimalBuddy4End
	dl $D25049,$D25209,GFX_Diddy_RideAnimalBuddy5,GFX_Diddy_RideAnimalBuddy5End
	dl $D25223,$D25463,GFX_KleeversHand_Swing1,GFX_KleeversHand_Swing1End
	dl $D2547B,$D2569B,GFX_KleeversHand_Swing2,GFX_KleeversHand_Swing2End
	dl $D256B5,$D258F5,GFX_KleeversHand_Swing3,GFX_KleeversHand_Swing3End
	dl $D2590D,$D25B2D,GFX_KleeversHand_Swing4,GFX_KleeversHand_Swing4End
	dl $D25B45,$D25D65,GFX_KleeversHand_Swing5,GFX_KleeversHand_Swing5End
	dl $D25D7D,$D25F9D,GFX_KleeversHand_Swing6,GFX_KleeversHand_Swing6End
	dl $D25FB5,$D261D5,GFX_KleeversHand_Swing7,GFX_KleeversHand_Swing7End
	dl $D261EB,$D2644B,GFX_KleeversHand_Swing8,GFX_KleeversHand_Swing8End
	dl $D26467,$D26667,GFX_KleeversHand_Swing9,GFX_KleeversHand_Swing9End
	dl $D2667D,$D2687D,GFX_KleeversHand_Swing10,GFX_KleeversHand_Swing10End
	dl $D26895,$D26AB5,GFX_KleeversHand_Swing11,GFX_KleeversHand_Swing11End
	dl $D26ACF,$D26D0F,GFX_KleeversHand_Swing12,GFX_KleeversHand_Swing12End
	dl $D26D27,$D26F47,GFX_KleeversHand_Swing13,GFX_KleeversHand_Swing13End
	dl $D26F63,$D271C3,GFX_KleeversHand_Swing14,GFX_KleeversHand_Swing14End
	dl $D271E1,$D27461,GFX_KleeversHand_Swing15,GFX_KleeversHand_Swing15End
	dl $D2747B,$D276BB,GFX_KleeversHand_Swing16,GFX_KleeversHand_Swing16End
	dl $D276D5,$D27975,GFX_KleeversHand_Swing17,GFX_KleeversHand_Swing17End
	dl $D2798F,$D27C2F,GFX_KleeversHand_Swing18,GFX_KleeversHand_Swing18End
	dl $D27C49,$D27F49,GFX_Krook_Walk1,GFX_Krook_Walk1End
	dl $D27F61,$D28241,GFX_Krook_Walk2,GFX_Krook_Walk2End
	dl $D2825D,$D2851D,GFX_Krook_Walk3,GFX_Krook_Walk3End
	dl $D2853F,$D2885F,GFX_Krook_Walk4,GFX_Krook_Walk4End
	dl $D2887F,$D28BDF,GFX_Krook_Walk5,GFX_Krook_Walk5End
	dl $D28BFB,$D28F7B,GFX_Krook_Walk6,GFX_Krook_Walk6End
	dl $D28F9D,$D2931D,GFX_Krook_Walk7,GFX_Krook_Walk7End
	dl $D29343,$D29703,GFX_Krook_Walk8,GFX_Krook_Walk8End
	dl $D29725,$D29AA5,GFX_Krook_Walk9,GFX_Krook_Walk9End
	dl $D29AC7,$D29E47,GFX_Krook_Walk10,GFX_Krook_Walk10End
	dl $D29E65,$D2A1A5,GFX_Krook_Walk11,GFX_Krook_Walk11End
	dl $D2A1C1,$D2A541,GFX_Krook_ThrowHook1,GFX_Krook_ThrowHook1End
	dl $D2A55F,$D2A8FF,GFX_Krook_ThrowHook2,GFX_Krook_ThrowHook2End
	dl $D2A925,$D2AC85,GFX_Krook_ThrowHook3,GFX_Krook_ThrowHook3End
	dl $D2ACA5,$D2B005,GFX_Krook_ThrowHook4,GFX_Krook_ThrowHook4End
	dl $D2B02B,$D2B3EB,GFX_Krook_ThrowHook5,GFX_Krook_ThrowHook5End
	dl $D2B405,$D2B705,GFX_Krook_ThrowHook6,GFX_Krook_ThrowHook6End
	dl $D2B71D,$D2B9FD,GFX_Krook_ThrowHook7,GFX_Krook_ThrowHook7End
	dl $D3019C,$D3055C,GFX_Krook_ThrowHook8,GFX_Krook_ThrowHook8End
	dl $D30586,$D30986,GFX_Krook_ThrowHook9,GFX_Krook_ThrowHook9End
	dl $D309B0,$D30DB0,GFX_Krook_ThrowHook10,GFX_Krook_ThrowHook10End
	dl $D30DD6,$D31136,GFX_Krook_ThrowHook11,GFX_Krook_ThrowHook11End
	dl $D3115C,$D314BC,GFX_Krook_ThrowHook12,GFX_Krook_ThrowHook12End
	dl $D314E4,$D318C4,GFX_Krook_ThrowHook13,GFX_Krook_ThrowHook13End
	dl $D318E6,$D31C06,GFX_Krook_ThrowHook14,GFX_Krook_ThrowHook14End
	dl $D31C28,$D31F48,GFX_Krook_ThrowHook15,GFX_Krook_ThrowHook15End
	dl $D31F6A,$D3228A,GFX_Krook_ThrowHook16,GFX_Krook_ThrowHook16End
	dl $D322AC,$D325CC,GFX_Krook_CatchHook1,GFX_Krook_CatchHook1End
	dl $D325EE,$D3290E,GFX_Krook_CatchHook2,GFX_Krook_CatchHook2End
	dl $D3292C,$D32CCC,GFX_Krook_CatchHook3,GFX_Krook_CatchHook3End
	dl $D32CF0,$D330F0,GFX_Krook_Dead1,GFX_Krook_Dead1End
	dl $D33120,$D33520,GFX_Krook_Dead2,GFX_Krook_Dead2End
	dl $D33546,$D33906,GFX_Krook_Dead3,GFX_Krook_Dead3End
	dl $D3392C,$D33C8C,GFX_Krook_Dead4,GFX_Krook_Dead4End
	dl $D33CB0,$D33FF0,GFX_Krook_Dead5,GFX_Krook_Dead5End
	dl $D34010,$D34370,GFX_Krook_Turn1,GFX_Krook_Turn1End
	dl $D3438C,$D346AC,GFX_Krook_Turn2,GFX_Krook_Turn2End
	dl $D346C0,$D348A0,GFX_Dixie_FreakOut1,GFX_Dixie_FreakOut1End
	dl $D348B4,$D34A94,GFX_Dixie_FreakOut2,GFX_Dixie_FreakOut2End
	dl $D34AA8,$D34C88,GFX_Dixie_FreakOut3,GFX_Dixie_FreakOut3End
	dl $D34C98,$D34E98,GFX_Dixie_FreakOut4,GFX_Dixie_FreakOut4End
	dl $D34EB0,$D350D0,GFX_Dixie_FreakOut5,GFX_Dixie_FreakOut5End
	dl $D350E6,$D35346,GFX_Dixie_FreakOut6,GFX_Dixie_FreakOut6End
	dl $D3535C,$D355BC,GFX_Dixie_FreakOut7,GFX_Dixie_FreakOut7End
	dl $D355DC,$D3587C,GFX_Dixie_FreakOut8,GFX_Dixie_FreakOut8End
	dl $D3589C,$D35B3C,GFX_Dixie_FreakOut9,GFX_Dixie_FreakOut9End
	dl $D35B5A,$D35DDA,GFX_Dixie_FreakOut10,GFX_Dixie_FreakOut10End
	dl $D35DF2,$D35FB2,GFX_Diddy_FreakOut1,GFX_Diddy_FreakOut1End
	dl $D35FCA,$D3618A,GFX_Diddy_FreakOut2,GFX_Diddy_FreakOut2End
	dl $D361A2,$D36362,GFX_Diddy_FreakOut3,GFX_Diddy_FreakOut3End
	dl $D3637A,$D3653A,GFX_Diddy_FreakOut4,GFX_Diddy_FreakOut4End
	dl $D36552,$D36772,GFX_Diddy_FreakOut5,GFX_Diddy_FreakOut5End
	dl $D36792,$D369D2,GFX_Diddy_FreakOut6,GFX_Diddy_FreakOut6End
	dl $D369F6,$D36C76,GFX_Diddy_FreakOut7,GFX_Diddy_FreakOut7End
	dl $D36C96,$D36F36,GFX_Diddy_FreakOut8,GFX_Diddy_FreakOut8End
	dl $D36F5C,$D371FC,GFX_Diddy_FreakOut9,GFX_Diddy_FreakOut9End
	dl $D3721C,$D3751C,GFX_Diddy_FreakOut10,GFX_Diddy_FreakOut10End
	dl $D37542,$D37842,GFX_Diddy_FreakOut11,GFX_Diddy_FreakOut11End
	dl $D3784C,$D3786C,GFX_WebShot_Attack1,GFX_WebShot_Attack1End
	dl $D37878,$D378B8,GFX_WebShot_Attack2,GFX_WebShot_Attack2End
	dl $D378C6,$D37926,GFX_WebShot_Attack3,GFX_WebShot_Attack3End
	dl $D37932,$D379D2,GFX_WebShot_Attack4,GFX_WebShot_Attack4End
	dl $D379E0,$D37AA0,GFX_WebShot_Attack5,GFX_WebShot_Attack5End
	dl $D37AAE,$D37B6E,GFX_WebShot_Attack6,GFX_WebShot_Attack6End
	dl $D37B7C,$D37C3C,GFX_WebShot_Attack7,GFX_WebShot_Attack7End
	dl $D37C48,$D37CE8,GFX_WebShot_Attack8,GFX_WebShot_Attack8End
	dl $D37CF8,$D37D78,GFX_WebShot_Attack9,GFX_WebShot_Attack9End
	dl $D37D84,$D37E24,GFX_WebShot_Attack10,GFX_WebShot_Attack10End
	dl $D37E30,$D37ED0,GFX_WebShot_Attack11,GFX_WebShot_Attack11End
	dl $D37EDC,$D37F7C,GFX_WebShot_Attack12,GFX_WebShot_Attack12End
	dl $D37F8A,$D37FEA,GFX_WebShot_Blob1,GFX_WebShot_Blob1End
	dl $D37FF8,$D38058,GFX_WebPlatform_Deploy1,GFX_WebPlatform_Deploy1End
	dl $D38062,$D380E2,GFX_WebPlatform_Deploy2,GFX_WebPlatform_Deploy2End
	dl $D380EE,$D3818E,GFX_WebPlatform_Deploy3,GFX_WebPlatform_Deploy3End
	dl $D3819C,$D3825C,GFX_WebPlatform_Deploy4,GFX_WebPlatform_Deploy4End
	dl $D3826E,$D3836E,GFX_WebPlatform_Deploy5,GFX_WebPlatform_Deploy5End
	dl $D3837E,$D384BE,GFX_WebPlatform_Deploy6,GFX_WebPlatform_Deploy6End
	dl $D384D6,$D38696,GFX_WebPlatform_Deploy7,GFX_WebPlatform_Deploy7End
	dl $D386AA,$D3888A,GFX_WebPlatform_Deploy8,GFX_WebPlatform_Deploy8End
	dl $D388A0,$D38AA0,GFX_WebPlatform_Deploy9,GFX_WebPlatform_Deploy9End
	dl $D38AB6,$D38CB6,GFX_WebPlatform_Deploy10,GFX_WebPlatform_Deploy10End
	dl $D38CCC,$D38ECC,GFX_WebPlatform_Deploy11,GFX_WebPlatform_Deploy11End
	dl $D38ED8,$D38F18,GFX_Krochead_Rise1,GFX_Krochead_Rise1End
	dl $D38F28,$D38FA8,GFX_Krochead_Rise2,GFX_Krochead_Rise2End
	dl $D38FBA,$D3905A,GFX_Krochead_Rise3,GFX_Krochead_Rise3End
	dl $D39070,$D39150,GFX_Krochead_Rise4,GFX_Krochead_Rise4End
	dl $D39166,$D392A6,GFX_Krochead_Rise5,GFX_Krochead_Rise5End
	dl $D392BE,$D3941E,GFX_Krochead_Rise6,GFX_Krochead_Rise6End
	dl $D39436,$D39596,GFX_Krochead_Rise7,GFX_Krochead_Rise7End
	dl $D395AE,$D3970E,GFX_Krochead_Rise8,GFX_Krochead_Rise8End
	dl $D39722,$D39902,GFX_Krochead_OpenMouth1,GFX_Krochead_OpenMouth1End
	dl $D39918,$D39B18,GFX_Krochead_OpenMouth2,GFX_Krochead_OpenMouth2End
	dl $D39B30,$D39D50,GFX_Krochead_OpenMouth3,GFX_Krochead_OpenMouth3End
	dl $D39D68,$D39F88,GFX_Krochead_OpenMouth4,GFX_Krochead_OpenMouth4End
	dl $D39FA0,$D3A1C0,GFX_Krochead_OpenMouth5,GFX_Krochead_OpenMouth5End
	dl $D3A1E0,$D3A420,GFX_Krochead_OpenMouth6,GFX_Krochead_OpenMouth6End
	dl $D3A43A,$D3A67A,GFX_Krochead_OpenMouth7,GFX_Krochead_OpenMouth7End
	dl $D3A69A,$D3A8DA,GFX_Krochead_OpenMouth8,GFX_Krochead_OpenMouth8End
	dl $D3A8F2,$D3AA52,GFX_Krochead_Blink1,GFX_Krochead_Blink1End
	dl $D3AA6A,$D3ABCA,GFX_Krochead_Blink2,GFX_Krochead_Blink2End
	dl $D3ABD4,$D3ABF4,GFX_UnknownEffect7_Idle1,GFX_UnknownEffect7_Idle1End
	dl $D3AC00,$D3AC40,GFX_UnknownEffect7_Idle2,GFX_UnknownEffect7_Idle2End
	dl $D3AC4C,$D3ACEC,GFX_UnknownEffect7_Idle3,GFX_UnknownEffect7_Idle3End
	dl $D3ACFE,$D3AD9E,GFX_UnknownEffect7_Idle4,GFX_UnknownEffect7_Idle4End
	dl $D3ADAC,$D3AE0C,GFX_UnknownEffect7_Idle5,GFX_UnknownEffect7_Idle5End
	dl $D3AE18,$D3AE58,GFX_UnknownEffect7_Idle6,GFX_UnknownEffect7_Idle6End
	dl $D3AE6A,$D3AF6A,GFX_Kleever_BrokenHilt1,GFX_Kleever_BrokenHilt1End
	dl $D3AF7C,$D3B0DC,GFX_Kleever_BrokenHilt2,GFX_Kleever_BrokenHilt2End
	dl $D3B0EE,$D3B1EE,GFX_Kleever_BrokenHilt3,GFX_Kleever_BrokenHilt3End
	dl $D3B204,$D3B3A4,GFX_Kleever_BrokenHilt4,GFX_Kleever_BrokenHilt4End
	dl $D3B3BE,$D3B53E,GFX_Kleever_BrokenHilt5,GFX_Kleever_BrokenHilt5End
	dl $D3B550,$D3B710,GFX_Kleever_BrokenHilt6,GFX_Kleever_BrokenHilt6End
	dl $D3B728,$D3B888,GFX_Kleever_BrokenHilt7,GFX_Kleever_BrokenHilt7End
	dl $D3B89C,$D3BA1C,GFX_Kleever_BrokenHilt8,GFX_Kleever_BrokenHilt8End
	dl $D3BA36,$D3BD36,GFX_Kleever_HiltFire1,GFX_Kleever_HiltFire1End
	dl $D3BD54,$D3C094,GFX_Kleever_HiltFire2,GFX_Kleever_HiltFire2End
	dl $D3C0B0,$D3C3D0,GFX_Kleever_HiltFire3,GFX_Kleever_HiltFire3End
	dl $D3C3E6,$D3C706,GFX_Kleever_HiltFire4,GFX_Kleever_HiltFire4End
	dl $D3C71E,$D3C9FE,GFX_Kleever_HiltFire5,GFX_Kleever_HiltFire5End
	dl $D3CA1A,$D3CD3A,GFX_Kleever_HiltFire6,GFX_Kleever_HiltFire6End
	dl $D3CD54,$D3D054,GFX_Kleever_HiltFire7,GFX_Kleever_HiltFire7End
	dl $D3D06C,$D3D34C,GFX_Kleever_HiltFire8,GFX_Kleever_HiltFire8End
	dl $D3D35A,$D3D41A,GFX_KrooksHook_Spin1,GFX_KrooksHook_Spin1End
	dl $D3D426,$D3D4C6,GFX_KrooksHook_Spin2,GFX_KrooksHook_Spin2End
	dl $D3D4D2,$D3D572,GFX_KrooksHook_Spin3,GFX_KrooksHook_Spin3End
	dl $D3D57E,$D3D61E,GFX_KrooksHook_Spin4,GFX_KrooksHook_Spin4End
	dl $D3D62A,$D3D6CA,GFX_KrooksHook_Spin5,GFX_KrooksHook_Spin5End
	dl $D3D6D8,$D3D798,GFX_KrooksHook_Spin6,GFX_KrooksHook_Spin6End
	dl $D3D7A4,$D3D844,GFX_KrooksHook_Spin7,GFX_KrooksHook_Spin7End
	dl $D3D850,$D3D8F0,GFX_KrooksHook_Spin8,GFX_KrooksHook_Spin8End
	dl $D3D8FC,$D3D99C,GFX_KrooksHook_Spin9,GFX_KrooksHook_Spin9End
	dl $D3D9AA,$D3DA6A,GFX_KrooksHook_Spin10,GFX_KrooksHook_Spin10End
	dl $D3DA88,$D3DE28,GFX_Krook_Idle1,GFX_Krook_Idle1End
	dl $D3DE46,$D3E1E6,GFX_Krook_Idle2,GFX_Krook_Idle2End
	dl $D3E218,$D3E578,GFX_Horsetail_Sway1,GFX_Horsetail_Sway1End
	dl $D3E5AC,$D3E92C,GFX_Horsetail_Sway2,GFX_Horsetail_Sway2End
	dl $D3E960,$D3ECE0,GFX_Horsetail_Sway3,GFX_Horsetail_Sway3End
	dl $D3ED14,$D3F094,GFX_Horsetail_Sway4,GFX_Horsetail_Sway4End
	dl $D3F0C8,$D3F448,GFX_Horsetail_Sway5,GFX_Horsetail_Sway5End
	dl $D3F47C,$D3F79C,GFX_Horsetail_Sway6,GFX_Horsetail_Sway6End
	dl $D3F7D0,$D3FAF0,GFX_Horsetail_Sway7,GFX_Horsetail_Sway7End
	dl $D40225,$D40525,GFX_Horsetail_Grabbed,GFX_Horsetail_GrabbedEnd
	dl $D40539,$D40659,GFX_K_Rotate1,GFX_K_Rotate1End
	dl $D4066D,$D4078D,GFX_K_Rotate2,GFX_K_Rotate2End
	dl $D407A1,$D408C1,GFX_K_Rotate3,GFX_K_Rotate3End
	dl $D408D3,$D409D3,GFX_K_Rotate4,GFX_K_Rotate4End
	dl $D409E3,$D40A63,GFX_K_Rotate5,GFX_K_Rotate5End
	dl $D40A75,$D40B75,GFX_K_Rotate6,GFX_K_Rotate6End
	dl $D40B89,$D40CA9,GFX_K_Rotate7,GFX_K_Rotate7End
	dl $D40CBD,$D40DDD,GFX_K_Rotate8,GFX_K_Rotate8End
	dl $D40DF1,$D40F11,GFX_O_Rotate1,GFX_O_Rotate1End
	dl $D40F25,$D41045,GFX_O_Rotate2,GFX_O_Rotate2End
	dl $D41059,$D41179,GFX_O_Rotate3,GFX_O_Rotate3End
	dl $D4118B,$D4128B,GFX_O_Rotate4,GFX_O_Rotate4End
	dl $D4129B,$D4131B,GFX_O_Rotate5,GFX_O_Rotate5End
	dl $D4132D,$D4142D,GFX_O_Rotate6,GFX_O_Rotate6End
	dl $D41441,$D41561,GFX_O_Rotate7,GFX_O_Rotate7End
	dl $D41575,$D41695,GFX_O_Rotate8,GFX_O_Rotate8End
	dl $D416A9,$D417C9,GFX_N_Rotate1,GFX_N_Rotate1End
	dl $D417DD,$D418FD,GFX_N_Rotate2,GFX_N_Rotate2End
	dl $D41911,$D41A31,GFX_N_Rotate3,GFX_N_Rotate3End
	dl $D41A43,$D41B43,GFX_N_Rotate4,GFX_N_Rotate4End
	dl $D41B53,$D41BD3,GFX_N_Rotate5,GFX_N_Rotate5End
	dl $D41BE5,$D41CE5,GFX_N_Rotate6,GFX_N_Rotate6End
	dl $D41CF9,$D41E19,GFX_N_Rotate7,GFX_N_Rotate7End
	dl $D41E2D,$D41F4D,GFX_N_Rotate8,GFX_N_Rotate8End
	dl $D41F61,$D42081,GFX_G_Rotate1,GFX_G_Rotate1End
	dl $D42095,$D421B5,GFX_G_Rotate2,GFX_G_Rotate2End
	dl $D421C9,$D422E9,GFX_G_Rotate3,GFX_G_Rotate3End
	dl $D422FB,$D423FB,GFX_G_Rotate4,GFX_G_Rotate4End
	dl $D4240B,$D4248B,GFX_G_Rotate5,GFX_G_Rotate5End
	dl $D4249D,$D4259D,GFX_G_Rotate6,GFX_G_Rotate6End
	dl $D425B1,$D426D1,GFX_G_Rotate7,GFX_G_Rotate7End
	dl $D426E5,$D42805,GFX_G_Rotate8,GFX_G_Rotate8End
	dl $D4281D,$D429DD,GFX_MiniNecky_Dead1,GFX_MiniNecky_Dead1End
	dl $D429FB,$D42C1B,GFX_MiniNecky_Dead2,GFX_MiniNecky_Dead2End
	dl $D42C33,$D42EB3,GFX_MiniNecky_Dead3,GFX_MiniNecky_Dead3End
	dl $D42EC9,$D43129,GFX_MiniNecky_Dead4,GFX_MiniNecky_Dead4End
	dl $D43141,$D433C1,GFX_MiniNecky_Dead5,GFX_MiniNecky_Dead5End
	dl $D433CB,$D433EB,GFX_UnknownEffect8_Idle1,GFX_UnknownEffect8_Idle1End
	dl $D433F5,$D43415,GFX_UnknownEffect8_Idle2,GFX_UnknownEffect8_Idle2End
	dl $D4341F,$D4343F,GFX_UnknownEffect8_Idle3,GFX_UnknownEffect8_Idle3End
	dl $D43449,$D43469,GFX_UnknownEffect8_Idle4,GFX_UnknownEffect8_Idle4End
	dl $D43473,$D43493,GFX_UnknownEffect8_Idle5,GFX_UnknownEffect8_Idle5End
	dl $D4349D,$D434BD,GFX_UnknownEffect8_Idle6,GFX_UnknownEffect8_Idle6End
	dl $D434C7,$D434E7,GFX_UnknownEffect8_Idle7,GFX_UnknownEffect8_Idle7End
	dl $D434F1,$D43511,GFX_UnknownEffect8_Idle8,GFX_UnknownEffect8_Idle8End
	dl $D43521,$D435A1,GFX_UnknownEffect9_Idle1,GFX_UnknownEffect9_Idle1End
	dl $D435AB,$D4362B,GFX_UnknownEffect9_Idle2,GFX_UnknownEffect9_Idle2End
	dl $D43635,$D436B5,GFX_UnknownEffect9_Idle3,GFX_UnknownEffect9_Idle3End
	dl $D436BF,$D4373F,GFX_UnknownEffect9_Idle4,GFX_UnknownEffect9_Idle4End
	dl $D4374D,$D437AD,GFX_UnknownEffect9_Idle5,GFX_UnknownEffect9_Idle5End
	dl $D437BB,$D4381B,GFX_UnknownEffect9_Idle6,GFX_UnknownEffect9_Idle6End
	dl $D43825,$D438A5,GFX_UnknownEffect9_Idle7,GFX_UnknownEffect9_Idle7End
	dl $D438AF,$D4392F,GFX_UnknownEffect9_Idle8,GFX_UnknownEffect9_Idle8End
	dl $D43939,$D439B9,GFX_UnknownEffect10_Idle1,GFX_UnknownEffect10_Idle1End
	dl $D439C3,$D43A43,GFX_UnknownEffect10_Idle2,GFX_UnknownEffect10_Idle2End
	dl $D43A4D,$D43ACD,GFX_UnknownEffect10_Idle3,GFX_UnknownEffect10_Idle3End
	dl $D43AD7,$D43B57,GFX_UnknownEffect10_Idle4,GFX_UnknownEffect10_Idle4End
	dl $D43B61,$D43BE1,GFX_UnknownEffect10_Idle5,GFX_UnknownEffect10_Idle5End
	dl $D43BEB,$D43C6B,GFX_UnknownEffect10_Idle6,GFX_UnknownEffect10_Idle6End
	dl $D43C75,$D43CF5,GFX_UnknownEffect10_Idle7,GFX_UnknownEffect10_Idle7End
	dl $D43CFF,$D43D7F,GFX_UnknownEffect10_Idle8,GFX_UnknownEffect10_Idle8End
	dl $D43D95,$D44055,GFX_RideableBalloon_Float1,GFX_RideableBalloon_Float1End
	dl $D4406D,$D4434D,GFX_RideableBalloon_Float2,GFX_RideableBalloon_Float2End
	dl $D44363,$D44623,GFX_RideableBalloon_Float3,GFX_RideableBalloon_Float3End
	dl $D44639,$D448F9,GFX_RideableBalloon_Float4,GFX_RideableBalloon_Float4End
	dl $D44913,$D44BB3,GFX_RideableBalloon_Float5,GFX_RideableBalloon_Float5End
	dl $D44BCD,$D44E6D,GFX_RideableBalloon_Float6,GFX_RideableBalloon_Float6End
	dl $D44E87,$D45127,GFX_RideableBalloon_Float7,GFX_RideableBalloon_Float7End
	dl $D45141,$D453E1,GFX_RideableBalloon_Float8,GFX_RideableBalloon_Float8End
	dl $D45405,$D45805,GFX_CatO9Tails_Spin1,GFX_CatO9Tails_Spin1End
	dl $D45827,$D45B47,GFX_CatO9Tails_Spin2,GFX_CatO9Tails_Spin2End
	dl $D45B63,$D45E23,GFX_CatO9Tails_Spin3,GFX_CatO9Tails_Spin3End
	dl $D45E47,$D461E7,GFX_CatO9Tails_Spin4,GFX_CatO9Tails_Spin4End
	dl $D4620B,$D4660B,GFX_CatO9Tails_Spin5,GFX_CatO9Tails_Spin5End
	dl $D4662F,$D4696F,GFX_CatO9Tails_Spin6,GFX_CatO9Tails_Spin6End
	dl $D46991,$D46CB1,GFX_CatO9Tails_Spin7,GFX_CatO9Tails_Spin7End
	dl $D46CD7,$D47097,GFX_CatO9Tails_Spin8,GFX_CatO9Tails_Spin8End
	dl $D470B3,$D47373,GFX_CatO9Tails_Idle1,GFX_CatO9Tails_Idle1End
	dl $D47395,$D476B5,GFX_CatO9Tails_Idle2,GFX_CatO9Tails_Idle2End
	dl $D476D3,$D479B3,GFX_CatO9Tails_Idle3,GFX_CatO9Tails_Idle3End
	dl $D479CF,$D47C8F,GFX_CatO9Tails_Idle4,GFX_CatO9Tails_Idle4End
	dl $D47CAF,$D47F4F,GFX_CatO9Tails_Idle5,GFX_CatO9Tails_Idle5End
	dl $D47F6D,$D481ED,GFX_CatO9Tails_Idle6,GFX_CatO9Tails_Idle6End
	dl $D48209,$D484C9,GFX_CatO9Tails_Idle7,GFX_CatO9Tails_Idle7End
	dl $D484E7,$D48767,GFX_CatO9Tails_Idle8,GFX_CatO9Tails_Idle8End
	dl $D48783,$D489E3,GFX_CatO9Tails_Idle9,GFX_CatO9Tails_Idle9End
	dl $D48A05,$D48C65,GFX_CatO9Tails_Idle10,GFX_CatO9Tails_Idle10End
	dl $D48C89,$D48F09,GFX_CatO9Tails_Idle11,GFX_CatO9Tails_Idle11End
	dl $D48F2D,$D491AD,GFX_CatO9Tails_Idle12,GFX_CatO9Tails_Idle12End
	dl $D491D1,$D49451,GFX_CatO9Tails_Idle13,GFX_CatO9Tails_Idle13End
	dl $D49475,$D496F5,GFX_CatO9Tails_Idle14,GFX_CatO9Tails_Idle14End
	dl $D49719,$D49999,GFX_CatO9Tails_Idle15,GFX_CatO9Tails_Idle15End
	dl $D499BD,$D49C3D,GFX_CatO9Tails_Idle16,GFX_CatO9Tails_Idle16End
	dl $D49C61,$D49EE1,GFX_CatO9Tails_Idle17,GFX_CatO9Tails_Idle17End
	dl $D49F05,$D4A185,GFX_CatO9Tails_Idle18,GFX_CatO9Tails_Idle18End
	dl $D4A1A9,$D4A429,GFX_CatO9Tails_Idle19,GFX_CatO9Tails_Idle19End
	dl $D4A44D,$D4A6CD,GFX_CatO9Tails_Idle20,GFX_CatO9Tails_Idle20End
	dl $D4A6F1,$D4A971,GFX_CatO9Tails_Idle21,GFX_CatO9Tails_Idle21End
	dl $D4A98F,$D4AC6F,GFX_CatO9Tails_Dead1,GFX_CatO9Tails_Dead1End
	dl $D4AC89,$D4AF89,GFX_CatO9Tails_Dead2,GFX_CatO9Tails_Dead2End
	dl $D4AFAB,$D4B2CB,GFX_CatO9Tails_Dead3,GFX_CatO9Tails_Dead3End
	dl $D4B2EB,$D4B5EB,GFX_CatO9Tails_Dead4,GFX_CatO9Tails_Dead4End
	dl $D4B609,$D4B949,GFX_Kloak_Float1,GFX_Kloak_Float1End
	dl $D4B965,$D4BC85,GFX_Kloak_Float2,GFX_Kloak_Float2End
	dl $D4BCA5,$D4BFA5,GFX_Kloak_Float3,GFX_Kloak_Float3End
	dl $D4BFBF,$D4C2BF,GFX_Kloak_Float4,GFX_Kloak_Float4End
	dl $D4C2DF,$D4C57F,GFX_Kloak_Float5,GFX_Kloak_Float5End
	dl $D4C59D,$D4C81D,GFX_Kloak_Float6,GFX_Kloak_Float6End
	dl $D4C837,$D4CA77,GFX_Kloak_Float7,GFX_Kloak_Float7End
	dl $D4CA93,$D4CCF3,GFX_Kloak_Float8,GFX_Kloak_Float8End
	dl $D4CD11,$D4CF91,GFX_Kloak_Float9,GFX_Kloak_Float9End
	dl $D4CFB3,$D4D273,GFX_Kloak_Float10,GFX_Kloak_Float10End
	dl $D4D293,$D4D533,GFX_Kloak_Float11,GFX_Kloak_Float11End
	dl $D4D54D,$D4D84D,GFX_Kloak_Float12,GFX_Kloak_Float12End
	dl $D4D869,$D4DB29,GFX_Kloak_Throw1,GFX_Kloak_Throw1End
	dl $D4DB45,$D4DDA5,GFX_Kloak_Throw2,GFX_Kloak_Throw2End
	dl $D4DDC1,$D4E021,GFX_Kloak_Throw3,GFX_Kloak_Throw3End
	dl $D4E041,$D4E2E1,GFX_Kloak_Throw4,GFX_Kloak_Throw4End
	dl $D4E2FD,$D4E55D,GFX_Kloak_Throw5,GFX_Kloak_Throw5End
	dl $D4E579,$D4E7D9,GFX_Kloak_Throw6,GFX_Kloak_Throw6End
	dl $D4E7F5,$D4EA55,GFX_Kloak_Throw7,GFX_Kloak_Throw7End
	dl $D4EA73,$D4ECF3,GFX_Kloak_Throw8,GFX_Kloak_Throw8End
	dl $D4ED15,$D4EFD5,GFX_Kloak_Throw9,GFX_Kloak_Throw9End
	dl $D4EFF3,$D4F333,GFX_Kloak_Throw10,GFX_Kloak_Throw10End
	dl $D4F34B,$D4F68B,GFX_Kloak_Throw11,GFX_Kloak_Throw11End
	dl $D4F6AB,$D4F94B,GFX_Kloak_Throw12,GFX_Kloak_Throw12End
	dl $D4F96D,$D4FC2D,GFX_Kloak_Throw13,GFX_Kloak_Throw13End
	dl $D5028D,$D5054D,GFX_Kloak_Throw14,GFX_Kloak_Throw14End
	dl $D5056D,$D5080D,GFX_Kloak_Throw15,GFX_Kloak_Throw15End
	dl $D50825,$D50AA5,GFX_Kloak_Throw16,GFX_Kloak_Throw16End
	dl $D50ABB,$D50D1B,GFX_Kloak_Throw17,GFX_Kloak_Throw17End
	dl $D50D39,$D51019,GFX_Kloak_Turn1,GFX_Kloak_Turn1End
	dl $D5103F,$D5139F,GFX_Kloak_Turn2,GFX_Kloak_Turn2End
	dl $D513C3,$D51703,GFX_Kloak_Dead1,GFX_Kloak_Dead1End
	dl $D51727,$D51A07,GFX_Kloak_Dead2,GFX_Kloak_Dead2End
	dl $D51A1F,$D51C9F,GFX_Kloak_Dead3,GFX_Kloak_Dead3End
	dl $D51CBB,$D51F7B,GFX_Kloak_Dead4,GFX_Kloak_Dead4End
	dl $D51F93,$D52273,GFX_Kloak_Dead5,GFX_Kloak_Dead5End
	dl $D52295,$D525B5,GFX_HelicopterBarrel_Wings,GFX_HelicopterBarrel_WingsEnd
	dl $D525C5,$D526A5,GFX_HelicopterBarrel_Propeller1,GFX_HelicopterBarrel_Propeller1End
	dl $D526B5,$D52795,GFX_HelicopterBarrel_Propeller2,GFX_HelicopterBarrel_Propeller2End
	dl $D527A3,$D52863,GFX_HelicopterBarrel_Propeller3,GFX_HelicopterBarrel_Propeller3End
	dl $D52873,$D52953,GFX_HelicopterBarrel_Propeller4,GFX_HelicopterBarrel_Propeller4End
	dl $D5296D,$D52CCD,GFX_HelicopterBarrel_Propeller5,GFX_HelicopterBarrel_Propeller5End
	dl $D52CE7,$D52EC7,GFX_Diddy_SwitchPlacesWithDixie1,GFX_Diddy_SwitchPlacesWithDixie1End
	dl $D52EE3,$D530E3,GFX_Diddy_SwitchPlacesWithDixie2,GFX_Diddy_SwitchPlacesWithDixie2End
	dl $D53101,$D53321,GFX_Diddy_SwitchPlacesWithDixie3,GFX_Diddy_SwitchPlacesWithDixie3End
	dl $D53337,$D53537,GFX_Diddy_SwitchPlacesWithDixie4,GFX_Diddy_SwitchPlacesWithDixie4End
	dl $D53553,$D53753,GFX_Diddy_SwitchPlacesWithDixie5,GFX_Diddy_SwitchPlacesWithDixie5End
	dl $D5376D,$D539AD,GFX_Diddy_SwitchPlacesWithDixie6,GFX_Diddy_SwitchPlacesWithDixie6End
	dl $D539C7,$D53C07,GFX_Diddy_SwitchPlacesWithDixie7,GFX_Diddy_SwitchPlacesWithDixie7End
	dl $D53C29,$D53E89,GFX_Diddy_SwitchPlacesWithDixie8,GFX_Diddy_SwitchPlacesWithDixie8End
	dl $D53EA3,$D540E3,GFX_Diddy_SwitchPlacesWithDixie9,GFX_Diddy_SwitchPlacesWithDixie9End
	dl $D540FD,$D5433D,GFX_Diddy_SwitchPlacesWithDixie10,GFX_Diddy_SwitchPlacesWithDixie10End
	dl $D54355,$D54575,GFX_Diddy_SwitchPlacesWithDixie11,GFX_Diddy_SwitchPlacesWithDixie11End
	dl $D5458F,$D547CF,GFX_Diddy_SwitchPlacesWithDixie12,GFX_Diddy_SwitchPlacesWithDixie12End
	dl $D547EB,$D549EB,GFX_Diddy_SwitchPlacesWithDixie13,GFX_Diddy_SwitchPlacesWithDixie13End
	dl $D54A05,$D54C45,GFX_Dixie_SwitchPlacesWithDiddy1,GFX_Dixie_SwitchPlacesWithDiddy1End
	dl $D54C5F,$D54E9F,GFX_Dixie_SwitchPlacesWithDiddy2,GFX_Dixie_SwitchPlacesWithDiddy2End
	dl $D54EBF,$D5515F,GFX_Dixie_SwitchPlacesWithDiddy3,GFX_Dixie_SwitchPlacesWithDiddy3End
	dl $D5517F,$D5541F,GFX_Dixie_SwitchPlacesWithDiddy4,GFX_Dixie_SwitchPlacesWithDiddy4End
	dl $D5543D,$D556BD,GFX_Dixie_SwitchPlacesWithDiddy5,GFX_Dixie_SwitchPlacesWithDiddy5End
	dl $D556DD,$D5597D,GFX_Dixie_SwitchPlacesWithDiddy6,GFX_Dixie_SwitchPlacesWithDiddy6End
	dl $D55999,$D55BF9,GFX_Dixie_SwitchPlacesWithDiddy7,GFX_Dixie_SwitchPlacesWithDiddy7End
	dl $D55C11,$D55E31,GFX_Dixie_SwitchPlacesWithDiddy8,GFX_Dixie_SwitchPlacesWithDiddy8End
	dl $D55E49,$D56069,GFX_Dixie_SwitchPlacesWithDiddy9,GFX_Dixie_SwitchPlacesWithDiddy9End
	dl $D56083,$D562C3,GFX_Dixie_SwitchPlacesWithDiddy10,GFX_Dixie_SwitchPlacesWithDiddy10End
	dl $D562DF,$D5653F,GFX_Dixie_SwitchPlacesWithDiddy11,GFX_Dixie_SwitchPlacesWithDiddy11End
	dl $D56559,$D56799,GFX_Dixie_SwitchPlacesWithDiddy12,GFX_Dixie_SwitchPlacesWithDiddy12End
	dl $D567B1,$D569D1,GFX_Dixie_SwitchPlacesWithDiddy13,GFX_Dixie_SwitchPlacesWithDiddy13End
	dl $D569E3,$D56C03,GFX_Dixie_SwitchPlacesWithDiddy14,GFX_Dixie_SwitchPlacesWithDiddy14End
	dl $D56C1B,$D56E3B,GFX_Dixie_HairPullFlipToBack1,GFX_Dixie_HairPullFlipToBack1End
	dl $D56E59,$D570D9,GFX_Dixie_HairPullFlipToBack2,GFX_Dixie_HairPullFlipToBack2End
	dl $D570FB,$D5735B,GFX_Dixie_HairPullFlipToBack3,GFX_Dixie_HairPullFlipToBack3End
	dl $D57375,$D575B5,GFX_Dixie_HairPullFlipToBack4,GFX_Dixie_HairPullFlipToBack4End
	dl $D575D1,$D57831,GFX_Dixie_HairPullFlipToBack5,GFX_Dixie_HairPullFlipToBack5End
	dl $D5784D,$D57AAD,GFX_Dixie_HairPullFlipToBack6,GFX_Dixie_HairPullFlipToBack6End
	dl $D57AC9,$D57D29,GFX_Dixie_HairPullFlipToBack7,GFX_Dixie_HairPullFlipToBack7End
	dl $D57D4B,$D57FAB,GFX_Dixie_HairPullFlipToBack8,GFX_Dixie_HairPullFlipToBack8End
	dl $D57FC7,$D58227,GFX_Dixie_HairPullFlipToBack9,GFX_Dixie_HairPullFlipToBack9End
	dl $D5823B,$D583BB,GFX_Dixie_HairPullFlipToBack10,GFX_Dixie_HairPullFlipToBack10End
	dl $D583F1,$D589D1,GFX_Kudgel_Idle1,GFX_Kudgel_Idle1End
	dl $D58A11,$D59031,GFX_Kudgel_Idle2,GFX_Kudgel_Idle2End
	dl $D5906B,$D5968B,GFX_Kudgel_Idle3,GFX_Kudgel_Idle3End
	dl $D596AB,$D5994B,GFX_KudgelClub_Idle1,GFX_KudgelClub_Idle1End
	dl $D5996D,$D59C2D,GFX_KudgelClub_Idle2,GFX_KudgelClub_Idle2End
	dl $D59C4B,$D59F2B,GFX_KudgelClub_Idle3,GFX_KudgelClub_Idle3End
	dl $D59F57,$D5A257,GFX_Enguarde_Swim1,GFX_Enguarde_Swim1End
	dl $D5A281,$D5A561,GFX_Enguarde_Swim2,GFX_Enguarde_Swim2End
	dl $D5A58B,$D5A86B,GFX_Enguarde_Swim3,GFX_Enguarde_Swim3End
	dl $D5A893,$D5AB53,GFX_Enguarde_Swim4,GFX_Enguarde_Swim4End
	dl $D5AB7D,$D5AE5D,GFX_Enguarde_Swim5,GFX_Enguarde_Swim5End
	dl $D5AE89,$D5B189,GFX_Enguarde_Swim6,GFX_Enguarde_Swim6End
	dl $D5B1B5,$D5B4B5,GFX_Enguarde_Swim7,GFX_Enguarde_Swim7End
	dl $D5B4E1,$D5B7E1,GFX_Enguarde_Swim8,GFX_Enguarde_Swim8End
	dl $D5B805,$D5BAE5,GFX_Enguarde_Stab1,GFX_Enguarde_Stab1End
	dl $D5BB09,$D5BDE9,GFX_Enguarde_Stab2,GFX_Enguarde_Stab2End
	dl $D5BE0D,$D5C08D,GFX_Enguarde_Stab3,GFX_Enguarde_Stab3End
	dl $D5C0AD,$D5C28D,GFX_Enguarde_Stab4,GFX_Enguarde_Stab4End
	dl $D5C2B5,$D5C5D5,GFX_Enguarde_Stab5,GFX_Enguarde_Stab5End
	dl $D5C5FF,$D5C8DF,GFX_Enguarde_Stab6,GFX_Enguarde_Stab6End
	dl $D5C909,$D5CBE9,GFX_Enguarde_Stab7,GFX_Enguarde_Stab7End
	dl $D5CC0B,$D5CECB,GFX_Enguarde_Turn1,GFX_Enguarde_Turn1End
	dl $D5CEE5,$D5D0C5,GFX_Enguarde_Turn2,GFX_Enguarde_Turn2End
	dl $D5D0DD,$D5D29D,GFX_Enguarde_Turn3,GFX_Enguarde_Turn3End
	dl $D5D2BB,$D5D47B,GFX_Enguarde_Turn4,GFX_Enguarde_Turn4End
	dl $D5D49D,$D5D75D,GFX_Enguarde_Hurt,GFX_Enguarde_HurtEnd
	dl $D5D77F,$D5DAFF,GFX_Rambi_Hurt,GFX_Rambi_HurtEnd
	dl $D5DB31,$D5E011,GFX_KingZingSting_Fly1,GFX_KingZingSting_Fly1End
	dl $D5E047,$D5E627,GFX_KingZingSting_Fly2,GFX_KingZingSting_Fly2End
	dl $D5E669,$D5ECA9,GFX_KingZingSting_Fly3,GFX_KingZingSting_Fly3End
	dl $D5ECE3,$D5F303,GFX_KingZingSting_Fly4,GFX_KingZingSting_Fly4End
	dl $D5F339,$D5F859,GFX_KingZingSting_Fly5,GFX_KingZingSting_Fly5End
	dl $D5F893,$D5FEB3,GFX_KingZingSting_Fly6,GFX_KingZingSting_Fly6End
	dl $D6042B,$D60A6B,GFX_KingZingSting_Fly7,GFX_KingZingSting_Fly7End
	dl $D60AA3,$D610A3,GFX_KingZingSting_Fly8,GFX_KingZingSting_Fly8End
	dl $D610AF,$D610EF,GFX_KingZingStingStinger_Fly1,GFX_KingZingStingStinger_Fly1End
	dl $D610FB,$D6113B,GFX_KingZingStingStinger_Fly2,GFX_KingZingStingStinger_Fly2End
	dl $D61147,$D61187,GFX_KingZingStingStinger_Fly3,GFX_KingZingStingStinger_Fly3End
	dl $D61193,$D611D3,GFX_KingZingStingStinger_Fly4,GFX_KingZingStingStinger_Fly4End
	dl $D611DF,$D6121F,GFX_KingZingStingStinger_Fly5,GFX_KingZingStingStinger_Fly5End
	dl $D6122B,$D6126B,GFX_KingZingStingStinger_Fly6,GFX_KingZingStingStinger_Fly6End
	dl $D61277,$D612B7,GFX_KingZingStingStinger_Fly7,GFX_KingZingStingStinger_Fly7End
	dl $D612C3,$D61303,GFX_KingZingStingStinger_Fly8,GFX_KingZingStingStinger_Fly8End
	dl $D6133D,$D617DD,GFX_KingZingSting_Turn1,GFX_KingZingSting_Turn1End
	dl $D61811,$D61C51,GFX_KingZingSting_Turn2,GFX_KingZingSting_Turn2End
	dl $D61C5D,$D61C9D,GFX_KingZingStingStinger_Turn1,GFX_KingZingStingStinger_Turn1End
	dl $D61CA9,$D61CE9,GFX_KingZingStingStinger_Turn2,GFX_KingZingStingStinger_Turn2End
	dl $D61D2F,$D6240F,GFX_KingZingSting_Hurt1,GFX_KingZingSting_Hurt1End
	dl $D6244F,$D62B2F,GFX_KingZingSting_Hurt2,GFX_KingZingSting_Hurt2End
	dl $D62B7B,$D632BB,GFX_KingZingSting_Hurt3,GFX_KingZingSting_Hurt3End
	dl $D63309,$D63A69,GFX_KingZingSting_Hurt4,GFX_KingZingSting_Hurt4End
	dl $D63A75,$D63AB5,GFX_KingZingStingStinger_Hurt1,GFX_KingZingStingStinger_Hurt1End
	dl $D63AC1,$D63B01,GFX_KingZingStingStinger_Hurt2,GFX_KingZingStingStinger_Hurt2End
	dl $D63B0D,$D63B4D,GFX_KingZingStingStinger_Hurt3,GFX_KingZingStingStinger_Hurt3End
	dl $D63B59,$D63B99,GFX_KingZingStingStinger_Hurt4,GFX_KingZingStingStinger_Hurt4End
	dl $D63BCD,$D641ED,GFX_KRool_ShootGun1,GFX_KRool_ShootGun1End
	dl $D6421D,$D647FD,GFX_KRool_ShootGun2,GFX_KRool_ShootGun2End
	dl $D64829,$D64D69,GFX_KRool_ShootGun3,GFX_KRool_ShootGun3End
	dl $D64D85,$D64FE5,GFX_KRoolGun_ShootGun1,GFX_KRoolGun_ShootGun1End
	dl $D65003,$D65283,GFX_KRoolGun_ShootGun2,GFX_KRoolGun_ShootGun2End
	dl $D65299,$D654F9,GFX_KRoolGun_ShootGun3,GFX_KRoolGun_ShootGun3End
	dl $D6552B,$D65B8B,GFX_KRool_GunSwipe1,GFX_KRool_GunSwipe1End
	dl $D65BC7,$D66207,GFX_KRool_GunSwipe2,GFX_KRool_GunSwipe2End
	dl $D66241,$D668C1,GFX_KRool_GunSwipe3,GFX_KRool_GunSwipe3End
	dl $D668F3,$D66F53,GFX_KRool_GunSwipe4,GFX_KRool_GunSwipe4End
	dl $D66F83,$D67503,GFX_KRool_BeginGunSwipe,GFX_KRool_BeginGunSwipeEnd
	dl $D6751B,$D6773B,GFX_KRoolGun_GunSwipe1,GFX_KRoolGun_GunSwipe1End
	dl $D67755,$D67995,GFX_KRoolGun_GunSwipe2,GFX_KRoolGun_GunSwipe2End
	dl $D679B9,$D67C39,GFX_KRoolGun_GunSwipe3,GFX_KRoolGun_GunSwipe3End
	dl $D67C5B,$D67F1B,GFX_KRoolGun_GunSwipe4,GFX_KRoolGun_GunSwipe4End
	dl $D67F31,$D68131,GFX_KRoolGun_BeginGunSwipe,GFX_KRooGunl_BeginGunSwipeEnd
	dl $D68171,$D688B1,GFX_KRool_CoveredInSoot,GFX_KRool_CoveredInSootEnd
	dl $D688BD,$D688FD,GFX_KRoolEyes_Open,GFX_KRoolEyes_OpenEnd
	dl $D68909,$D68949,GFX_KRoolEyes_HalfClosed,GFX_KRoolEyes_HalfClosedEnd
	dl $D68983,$D68F43,GFX_KRool_TurnToSlide1,GFX_KRool_TurnToSlide1End
	dl $D68F77,$D69537,GFX_KRool_TurnToSlide2,GFX_KRool_TurnToSlide2End
	dl $D69577,$D69C57,GFX_KRool_TurnToSlide3,GFX_KRool_TurnToSlide3End
	dl $D69C87,$D6A327,GFX_KRool_TurnToSlide4,GFX_KRool_TurnToSlide4End
	dl $D6A35D,$D6A9FD,GFX_KRool_TurnToSlide5,GFX_KRool_TurnToSlide5End
	dl $D6AA19,$D6AC79,GFX_KRoolGun_TurnToSlide1,GFX_KRoolGun_TurnToSlide1End
	dl $D6AC89,$D6AE89,GFX_KRoolGun_TurnToSlide2,GFX_KRoolGun_TurnToSlide2End
	dl $D6AE9B,$D6B05B,GFX_KRoolGun_TurnToSlide3,GFX_KRoolGun_TurnToSlide3End
	dl $D6B071,$D6B1B1,GFX_KRoolGun_TurnToSlide4,GFX_KRoolGun_TurnToSlide4End
	dl $D6B1C9,$D6B329,GFX_KRoolGun_TurnToSlide5,GFX_KRoolGun_TurnToSlide5End
	dl $D6B345,$D6B5A5,GFX_KRoolGun_FallOver1,GFX_KRoolGun_FallOver1End
	dl $D6B5C1,$D6B881,GFX_KRoolGun_FallOver2,GFX_KRoolGun_FallOver2End
	dl $D6B897,$D6BB57,GFX_KRoolGun_FallOver3,GFX_KRoolGun_FallOver3End
	dl $D6BB71,$D6BE71,GFX_KRoolGun_FallOver4,GFX_KRoolGun_FallOver4End
	dl $D6BE8D,$D6C0ED,GFX_KRoolGun_FallOver5,GFX_KRoolGun_FallOver5End
	dl $D6C105,$D6C385,GFX_KRoolGun_FallOver6,GFX_KRoolGun_FallOver6End
	dl $D6C39D,$D6C61D,GFX_KRoolGun_FallOver7,GFX_KRoolGun_FallOver7End
	dl $D6C637,$D6C877,GFX_KRoolGun_FallOver8,GFX_KRoolGun_FallOver8End
	dl $D6C891,$D6CA71,GFX_KRoolGun_FallOver9,GFX_KRoolGun_FallOver9End
	dl $D6CA81,$D6CB61,GFX_KrocheadIcon_Idle1,GFX_KrocheadIcon_Idle1End
	dl $D6CB71,$D6CC51,GFX_KrocheadIcon_Idle2,GFX_KrocheadIcon_Idle2End
	dl $D6CC61,$D6CD41,GFX_KrocheadIcon_Idle3,GFX_KrocheadIcon_Idle3End
	dl $D6CD51,$D6CE31,GFX_KrocheadIcon_Idle4,GFX_KrocheadIcon_Idle4End
	dl $D6CE61,$D6D3E1,GFX_KRool_FallOver1,GFX_KRool_FallOver1End
	dl $D6D415,$D6DA35,GFX_KRool_FallOver2,GFX_KRool_FallOver2End
	dl $D6DA71,$D6E171,GFX_KRool_FallOver3,GFX_KRool_FallOver3End
	dl $D6E1A7,$D6E8A7,GFX_KRool_FallOver4,GFX_KRool_FallOver4End
	dl $D6E8ED,$D6F02D,GFX_KRool_FallOver5,GFX_KRool_FallOver5End
	dl $D6F071,$D6F791,GFX_KRool_FallOver6,GFX_KRool_FallOver6End
	dl $D7067B,$D70E3B,GFX_KRool_FallOver7,GFX_KRool_FallOver7End
	dl $D70E77,$D715D7,GFX_KRool_FallOver8,GFX_KRool_FallOver8End
	dl $D71615,$D71D95,GFX_KRool_FallOver9,GFX_KRool_FallOver9End
	dl $D71DA9,$D71F29,GFX_Dixie_Victory1,GFX_Dixie_Victory1End
	dl $D71F41,$D72101,GFX_Dixie_Victory2,GFX_Dixie_Victory2End
	dl $D7211B,$D722FB,GFX_Dixie_Victory3,GFX_Dixie_Victory3End
	dl $D72317,$D72517,GFX_Dixie_Victory4,GFX_Dixie_Victory4End
	dl $D72531,$D72711,GFX_Dixie_Victory5,GFX_Dixie_Victory5End
	dl $D7272B,$D7296B,GFX_Dixie_Victory6,GFX_Dixie_Victory6End
	dl $D72985,$D72B65,GFX_Dixie_Victory7,GFX_Dixie_Victory7End
	dl $D72B7B,$D72D1B,GFX_Dixie_Victory8,GFX_Dixie_Victory8End
	dl $D72D2F,$D72EAF,GFX_Dixie_Victory9,GFX_Dixie_Victory9End
	dl $D72EC5,$D73065,GFX_Dixie_Victory10,GFX_Dixie_Victory10End
	dl $D7307B,$D7321B,GFX_Dixie_Victory11,GFX_Dixie_Victory11End
	dl $D73235,$D73415,GFX_Dixie_Victory12,GFX_Dixie_Victory12End
	dl $D73431,$D73631,GFX_Dixie_Victory13,GFX_Dixie_Victory13End
	dl $D7364B,$D7382B,GFX_Dixie_Victory14,GFX_Dixie_Victory14End
	dl $D73841,$D739E1,GFX_Dixie_Victory15,GFX_Dixie_Victory15End
	dl $D739F9,$D73BB9,GFX_Dixie_Victory16,GFX_Dixie_Victory16End
	dl $D73BD3,$D73DB3,GFX_Dixie_Victory17,GFX_Dixie_Victory17End
	dl $D73DCD,$D73FAD,GFX_Dixie_Victory18,GFX_Dixie_Victory18End
	dl $D73FC5,$D74185,GFX_Dixie_Victory19,GFX_Dixie_Victory19End
	dl $D741A3,$D743C3,GFX_Dixie_Victory20,GFX_Dixie_Victory20End
	dl $D743E1,$D74601,GFX_Dixie_Victory21,GFX_Dixie_Victory21End
	dl $D7461F,$D7483F,GFX_Dixie_Victory22,GFX_Dixie_Victory22End
	dl $D74857,$D74A17,GFX_Dixie_Victory23,GFX_Dixie_Victory23End
	dl $D74A2D,$D74BCD,GFX_Dixie_Victory24,GFX_Dixie_Victory24End
	dl $D74BE1,$D74D61,GFX_Dixie_Victory25,GFX_Dixie_Victory25End
	dl $D74D79,$D74F39,GFX_Dixie_Victory26,GFX_Dixie_Victory26End
	dl $D74F51,$D75111,GFX_Dixie_Victory27,GFX_Dixie_Victory27End
	dl $D7512B,$D7530B,GFX_Dixie_Victory28,GFX_Dixie_Victory28End
	dl $D7532B,$D7556B,GFX_Dixie_Victory29,GFX_Dixie_Victory29End
	dl $D7558B,$D757CB,GFX_Dixie_Victory30,GFX_Dixie_Victory30End
	dl $D757E7,$D759E7,GFX_Dixie_Victory31,GFX_Dixie_Victory31End
	dl $D75A03,$D75C03,GFX_Dixie_Victory32,GFX_Dixie_Victory32End
	dl $D75C1F,$D75E1F,GFX_Dixie_Victory33,GFX_Dixie_Victory33End
	dl $D75E35,$D76035,GFX_Dixie_Victory34,GFX_Dixie_Victory34End
	dl $D7604D,$D7620D,GFX_Dixie_Victory35,GFX_Dixie_Victory35End
	dl $D76223,$D763C3,GFX_Dixie_Victory36,GFX_Dixie_Victory36End
	dl $D763D3,$D764B3,GFX_Guitar_BePlayed1,GFX_Guitar_BePlayed1End
	dl $D764C5,$D765C5,GFX_Guitar_BePlayed2,GFX_Guitar_BePlayed2End
	dl $D765D7,$D766D7,GFX_Guitar_BePlayed3,GFX_Guitar_BePlayed3End
	dl $D766E7,$D767C7,GFX_Guitar_BePlayed4,GFX_Guitar_BePlayed4End
	dl $D767D7,$D768B7,GFX_Guitar_BePlayed5,GFX_Guitar_BePlayed5End
	dl $D768C5,$D76985,GFX_Guitar_BePlayed6,GFX_Guitar_BePlayed6End
	dl $D76993,$D76A53,GFX_Guitar_BePlayed7,GFX_Guitar_BePlayed7End
	dl $D76A61,$D76B21,GFX_Guitar_BePlayed8,GFX_Guitar_BePlayed8End
	dl $D76B33,$D76BD3,GFX_Guitar_BePlayed9,GFX_Guitar_BePlayed9End
	dl $D76BE5,$D76C85,GFX_Guitar_BePlayed10,GFX_Guitar_BePlayed10End
	dl $D76C97,$D76D37,GFX_Guitar_BePlayed11,GFX_Guitar_BePlayed11End
	dl $D76D49,$D76DE9,GFX_Guitar_BePlayed12,GFX_Guitar_BePlayed12End
	dl $D76DF7,$D76EB7,GFX_Guitar_BePlayed13,GFX_Guitar_BePlayed13End
	dl $D76EC5,$D76F85,GFX_Guitar_BePlayed14,GFX_Guitar_BePlayed14End
	dl $D76F93,$D77053,GFX_Guitar_BePlayed15,GFX_Guitar_BePlayed15End
	dl $D77061,$D77121,GFX_Guitar_BePlayed16,GFX_Guitar_BePlayed16End
	dl $D77135,$D771F5,GFX_Guitar_BePlayed17,GFX_Guitar_BePlayed17End
	dl $D77209,$D772C9,GFX_Guitar_BePlayed18,GFX_Guitar_BePlayed18End
	dl $D772DD,$D7739D,GFX_Guitar_BePlayed19,GFX_Guitar_BePlayed19End
	dl $D773AF,$D7744F,GFX_Guitar_BePlayed20,GFX_Guitar_BePlayed20End
	dl $D77461,$D77501,GFX_Guitar_BePlayed21,GFX_Guitar_BePlayed21End
	dl $D77515,$D775D5,GFX_Guitar_BePlayed22,GFX_Guitar_BePlayed22End
	dl $D775E9,$D776A9,GFX_Guitar_BePlayed23,GFX_Guitar_BePlayed23End
	dl $D776BD,$D7777D,GFX_Guitar_BePlayed24,GFX_Guitar_BePlayed24End
	dl $D77791,$D77851,GFX_Guitar_BePlayed25,GFX_Guitar_BePlayed25End
	dl $D77863,$D77903,GFX_Guitar_BePlayed26,GFX_Guitar_BePlayed26End
	dl $D77915,$D779B5,GFX_Guitar_BePlayed27,GFX_Guitar_BePlayed27End
	dl $D779C5,$D77A45,GFX_Guitar_BePlayed28,GFX_Guitar_BePlayed28End
	dl $D77A55,$D77B35,GFX_Guitar_BePlayed29,GFX_Guitar_BePlayed29End
	dl $D77B45,$D77C25,GFX_Guitar_BePlayed30,GFX_Guitar_BePlayed30End
	dl $D77C35,$D77D15,GFX_Guitar_BePlayed31,GFX_Guitar_BePlayed31End
	dl $D77D23,$D77DE3,GFX_Guitar_BePlayed32,GFX_Guitar_BePlayed32End
	dl $D77DF1,$D77EB1,GFX_Guitar_BePlayed33,GFX_Guitar_BePlayed33End
	dl $D77EC9,$D780E9,GFX_Dixie_UnusedSadWalk1,GFX_Dixie_UnusedSadWalk1End
	dl $D780FD,$D782DD,GFX_Dixie_UnusedSadWalk2,GFX_Dixie_UnusedSadWalk2End
	dl $D782F5,$D78515,GFX_Dixie_UnusedSadWalk3,GFX_Dixie_UnusedSadWalk3End
	dl $D7852F,$D7870F,GFX_Dixie_UnusedSadWalk4,GFX_Dixie_UnusedSadWalk4End
	dl $D78725,$D78925,GFX_Dixie_UnusedSadWalk5,GFX_Dixie_UnusedSadWalk5End
	dl $D7893B,$D78B3B,GFX_Dixie_UnusedSadWalk6,GFX_Dixie_UnusedSadWalk6End
	dl $D78B51,$D78D51,GFX_Dixie_UnusedSadWalk7,GFX_Dixie_UnusedSadWalk7End
	dl $D78D67,$D78F67,GFX_Dixie_UnusedSadWalk8,GFX_Dixie_UnusedSadWalk8End
	dl $D78F7D,$D7917D,GFX_Dixie_UnusedSadWalk9,GFX_Dixie_UnusedSadWalk9End
	dl $D79193,$D79393,GFX_Dixie_UnusedSadWalk10,GFX_Dixie_UnusedSadWalk10End
	dl $D793AB,$D795CB,GFX_Dixie_UnusedSadWalk11,GFX_Dixie_UnusedSadWalk11End
	dl $D795E3,$D79803,GFX_Dixie_UnusedSadWalk12,GFX_Dixie_UnusedSadWalk12End
	dl $D79819,$D79A19,GFX_Dixie_UnusedSadWalk13,GFX_Dixie_UnusedSadWalk13End
	dl $D79A2F,$D79C2F,GFX_Dixie_UnusedSadWalk14,GFX_Dixie_UnusedSadWalk14End
	dl $D79C45,$D79E45,GFX_Dixie_UnusedSadWalk15,GFX_Dixie_UnusedSadWalk15End
	dl $D79E59,$D79FD9,GFX_Cannonball_ExtendSpikes1,GFX_Cannonball_ExtendSpikes1End
	dl $D79FEF,$D7A18F,GFX_Cannonball_ExtendSpikes2,GFX_Cannonball_ExtendSpikes2End
	dl $D7A19F,$D7A39F,GFX_Cannonball_ExtendSpikes3,GFX_Cannonball_ExtendSpikes3End
	dl $D7A3B7,$D7A637,GFX_Cannonball_ExtendSpikes4,GFX_Cannonball_ExtendSpikes4End
	dl $D7A655,$D7A935,GFX_Cannonball_ExtendSpikes5,GFX_Cannonball_ExtendSpikes5End
	dl $D7A955,$D7AC55,GFX_Cannonball_ExtendSpikes6,GFX_Cannonball_ExtendSpikes6End
	dl $D7AC69,$D7AE49,GFX_Diddy_Victory1,GFX_Diddy_Victory1End
	dl $D7AE5B,$D7B01B,GFX_Diddy_Victory2,GFX_Diddy_Victory2End
	dl $D7B033,$D7B1F3,GFX_Diddy_Victory3,GFX_Diddy_Victory3End
	dl $D7B207,$D7B387,GFX_Diddy_Victory4,GFX_Diddy_Victory4End
	dl $D7B39F,$D7B55F,GFX_Diddy_Victory5,GFX_Diddy_Victory5End
	dl $D7B57B,$D7B77B,GFX_Diddy_Victory6,GFX_Diddy_Victory6End
	dl $D7B799,$D7B9B9,GFX_Diddy_Victory7,GFX_Diddy_Victory7End
	dl $D7B9D5,$D7BBD5,GFX_Diddy_Victory8,GFX_Diddy_Victory8End
	dl $D7BBF1,$D7BDF1,GFX_Diddy_Victory9,GFX_Diddy_Victory9End
	dl $D7BE0D,$D7C00D,GFX_Diddy_Victory10,GFX_Diddy_Victory10End
	dl $D7C029,$D7C229,GFX_Diddy_Victory11,GFX_Diddy_Victory11End
	dl $D7C243,$D7C423,GFX_Diddy_Victory12,GFX_Diddy_Victory12End
	dl $D7C43D,$D7C61D,GFX_Diddy_Victory13,GFX_Diddy_Victory13End
	dl $D7C637,$D7C817,GFX_Diddy_Victory14,GFX_Diddy_Victory14End
	dl $D7C831,$D7CA11,GFX_Diddy_Victory15,GFX_Diddy_Victory15End
	dl $D7CA2B,$D7CC0B,GFX_Diddy_Victory16,GFX_Diddy_Victory16End
	dl $D7CC25,$D7CE05,GFX_Diddy_Victory17,GFX_Diddy_Victory17End
	dl $D7CE23,$D7D043,GFX_Diddy_Victory18,GFX_Diddy_Victory18End
	dl $D7D05D,$D7D23D,GFX_Diddy_Victory19,GFX_Diddy_Victory19End
	dl $D7D257,$D7D437,GFX_Diddy_Victory20,GFX_Diddy_Victory20End
	dl $D7D453,$D7D653,GFX_Diddy_Victory21,GFX_Diddy_Victory21End
	dl $D7D667,$D7D787,GFX_BoomboxAndSunglasses_BePlayed1,GFX_BoomboxAndSunglasses_BePlayed1End
	dl $D7D79B,$D7D8BB,GFX_BoomboxAndSunglasses_BePlayed2,GFX_BoomboxAndSunglasses_BePlayed2End
	dl $D7D8CF,$D7D9EF,GFX_BoomboxAndSunglasses_BePlayed3,GFX_BoomboxAndSunglasses_BePlayed3End
	dl $D7DA03,$D7DB23,GFX_BoomboxAndSunglasses_BePlayed4,GFX_BoomboxAndSunglasses_BePlayed4End
	dl $D7DB37,$D7DC57,GFX_BoomboxAndSunglasses_BePlayed5,GFX_BoomboxAndSunglasses_BePlayed5End
	dl $D7DC6B,$D7DD8B,GFX_BoomboxAndSunglasses_BePlayed6,GFX_BoomboxAndSunglasses_BePlayed6End
	dl $D7DD9F,$D7DEBF,GFX_BoomboxAndSunglasses_BePlayed7,GFX_BoomboxAndSunglasses_BePlayed7End
	dl $D7DED3,$D7DFF3,GFX_BoomboxAndSunglasses_BePlayed8,GFX_BoomboxAndSunglasses_BePlayed8End
	dl $D7E007,$D7E127,GFX_BoomboxAndSunglasses_BePlayed9,GFX_BoomboxAndSunglasses_BePlayed9End
	dl $D7E13B,$D7E25B,GFX_BoomboxAndSunglasses_BePlayed10,GFX_BoomboxAndSunglasses_BePlayed10End
	dl $D7E26D,$D7E36D,GFX_BoomboxAndSunglasses_BePlayed11,GFX_BoomboxAndSunglasses_BePlayed11End
	dl $D7E37B,$D7E43B,GFX_BoomboxAndSunglasses_BePlayed12,GFX_BoomboxAndSunglasses_BePlayed12End
	dl $D7E449,$D7E509,GFX_BoomboxAndSunglasses_BePlayed13,GFX_BoomboxAndSunglasses_BePlayed13End
	dl $D7E53F,$D7EB1F,GFX_KRool_Turn1,GFX_KRool_Turn1End
	dl $D7EB4D,$D7F0AD,GFX_KRool_Turn2,GFX_KRool_Turn2End
	dl $D7F0BD,$D7F19D,GFX_KRoolGun_Turn1,GFX_KRoolGun_Turn1End
	dl $D7F1B7,$D7F397,GFX_Diddy_UnusedSadWalk1,GFX_Diddy_UnusedSadWalk1End
	dl $D7F3B1,$D7F591,GFX_Diddy_UnusedSadWalk2,GFX_Diddy_UnusedSadWalk2End
	dl $D7F5AB,$D7F78B,GFX_Diddy_UnusedSadWalk3,GFX_Diddy_UnusedSadWalk3End
	dl $D7F7A7,$D7F9A7,GFX_Diddy_UnusedSadWalk4,GFX_Diddy_UnusedSadWalk4End
	dl $D80095,$D80295,GFX_Diddy_UnusedSadWalk5,GFX_Diddy_UnusedSadWalk5End
	dl $D802B1,$D804B1,GFX_Diddy_UnusedSadWalk6,GFX_Diddy_UnusedSadWalk6End
	dl $D804C9,$D80689,GFX_Diddy_UnusedSadWalk7,GFX_Diddy_UnusedSadWalk7End
	dl $D806A1,$D80861,GFX_Diddy_UnusedSadWalk8,GFX_Diddy_UnusedSadWalk8End
	dl $D80879,$D80A39,GFX_Diddy_UnusedSadWalk9,GFX_Diddy_UnusedSadWalk9End
	dl $D80A53,$D80C33,GFX_Diddy_UnusedSadWalk10,GFX_Diddy_UnusedSadWalk10End
	dl $D80C4B,$D80E0B,GFX_Diddy_UnusedSadWalk11,GFX_Diddy_UnusedSadWalk11End
	dl $D80E23,$D80FE3,GFX_Diddy_UnusedSadWalk12,GFX_Diddy_UnusedSadWalk12End
	dl $D80FFB,$D811BB,GFX_Diddy_UnusedSadWalk13,GFX_Diddy_UnusedSadWalk13End
	dl $D811D5,$D813B5,GFX_Diddy_UnusedSadWalk14,GFX_Diddy_UnusedSadWalk14End
	dl $D813CD,$D8158D,GFX_Diddy_UnusedSadWalk15,GFX_Diddy_UnusedSadWalk15End
	dl $D815A5,$D81765,GFX_Diddy_UnusedSadWalk16,GFX_Diddy_UnusedSadWalk16End
	dl $D8177D,$D8193D,GFX_Diddy_UnusedSadWalk17,GFX_Diddy_UnusedSadWalk17End
	dl $D81953,$D81AF3,GFX_Diddy_UnusedSadWalk18,GFX_Diddy_UnusedSadWalk18End
	dl $D81B0B,$D81CCB,GFX_Diddy_UnusedSadWalk19,GFX_Diddy_UnusedSadWalk19End
	dl $D81CD5,$D81CF5,GFX_Raincloud_Form1,GFX_Raincloud_Form1End
	dl $D81D01,$D81D41,GFX_Raincloud_Form2,GFX_Raincloud_Form2End
	dl $D81D4F,$D81DAF,GFX_Raincloud_Form3,GFX_Raincloud_Form3End
	dl $D81DBB,$D81E5B,GFX_Raincloud_Form4,GFX_Raincloud_Form4End
	dl $D81E69,$D81F29,GFX_Raincloud_Form5,GFX_Raincloud_Form5End
	dl $D81F35,$D82035,GFX_Raincloud_Form6,GFX_Raincloud_Form6End
	dl $D82043,$D82103,GFX_RaincloudRain_Fall1,GFX_RaincloudRain_Fall1End
	dl $D82111,$D821D1,GFX_RaincloudRain_Fall2,GFX_RaincloudRain_Fall2End
	dl $D821DD,$D8227D,GFX_RaincloudRain_Fall3,GFX_RaincloudRain_Fall3End
	dl $D82289,$D82329,GFX_RaincloudRain_Fall4,GFX_RaincloudRain_Fall4End
	dl $D82339,$D823B9,GFX_RaincloudRain_Fall5,GFX_RaincloudRain_Fall5End
	dl $D823D5,$D825D5,GFX_Diddy_LookToSideOnSkullCart1,GFX_Diddy_LookToSideOnSkullCart1End
	dl $D825EF,$D827CF,GFX_Diddy_LookToSideOnSkullCart2,GFX_Diddy_LookToSideOnSkullCart2End
	dl $D827E9,$D829C9,GFX_Diddy_LookToSideOnSkullCart3,GFX_Diddy_LookToSideOnSkullCart3End
	dl $D829DF,$D82B7F,GFX_Diddy_LookToSideOnSkullCart4,GFX_Diddy_LookToSideOnSkullCart4End
	dl $D82B9B,$D82D9B,GFX_Diddy_DuckUnderRollercoasterGate1,GFX_Diddy_DuckUnderRollercoasterGate1End
	dl $D82DB7,$D82FB7,GFX_Diddy_DuckUnderRollercoasterGate2,GFX_Diddy_DuckUnderRollercoasterGate2End
	dl $D82FCD,$D831CD,GFX_Diddy_DuckUnderRollercoasterGate3,GFX_Diddy_DuckUnderRollercoasterGate3End
	dl $D831DD,$D8337D,GFX_Diddy_DuckUnderRollercoasterGate4,GFX_Diddy_DuckUnderRollercoasterGate4End
	dl $D83399,$D835F9,GFX_Diddy_BigDropOnSkullCart1,GFX_Diddy_BigDropOnSkullCart1End
	dl $D83611,$D83831,GFX_Diddy_BigDropOnSkullCart2,GFX_Diddy_BigDropOnSkullCart2End
	dl $D83849,$D83A69,GFX_Diddy_BigDropOnSkullCart3,GFX_Diddy_BigDropOnSkullCart3End
	dl $D83A83,$D83CC3,GFX_Diddy_BigDropOnSkullCart4,GFX_Diddy_BigDropOnSkullCart4End
	dl $D83CD5,$D83EF5,GFX_Dixie_LookToSideOnSkullCart1,GFX_Dixie_LookToSideOnSkullCart1End
	dl $D83F09,$D840E9,GFX_Dixie_LookToSideOnSkullCart2,GFX_Dixie_LookToSideOnSkullCart2End
	dl $D840FF,$D8429F,GFX_Dixie_LookToSideOnSkullCart3,GFX_Dixie_LookToSideOnSkullCart3End
	dl $D842AF,$D843EF,GFX_Dixie_LookToSideOnSkullCart4,GFX_Dixie_LookToSideOnSkullCart4End
	dl $D84401,$D84621,GFX_Dixie_DuckUnderRollercoasterGate1,GFX_Dixie_DuckUnderRollercoasterGate1End
	dl $D84637,$D84837,GFX_Dixie_DuckUnderRollercoasterGate2,GFX_Dixie_DuckUnderRollercoasterGate2End
	dl $D8484D,$D84A4D,GFX_Dixie_DuckUnderRollercoasterGate3,GFX_Dixie_DuckUnderRollercoasterGate3End
	dl $D84A67,$D84C47,GFX_Dixie_DuckUnderRollercoasterGate4,GFX_Dixie_DuckUnderRollercoasterGate4End
	dl $D84C63,$D84EC3,GFX_Dixie_BigDropOnSkullCart1,GFX_Dixie_BigDropOnSkullCart1End
	dl $D84EDD,$D8511D,GFX_Dixie_BigDropOnSkullCart2,GFX_Dixie_BigDropOnSkullCart2End
	dl $D85131,$D85371,GFX_Dixie_BigDropOnSkullCart3,GFX_Dixie_BigDropOnSkullCart3End
	dl $D8538B,$D855CB,GFX_Dixie_BigDropOnSkullCart4,GFX_Dixie_BigDropOnSkullCart4End
	dl $D855E5,$D85825,GFX_Dixie_BigDropOnSkullCart5,GFX_Dixie_BigDropOnSkullCart5End
	dl $D8583F,$D85A7F,GFX_Dixie_BigDropOnSkullCart6,GFX_Dixie_BigDropOnSkullCart6End
	dl $D85A93,$D85C13,GFX_Klank_BigDropOnSkullCart1,GFX_Klank_BigDropOnSkullCart1End
	dl $D85C29,$D85DC9,GFX_Klank_BigDropOnSkullCart2,GFX_Klank_BigDropOnSkullCart2End
	dl $D85DDF,$D85F7F,GFX_Klank_BigDropOnSkullCart3,GFX_Klank_BigDropOnSkullCart3End
	dl $D85F95,$D86135,GFX_Klank_BigDropOnSkullCart4,GFX_Klank_BigDropOnSkullCart4End
	dl $D8614B,$D862EB,GFX_Klank_BigDropOnSkullCart5,GFX_Klank_BigDropOnSkullCart5End
	dl $D86301,$D864A1,GFX_Klank_BigDropOnSkullCart6,GFX_Klank_BigDropOnSkullCart6End
	dl $D864B7,$D86657,GFX_Klank_BigDropOnSkullCart7,GFX_Klank_BigDropOnSkullCart7End
	dl $D8666D,$D8680D,GFX_Klank_BigDropOnSkullCart8,GFX_Klank_BigDropOnSkullCart8End
	dl $D86823,$D869C3,GFX_Klank_BigDropOnSkullCart9,GFX_Klank_BigDropOnSkullCart9End
	dl $D869D9,$D86B79,GFX_Klank_RideSkullCart1,GFX_Klank_RideSkullCart1End
	dl $D86B8F,$D86D2F,GFX_Klank_RideSkullCart2,GFX_Klank_RideSkullCart2End
	dl $D86D45,$D86EE5,GFX_Klank_RideSkullCart3,GFX_Klank_RideSkullCart3End
	dl $D86EFB,$D8709B,GFX_Klank_RideSkullCart4,GFX_Klank_RideSkullCart4End
	dl $D870B1,$D87251,GFX_Klank_RideSkullCart5,GFX_Klank_RideSkullCart5End
	dl $D87267,$D87407,GFX_Klank_RideSkullCart6,GFX_Klank_RideSkullCart6End
	dl $D8741B,$D8759B,GFX_Klank_RideSkullCart7,GFX_Klank_RideSkullCart7End
	dl $D875B3,$D87773,GFX_Klank_RideSkullCart8,GFX_Klank_RideSkullCart8End
	dl $D87789,$D87929,GFX_Klank_RideSkullCart9,GFX_Klank_RideSkullCart9End
	dl $D87941,$D87B01,GFX_Klank_RideSkullCart10,GFX_Klank_RideSkullCart10End
	dl $D87B17,$D87CB7,GFX_Klank_LookBehind1,GFX_Klank_LookBehind1End
	dl $D87CCD,$D87E6D,GFX_Klank_LookBehind2,GFX_Klank_LookBehind2End
	dl $D87E85,$D88045,GFX_Klank_LookBehind3,GFX_Klank_LookBehind3End
	dl $D8805D,$D8821D,GFX_Klank_LookBehind4,GFX_Klank_LookBehind4End
	dl $D88235,$D883F5,GFX_Klank_LookBehind5,GFX_Klank_LookBehind5End
	dl $D8840B,$D885AB,GFX_Klank_ThrowBarrel1,GFX_Klank_ThrowBarrel1End
	dl $D885BF,$D8873F,GFX_Klank_ThrowBarrel2,GFX_Klank_ThrowBarrel2End
	dl $D88753,$D888D3,GFX_Klank_ThrowBarrel3,GFX_Klank_ThrowBarrel3End
	dl $D888E9,$D88A89,GFX_Klank_ThrowBarrel4,GFX_Klank_ThrowBarrel4End
	dl $D88A9F,$D88C3F,GFX_Klank_ThrowBarrel5,GFX_Klank_ThrowBarrel5End
	dl $D88C53,$D88DD3,GFX_Klank_ThrowBarrel6,GFX_Klank_ThrowBarrel6End
	dl $D88DE7,$D88FC7,GFX_Klank_ThrowBarrel7,GFX_Klank_ThrowBarrel7End
	dl $D88FDD,$D8917D,GFX_Klank_ThrowBarrel8,GFX_Klank_ThrowBarrel8End
	dl $D89199,$D89399,GFX_Klank_Dead1,GFX_Klank_Dead1End
	dl $D893B1,$D89571,GFX_Klank_Dead2,GFX_Klank_Dead2End
	dl $D89589,$D89749,GFX_Klank_Dead3,GFX_Klank_Dead3End
	dl $D8975F,$D898FF,GFX_Klank_Dead4,GFX_Klank_Dead4End
	dl $D8990D,$D899CD,GFX_KongWaterSplash_Pose1,GFX_KongWaterSplash_Pose1End
	dl $D899D9,$D89AD9,GFX_KongWaterSplash_Pose2,GFX_KongWaterSplash_Pose2End
	dl $D89AEF,$D89C8F,GFX_KongWaterSplash_Pose3,GFX_KongWaterSplash_Pose3End
	dl $D89CA5,$D89E45,GFX_KongWaterSplash_Pose4,GFX_KongWaterSplash_Pose4End
	dl $D89E57,$D89FB7,GFX_KongWaterSplash_Pose5,GFX_KongWaterSplash_Pose5End
	dl $D89FC9,$D8A0C9,GFX_KongWaterSplash_Pose6,GFX_KongWaterSplash_Pose6End
	dl $D8A0E5,$D8A2E5,GFX_Clapper_Clapping1,GFX_Clapper_Clapping1End
	dl $D8A303,$D8A523,GFX_Clapper_Clapping2,GFX_Clapper_Clapping2End
	dl $D8A541,$D8A761,GFX_Clapper_Clapping3,GFX_Clapper_Clapping3End
	dl $D8A77F,$D8A99F,GFX_Clapper_Clapping4,GFX_Clapper_Clapping4End
	dl $D8A9BB,$D8ABBB,GFX_Clapper_Clapping5,GFX_Clapper_Clapping5End
	dl $D8ABD9,$D8ADF9,GFX_Clapper_Clapping6,GFX_Clapper_Clapping6End
	dl $D8AE11,$D8B031,GFX_Clapper_Clapping7,GFX_Clapper_Clapping7End
	dl $D8B049,$D8B269,GFX_Clapper_Clapping8,GFX_Clapper_Clapping8End
	dl $D8B287,$D8B4A7,GFX_Clapper_Calling1,GFX_Clapper_Calling1End
	dl $D8B4C5,$D8B6E5,GFX_Clapper_Calling2,GFX_Clapper_Calling2End
	dl $D8B701,$D8B901,GFX_Clapper_Calling3,GFX_Clapper_Calling3End
	dl $D8B91B,$D8BAFB,GFX_Clapper_Calling4,GFX_Clapper_Calling4End
	dl $D8BB13,$D8BCD3,GFX_Clapper_Calling5,GFX_Clapper_Calling5End
	dl $D8BCEB,$D8BEAB,GFX_Clapper_Calling6,GFX_Clapper_Calling6End
	dl $D8BEBF,$D8C03F,GFX_Clapper_Calling7,GFX_Clapper_Calling7End
	dl $D8C055,$D8C1F5,GFX_Clapper_Calling8,GFX_Clapper_Calling8End
	dl $D8C20D,$D8C3CD,GFX_Clapper_Calling9,GFX_Clapper_Calling9End
	dl $D8C3FB,$D8C9BB,GFX_KRool_Vacuum1,GFX_KRool_Vacuum1End
	dl $D8C9E7,$D8CF87,GFX_KRool_Vacuum2,GFX_KRool_Vacuum2End
	dl $D8CFA3,$D8D1A3,GFX_KRoolGun_Vacuum1,GFX_KRoolGun_Vacuum1End
	dl $D8D1BF,$D8D3BF,GFX_KRoolGun_Vacuum2,GFX_KRoolGun_Vacuum2End
	dl $D8D3CF,$D8D50F,GFX_KRoolGunFire_Pose1,GFX_KRoolGunFire_Pose1End
	dl $D8D51F,$D8D65F,GFX_KRoolGunFire_Pose2,GFX_KRoolGunFire_Pose2End
	dl $D8D66F,$D8D7AF,GFX_KRoolGunFire_Pose3,GFX_KRoolGunFire_Pose3End
	dl $D8D7BF,$D8D8FF,GFX_KRoolGunFire_Pose4,GFX_KRoolGunFire_Pose4End
	dl $D8D90F,$D8DA4F,GFX_KRoolGunFire_Pose5,GFX_KRoolGunFire_Pose5End
	dl $D8DA5F,$D8DB9F,GFX_KRoolGunFire_Pose6,GFX_KRoolGunFire_Pose6End
	dl $D8DBAF,$D8DCEF,GFX_KRoolGunFire_Pose7,GFX_KRoolGunFire_Pose7End
	dl $D8DCFF,$D8DE3F,GFX_KRoolGunFire_Pose8,GFX_KRoolGunFire_Pose8End
	dl $D8DE77,$D8E4D7,GFX_KRool_Idle1,GFX_KRool_Idle1End
	dl $D8E50F,$D8EB6F,GFX_KRool_Idle2,GFX_KRool_Idle2End
	dl $D8EBA5,$D8F1E5,GFX_KRool_LookTowardsCamera,GFX_KRool_LookTowardsCameraEnd
	dl $D8F201,$D8F461,GFX_KRoolGun_Idle1,GFX_KRoolGun_Idle1End
	dl $D8F47D,$D8F6DD,GFX_KRoolGun_Idle2,GFX_KRoolGun_Idle2End
	dl $D8F6F9,$D8F959,GFX_KRoolGun_LookTowardsCamera,GFX_KRoolGun_LookTowardsCameraEnd
	dl $D8F973,$D8FB53,GFX_Clapper_Hit1,GFX_Clapper_Hit1End
	dl $D9007B,$D9021B,GFX_Clapper_Hit2,GFX_Clapper_Hit2End
	dl $D9022B,$D903CB,GFX_Clapper_Hit3,GFX_Clapper_Hit3End
	dl $D903DD,$D9059D,GFX_Clapper_Hit4,GFX_Clapper_Hit4End
	dl $D905AD,$D9074D,GFX_Clapper_Hit5,GFX_Clapper_Hit5End
	dl $D90763,$D90963,GFX_Clapper_Hit6,GFX_Clapper_Hit6End
	dl $D9097F,$D90B7F,GFX_Clapper_Hit7,GFX_Clapper_Hit7End
	dl $D90B9B,$D90DFB,GFX_Clapper_Hit8,GFX_Clapper_Hit8End
	dl $D90E17,$D910D7,GFX_Clapper_Hit9,GFX_Clapper_Hit9End
	dl $D910F3,$D913B3,GFX_Clapper_Hit10,GFX_Clapper_Hit10End
	dl $D913CD,$D9166D,GFX_Clapper_Hit11,GFX_Clapper_Hit11End
	dl $D91689,$D918E9,GFX_Clapper_Hit12,GFX_Clapper_Hit12End
	dl $D91905,$D91B65,GFX_Clapper_Hit13,GFX_Clapper_Hit13End
	dl $D91B7F,$D91DBF,GFX_Clapper_Hit14,GFX_Clapper_Hit14End
	dl $D91DDF,$D9201F,GFX_Clapper_Hit15,GFX_Clapper_Hit15End
	dl $D92037,$D92257,GFX_Snapjaw_HugeBite1,GFX_Snapjaw_HugeBite1End
	dl $D92277,$D92577,GFX_Snapjaw_HugeBite2,GFX_Snapjaw_HugeBite2End
	dl $D9259D,$D9295D,GFX_Snapjaw_HugeBite3,GFX_Snapjaw_HugeBite3End
	dl $D92981,$D92D21,GFX_Snapjaw_HugeBite4,GFX_Snapjaw_HugeBite4End
	dl $D92D3F,$D930DF,GFX_Snapjaw_HugeBite5,GFX_Snapjaw_HugeBite5End
	dl $D930EB,$D9318B,GFX_KRoolGunVacuumEffect_Pose1,GFX_KRoolGunVacuumEffect_Pose1End
	dl $D931A5,$D932C5,GFX_KRoolGunVacuumEffect_Pose2,GFX_KRoolGunVacuumEffect_Pose2End
	dl $D932DF,$D933FF,GFX_KRoolGunVacuumEffect_Pose3,GFX_KRoolGunVacuumEffect_Pose3End
	dl $D9341B,$D935BB,GFX_KRoolGunVacuumEffect_Pose4,GFX_KRoolGunVacuumEffect_Pose4End
	dl $D935E1,$D937C1,GFX_KRoolGunVacuumEffect_Pose5,GFX_KRoolGunVacuumEffect_Pose5End
	dl $D937E5,$D939A5,GFX_KRoolGunVacuumEffect_Pose6,GFX_KRoolGunVacuumEffect_Pose6End
	dl $D939BB,$D93A9B,GFX_KRoolGunVacuumEffect_Pose7,GFX_KRoolGunVacuumEffect_Pose7End
	dl $D93AA9,$D93B09,GFX_KRoolGunVacuumEffect_Pose8,GFX_KRoolGunVacuumEffect_Pose8End
	dl $D93B39,$D94299,GFX_GiantTire_Pose1,GFX_GiantTire_Pose1End
	dl $D942C9,$D949C9,GFX_GiantTire_Pose2,GFX_GiantTire_Pose2End
	dl $D949F7,$D95137,GFX_GiantTire_Pose3,GFX_GiantTire_Pose3End
	dl $D95143,$D95183,GFX_SkullCartSparks_Pose1,GFX_SkullCartSparks_Pose1End
	dl $D9518F,$D9522F,GFX_SkullCartSparks_Pose2,GFX_SkullCartSparks_Pose2End
	dl $D9523F,$D9531F,GFX_SkullCartSparks_Pose3,GFX_SkullCartSparks_Pose3End
	dl $D95335,$D95475,GFX_SkullCartSparks_Pose4,GFX_SkullCartSparks_Pose4End
	dl $D95489,$D95609,GFX_SkullCartSparks_Pose5,GFX_SkullCartSparks_Pose5End
	dl $D9561B,$D957DB,GFX_SkullCartSparks_Pose6,GFX_SkullCartSparks_Pose6End
	dl $D957EF,$D959CF,GFX_SkullCartSparks_Pose7,GFX_SkullCartSparks_Pose7End
	dl $D959E7,$D95C07,GFX_SkullCartSparks_Pose8,GFX_SkullCartSparks_Pose8End
	dl $D95C1F,$D95E3F,GFX_SkullCartSparks_Pose9,GFX_SkullCartSparks_Pose9End
	dl $D95E57,$D96077,GFX_SkullCartSparks_Pose10,GFX_SkullCartSparks_Pose10End
	dl $D9608D,$D9628D,GFX_SkullCartSparks_Pose11,GFX_SkullCartSparks_Pose11End
	dl $D962B3,$D96613,GFX_HauntedHallDoors_Pose1,GFX_HauntedHallDoors_Pose1End
	dl $D9662B,$D968AB,GFX_HauntedHallDoors_Pose2,GFX_HauntedHallDoors_Pose2End
	dl $D968C5,$D969E5,GFX_HauntedHallDoors_Pose3,GFX_HauntedHallDoors_Pose3End
	dl $D969F9,$D96C39,GFX_HauntedHallDoors_Pose4,GFX_HauntedHallDoors_Pose4End
	dl $D96C59,$D96F59,GFX_HauntedHallDoors_Pose5,GFX_HauntedHallDoors_Pose5End
	dl $D96F79,$D97279,GFX_HauntedHallDoors_Pose6,GFX_HauntedHallDoors_Pose6End
	dl $D97297,$D97577,GFX_HauntedHallDoors_Pose7,GFX_HauntedHallDoors_Pose7End
	dl $D975A3,$D97963,GFX_HauntedHallDoors_Pose8,GFX_HauntedHallDoors_Pose8End
	dl $D97985,$D97CA5,GFX_HauntedHallDoors_Pose9,GFX_HauntedHallDoors_Pose9End
	dl $D97CC3,$D97FA3,GFX_HauntedHallDoors_Pose10,GFX_HauntedHallDoors_Pose10End
	dl $D97FB7,$D981F7,GFX_HauntedHallDoors_Pose11,GFX_HauntedHallDoors_Pose11End
	dl $D98213,$D98353,GFX_HauntedHallDoors_Pose12,GFX_HauntedHallDoors_Pose12End
	dl $D98369,$D985C9,GFX_HauntedHallDoors_Pose13,GFX_HauntedHallDoors_Pose13End
	dl $D985E1,$D98861,GFX_PlusBarrel_Pose1,GFX_PlusBarrel_Pose1End
	dl $D98879,$D98AF9,GFX_MinusBarrel_Pose1,GFX_MinusBarrel_Pose1End
	dl $D98B0D,$D98E0D,GFX_ArrowBarrelCannon_Pose1,GFX_ArrowBarrelCannon_Pose1End
	dl $D98E25,$D99165,GFX_ArrowBarrelCannon_Pose2,GFX_ArrowBarrelCannon_Pose2End
	dl $D99183,$D994C3,GFX_ArrowBarrelCannon_Pose3,GFX_ArrowBarrelCannon_Pose3End
	dl $D994E1,$D99821,GFX_ArrowBarrelCannon_Pose4,GFX_ArrowBarrelCannon_Pose4End
	dl $D99835,$D99B35,GFX_ArrowBarrelCannon_Pose5,GFX_ArrowBarrelCannon_Pose5End
	dl $D99B4D,$D99CAD,GFX_MapHelicopterBarrel_Pose1,GFX_MapHelicopterBarrel_Pose1End
	dl $D99CC5,$D99E25,GFX_MapHelicopterBarrel_Pose2,GFX_MapHelicopterBarrel_Pose2End
	dl $D99E3F,$D99FBF,GFX_MapHelicopterBarrel_Pose3,GFX_MapHelicopterBarrel_Pose3End
	dl $D99FCD,$D9A08D,GFX_Timer_Zero,GFX_Timer_ZeroEnd
	dl $D9A09B,$D9A15B,GFX_Timer_One,GFX_Timer_OneEnd
	dl $D9A169,$D9A229,GFX_Timer_Two,GFX_Timer_TwoEnd
	dl $D9A237,$D9A2F7,GFX_Timer_Three,GFX_Timer_ThreeEnd
	dl $D9A303,$D9A3A3,GFX_Timer_Four,GFX_Timer_FourEnd
	dl $D9A3B1,$D9A471,GFX_Timer_Five,GFX_Timer_FiveEnd
	dl $D9A47F,$D9A53F,GFX_Timer_Six,GFX_Timer_SixEnd
	dl $D9A54D,$D9A60D,GFX_Timer_Seven,GFX_Timer_SevenEnd
	dl $D9A61B,$D9A6DB,GFX_Timer_Eight,GFX_Timer_EightEnd
	dl $D9A6E9,$D9A7A9,GFX_Timer_Nine,GFX_Timer_NineEnd
	dl $D9A7B7,$D9A817,GFX_KRoolGunSparks_Pose1,GFX_KRoolGunSparks_Pose1End
	dl $D9A823,$D9A8C3,GFX_KRoolGunSparks_Pose2,GFX_KRoolGunSparks_Pose2End
	dl $D9A8D3,$D9A9B3,GFX_KRoolGunSparks_Pose3,GFX_KRoolGunSparks_Pose3End
	dl $D9A9C3,$D9AB03,GFX_KRoolGunSparks_Pose4,GFX_KRoolGunSparks_Pose4End
	dl $D9AB17,$D9AC97,GFX_KRoolGunSparks_Pose5,GFX_KRoolGunSparks_Pose5End
	dl $D9ACAD,$D9AE4D,GFX_KRoolGunSparks_Pose6,GFX_KRoolGunSparks_Pose6End
	dl $D9AE63,$D9B003,GFX_KRoolGunSparks_Pose7,GFX_KRoolGunSparks_Pose7End
	dl $D9B01D,$D9B1FD,GFX_KRoolGunSparks_Pose8,GFX_KRoolGunSparks_Pose8End
	dl $D9B215,$D9B3D5,GFX_KRoolGunSparks_Pose9,GFX_KRoolGunSparks_Pose9End
	dl $D9B3F1,$D9B5F1,GFX_KRoolGunSparks_Pose10,GFX_KRoolGunSparks_Pose10End
	dl $D9B613,$D9B813,GFX_KRoolGunSparks_Pose11,GFX_KRoolGunSparks_Pose11End
	dl $D9B833,$D9BA13,GFX_KRoolGunSparks_Pose12,GFX_KRoolGunSparks_Pose12End
	dl $D9BA33,$D9BC13,GFX_KRoolGunSparks_Pose13,GFX_KRoolGunSparks_Pose13End
	dl $D9BC31,$D9BDF1,GFX_KRoolGunSparks_Pose14,GFX_KRoolGunSparks_Pose14End
	dl $D9BE0D,$D9BF4D,GFX_KRoolGunSparks_Pose15,GFX_KRoolGunSparks_Pose15End
	dl $D9BF5F,$D9C11F,GFX_KRoolMagicShots_Pose1,GFX_KRoolMagicShots_Pose1End
	dl $D9C135,$D9C2D5,GFX_KRoolMagicShots_Pose2,GFX_KRoolMagicShots_Pose2End
	dl $D9C2E7,$D9C4A7,GFX_KRoolMagicShots_Pose3,GFX_KRoolMagicShots_Pose3End
	dl $D9C4BB,$D9C63B,GFX_KRoolMagicShots_Pose4,GFX_KRoolMagicShots_Pose4End
	dl $D9C651,$D9C7F1,GFX_KRoolMagicShots_Pose5,GFX_KRoolMagicShots_Pose5End
	dl $D9C809,$D9C9C9,GFX_KRoolMagicShots_Pose6,GFX_KRoolMagicShots_Pose6End
	dl $D9C9DF,$D9CB7F,GFX_KRoolMagicShots_Pose7,GFX_KRoolMagicShots_Pose7End
	dl $D9CB9B,$D9CD9B,GFX_KRoolMagicShots_Pose8,GFX_KRoolMagicShots_Pose8End
	dl $D9CDB1,$D9D011,GFX_Yoshi_Pose1,GFX_Yoshi_Pose1End
	dl $D9D029,$D9D2A9,GFX_Yoshi_Pose2,GFX_Yoshi_Pose2End
	dl $D9D2C1,$D9D541,GFX_Yoshi_Pose3,GFX_Yoshi_Pose3End
	dl $D9D557,$D9D7B7,GFX_Yoshi_Pose4,GFX_Yoshi_Pose4End
	dl $D9D7D1,$D9DA71,GFX_Yoshi_Pose5,GFX_Yoshi_Pose5End
	dl $D9DA8B,$D9DD2B,GFX_Yoshi_Pose6,GFX_Yoshi_Pose6End
	dl $D9DD45,$D9DFE5,GFX_Yoshi_Pose7,GFX_Yoshi_Pose7End
	dl $D9DFFF,$D9E29F,GFX_Yoshi_Pose8,GFX_Yoshi_Pose8End
	dl $D9E2B9,$D9E559,GFX_Yoshi_Pose9,GFX_Yoshi_Pose9End
	dl $D9E573,$D9E813,GFX_Yoshi_Pose10,GFX_Yoshi_Pose10End
	dl $D9E82D,$D9EACD,GFX_Yoshi_Pose11,GFX_Yoshi_Pose11End
	dl $D9EAE5,$D9ED65,GFX_Yoshi_Pose12,GFX_Yoshi_Pose12End
	dl $D9ED7D,$D9EF3D,GFX_Mario_Pose1,GFX_Mario_Pose1End
	dl $D9EF59,$D9F159,GFX_Mario_Pose2,GFX_Mario_Pose2End
	dl $D9F175,$D9F375,GFX_Mario_Pose3,GFX_Mario_Pose3End
	dl $D9F391,$D9F591,GFX_Mario_Pose4,GFX_Mario_Pose4End
	dl $D9F5A9,$D9F7C9,GFX_Mario_Pose5,GFX_Mario_Pose5End
	dl $DA0093,$DA02B3,GFX_Mario_Pose6,GFX_Mario_Pose6End
	dl $DA02D1,$DA0611,GFX_FunkyKong_Idle1,GFX_FunkyKong_Idle1End
	dl $DA062F,$DA096F,GFX_FunkyKong_Idle2,GFX_FunkyKong_Idle2End
	dl $DA098D,$DA0CCD,GFX_FunkyKong_Idle3,GFX_FunkyKong_Idle3End
	dl $DA0CE7,$DA0FE7,GFX_FunkyKong_Surf1,GFX_FunkyKong_Surf1End
	dl $DA100B,$DA13AB,GFX_FunkyKong_Surf2,GFX_FunkyKong_Surf2End
	dl $DA13DB,$DA17DB,GFX_FunkyKong_Surf3,GFX_FunkyKong_Surf3End
	dl $DA1803,$DA1BE3,GFX_FunkyKong_Surf4,GFX_FunkyKong_Surf4End
	dl $DA1C0F,$DA1FCF,GFX_FunkyKong_Surf5,GFX_FunkyKong_Surf5End
	dl $DA1FFD,$DA23DD,GFX_FunkyKong_Surf6,GFX_FunkyKong_Surf6End
	dl $DA2409,$DA2829,GFX_FunkyKong_Surf7,GFX_FunkyKong_Surf7End
	dl $DA2855,$DA2C75,GFX_FunkyKong_Surf8,GFX_FunkyKong_Surf8End
	dl $DA2C9B,$DA30BB,GFX_FunkyKong_Surf9,GFX_FunkyKong_Surf9End
	dl $DA30E1,$DA3501,GFX_FunkyKong_Surf10,GFX_FunkyKong_Surf10End
	dl $DA3527,$DA38E7,GFX_FunkyKong_Surf11,GFX_FunkyKong_Surf11End
	dl $DA3913,$DA3D33,GFX_FunkyKong_Surf12,GFX_FunkyKong_Surf12End
	dl $DA3D5B,$DA40DB,GFX_FunkyKong_Surf13,GFX_FunkyKong_Surf13End
	dl $DA4101,$DA4461,GFX_FunkyKong_Surf14,GFX_FunkyKong_Surf14End
	dl $DA448D,$DA484D,GFX_FunkyKong_Surf15,GFX_FunkyKong_Surf15End
	dl $DA486F,$DA4C4F,GFX_FunkyKong_Surf16,GFX_FunkyKong_Surf16End
	dl $DA5337,$DA53F7,GFX_Surfboard_Idle1,GFX_Surfboard_Idle1End
	dl $DA540B,$DA54CB,GFX_Surfboard_Idle2,GFX_Surfboard_Idle2End
	dl $DA54DF,$DA559F,GFX_Surfboard_Idle3,GFX_Surfboard_Idle3End
	dl $DA55B3,$DA5673,GFX_Surfboard_Surf1,GFX_Surfboard_Surf1End
	dl $DA5689,$DA5769,GFX_Surfboard_Surf2,GFX_Surfboard_Surf2End
	dl $DA577F,$DA585F,GFX_Surfboard_Surf3,GFX_Surfboard_Surf3End
	dl $DA5875,$DA5955,GFX_Surfboard_Surf4,GFX_Surfboard_Surf4End
	dl $DA596B,$DA5A4B,GFX_Surfboard_Surf5,GFX_Surfboard_Surf5End
	dl $DA5A61,$DA5B41,GFX_Surfboard_Surf6,GFX_Surfboard_Surf6End
	dl $DA5B57,$DA5C37,GFX_Surfboard_Surf7,GFX_Surfboard_Surf7End
	dl $DA5C4D,$DA5D2D,GFX_Surfboard_Surf8,GFX_Surfboard_Surf8End
	dl $DA5D43,$DA5E23,GFX_Surfboard_Surf9,GFX_Surfboard_Surf9End
	dl $DA5E39,$DA5F19,GFX_Surfboard_Surf10,GFX_Surfboard_Surf10End
	dl $DA5F2F,$DA600F,GFX_Surfboard_Surf11,GFX_Surfboard_Surf11End
	dl $DA6029,$DA6149,GFX_Surfboard_Surf12,GFX_Surfboard_Surf12End
	dl $DA6161,$DA6261,GFX_Surfboard_Surf13,GFX_Surfboard_Surf13End
	dl $DA6279,$DA63D9,GFX_Surfboard_Surf14,GFX_Surfboard_Surf14End
	dl $DA63F3,$DA6513,GFX_Surfboard_Surf15,GFX_Surfboard_Surf15End
	dl $DA6529,$DA6609,GFX_Surfboard_Surf16,GFX_Surfboard_Surf16End
	dl $DA6629,$DA6989,GFX_CrankyKong_Idle1,GFX_CrankyKong_Idle1End
	dl $DA69A9,$DA6D09,GFX_CrankyKong_Idle2,GFX_CrankyKong_Idle2End
	dl $DA6D29,$DA7089,GFX_CrankyKong_Idle3,GFX_CrankyKong_Idle3End
	dl $DA70AB,$DA742B,GFX_CrankyKong_LeanForward1,GFX_CrankyKong_LeanForward1End
	dl $DA744B,$DA77AB,GFX_CrankyKong_LeanForward2,GFX_CrankyKong_LeanForward2End
	dl $DA77CD,$DA7B4D,GFX_CrankyKong_LeanForward3,GFX_CrankyKong_LeanForward3End
	dl $DA7B71,$DA7F11,GFX_CrankyKong_LeanForward4,GFX_CrankyKong_LeanForward4End
	dl $DA7F33,$DA8313,GFX_CrankyKong_LeanForward5,GFX_CrankyKong_LeanForward5End
	dl $DA8331,$DA86D1,GFX_CrankyKong_ShakeCane1,GFX_CrankyKong_ShakeCane1End
	dl $DA86EF,$DA8A8F,GFX_CrankyKong_ShakeCane2,GFX_CrankyKong_ShakeCane2End
	dl $DA8AAF,$DA8E6F,GFX_CrankyKong_ShakeCane3,GFX_CrankyKong_ShakeCane3End
	dl $DA8E97,$DA9217,GFX_CrankyKong_ShakeCane4,GFX_CrankyKong_ShakeCane4End
	dl $DA9243,$DA9603,GFX_CrankyKong_ShakeCane5,GFX_CrankyKong_ShakeCane5End
	dl $DA962D,$DA99CD,GFX_CrankyKong_ShakeCane6,GFX_CrankyKong_ShakeCane6End
	dl $DA99F5,$DA9D75,GFX_CrankyKong_ShakeCane7,GFX_CrankyKong_ShakeCane7End
	dl $DA9D97,$DAA117,GFX_CrankyKong_ShakeCane8,GFX_CrankyKong_ShakeCane8End
	dl $DAA14B,$DAA70B,GFX_Kudgel_Land,GFX_Kudgel_LandEnd
	dl $DAA733,$DAAAB3,GFX_KudgelsClub_Land,GFX_KudgelsClub_LandEnd
	dl $DAAAF9,$DAB299,GFX_Kudgel_Jump,GFX_Kudgel_JumpEnd
	dl $DAB2C5,$DAB685,GFX_KudgelsClub_Jump,GFX_KudgelsClub_JumpEnd
	dl $DAB6C5,$DABEC5,GFX_Kudgel_Hurt1,GFX_Kudgel_Hurt1End
	dl $DABEED,$DAC32D,GFX_KudgelsClub_Hurt1,GFX_KudgelsClub_Hurt1End
	dl $DAC373,$DACB73,GFX_Kudgel_Hurt2,GFX_Kudgel_Hurt2End
	dl $DACB99,$DACFB9,GFX_KudgelsClub_Hurt2,GFX_KudgelsClub_Hurt2End
	dl $DACFD5,$DAD235,GFX_Screech_Fly1,GFX_Screech_Fly1End
	dl $DAD24D,$DAD46D,GFX_Screech_Fly2,GFX_Screech_Fly2End
	dl $DAD483,$DAD683,GFX_Screech_Fly3,GFX_Screech_Fly3End
	dl $DAD69D,$DAD8DD,GFX_Screech_Fly4,GFX_Screech_Fly4End
	dl $DAD8F9,$DADAF9,GFX_Screech_Fly5,GFX_Screech_Fly5End
	dl $DADB15,$DADD15,GFX_Screech_Fly6,GFX_Screech_Fly6End
	dl $DADD33,$DADF53,GFX_Screech_Fly7,GFX_Screech_Fly7End
	dl $DADF71,$DAE191,GFX_Screech_Fly8,GFX_Screech_Fly8End
	dl $DAE1A9,$DAE3C9,GFX_Screech_Fly9,GFX_Screech_Fly9End
	dl $DAE3E7,$DAE667,GFX_Screech_Fly10,GFX_Screech_Fly10End
	dl $DAE687,$DAE927,GFX_Screech_Fly11,GFX_Screech_Fly11End
	dl $DAE945,$DAEBC5,GFX_Screech_Fly12,GFX_Screech_Fly12End
	dl $DAEBDB,$DAEDDB,GFX_Screech_Turn1,GFX_Screech_Turn1End
	dl $DAEDF1,$DAEF91,GFX_Screech_Turn2,GFX_Screech_Turn2End
	dl $DAEFC3,$DAF5C3,GFX_Kudgel_SwingClub1,GFX_Kudgel_SwingClub1End
	dl $DAF5F1,$DAFBB1,GFX_Kudgel_SwingClub2,GFX_Kudgel_SwingClub2End
	dl $DB05B6,$DB0BB6,GFX_Kudgel_SwingClub3,GFX_Kudgel_SwingClub3End
	dl $DB0BF6,$DB12D6,GFX_Kudgel_SwingClub4,GFX_Kudgel_SwingClub4End
	dl $DB1314,$DB1A34,GFX_Kudgel_SwingClub5,GFX_Kudgel_SwingClub5End
	dl $DB1A6E,$DB214E,GFX_Kudgel_SwingClub6,GFX_Kudgel_SwingClub6End
	dl $DB2170,$DB2610,GFX_Kudgel_SwingClub7,GFX_Kudgel_SwingClub7End
	dl $DB264C,$DB2C8C,GFX_Kudgel_SwingClub8,GFX_Kudgel_SwingClub8End
	dl $DB2CC8,$DB33C8,GFX_Kudgel_SwingClub9,GFX_Kudgel_SwingClub9End
	dl $DB3400,$DB3AC0,GFX_Kudgel_SwingClub10,GFX_Kudgel_SwingClub10End
	dl $DB3AEA,$DB406A,GFX_Kudgel_SwingClub11,GFX_Kudgel_SwingClub11End
	dl $DB4082,$DB4302,GFX_KudgelsClub_SwingClub1,GFX_KudgelsClub_SwingClub1End
	dl $DB4318,$DB4578,GFX_KudgelsClub_SwingClub2,GFX_KudgelsClub_SwingClub2End
	dl $DB458C,$DB482C,GFX_KudgelsClub_SwingClub3,GFX_KudgelsClub_SwingClub3End
	dl $DB484A,$DB4BEA,GFX_KudgelsClub_SwingClub4,GFX_KudgelsClub_SwingClub4End
	dl $DB4C02,$DB4F42,GFX_KudgelsClub_SwingClub5,GFX_KudgelsClub_SwingClub5End
	dl $DB4F5C,$DB52BC,GFX_KudgelsClub_SwingClub6,GFX_KudgelsClub_SwingClub6End
	dl $DB52DE,$DB56BE,GFX_KudgelsClub_SwingClub7,GFX_KudgelsClub_SwingClub7End
	dl $DB56DE,$DB59DE,GFX_KudgelsClub_SwingClub8,GFX_KudgelsClub_SwingClub8End
	dl $DB59F6,$DB5CD6,GFX_KudgelsClub_SwingClub9,GFX_KudgelsClub_SwingClub9End
	dl $DB5CEC,$DB5FAC,GFX_KudgelsClub_SwingClub10,GFX_KudgelsClub_SwingClub10End
	dl $DB5FC4,$DB62A4,GFX_KudgelsClub_SwingClub11,GFX_KudgelsClub_SwingClub11End
	dl $DB62BC,$DB653C,GFX_Kudgel_Dead1,GFX_Kudgel_Dead1End
	dl $DB655A,$DB67DA,GFX_Kudgel_Dead2,GFX_Kudgel_Dead2End
	dl $DB67E8,$DB68A8,GFX_KudgelsClub_Dead1,GFX_KudgelsClub_Dead1End
	dl $DB68B6,$DB6976,GFX_Puftup_Turn1,GFX_Puftup_Turn1End
	dl $DB6990,$DB6B70,GFX_Puftup_Turn2,GFX_Puftup_Turn2End
	dl $DB6B88,$DB6D48,GFX_Puftup_Turn3,GFX_Puftup_Turn3End
	dl $DB6D5C,$DB6EDC,GFX_Puftup_Turn4,GFX_Puftup_Turn4End
	dl $DB6EF0,$DB7010,GFX_Puftup_Turn5,GFX_Puftup_Turn5End
	dl $DB7022,$DB7182,GFX_Puftup_Turn6,GFX_Puftup_Turn6End
	dl $DB719A,$DB735A,GFX_Puftup_Turn7,GFX_Puftup_Turn7End
	dl $DB7364,$DB7384,GFX_KudgelDeathSmokePuffs_Pose1,GFX_KudgelDeathSmokePuffs_Pose1End
	dl $DB738E,$DB73AE,GFX_KudgelDeathSmokePuffs_Pose2,GFX_KudgelDeathSmokePuffs_Pose2End
	dl $DB73B8,$DB73D8,GFX_KudgelDeathSmokePuffs_Pose3,GFX_KudgelDeathSmokePuffs_Pose3End
	dl $DB73E6,$DB7446,GFX_KudgelDeathSmokePuffs_Pose4,GFX_KudgelDeathSmokePuffs_Pose4End
	dl $DB7454,$DB74B4,GFX_KudgelDeathSmokePuffs_Pose5,GFX_KudgelDeathSmokePuffs_Pose5End
	dl $DB74C2,$DB7522,GFX_KudgelDeathSmokePuffs_Pose6,GFX_KudgelDeathSmokePuffs_Pose6End
	dl $DB7530,$DB7590,GFX_KudgelDeathSmokePuffs_Pose7,GFX_KudgelDeathSmokePuffs_Pose7End
	dl $DB75B6,$DB7916,GFX_BreakableWall_ShipDeck,GFX_BreakableWall_ShipDeckEnd
	dl $DB7928,$DB7B48,GFX_BreakableWall_BeeHive,GFX_BreakableWall_BeeHiveEnd
	dl $DB7B60,$DB7DE0,GFX_BreakableWall_ForestLeftWall,GFX_BreakableWall_ForestLeftWallEnd
	dl $DB7DF0,$DB7FF0,GFX_BreakableWall_Unknown1,GFX_BreakableWall_Unknown1End
	dl $DB800A,$DB824A,GFX_BreakableWall_ForestRightWall,GFX_BreakableWall_ForestRightWallEnd
	dl $DB825C,$DB847C,GFX_BreakableWall_Castle,GFX_BreakableWall_CastleEnd
	dl $DB848E,$DB864E,GFX_BreakableWall_Unknown2,GFX_BreakableWall_Unknown2End
	dl $DB8668,$DB8908,GFX_BreakableWall_LavaCave,GFX_BreakableWall_LavaCaveEnd
	dl $DB8924,$DB8B84,GFX_BreakableWall_IceCave,GFX_BreakableWall_IceCaveEnd
	dl $DB8B98,$DB8E38,GFX_BreakableWall_ShipHoldTallBox,GFX_BreakableWall_ShipHoldTallBoxEnd
	dl $DB8E4E,$DB8F2E,GFX_BreakableWall_ShipHoldShortBox,GFX_BreakableWall_ShipHoldShortBoxEnd
	dl $DB8F38,$DB8FB8,GFX_WebShot_Blob2,GFX_WebShot_Blob2End
	dl $DB8FC2,$DB9042,GFX_WebShot_Blob3,GFX_WebShot_Blob3End
	dl $DB904C,$DB90CC,GFX_WebShot_Blob4,GFX_WebShot_Blob4End
	dl $DB90EE,$DB94CE,GFX_SwankyKong_StandStill,GFX_SwankyKong_StandStillEnd
	dl $DB94F2,$DB9892,GFX_SwankyKong_Presents1,GFX_SwankyKong_Presents1End
	dl $DB98B6,$DB9C56,GFX_SwankyKong_Presents2,GFX_SwankyKong_Presents2End
	dl $DB9C82,$DBA042,GFX_SwankyKong_Presents3,GFX_SwankyKong_Presents3End
	dl $DBA06A,$DBA44A,GFX_SwankyKong_Presents4,GFX_SwankyKong_Presents4End
	dl $DBA472,$DBA852,GFX_SwankyKong_Presents5,GFX_SwankyKong_Presents5End
	dl $DBA87C,$DBAC7C,GFX_SwankyKong_Presents6,GFX_SwankyKong_Presents6End
	dl $DBACA6,$DBB0A6,GFX_SwankyKong_Presents7,GFX_SwankyKong_Presents7End
	dl $DBB0D0,$DBB4D0,GFX_SwankyKong_Presents8,GFX_SwankyKong_Presents8End
	dl $DBB4FA,$DBB8FA,GFX_SwankyKong_Presents9,GFX_SwankyKong_Presents9End
	dl $DBB924,$DBBD24,GFX_SwankyKong_Presents10,GFX_SwankyKong_Presents10End
	dl $DBBD4E,$DBC14E,GFX_SwankyKong_Presents11,GFX_SwankyKong_Presents11End
	dl $DBC178,$DBC578,GFX_SwankyKong_Presents12,GFX_SwankyKong_Presents12End
	dl $DBC59A,$DBC97A,GFX_SwankyKong_Smile1,GFX_SwankyKong_Smile1End
	dl $DBC99C,$DBCD7C,GFX_SwankyKong_Smile2,GFX_SwankyKong_Smile2End
	dl $DBCD9E,$DBD17E,GFX_SwankyKong_Smile3,GFX_SwankyKong_Smile3End
	dl $DBD188,$DBD1A8,GFX_TeethShine_Pose1,GFX_TeethShine_Pose1End
	dl $DBD1B2,$DBD1D2,GFX_TeethShine_Pose2,GFX_TeethShine_Pose2End
	dl $DBD1DC,$DBD1FC,GFX_TeethShine_Pose3,GFX_TeethShine_Pose3End
	dl $DBD21A,$DBD5BA,GFX_SwankyKong_PushBackHair1,GFX_SwankyKong_PushBackHair1End
	dl $DBD5DC,$DBD95C,GFX_SwankyKong_PushBackHair2,GFX_SwankyKong_PushBackHair2End
	dl $DBD97A,$DBDCBA,GFX_SwankyKong_PushBackHair3,GFX_SwankyKong_PushBackHair3End
	dl $DBDCD8,$DBE018,GFX_SwankyKong_PushBackHair4,GFX_SwankyKong_PushBackHair4End
	dl $DBE03A,$DBE3BA,GFX_SwankyKong_PushBackHair5,GFX_SwankyKong_PushBackHair5End
	dl $DBE3DC,$DBE75C,GFX_SwankyKong_PushBackHair6,GFX_SwankyKong_PushBackHair6End
	dl $DBE780,$DBEB20,GFX_SwankyKong_PushBackHair7,GFX_SwankyKong_PushBackHair7End
	dl $DBEB44,$DBEEE4,GFX_SwankyKong_PushBackHair8,GFX_SwankyKong_PushBackHair8End
	dl $DBEF08,$DBF2A8,GFX_SwankyKong_PushBackHair9,GFX_SwankyKong_PushBackHair9End
	dl $DBF2CC,$DBF66C,GFX_SwankyKong_PushBackHair10,GFX_SwankyKong_PushBackHair10End
	dl $DBF68C,$DBF8CC,GFX_Diddy_BlownUpwards1,GFX_Diddy_BlownUpwards1End
	dl $DBF8EC,$DBFB2C,GFX_Diddy_BlownUpwards2,GFX_Diddy_BlownUpwards2End
	dl $DC0238,$DC0458,GFX_Diddy_BlownUpwards3,GFX_Diddy_BlownUpwards3End
	dl $DC0474,$DC06D4,GFX_Diddy_BlownUpwards4,GFX_Diddy_BlownUpwards4End
	dl $DC06F8,$DC09D8,GFX_Diddy_BlownUpwards5,GFX_Diddy_BlownUpwards5End
	dl $DC09FA,$DC0CBA,GFX_Diddy_BlownUpwards6,GFX_Diddy_BlownUpwards6End
	dl $DC0CDC,$DC0F9C,GFX_Diddy_BlownUpwards7,GFX_Diddy_BlownUpwards7End
	dl $DC0FBA,$DC129A,GFX_Diddy_BlownUpwards8,GFX_Diddy_BlownUpwards8End
	dl $DC12B8,$DC1598,GFX_Diddy_BlownUpwards9,GFX_Diddy_BlownUpwards9End
	dl $DC15B8,$DC18B8,GFX_Diddy_BlownUpwards10,GFX_Diddy_BlownUpwards10End
	dl $DC18DE,$DC1BDE,GFX_Diddy_BlownUpwards11,GFX_Diddy_BlownUpwards11End
	dl $DC1C06,$DC1F26,GFX_Diddy_BlownUpwards12,GFX_Diddy_BlownUpwards12End
	dl $DC1F46,$DC21E6,GFX_Dixie_Fall1,GFX_Dixie_Fall1End
	dl $DC2206,$DC24A6,GFX_Dixie_Fall2,GFX_Dixie_Fall2End
	dl $DC24C4,$DC2744,GFX_Dixie_Fall3,GFX_Dixie_Fall3End
	dl $DC2762,$DC29E2,GFX_Dixie_Fall4,GFX_Dixie_Fall4End
	dl $DC29FC,$DC2C3C,GFX_Dixie_Fall5,GFX_Dixie_Fall5End
	dl $DC2C56,$DC2E96,GFX_Dixie_Fall6,GFX_Dixie_Fall6End
	dl $DC2EB2,$DC3112,GFX_Dixie_Fall7,GFX_Dixie_Fall7End
	dl $DC3128,$DC3388,GFX_Dixie_BlownUpwards1,GFX_Dixie_BlownUpwards1End
	dl $DC33A4,$DC3604,GFX_Dixie_BlownUpwards2,GFX_Dixie_BlownUpwards2End
	dl $DC361C,$DC383C,GFX_Dixie_BlownUpwards3,GFX_Dixie_BlownUpwards3End
	dl $DC3856,$DC3A36,GFX_Dixie_BlownUpwards4,GFX_Dixie_BlownUpwards4End
	dl $DC3A50,$DC3C30,GFX_Dixie_BlownUpwards5,GFX_Dixie_BlownUpwards5End
	dl $DC3C4A,$DC3E2A,GFX_Dixie_BlownUpwards6,GFX_Dixie_BlownUpwards6End
	dl $DC3E44,$DC4024,GFX_Dixie_BlownUpwards7,GFX_Dixie_BlownUpwards7End
	dl $DC403C,$DC41FC,GFX_Dixie_BlownUpwards8,GFX_Dixie_BlownUpwards8End
	dl $DC4214,$DC43D4,GFX_Dixie_BlownUpwards9,GFX_Dixie_BlownUpwards9End
	dl $DC43EE,$DC45CE,GFX_Dixie_BlownUpwards10,GFX_Dixie_BlownUpwards10End
	dl $DC45E6,$DC47A6,GFX_Dixie_BlownUpwards11,GFX_Dixie_BlownUpwards11End
	dl $DC47C2,$DC49C2,GFX_Dixie_BlownUpwards12,GFX_Dixie_BlownUpwards12End
	dl $DC49D4,$DC4AD4,GFX_KleeversHandLavaBubbles_Pose1,GFX_KleeversHandLavaBubbles_Pose1End
	dl $DC4AE8,$DC4C08,GFX_KleeversHandLavaBubbles_Pose2,GFX_KleeversHandLavaBubbles_Pose2End
	dl $DC4C18,$DC4D58,GFX_KleeversHandLavaBubbles_Pose3,GFX_KleeversHandLavaBubbles_Pose3End
	dl $DC4D68,$DC4EA8,GFX_KleeversHandLavaBubbles_Pose4,GFX_KleeversHandLavaBubbles_Pose4End
	dl $DC4EB6,$DC4FD6,GFX_KleeversHandLavaBubbles_Pose5,GFX_KleeversHandLavaBubbles_Pose5End
	dl $DC4FEA,$DC510A,GFX_KleeversHandLavaBubbles_Pose6,GFX_KleeversHandLavaBubbles_Pose6End
	dl $DC5118,$DC5238,GFX_KleeversHandLavaBubbles_Pose7,GFX_KleeversHandLavaBubbles_Pose7End
	dl $DC5246,$DC5366,GFX_KleeversHandLavaBubbles_Pose8,GFX_KleeversHandLavaBubbles_Pose8End
	dl $DC5370,$DC53F0,GFX_MapZinger_Turn1,GFX_MapZinger_Turn1End
	dl $DC53FA,$DC547A,GFX_MapZinger_Turn2,GFX_MapZinger_Turn2End
	dl $DC5490,$DC5570,GFX_MapFlyingKroc_Ship,GFX_MapFlyingKroc_ShipEnd
	dl $DC557A,$DC559A,GFX_MapFlyingKroc_DeployLadder1,GFX_MapFlyingKroc_DeployLadder1End
	dl $DC55A6,$DC55E6,GFX_MapFlyingKroc_DeployLadder2,GFX_MapFlyingKroc_DeployLadder2End
	dl $DC55F4,$DC5654,GFX_MapFlyingKroc_DeployLadder3,GFX_MapFlyingKroc_DeployLadder3End
	dl $DC5664,$DC56E4,GFX_MapFlyingKroc_DeployLadder4,GFX_MapFlyingKroc_DeployLadder4End
	dl $DC56F6,$DC5796,GFX_MapFlyingKroc_DeployLadder5,GFX_MapFlyingKroc_DeployLadder5End
	dl $DC57AA,$DC586A,GFX_MapFlyingKroc_DeployLadder6,GFX_MapFlyingKroc_DeployLadder6End
	dl $DC5876,$DC5976,GFX_MapKRool_Falling1,GFX_MapKRool_Falling1End
	dl $DC598A,$DC5AAA,GFX_MapKRool_Falling2,GFX_MapKRool_Falling2End
	dl $DC5ABC,$DC5BBC,GFX_MapKRool_Falling3,GFX_MapKRool_Falling3End
	dl $DC5BCC,$DC5CAC,GFX_MapKRool_Falling4,GFX_MapKRool_Falling4End
	dl $DC5CBC,$DC5D9C,GFX_MapKRool_Climbing1,GFX_MapKRool_Climbing1End
	dl $DC5DAA,$DC5E6A,GFX_MapKRool_Climbing2,GFX_MapKRool_Climbing2End
	dl $DC5E78,$DC5F38,GFX_MapKRool_Climbing3,GFX_MapKRool_Climbing3End
	dl $DC5F44,$DC5FE4,GFX_MapKRool_Climbing4,GFX_MapKRool_Climbing4End
	dl $DC5FF4,$DC60D4,GFX_MapKRool_Climbing5,GFX_MapKRool_Climbing5End
	dl $DC60E6,$DC6186,GFX_BarrelCannonSymbols_DPad,GFX_BarrelCannonSymbols_DPadEnd
	dl $DC6198,$DC6298,GFX_BarrelCannonSymbols_RotateArrow,GFX_BarrelCannonSymbols_RotateArrowEnd
	dl $DC62AE,$DC63EE,GFX_BarrelCannonSymbols_Bonus,GFX_BarrelCannonSymbols_BonusEnd
	dl $DC6406,$DC6566,GFX_BarrelCannonSymbols_Dixie,GFX_BarrelCannonSymbols_DixieEnd
	dl $DC6578,$DC6678,GFX_BarrelCannonSymbols_Diddy,GFX_BarrelCannonSymbols_DiddyEnd
	dl $DC6690,$DC67F0,GFX_BananaCoin_Spin1,GFX_BananaCoin_Spin1End
	dl $DC6808,$DC6968,GFX_BananaCoin_Spin2,GFX_BananaCoin_Spin2End
	dl $DC6980,$DC6AE0,GFX_BananaCoin_Spin3,GFX_BananaCoin_Spin3End
	dl $DC6AF8,$DC6C58,GFX_BananaCoin_Spin4,GFX_BananaCoin_Spin4End
	dl $DC6C64,$DC6D64,GFX_BananaCoin_Spin5,GFX_BananaCoin_Spin5End
	dl $DC6D74,$DC6DF4,GFX_BananaCoin_Spin6,GFX_BananaCoin_Spin6End
	dl $DC6E04,$DC6EE4,GFX_BananaCoin_Spin7,GFX_BananaCoin_Spin7End
	dl $DC6EFC,$DC705C,GFX_BananaCoin_Spin8,GFX_BananaCoin_Spin8End
	dl $DC7070,$DC7190,GFX_G_Shrink1,GFX_G_Shrink1End
	dl $DC71A4,$DC72C4,GFX_G_Shrink2,GFX_G_Shrink2End
	dl $DC72D8,$DC73F8,GFX_K_Shrink1,GFX_K_Shrink1End
	dl $DC740C,$DC752C,GFX_K_Shrink2,GFX_K_Shrink2End
	dl $DC7540,$DC7660,GFX_N_Shrink1,GFX_N_Shrink1End
	dl $DC7674,$DC7794,GFX_N_Shrink2,GFX_N_Shrink2End
	dl $DC77A8,$DC78C8,GFX_O_Shrink1,GFX_O_Shrink1End
	dl $DC78DC,$DC79FC,GFX_O_Shrink2,GFX_O_Shrink2End
	dl $DC7A12,$DC7C72,GFX_Kremcoin_Collected,GFX_Kremcoin_CollectedEnd
	dl $DC7C8E,$DC7FAE,GFX_DKCoin_Collected,GFX_DKCoin_CollectedEnd
	dl $DC7FC8,$DC8268,GFX_Diddy_HangFromHorizontalRope1,GFX_Diddy_HangFromHorizontalRope1End
	dl $DC8282,$DC8522,GFX_Diddy_HangFromHorizontalRope2,GFX_Diddy_HangFromHorizontalRope2End
	dl $DC853C,$DC87DC,GFX_Diddy_HangFromHorizontalRope3,GFX_Diddy_HangFromHorizontalRope3End
	dl $DC87F6,$DC8A96,GFX_Diddy_HangFromHorizontalRope4,GFX_Diddy_HangFromHorizontalRope4End
	dl $DC8AB4,$DC8D34,GFX_Diddy_HangFromHorizontalRope5,GFX_Diddy_HangFromHorizontalRope5End
	dl $DC8D50,$DC8FB0,GFX_Diddy_HangFromHorizontalRope6,GFX_Diddy_HangFromHorizontalRope6End
	dl $DC8FC6,$DC9226,GFX_Diddy_HangFromHorizontalRope7,GFX_Diddy_HangFromHorizontalRope7End
	dl $DC923C,$DC949C,GFX_Diddy_HangFromHorizontalRope8,GFX_Diddy_HangFromHorizontalRope8End
	dl $DC94B4,$DC97F4,GFX_GoldenBarrel_Pose,GFX_GoldenBarrel_PoseEnd
	dl $DC981A,$DC9ABA,GFX_WrinklyKong_OpenBook1,GFX_WrinklyKong_OpenBook1End
	dl $DC9AE2,$DC9DA2,GFX_WrinklyKong_OpenBook2,GFX_WrinklyKong_OpenBook2End
	dl $DC9DC4,$DCA084,GFX_WrinklyKong_OpenBook3,GFX_WrinklyKong_OpenBook3End
	dl $DCA0A4,$DCA344,GFX_WrinklyKong_OpenBook4,GFX_WrinklyKong_OpenBook4End
	dl $DCA364,$DCA604,GFX_WrinklyKong_OpenBook5,GFX_WrinklyKong_OpenBook5End
	dl $DCA624,$DCA864,GFX_WrinklyKong_OpenBook6,GFX_WrinklyKong_OpenBook6End
	dl $DCA884,$DCAAC4,GFX_WrinklyKong_OpenBook7,GFX_WrinklyKong_OpenBook7End
	dl $DCAAE0,$DCACE0,GFX_WrinklyKong_OpenBook8,GFX_WrinklyKong_OpenBook8End
	dl $DCACFC,$DCAEFC,GFX_WrinklyKong_OpenBook9,GFX_WrinklyKong_OpenBook9End
	dl $DCAF18,$DCB118,GFX_WrinklyKong_OpenBook10,GFX_WrinklyKong_OpenBook10End
	dl $DCB136,$DCB356,GFX_WrinklyKong_OpenBook11,GFX_WrinklyKong_OpenBook11End
	dl $DCB374,$DCB594,GFX_WrinklyKong_OpenBook12,GFX_WrinklyKong_OpenBook12End
	dl $DCB5B2,$DCB7D2,GFX_WrinklyKong_ReadBook1,GFX_WrinklyKong_ReadBook1End
	dl $DCB7F0,$DCBA10,GFX_WrinklyKong_ReadBook2,GFX_WrinklyKong_ReadBook2End
	dl $DCBA2C,$DCBC2C,GFX_WrinklyKong_ReadBook3,GFX_WrinklyKong_ReadBook3End
	dl $DCBC4A,$DCBE6A,GFX_WrinklyKong_ReadBook4,GFX_WrinklyKong_ReadBook4End
	dl $DCBE88,$DCC0A8,GFX_WrinklyKong_ReadBook5,GFX_WrinklyKong_ReadBook5End
	dl $DCC0C6,$DCC2E6,GFX_WrinklyKong_ReadBook6,GFX_WrinklyKong_ReadBook6End
	dl $DCC304,$DCC524,GFX_WrinklyKong_ReadBook7,GFX_WrinklyKong_ReadBook7End
	dl $DCC542,$DCC762,GFX_WrinklyKong_ReadBook8,GFX_WrinklyKong_ReadBook8End
	dl $DCC782,$DCC9C2,GFX_WrinklyKong_TurnPage1,GFX_WrinklyKong_TurnPage1End
	dl $DCC9E2,$DCCC22,GFX_WrinklyKong_TurnPage2,GFX_WrinklyKong_TurnPage2End
	dl $DCCC42,$DCCE82,GFX_WrinklyKong_TurnPage3,GFX_WrinklyKong_TurnPage3End
	dl $DCCEA0,$DCD0C0,GFX_WrinklyKong_TurnPage4,GFX_WrinklyKong_TurnPage4End
	dl $DCD0DE,$DCD2FE,GFX_WrinklyKong_TurnPage5,GFX_WrinklyKong_TurnPage5End
	dl $DCD31C,$DCD53C,GFX_WrinklyKong_TurnPage6,GFX_WrinklyKong_TurnPage6End
	dl $DCD556,$DCD796,GFX_WrinklyKong_TurnPage7,GFX_WrinklyKong_TurnPage7End
	dl $DCD7B4,$DCD9D4,GFX_WrinklyKong_TurnPage8,GFX_WrinklyKong_TurnPage8End
	dl $DCD9F4,$DCDC34,GFX_WrinklyKong_TurnPage9,GFX_WrinklyKong_TurnPage9End
	dl $DCDC50,$DCDE50,GFX_WrinklyKongBook_OpenBook1,GFX_WrinklyKongBook_OpenBook1End
	dl $DCDE6C,$DCE06C,GFX_WrinklyKongBook_OpenBook2,GFX_WrinklyKongBook_OpenBook2End
	dl $DCE08A,$DCE2AA,GFX_WrinklyKongBook_OpenBook3,GFX_WrinklyKongBook_OpenBook3End
	dl $DCE2C4,$DCE4A4,GFX_WrinklyKongBook_OpenBook4,GFX_WrinklyKongBook_OpenBook4End
	dl $DCE4BC,$DCE67C,GFX_WrinklyKongBook_OpenBook5,GFX_WrinklyKongBook_OpenBook5End
	dl $DCE694,$DCE854,GFX_WrinklyKongBook_OpenBook6,GFX_WrinklyKongBook_OpenBook6End
	dl $DCE86C,$DCEA2C,GFX_WrinklyKongBook_OpenBook7,GFX_WrinklyKongBook_OpenBook7End
	dl $DCEA40,$DCEBC0,GFX_WrinklyKongBook_OpenBook8,GFX_WrinklyKongBook_OpenBook8End
	dl $DCEBD4,$DCED54,GFX_WrinklyKongBook_OpenBook9,GFX_WrinklyKongBook_OpenBook9End
	dl $DCED6A,$DCEF0A,GFX_WrinklyKongBook_OpenBook10,GFX_WrinklyKongBook_OpenBook10End
	dl $DCEF20,$DCF0C0,GFX_WrinklyKongBook_OpenBook11,GFX_WrinklyKongBook_OpenBook11End
	dl $DCF0DA,$DCF2BA,GFX_WrinklyKongBook_OpenBook12,GFX_WrinklyKongBook_OpenBook12End
	dl $DCF2D2,$DCF492,GFX_WrinklyKongBook_ReadBook1,GFX_WrinklyKongBook_ReadBook1End
	dl $DCF4AA,$DCF66A,GFX_WrinklyKongBook_ReadBook2,GFX_WrinklyKongBook_ReadBook2End
	dl $DCF684,$DCF864,GFX_WrinklyKongBook_ReadBook3,GFX_WrinklyKongBook_ReadBook3End
	dl $DCF87E,$DCFA5E,GFX_WrinklyKongBook_ReadBook4,GFX_WrinklyKongBook_ReadBook4End
	dl $DD01DC,$DD039C,GFX_WrinklyKongBook_ReadBook5,GFX_WrinklyKongBook_ReadBook5End
	dl $DD03B4,$DD0574,GFX_WrinklyKongBook_ReadBook6,GFX_WrinklyKongBook_ReadBook6End
	dl $DD058C,$DD074C,GFX_WrinklyKongBook_ReadBook7,GFX_WrinklyKongBook_ReadBook7End
	dl $DD0764,$DD0924,GFX_WrinklyKongBook_TurnPage1,GFX_WrinklyKongBook_TurnPage1End
	dl $DD093C,$DD0AFC,GFX_WrinklyKongBook_TurnPage2,GFX_WrinklyKongBook_TurnPage2End
	dl $DD1340,$DD1520,GFX_WrinklyKongBook_TurnPage3,GFX_WrinklyKongBook_TurnPage3End
	dl $DD153A,$DD171A,GFX_WrinklyKongBook_TurnPage4,GFX_WrinklyKongBook_TurnPage4End
	dl $DD1734,$DD1914,GFX_WrinklyKongBook_TurnPage5,GFX_WrinklyKongBook_TurnPage5End
	dl $DD192C,$DD1AEC,GFX_WrinklyKongBook_TurnPage6,GFX_WrinklyKongBook_TurnPage6End
	dl $DD1B02,$DD1CA2,GFX_WrinklyKongBook_TurnPage7,GFX_WrinklyKongBook_TurnPage7End
	dl $DD1CBA,$DD1E7A,GFX_WrinklyKongBook_TurnPage8,GFX_WrinklyKongBook_TurnPage8End
	dl $DD1E92,$DD2052,GFX_WrinklyKongBook_TurnPage9,GFX_WrinklyKongBook_TurnPage9End
	dl $DD206A,$DD222A,GFX_WrinklyKongBook_TurnPage10,GFX_WrinklyKongBook_TurnPage10End
	dl $DD2236,$DD2276,GFX_KrocodileKoreBridge_Pose1,GFX_KrocodileKoreBridge_Pose1End
	dl $DD2280,$DD2300,GFX_KrocodileKoreBridge_Pose2,GFX_KrocodileKoreBridge_Pose2End
	dl $DD230A,$DD238A,GFX_KrocodileKoreBridge_Pose3,GFX_KrocodileKoreBridge_Pose3End
	dl $DD2394,$DD2414,GFX_KrocodileKoreBridge_Pose4,GFX_KrocodileKoreBridge_Pose4End
	dl $DD241E,$DD249E,GFX_KrocodileKoreBridge_Pose5,GFX_KrocodileKoreBridge_Pose5End
	dl $DD24C0,$DD2780,GFX_Snapjaw_Shrink1,GFX_Snapjaw_Shrink1End
	dl $DD2798,$DD29B8,GFX_Snapjaw_Shrink2,GFX_Snapjaw_Shrink2End
	dl $DD29DA,$DD2C9A,GFX_Squawks_GrabKongs,GFX_Squawks_GrabKongsEnd
	dl $DD2CB2,$DD2E72,GFX_Squawks_Turn1,GFX_Squawks_Turn1End
	dl $DD2E86,$DD3006,GFX_Squawks_Turn2,GFX_Squawks_Turn2End
	dl $DD301E,$DD329E,GFX_XBarrel_Pose,GFX_XBarrel_PoseEnd
	dl $DD32B6,$DD3536,GFX_CheckmarkBarrel_Pose,GFX_CheckmarkBarrel_PoseEnd
	dl $DD3556,$DD3796,GFX_RacingFlag_Pose,GFX_RacingFlag_PoseEnd
	dl $DD37BA,$DD3A3A,GFX_TrafficLight_Pose,GFX_TrafficLight_PoseEnd
	dl $DD3A48,$DD3AA8,GFX_MovingSingleBanana_Spin1,GFX_MovingSingleBanana_Spin1End
	dl $DD3AB4,$DD3AF4,GFX_MovingSingleBanana_Spin2,GFX_MovingSingleBanana_Spin2End
	dl $DD3B00,$DD3B40,GFX_MovingSingleBanana_Spin3,GFX_MovingSingleBanana_Spin3End
	dl $DD3B4E,$DD3BAE,GFX_MovingSingleBanana_Spin4,GFX_MovingSingleBanana_Spin4End
	dl $DD3BBC,$DD3C1C,GFX_MovingSingleBanana_Spin5,GFX_MovingSingleBanana_Spin5End
	dl $DD3C2A,$DD3C8A,GFX_MovingSingleBanana_Spin6,GFX_MovingSingleBanana_Spin6End
	dl $DD3C98,$DD3CF8,GFX_MovingSingleBanana_Spin7,GFX_MovingSingleBanana_Spin7End
	dl $DD3D06,$DD3D66,GFX_MovingSingleBanana_Spin8,GFX_MovingSingleBanana_Spin8End
	dl $DD3D7E,$DD405E,GFX_DonkeyKong_FreakOut1,GFX_DonkeyKong_FreakOut1End
	dl $DD4078,$DD4378,GFX_DonkeyKong_FreakOut2,GFX_DonkeyKong_FreakOut2End
	dl $DD4392,$DD4692,GFX_DonkeyKong_FreakOut3,GFX_DonkeyKong_FreakOut3End
	dl $DD46AC,$DD49AC,GFX_DonkeyKong_FreakOut4,GFX_DonkeyKong_FreakOut4End
	dl $DD49C6,$DD4CC6,GFX_DonkeyKong_FreakOut5,GFX_DonkeyKong_FreakOut5End
	dl $DD4CE2,$DD5002,GFX_DonkeyKong_FreakOut6,GFX_DonkeyKong_FreakOut6End
	dl $DD501C,$DD531C,GFX_DonkeyKong_FreakOut7,GFX_DonkeyKong_FreakOut7End
	dl $DD5336,$DD5636,GFX_DonkeyKong_FreakOut8,GFX_DonkeyKong_FreakOut8End
	dl $DD5654,$DD5994,GFX_DonkeyKong_FreakOut9,GFX_DonkeyKong_FreakOut9End
	dl $DD59B2,$DD5CF2,GFX_DonkeyKong_FreakOut10,GFX_DonkeyKong_FreakOut10End
	dl $DD5D12,$DD6072,GFX_DonkeyKong_FreakOut11,GFX_DonkeyKong_FreakOut11End
	dl $DD6092,$DD63F2,GFX_DonkeyKong_FreakOut12,GFX_DonkeyKong_FreakOut12End
	dl $DD6414,$DD6794,GFX_DonkeyKong_FreakOut13,GFX_DonkeyKong_FreakOut13End
	dl $DD67AE,$DD6AAE,GFX_DonkeyKong_Hurt1,GFX_DonkeyKong_Hurt1End
	dl $DD6AC8,$DD6DC8,GFX_DonkeyKong_Hurt2,GFX_DonkeyKong_Hurt2End
	dl $DD6DEA,$DD710A,GFX_DonkeyKong_Hurt3,GFX_DonkeyKong_Hurt3End
	dl $DD712A,$DD742A,GFX_DonkeyKong_Hurt4,GFX_DonkeyKong_Hurt4End
	dl $DD744C,$DD776C,GFX_DonkeyKong_Hurt5,GFX_DonkeyKong_Hurt5End
	dl $DD7788,$DD7AA8,GFX_DonkeyKong_Hurt6,GFX_DonkeyKong_Hurt6End
	dl $DD7AC4,$DD7DE4,GFX_DonkeyKong_Hurt7,GFX_DonkeyKong_Hurt7End
	dl $DD7E02,$DD8142,GFX_DonkeyKong_Hurt8,GFX_DonkeyKong_Hurt8End
	dl $DD815E,$DD847E,GFX_DonkeyKong_Hurt9,GFX_DonkeyKong_Hurt9End
	dl $DD849C,$DD87DC,GFX_DonkeyKong_Hurt10,GFX_DonkeyKong_Hurt10End
	dl $DD87F8,$DD8B18,GFX_DonkeyKong_Hurt11,GFX_DonkeyKong_Hurt11End
	dl $DD8B32,$DD8E32,GFX_DonkeyKong_Hurt12,GFX_DonkeyKong_Hurt12End
	dl $DD8E4A,$DD912A,GFX_DonkeyKong_Struggle1,GFX_DonkeyKong_Struggle1End
	dl $DD9142,$DD9422,GFX_DonkeyKong_Struggle2,GFX_DonkeyKong_Struggle2End
	dl $DD943A,$DD971A,GFX_DonkeyKong_Struggle3,GFX_DonkeyKong_Struggle3End
	dl $DD9732,$DD9A12,GFX_DonkeyKong_Struggle4,GFX_DonkeyKong_Struggle4End
	dl $DD9A2A,$DD9D0A,GFX_DonkeyKong_Struggle5,GFX_DonkeyKong_Struggle5End
	dl $DD9D22,$DDA002,GFX_DonkeyKong_Struggle6,GFX_DonkeyKong_Struggle6End
	dl $DDA018,$DDA0F8,GFX_DonkeyKongsRopes_FreakOut1,GFX_DonkeyKongsRopes_FreakOut1End
	dl $DDA10E,$DDA1EE,GFX_DonkeyKongsRopes_FreakOut2,GFX_DonkeyKongsRopes_FreakOut2End
	dl $DDA204,$DDA2E4,GFX_DonkeyKongsRopes_FreakOut3,GFX_DonkeyKongsRopes_FreakOut3End
	dl $DDA2FA,$DDA3DA,GFX_DonkeyKongsRopes_FreakOut4,GFX_DonkeyKongsRopes_FreakOut4End
	dl $DDA3F0,$DDA4D0,GFX_DonkeyKongsRopes_FreakOut5,GFX_DonkeyKongsRopes_FreakOut5End
	dl $DDA4E6,$DDA5C6,GFX_DonkeyKongsRopes_FreakOut6,GFX_DonkeyKongsRopes_FreakOut6End
	dl $DDA5DC,$DDA6BC,GFX_DonkeyKongsRopes_FreakOut7,GFX_DonkeyKongsRopes_FreakOut7End
	dl $DDA6D2,$DDA7B2,GFX_DonkeyKongsRopes_FreakOut8,GFX_DonkeyKongsRopes_FreakOut8End
	dl $DDA7C8,$DDA8A8,GFX_DonkeyKongsRopes_FreakOut9,GFX_DonkeyKongsRopes_FreakOut9End
	dl $DDA8B8,$DDA998,GFX_DonkeyKongsRopes_FreakOut10,GFX_DonkeyKongsRopes_FreakOut10End
	dl $DDA9A8,$DDAA88,GFX_DonkeyKongsRopes_FreakOut11,GFX_DonkeyKongsRopes_FreakOut11End
	dl $DDAA98,$DDAB78,GFX_DonkeyKongsRopes_FreakOut12,GFX_DonkeyKongsRopes_FreakOut12End
	dl $DDAB88,$DDAC68,GFX_DonkeyKongsRopes_FreakOut13,GFX_DonkeyKongsRopes_FreakOut13End
	dl $DDAC7A,$DDAD7A,GFX_DonkeyKongsRopes_Hurt1,GFX_DonkeyKongsRopes_Hurt1End
	dl $DDAD88,$DDAEA8,GFX_DonkeyKongsRopes_Hurt2,GFX_DonkeyKongsRopes_Hurt2End
	dl $DDAEB8,$DDAFF8,GFX_DonkeyKongsRopes_Hurt3,GFX_DonkeyKongsRopes_Hurt3End
	dl $DDB008,$DDB148,GFX_DonkeyKongsRopes_Hurt4,GFX_DonkeyKongsRopes_Hurt4End
	dl $DDB156,$DDB276,GFX_DonkeyKongsRopes_Hurt5,GFX_DonkeyKongsRopes_Hurt5End
	dl $DDB282,$DDB382,GFX_DonkeyKongsRopes_Hurt6,GFX_DonkeyKongsRopes_Hurt6End
	dl $DDB390,$DDB4B0,GFX_DonkeyKongsRopes_Hurt7,GFX_DonkeyKongsRopes_Hurt7End
	dl $DDB4C0,$DDB600,GFX_DonkeyKongsRopes_Hurt8,GFX_DonkeyKongsRopes_Hurt8End
	dl $DDB610,$DDB750,GFX_DonkeyKongsRopes_Hurt9,GFX_DonkeyKongsRopes_Hurt9End
	dl $DDB760,$DDB8A0,GFX_DonkeyKongsRopes_Hurt10,GFX_DonkeyKongsRopes_Hurt10End
	dl $DDB8B0,$DDB9F0,GFX_DonkeyKongsRopes_Hurt11,GFX_DonkeyKongsRopes_Hurt11End
	dl $DDBA00,$DDBB40,GFX_DonkeyKongsRopes_Hurt12,GFX_DonkeyKongsRopes_Hurt12End
	dl $DDBB50,$DDBC90,GFX_DonkeyKongsRopes_Struggle1,GFX_DonkeyKongsRopes_Struggle1End
	dl $DDBCA0,$DDBDE0,GFX_DonkeyKongsRopes_Struggle2,GFX_DonkeyKongsRopes_Struggle2End
	dl $DDBDF0,$DDBF30,GFX_DonkeyKongsRopes_Struggle3,GFX_DonkeyKongsRopes_Struggle3End
	dl $DDBF42,$DDC042,GFX_DonkeyKongsRopes_Struggle4,GFX_DonkeyKongsRopes_Struggle4End
	dl $DDC054,$DDC154,GFX_DonkeyKongsRopes_Struggle5,GFX_DonkeyKongsRopes_Struggle5End
	dl $DDC16C,$DDC26C,GFX_DonkeyKongsRopes_Struggle6,GFX_DonkeyKongsRopes_Struggle6End
	dl $DDC296,$DDC4B6,GFX_DonkeyKongsRopes_Struggle7,GFX_DonkeyKongsRopes_Struggle7End
	dl $DDC4DA,$DDC87A,GFX_DonkeyKong_Fall1,GFX_DonkeyKong_Fall1End
	dl $DDC89A,$DDCC5A,GFX_DonkeyKong_Fall2,GFX_DonkeyKong_Fall2End
	dl $DDCC80,$DDD040,GFX_DonkeyKong_Fall3,GFX_DonkeyKong_Fall3End
	dl $DDD064,$DDD404,GFX_DonkeyKong_Fall4,GFX_DonkeyKong_Fall4End
	dl $DDD42A,$DDD7EA,GFX_DonkeyKong_Punch1,GFX_DonkeyKong_Punch1End
	dl $DDD80E,$DDDC0E,GFX_DonkeyKong_Punch2,GFX_DonkeyKong_Punch2End
	dl $DDDC2E,$DDDF8E,GFX_DonkeyKong_Punch3,GFX_DonkeyKong_Punch3End
	dl $DDDFAC,$DDE22C,GFX_DonkeyKong_Punch4,GFX_DonkeyKong_Punch4End
	dl $DDE24A,$DDE4CA,GFX_DonkeyKong_Punch5,GFX_DonkeyKong_Punch5End
	dl $DDE4EC,$DDE80C,GFX_DonkeyKong_Punch6,GFX_DonkeyKong_Punch6End
	dl $DDE82E,$DDEB4E,GFX_DonkeyKong_Punch7,GFX_DonkeyKong_Punch7End
	dl $DDEB6C,$DDEE4C,GFX_DonkeyKong_Punch8,GFX_DonkeyKong_Punch8End
	dl $DDEE6C,$DDF10C,GFX_DonkeyKong_Punch9,GFX_DonkeyKong_Punch9End
	dl $DDF12A,$DDF3AA,GFX_DonkeyKong_Punch10,GFX_DonkeyKong_Punch10End
	dl $DDF3D0,$DDF6D0,GFX_DonkeyKong_Punch11,GFX_DonkeyKong_Punch11End
	dl $DDF6F4,$DDFA34,GFX_DonkeyKong_Punch12,GFX_DonkeyKong_Punch12End
	dl $DDFA5A,$DDFDBA,GFX_DonkeyKong_Punch13,GFX_DonkeyKong_Punch13End
	dl $DE039C,$DE0B9C,GFX_KRool_CoveredInSeeweed1,GFX_KRool_CoveredInSeeweed1End
	dl $DE0BE2,$DE13E2,GFX_KRool_CoveredInSeeweed2,GFX_KRool_CoveredInSeeweed2End
	dl $DE1428,$DE1C28,GFX_KRool_CoveredInSeeweed3,GFX_KRool_CoveredInSeeweed3End
	dl $DE1C46,$DE1E66,GFX_KRoolGun_CoveredInSeeweed1,GFX_KRoolGun_CoveredInSeeweed1End
	dl $DE1E84,$DE20A4,GFX_KRoolGun_CoveredInSeeweed2,GFX_KRoolGun_CoveredInSeeweed2End
	dl $DE20C2,$DE22E2,GFX_KRoolGun_CoveredInSeeweed3,GFX_KRoolGun_CoveredInSeeweed3End
	dl $DE22F2,$DE2372,GFX_KRoolFish_Flop1,GFX_KRoolFish_Flop1End
	dl $DE2382,$DE2402,GFX_KRoolFish_Flop2,GFX_KRoolFish_Flop2End
	dl $DE2412,$DE2492,GFX_KRoolFish_Flop3,GFX_KRoolFish_Flop3End
	dl $DE24A2,$DE2522,GFX_KRoolFish_Flop4,GFX_KRoolFish_Flop4End
	dl $DE2532,$DE25B2,GFX_KRoolFish_Flop5,GFX_KRoolFish_Flop5End
	dl $DE25BE,$DE265E,GFX_KRoolFish_Flop6,GFX_KRoolFish_Flop6End
	dl $DE266C,$DE26CC,GFX_KRoolFish_Flop7,GFX_KRoolFish_Flop7End
	dl $DE26DA,$DE273A,GFX_KRoolFish_Flop8,GFX_KRoolFish_Flop8End
	dl $DE2750,$DE28F0,GFX_KRoolPuddle_Pose,GFX_KRoolPuddle_PoseEnd
	dl $DE2912,$DE2C32,GFX_KRool_FallIntoCore1,GFX_KRool_FallIntoCore1End
	dl $DE2C4C,$DE2F4C,GFX_KRool_FallIntoCore2,GFX_KRool_FallIntoCore2End
	dl $DE2F56,$DE2F76,GFX_MapKRoolSplash_Pose1,GFX_MapKRoolSplash_Pose1End
	dl $DE2F84,$DE2FE4,GFX_MapKRoolSplash_Pose2,GFX_MapKRoolSplash_Pose2End
	dl $DE2FF4,$DE30D4,GFX_MapKRoolSplash_Pose3,GFX_MapKRoolSplash_Pose3End
	dl $DE30E0,$DE3180,GFX_MapKRoolSplash_Pose4,GFX_MapKRoolSplash_Pose4End
	dl $DE318C,$DE322C,GFX_MapKRoolSplash_Pose5,GFX_MapKRoolSplash_Pose5End
	dl $DE323A,$DE32FA,GFX_MapKRoolSplash_Pose6,GFX_MapKRoolSplash_Pose6End
	dl $DE3308,$DE33C8,GFX_MapKRoolSplash_Pose7,GFX_MapKRoolSplash_Pose7End
	dl $DE33D8,$DE3458,GFX_MapKRoolSplash_Pose8,GFX_MapKRoolSplash_Pose8End
	dl $DE3464,$DE3504,GFX_MapKRool_ArmFlailing1,GFX_MapKRool_ArmFlailing1End
	dl $DE3510,$DE35B0,GFX_MapKRool_ArmFlailing2,GFX_MapKRool_ArmFlailing2End
	dl $DE35BC,$DE365C,GFX_MapKRool_ArmFlailing3,GFX_MapKRool_ArmFlailing3End
	dl $DE3668,$DE3708,GFX_MapKRool_ArmFlailing4,GFX_MapKRool_ArmFlailing4End
	dl $DE3728,$DE39C8,GFX_Link_Pose1,GFX_Link_Pose1End
	dl $DE39E8,$DE3C88,GFX_Link_Pose2,GFX_Link_Pose2End
	dl $DE3CA6,$DE3F26,GFX_Link_Pose3,GFX_Link_Pose3End
	dl $DE3F44,$DE41C4,GFX_Link_Pose4,GFX_Link_Pose4End
	dl $DE41E4,$DE4424,GFX_Link_Pose5,GFX_Link_Pose5End
	dl $DE4446,$DE46A6,GFX_Link_Pose6,GFX_Link_Pose6End
	dl $DE46CA,$DE494A,GFX_Link_Pose7,GFX_Link_Pose7End
	dl $DE496C,$DE4C2C,GFX_Link_Pose8,GFX_Link_Pose8End
	dl $DE4C4C,$DE4EEC,GFX_Link_Pose9,GFX_Link_Pose9End
	dl $DE4F0C,$DE51AC,GFX_Link_Pose10,GFX_Link_Pose10End
	dl $DE51CA,$DE544A,GFX_Link_Pose11,GFX_Link_Pose11End
	dl $DE5466,$DE56C6,GFX_Link_Pose12,GFX_Link_Pose12End
	dl $DE56E0,$DE5980,GFX_Link_Pose13,GFX_Link_Pose13End
	dl $DE5992,$DE5BB2,GFX_Link_Pose14,GFX_Link_Pose14End
	dl $DE5BC4,$DE5DE4,GFX_Link_Pose15,GFX_Link_Pose15End
	dl $DE5DF6,$DE6016,GFX_Link_Pose16,GFX_Link_Pose16End
	dl $DE6032,$DE6412,GFX_GoodEnding_BottomHalfOfKrocodileIsland,GFX_GoodEnding_BottomHalfOfKrocodileIslandEnd
	dl $DE642C,$DE66CC,GFX_GoodEnding_TopHalfOfKrocodileIsland,GFX_GoodEnding_TopHalfOfKrocodileIslandEnd
	dl $DE6716,$DE7076,GFX_GoodEnding_EnergyBeam1,GFX_GoodEnding_EnergyBeam1End
	dl $DE70C4,$DE7A04,GFX_GoodEnding_EnergyBeam2,GFX_GoodEnding_EnergyBeam2End
	dl $DE7A54,$DE83B4,GFX_GoodEnding_EnergyBeam3,GFX_GoodEnding_EnergyBeam3End
	dl $DE8404,$DE8D64,GFX_GoodEnding_EnergyBeam4,GFX_GoodEnding_EnergyBeam4End
	dl $DE8DB2,$DE96F2,GFX_GoodEnding_EnergyBeam5,GFX_GoodEnding_EnergyBeam5End
	dl $DE9704,$DE9864,GFX_GoodEnding_DixiesHair1,GFX_GoodEnding_DixiesHair1End
	dl $DE9872,$DE9992,GFX_GoodEnding_DixiesHair2,GFX_GoodEnding_DixiesHair2End
	dl $DE99A0,$DE9AC0,GFX_GoodEnding_DixiesHair3,GFX_GoodEnding_DixiesHair3End
	dl $DE9AD0,$DE9C10,GFX_GoodEnding_DixiesHair4,GFX_GoodEnding_DixiesHair4End
	dl $DE9C20,$DE9D60,GFX_GoodEnding_DixiesHair5,GFX_GoodEnding_DixiesHair5End
	dl $DE9D70,$DE9EB0,GFX_GoodEnding_DixiesHair6,GFX_GoodEnding_DixiesHair6End
	dl $DE9EC4,$DEA044,GFX_GoodEnding_DixiesHair7,GFX_GoodEnding_DixiesHair7End
	dl $DEA058,$DEA1D8,GFX_GoodEnding_DixiesHair8,GFX_GoodEnding_DixiesHair8End
	dl $DEA1E6,$DEA2A6,GFX_GoodEnding_KRoolsBoat1,GFX_GoodEnding_KRoolsBoat1End
	dl $DEA2B2,$DEA352,GFX_GoodEnding_KRoolsBoat2,GFX_GoodEnding_KRoolsBoat2End
	dl $DEA35E,$DEA3FE,GFX_GoodEnding_KRoolsBoat3,GFX_GoodEnding_KRoolsBoat3End
	dl $DEA40A,$DEA4AA,GFX_GoodEnding_KRoolsBoat4,GFX_GoodEnding_KRoolsBoat4End
	dl $DEA4B4,$DEA534,GFX_GoodEnding_KRoolsBoat5,GFX_GoodEnding_KRoolsBoat5End
	dl $DEA542,$DEA5A2,GFX_GoodEnding_KRoolsBoat6,GFX_GoodEnding_KRoolsBoat6End
	dl $DEA5B0,$DEA610,GFX_GoodEnding_KRoolsBoat7,GFX_GoodEnding_KRoolsBoat7End
	dl $DEA61E,$DEA67E,GFX_GoodEnding_KRoolsBoat8,GFX_GoodEnding_KRoolsBoat8End
	dl $DEA68C,$DEA6EC,GFX_GoodEnding_KRoolsBoat9,GFX_GoodEnding_KRoolsBoat9End
	dl $DEA6FA,$DEA75A,GFX_GoodEnding_KRoolsBoat10,GFX_GoodEnding_KRoolsBoat10End
	dl $DEA768,$DEA7C8,GFX_GoodEnding_KRoolsBoat11,GFX_GoodEnding_KRoolsBoat11End
	dl $DEA7D4,$DEA814,GFX_GoodEnding_KRoolsBoat12,GFX_GoodEnding_KRoolsBoat12End
	dl $DEA820,$DEA860,GFX_GoodEnding_KRoolsBoat13,GFX_GoodEnding_KRoolsBoat13End
	dl $DEA86A,$DEA88A,GFX_GoodEnding_KRoolsBoat14,GFX_GoodEnding_KRoolsBoat14End
	dl $DEA894,$DEA8B4,GFX_GoodEnding_KRoolsBoat15,GFX_GoodEnding_KRoolsBoat15End
	dl $DEA8BE,$DEA8DE,GFX_GoodEnding_KRoolsBoat16,GFX_GoodEnding_KRoolsBoat16End
	dl $DEA8E8,$DEA908,GFX_GoodEnding_KRoolsBoat17,GFX_GoodEnding_KRoolsBoat17End
	dl $DEA912,$DEA932,GFX_GoodEnding_KRoolsBoat18,GFX_GoodEnding_KRoolsBoat18End
DynamicSpriteGFXPointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	dl $CBAC49,$CC04E9,GFX_Layer1_LostWorldMap,GFX_Layer1_LostWorldMapEnd
	dl $D2B9FD,$D3017C,GFX_Layer1_KongKollage,GFX_Layer1_KongKollageEnd
	dl $D6F791,$D70633,GFX_Layer3_Level_BeeHive,GFX_Layer3_Level_BeeHiveEnd
	dl $DEA932,$DF0870,GFX_Layer2_Level_Forest,GFX_Layer2_Level_ForestEnd
	dl $DF0870,$DF3059,GFX_Layer1_Level_ShipHold,GFX_Layer1_Level_ShipHoldEnd
	dl $DF3059,$DF8116,GFX_Layer2_Level_BeeHive,GFX_Layer2_Level_BeeHiveEnd
	dl $DF8116,$DFD537,GFX_Layer1_Level_ShipDeck,GFX_Layer1_Level_ShipDeckEnd
	dl $DFD537,$E02195,GFX_Layer1_Level_Rigging,GFX_Layer1_Level_RiggingEnd
	dl $E02195,$E07174,GFX_Layer1_Level_Rollercoaster,GFX_Layer1_Level_RollercoasterEnd
	dl $E07174,$E0CF31,GFX_FGBG_Level_LavaCave,GFX_FGBG_Level_LavaCaveEnd
	dl $E0CF31,$E106AF,GFX_Layer1_Level_Mine,GFX_Layer1_Level_MineEnd
	dl $E106AF,$E15B05,GFX_Layer2_Level_Bayou,GFX_Layer2_Level_BayouEnd
	dl $E15B05,$E199BE,GFX_Layer1_Level_Brambles,GFX_Layer1_Level_BramblesEnd
	dl $E1EFDE,$E23790,GFX_Layer1_Level_KrocodileKore,GFX_Layer1_Level_KrocodileKoreEnd
	dl $E23790,$E29E5F,GFX_Layer1_Level_KRoolDuel,GFX_Layer1_Level_KRoolDuelEnd
	dl $E29E5F,$E2E556,GFX_Layer1_Level_IceCave,GFX_Layer1_Level_IceCaveEnd
	dl $E2E556,$E3438B,GFX_FGBG_Level_Jungle,GFX_FGBG_Level_JungleEnd
	dl $E6FCF3,$E74D71,GFX_Layer1_GangplankGalleonMap,GFX_Layer1_GangplankGalleonMapEnd
	dl $E75471,$E79E78,GFX_Layer1_CrocodileCauldronMap,GFX_Layer1_CrocodileCauldronMapEnd
	dl $E79E78,$E80535,GFX_Layer1_KremQuayMap,GFX_Layer1_KremQuayMapEnd
	dl $E80535,$E84E0D,GFX_Layer1_KrazyKremlandMap1,GFX_Layer1_KrazyKremlandMap1End
	dl $E854F8,$E8A6D7,GFX_Layer1_GloomyGlutchMap,GFX_Layer1_GloomyGlutchMapEnd
	dl $E8B924,$E909EC,GFX_Layer1_TheFlyingKrocMap,GFX_Layer1_TheFlyingKrocMapEnd
	dl $E909EC,$E95221,GFX_Layer1_KrazyKremlandMap2,GFX_Layer1_KrazyKremlandMap2End
	dl $E95221,$E95623,GFX_Layer2_Level_HauntedHall,GFX_Layer2_Level_HauntedHallEnd
	dl $E95623,$E97549,GFX_Layer2_Level_IceCave,GFX_Layer2_Level_IceCaveEnd
	dl $E97549,$E98407,GFX_Layer3_Level_Jungle,GFX_Layer3_Level_JungleEnd
	dl $E9943A,$E9A045,GFX_Layer3_Level_HauntedHall,GFX_Layer3_Level_HauntedHallEnd
	dl $E9A905,$E9DD37,GFX_Layer2_Level_ShipHold,GFX_Layer2_Level_ShipHoldEnd
	dl $E9DD37,$E9E709,GFX_Layer3_WorldMap,GFX_Layer3_WorldMapEnd
	dl $E9E709,$E9FDB3,GFX_Layer2_WorldMap,GFX_Layer2_WorldMapEnd
	dl $E9FDB3,$EA10BB,GFX_Layer2_Level_ShipDeck,GFX_Layer2_Level_ShipDeckEnd
	dl $EA10BB,$EA121C,GFX_Layer3_Water,GFX_Layer3_WaterEnd
	dl $EA121C,$EA23D4,GFX_Layer2_Level_Rigging,GFX_Layer2_Level_RiggingEnd
	dl $EA23D4,$EA3BEA,GFX_Layer2_Level_Rollercoaster,GFX_Layer2_Level_RollercoasterEnd
	dl $EA3BEA,$EA4E35,GFX_Layer1_Level_Bayou,GFX_Layer1_Level_BayouEnd
	dl $EA4E35,$EA5978,GFX_Layer3_Level_Bayou,GFX_Layer3_Level_BayouEnd
	dl $EA5978,$EA8D3C,GFX_Layer1_Level_KaptainsKabin,GFX_Layer1_Level_KaptainsKabinEnd
	dl $EA8D3C,$EA972E,GFX_Layer3_Level_Rigging,GFX_Layer3_Level_RiggingEnd
	dl $EA972E,$EAA93D,GFX_Layer1_Level_Forest,GFX_Layer1_Level_ForestEnd
	dl $EAA94D,$EAB6F0,GFX_Layer3_Level_Brambles,GFX_Layer3_Level_BramblesEnd
	dl $EAB6F0,$EAD1D1,GFX_Layer2_Level_Brambles,GFX_Layer2_Level_BramblesEnd
	dl $EAD1D1,$EAD7DE,GFX_Layer3_Level_LavaCave,GFX_Layer3_Level_LavaCaveEnd
	dl $EAD7DE,$EADA86,GFX_Layer2_Level_KrocodileKore,GFX_Layer2_Level_KrocodileKoreEnd
	dl $EADA86,$EB2B84,GFX_Layer1_WorldMap,GFX_Layer1_WorldMapEnd
	dl $EB2B84,$EB2EA0,GFX_Layer3_NintendoLogoShine,GFX_Layer3_NintendoLogoShineEnd
	dl $EB2EA0,$EB4916,GFX_Layer1_Level_BeeHive,GFX_Layer1_Level_BeeHiveEnd
	dl $EB4916,$EB4B73,GFX_Layer3_CastleCrushFloor,GFX_Layer3_CastleCrushFloorEnd
	dl $EB4B73,$EB50CE,GFX_Layer3_LavaSteam,GFX_Layer3_LavaSteamEnd
	dl $EB50CE,$EBA27C,GFX_Layer1_KlubbasKiosk,GFX_Layer1_KlubbasKioskEnd
	dl $EBA27C,$EBCFD1,GFX_Layer1_FunkysFlightsII,GFX_Layer1_FunkysFlightsIIEnd
	dl $EBCFD1,$EC1B0F,GFX_Layer1_MonkeyMuseum,GFX_Layer1_MonkeyMuseumEnd
	dl $EC4D40,$EC7CF0,GFX_Layer1_PlayerSelectMenu,GFX_Layer1_PlayerSelectMenuEnd
	dl $EC83A0,$ECFDEE,GFX_Layer2_FileSelectBG,GFX_Layer2_FileSelectBGEnd
	dl $ED0997,$ED57EF,GFX_Layer1_TitleScreen,GFX_Layer1_TitleScreenEnd
	dl $ED5E3F,$ED7429,GFX_Layer1_FileSelectText,GFX_Layer1_FileSelectTextEnd
	dl $ED78D3,$ED8415,GFX_Layer1_BonusRoomScreen_CollectTheStars,GFX_Layer1_BonusRoomScreen_CollectTheStarsEnd
	dl $ED8584,$ED9179,GFX_Layer1_BonusRoomScreen_FindTheToken,GFX_Layer1_BonusRoomScreen_FindTheTokenEnd
	dl $ED9179,$ED9C9A,GFX_Layer1_BonusRoomScreen_DestroyThemAll,GFX_Layer1_BonusRoomScreen_DestroyThemAllEnd
	dl $EDA1AB,$EDE455,GFX_Layer1_SwankysBonusBonanza,GFX_Layer1_SwankysBonusBonanzaEnd
	dl $F40000,$F405A2,GFX_Layer1_YeScurvyKongKrew,GFX_Layer1_YeScurvyKongKrewEnd
	dl $F444D2,$F47FF5,GFX_Layer2_GameOverScreen,GFX_Layer2_GameOverScreenEnd
	dl $F5325B,$F547BC,GFX_Layer1_NintendoLogo,GFX_Layer1_NintendoLogoEnd
	dl $F55D4A,$F56AC9,GFX_Layer1_WireframeRareLogo,GFX_Layer1_WireframeRareLogoEnd
	dl $F60000,$F61D3E,GFX_Layer2_Level_Mine,GFX_Layer2_Level_MineEnd
	dl $F61D3E,$F641C1,GFX_Layer1_CrankysVideoGameHeroesScreen,GFX_Layer1_CrankysVideoGameHeroesScreenEnd
	dl $F661C1,$F67D1B,GFX_Layer1_GoodEndingScreen,GFX_Layer1_GoodEndingScreenEnd
	dl $F8063E,$F80D10,GFX_Layer2_LargeRareLogo,GFX_Layer2_LargeRareLogoEnd
	dl $F82106,$F87FC5,GFX_Layer1_KRoolsKeepMap,GFX_Layer1_KRoolsKeepMapEnd
	dl $F99400,$F9C775,GFX_Layer2_GoodEndingScreen,GFX_Layer2_GoodEndingScreenEnd
	dl $FA4C3E,$FA56C1,GFX_Mode7_RaraLogo,GFX_Mode7_RaraLogoEnd
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

UncompressedTilemapsPointersStart:
	dl $CEFA9F,$CF019F,TM_Layer1_KongKollage,TM_Layer1_KongKollageEnd
	dl $D9F97B,$DA007B,TM_Layer1_GangplankGalleonMap,TM_Layer1_GangplankGalleonMapEnd
	dl $DBFB2C,$DC021A,TM_Layer1_KrazyKremlandMap1,TM_Layer1_KrazyKremlandMap1End
	dl $E74D71,$E75471,TM_Layer1_CrocodileCauldronMap,TM_Layer1_CrocodileCauldronMapEnd
	dl $E8B224,$E8B924,TM_Layer1_TheFlyingKrocMap,TM_Layer1_TheFlyingKrocMapEnd
	dl $E98407,$E98B07,TM_Layer2_LostWorldMap,TM_Layer2_LostWorldMapEnd
	dl $E9A045,$E9A745,TM_Layer3_Level_LavaCave,TM_Layer3_Level_LavaCaveEnd
	dl $E9A745,$E9A805,TM_Layer3_CastleCrushFloor,TM_Layer3_CastleCrushFloorEnd
	dl $E9A805,$E9A905,TM_UnknownTilemap1,TM_UnknownTilemap1End
	dl $EC2229,$EC2A29,TM_Layer1_WebWoodsFog,TM_Layer1_WebWoodsFogEnd
	dl $F30000,$F30700,TM_Layer1_KlubbasKiosk,TM_Layer1_KlubbasKioskEnd
	dl $F31A31,$F31C31,TM_Layer3_FastRain,TM_Layer3_FastRainEnd
	dl $F41592,$F41852,TM_Layer2_Level_KrocodileKore,TM_Layer2_Level_KrocodileKoreEnd
	dl $F52087,$F526A7,TM_Layer3_ShipDeck,TM_Layer3_ShipDeckEnd
	dl $F547BC,$F5484A,TM_Mode7_RareLogo,TM_Mode7_RareLogoEnd
	dl $F57D13,$F57F53,TM_Layer1_TheEnd,TM_Layer1_TheEndEnd
	dl $F80D66,$F80FA6,TM_Layer1_CopyrightScreen,TM_Layer1_CopyrightScreenEnd
	dl $FA56C1,$FA5C41,TM_Layer2_GameOverScreen,TM_Layer2_GameOverScreenEnd
	dl $FA5C41,$FA5DC1,TM_Layer1_GameOverScreen,TM_Layer1_GameOverScreenEnd
UncompressedTilemapsPointersEnd:

;--------------------------------------------------------------------

CompressedTilemapsPointersStart:
	dl $C1FEC0,$C200B7,TM_Layer3_Level_Water,TM_Layer3_Level_WaterEnd
	dl $C2FAC9,$C300E3,TM_Layer2_Level_ShipHold_3DLedgeLeftHalf,TM_Layer2_Level_ShipHold_3DLedgeLeftHalfEnd
	dl $C3FD35,$C40298,TM_Layer1_FunkysFlightsII,TM_Layer1_FunkysFlightsIIEnd
	dl $C4F9C0,$C5009A,TM_Layer1_KremQuayMapRightHalf,TM_Layer1_KremQuayMapRightHalfEnd
	dl $C5FAA8,$C60169,TM_Layer1_SwankysBonusBonanza,TM_Layer1_SwankysBonusBonanzaEnd
	dl $C6FC11,$C70088,TM_Layer2_Level_ShipHold_3DLedgeRightHalf,TM_Layer2_Level_ShipHold_3DLedgeRightHalfEnd
	dl $C7FCB8,$C80114,TM_Layer2_Level_ShipDeck,TM_Layer2_Level_ShipDeckEnd
	dl $C8F99C,$C90020,TM_Layer1_Level_KaptainsKabin,TM_Layer1_Level_KaptainsKabinEnd
	dl $C9F99A,$C9FF37,TM_Layer3_Level_Bayou,TM_Layer3_Level_BayouEnd
	dl $C9FF37,$CA0084,TM_Layer2_Level_ShipHold_BackwallRightHalf,TM_Layer2_Level_ShipHold_BackwallRightHalfEnd
	dl $CAFABE,$CB022B,TM_Layer2_Level_Rigging,TM_Layer2_Level_RiggingEnd
	dl $CCFD95,$CCFEDF,TM_Layer2_Level_ShipHold_BackwallLeftHalf,TM_Layer2_Level_ShipHold_BackwallLeftHalfEnd
	dl $CCFEDF,$CD000D,TM_Layer2_Level_HauntedHall,TM_Layer2_Level_HauntedHallEnd
	dl $CDFEE1,$CE00E1,TM_Layer1_Level_BayouLeftHalf,TM_Layer1_Level_BayouLeftHalfEnd
	dl $CFFFD9,$D00345,TM_Layer2_Level_Rollercoaster,TM_Layer2_Level_RollercoasterEnd
	dl $D0FE0D,$D1016B,TM_Layer1_Level_Forest,TM_Layer1_Level_ForestEnd
	dl $D1F971,$D200BF,TM_Layer3_Level_Rigging,TM_Layer3_Level_RiggingEnd
	dl $D3FAF0,$D401ED,TM_Layer2_Level_Mine,TM_Layer2_Level_MineEnd
	dl $D4FC2D,$D5026B,TM_Layer3_Level_BeeHive,TM_Layer3_Level_BeeHiveEnd
	dl $D5FEB3,$D603E9,TM_Layer3_Level_Forest,TM_Layer3_Level_ForestEnd
	dl $D7F9A7,$D80079,TM_Layer1_KremQuayMapLeftHalf,TM_Layer1_KremQuayMapLeftHalfEnd
	dl $D8FB53,$D90065,TM_Layer1_Level_BeeHive,TM_Layer1_Level_BeeHiveEnd
	dl $D9F7C9,$D9F97B,TM_Layer3_NintendoLogoShine,TM_Layer3_NintendoLogoShineEnd
	dl $DA4C4F,$DA5323,TM_Layer1_KrazyKremlandMap2,TM_Layer1_KrazyKremlandMap2End
	dl $DAFBB1,$DAFD7E,TM_Layer1_Level_BayouRightHalf,TM_Layer1_Level_BayouRightHalfEnd
	dl $DAFD7E,$DB057E,TM_Layer3_Level_IceCave,TM_Layer3_Level_IceCaveEnd
	dl $DCFA5E,$DD01C4,TM_Layer2_Level_IceCave,TM_Layer2_Level_IceCaveEnd
	dl $DD0AFC,$DD1326,TM_Layer1_WorldMap,TM_Layer1_WorldMapEnd
	dl $DDFDBA,$DE0356,TM_Layer3_Level_Brambles,TM_Layer3_Level_BramblesEnd
	dl $E84E0D,$E854F8,TM_Layer1_GloomyGlutchMap,TM_Layer1_GloomyGlutchMapEnd
	dl $E8A6D7,$E8B224,TM_Layer1_KRoolsKeepMap,TM_Layer1_KRoolsKeepMapEnd
	dl $E98B07,$E98C68,TM_Layer1_FallingLeaves,TM_Layer1_FallingLeavesEnd
	dl $E98C68,$E9943A,TM_Layer3_Level_HauntedHall,TM_Layer3_Level_HauntedHallEnd
	dl $EC1B0F,$EC2229,TM_Layer1_MonkeyMuseum,TM_Layer1_MonkeyMuseumEnd
	dl $EC4749,$EC4AAD,TM_Layer1_PlayerSelectMenu,TM_Layer1_PlayerSelectMenuEnd
	dl $EC4AAD,$EC4C1C,TM_Layer1_MusicTestOption,TM_Layer1_MusicTestOptionEnd
	dl $EC4C1C,$EC4D40,TM_Layer1_CheatModeOption,TM_Layer1_CheatModeOptionEnd
	dl $EC7CF0,$EC83A0,TM_Layer2_FileSelectBG,TM_Layer2_FileSelectBGEnd
	dl $ECFDEE,$ED02A1,TM_Layer1_CrankysVideoGameHeroesScreen,TM_Layer1_CrankysVideoGameHeroesScreenEnd
	dl $ED02A1,$ED0997,TM_Layer1_TitleScreen,TM_Layer1_TitleScreenEnd
	dl $ED8415,$ED8584,TM_Layer3_WindyWellLeaves,TM_Layer3_WindyWellLeavesEnd
	dl $ED9C9A,$ED9E72,TM_Layer1_BonusRoomScreen_FindTheToken,TM_Layer1_BonusRoomScreen_FindTheTokenEnd
	dl $ED9E72,$EDA030,TM_Layer1_BonusRoomScreen_DestroyThemAll,TM_Layer1_BonusRoomScreen_DestroyThemAllEnd
	dl $EDA030,$EDA1AB,TM_Layer1_BonusRoomScreen_CollectTheStars,TM_Layer1_BonusRoomScreen_CollectTheStarsEnd
	dl $EDE455,$EDE53C,TM_Layer3_IrregularityScreenText,TM_Layer3_IrregularityScreenTextEnd
	dl $EDE53C,$EDE653,TM_Layer3_CopyDetectionScreenText,TM_Layer3_CopyDetectionScreenTextEnd
	dl $EDE653,$EDE747,TM_Layer3_RegionLockoutScreenText,TM_Layer3_RegionLockoutScreenTextEnd
	dl $F30700,$F30802,TM_Layer1_YeScurvyKongKrew,TM_Layer1_YeScurvyKongKrewEnd
	dl $F30802,$F30EBB,TM_Layer3_Level_Jungle,TM_Layer3_Level_JungleEnd
	dl $F3173B,$F31A31,TM_Layer3_WorldMap,TM_Layer3_WorldMapEnd
	dl $F31C31,$F321E8,TM_Layer2_WorldMap,TM_Layer2_WorldMapEnd
	dl $F50004,$F50147,TM_Layer2_LargeRareLogo,TM_Layer2_LargeRareLogoEnd
	dl $F52FC7,$F5325B,TM_Layer1_NintendoLogo,TM_Layer1_NintendoLogoEnd
	dl $F56AC9,$F56C13,TM_Layer1_WireframeRareLogo,TM_Layer1_WireframeRareLogoEnd
	dl $F67D1B,$F67FCF,TM_Layer1_GoodEndingScreen,TM_Layer1_GoodEndingScreenEnd
	dl $F80000,$F8063E,TM_Layer2_Level_Brambles,TM_Layer2_Level_BramblesEnd
	dl $F80D10,$F80D66,TM_Layer1_SmallRareLogo,TM_Layer1_SmallRareLogoEnd
	dl $F9C775,$F9CD0C,TM_Layer2_GoodEndingScreen,TM_Layer2_GoodEndingScreenEnd
	dl $FA4320,$FA443E,TM_Layer1_LostWorldMap,TM_Layer1_LostWorldMapEnd
CompressedTilemapsPointersEnd:

;--------------------------------------------------------------------

Map32PointersStart:
	dl $E572C5,$E597E1,M32_Layer1_Level_Forest,M32_Layer1_Level_ForestEnd
	dl $E597E1,$E5A71C,M32_Layer1_Level_ShipHold,M32_Layer1_Level_ShipHoldEnd
	dl $E5A71C,$E5C627,M32_Layer2_Level_BeeHive,M32_Layer2_Level_BeeHiveEnd
	dl $E5C627,$E5E0C8,M32_Layer1_Level_ShipDeck,M32_Layer1_Level_ShipDeckEnd
	dl $E5E0C8,$E5F52D,M32_Layer1_Level_Rigging,M32_Layer1_Level_RiggingEnd
	dl $E5F52D,$E60FB1,M32_Layer1_Level_Rollercoaster,M32_Layer1_Level_RollercoasterEnd
	dl $E60FB1,$E6303A,M32_FGBG_Level_LavaCave,M32_FGBG_Level_LavaCaveEnd
	dl $E6303A,$E64C7F,M32_Layer1_Level_Mine,M32_Layer1_Level_MineEnd
	dl $E64C7F,$E665F8,M32_Layer2_Level_Bayou,M32_Layer2_Level_BayouEnd
	dl $E665F8,$E68077,M32_Layer2_Level_Brambles,M32_Layer2_Level_BramblesEnd
	dl $E68077,$E694EC,M32_Layer2_Level_Castle,M32_Layer2_Level_CastleEnd
	dl $E694EC,$E69CE2,M32_Layer1_Level_KrocodileKore,M32_Layer1_Level_KrocodileKoreEnd
	dl $E69CE2,$E6A896,M32_Layer1_Level_KRoolDuel,M32_Layer1_Level_KRoolDuelEnd
	dl $E6A896,$E6C9FF,M32_Layer1_Level_IceCave,M32_Layer1_Level_IceCaveEnd
	dl $E6C9FF,$E6FCF3,M32_FGBG_Level_Jungle,M32_FGBG_Level_JungleEnd
Map32PointersEnd:

;--------------------------------------------------------------------

LevelDataPointersStart:
	dl $E3438B,$E36F39,ForestLevels,ForestLevelsEnd
	dl $E36F39,$E3A1C4,ShipHoldLevels,ShipHoldLevelsEnd
	dl $E3A1C4,$E3B5D4,BeeHiveLevels1,BeeHiveLevels1End
	dl $E3B5D4,$E3E006,BeeHiveLevels2,BeeHiveLevels2End
	dl $E3E006,$E3F9B2,ShipDeckLevels,ShipDeckLevelsEnd
	dl $E3F9B2,$E4186E,RiggingLevels,RiggingLevelsEnd
	dl $E4186E,$E43D8A,RollercoasterLevels,RollercoasterLevelsEnd
	dl $E43D8A,$E45ADE,HauntedHallLevels,HauntedHallLevelsEnd
	dl $E45ADE,$E479EE,LavaCaveLevels,LavaCaveLevelsEnd
	dl $E479EE,$E49E44,MineLevels,MineLevelsEnd
	dl $E49E44,$E4B767,BayouLevels,BayouLevelsEnd
	dl $E4B767,$E4E649,BrambleLevels,BrambleLevelsEnd
	dl $E4E649,$E4F714,UnknownLevels,UnknownLevelsEnd
	dl $E4F714,$E5264B,CastleLevels,CastleLevelsEnd
	dl $E5264B,$E52732,KrocodileKore,KrocodileKoreEnd
	dl $E52732,$E52832,KRoolDuel,KRoolDuelEnd
	dl $E52832,$E54351,IceCaveLevels1,IceCaveLevels1End
	dl $E54351,$E54E8A,IceCaveLevels2,IceCaveLevels2End
	dl $E54E8A,$E572C5,JungleLevels,JungleLevelsEnd
LevelDataPointersEnd:

;--------------------------------------------------------------------

LevelSpritePointersStart:
	dl $FE0400,$FE041A,SPR_BetaWebWoods_Main,SPR_BetaWebWoods_MainEnd
	dl $FE041A,$FE0734,SPR_GlimmersGalleon_Main,SPR_GlimmersGalleon_MainEnd
	dl $FE0734,$FE0A1E,SPR_RambiRumble_Main,SPR_RambiRumble_MainEnd
	dl $FE0A1E,$FE0BD8,SPR_PiratePanic_Main,SPR_PiratePanic_MainEnd
	dl $FE0BD8,$FE0E7A,SPR_GangplankGalley_Main,SPR_GangplankGalley_MainEnd
	dl $FE0E7A,$FE10F4,SPR_RattleBattle_Main,SPR_RattleBattle_MainEnd
	dl $FE10F4,$FE111E,SPR_GlimmersGalleon_Exit,SPR_GlimmersGalleon_ExitEnd
	dl $FE111E,$FE13B8,SPR_HotHeadHop_Main,SPR_HotHeadHop_MainEnd
	dl $FE13B8,$FE1632,SPR_RedHotRide_Main,SPR_RedHotRide_MainEnd
	dl $FE1632,$FE1654,SPR_KrowsNest_Main,SPR_KrowsNest_MainEnd
	dl $FE1654,$FE19CE,SPR_SlimbClimb_Main,SPR_SlimbClimb_MainEnd
	dl $FE19CE,$FE1BF8,SPR_TopsailTrouble_Main,SPR_TopsailTrouble_MainEnd
	dl $FE1BF8,$FE1DD2,SPR_MainbraceMayhem_Main,SPR_MainbraceMayhem_MainEnd
	dl $FE1DD2,$FE1E0C,SPR_KreepyKrow_Main,SPR_KreepyKrow_MainEnd
	dl $FE1E0C,$FE2076,SPR_TargetTerror_Main,SPR_TargetTerror_MainEnd
	dl $FE2076,$FE20C8,SPR_RicketyRace_Main,SPR_RicketyRace_MainEnd
	dl $FE20C8,$FE2352,SPR_HauntedHall_Main,SPR_HauntedHall_MainEnd
	dl $FE2352,$FE2664,SPR_HornetHole_Main,SPR_HornetHole_MainEnd
	dl $FE2664,$FE2676,SPR_RambiRumble_RambiRoom,SPR_RambiRumble_RambiRoomEnd
	dl $FE2676,$FE2A90,SPR_ParrotChutePanic_Main,SPR_ParrotChutePanic_MainEnd
	dl $FE2A90,$FE2DE2,SPR_LavaLagoon_Main,SPR_LavaLagoon_MainEnd
	dl $FE2DE2,$FE3024,SPR_LockjawsLocker_Main,SPR_LockjawsLocker_MainEnd
	dl $FE3024,$FE3416,SPR_FieryFurnace_Main,SPR_FieryFurnace_MainEnd
	dl $FE3416,$FE3780,SPR_WebWoods_Main,SPR_WebWoods_MainEnd
	dl $FE3780,$FE39CA,SPR_GustyGlade_Main,SPR_GustyGlade_MainEnd
	dl $FE39CA,$FE3CAC,SPR_GhostlyGrove_Main,SPR_GhostlyGrove_MainEnd
	dl $FE3CAC,$FE3CBE,SPR_TopsailTrouble_Warp,SPR_TopsailTrouble_WarpEnd
	dl $FE3CBE,$FE3CE8,SPR_PiratePanic_KaptainsKabin,SPR_PiratePanic_KaptainsKabinEnd
	dl $FE3CE8,$FE3D02,SPR_HotHeadHop_Bonus2,SPR_HotHeadHop_Bonus2End
	dl $FE3D02,$FE3D0C,SPR_PiratePanic_Warp,SPR_PiratePanic_WarpEnd
	dl $FE3D0C,$FE3D2E,SPR_TargetTerror_Exit,SPR_TargetTerror_ExitEnd
	dl $FE3D2E,$FE3D38,SPR_UnusedForestBananaCache,SPR_UnusedForestBananaCacheEnd
	dl $FE3D38,$FE3D4A,SPR_MainbraceMayhem_Warp,SPR_MainbraceMayhem_WarpEnd
	dl $FE3D4A,$FE3DE4,SPR_KleeversKiln_Main,SPR_KleeversKiln_MainEnd
	dl $FE3DE4,$FE3DF6,SPR_RattleBattle_RattlyRoom,SPR_RattleBattle_RattlyRoomEnd
	dl $FE3DF6,$FE41E8,SPR_WindyWell_Main,SPR_WindyWell_MainEnd
	dl $FE41E8,$FE4502,SPR_SquawksShaft_Main,SPR_SquawksShaft_MainEnd
	dl $FE4502,$FE486C,SPR_KannonsKlaim_Main,SPR_KannonsKlaim_MainEnd
	dl $FE486C,$FE4876,SPR_ParrotChutePanic_RareLogoRoom,SPR_ParrotChutePanic_RareLogoRoomEnd
	dl $FE4876,$FE4888,SPR_KannonsKlaim_Warp,SPR_KannonsKlaim_WarpEnd
	dl $FE4888,$FE4B3A,SPR_BarrelBayou_Main,SPR_BarrelBayou_MainEnd
	dl $FE4B3A,$FE4EFC,SPR_KrockheadKlamber_Main,SPR_KrockheadKlamber_MainEnd
	dl $FE4EFC,$FE4F16,SPR_WebWoods_SquitterRoom,SPR_WebWoods_SquitterRoomEnd
	dl $FE4F16,$FE4F20,SPR_BarrelBayou_UnusedWarp,SPR_BarrelBayou_UnusedWarpEnd
	dl $FE4F20,$FE5322,SPR_MudholeMarsh_Main,SPR_MudholeMarsh_MainEnd
	dl $FE5322,$FE5954,SPR_BrambleBlast_Main,SPR_BrambleBlast_MainEnd
	dl $FE5954,$FE5D56,SPR_BrambleScramble_Main,SPR_BrambleScramble_MainEnd
	dl $FE5D56,$FE6060,SPR_ScreechsSprint_Main,SPR_ScreechsSprint_MainEnd
	dl $FE60C0,$FE60EA,SPR_KingZingSting_Main,SPR_KingZingSting_MainEnd
	dl $FE60EA,$FE60FC,SPR_KRoolDuel_Main,SPR_KRoolDuel_MainEnd
	dl $FE60FC,$FE6416,SPR_CastleCrush_Main,SPR_CastleCrush_MainEnd
	dl $FE6416,$FE6428,SPR_KudgelsKontest,SPR_KudgelsKontestEnd
	dl $FE6430,$FE644A,SPR_LockjawsLocker_Warp,SPR_LockjawsLocker_WarpEnd
	dl $FE644A,$FE6454,SPR_LavaLagoon_Warp,SPR_LavaLagoon_WarpEnd
	dl $FE6454,$FE6466,SPR_SquawksShaft_Warp,SPR_SquawksShaft_WarpEnd
	dl $FE6466,$FE6478,SPR_KrocodileKore_Main,SPR_KrocodileKore_MainEnd
	dl $FE6478,$FE6792,SPR_ArcticAbyss_Main,SPR_ArcticAbyss_MainEnd
	dl $FE6792,$FE6B54,SPR_ChainlinkChamber_Main,SPR_ChainlinkChamber_MainEnd
	dl $FE6B54,$FE6ED6,SPR_ToxicTower_Main,SPR_ToxicTower_MainEnd
	dl $FE6ED6,$FE6EF0,SPR_PiratePanic_Bonus1,SPR_PiratePanic_Bonus1End
	dl $FE6EF0,$FE6F42,SPR_PiratePanic_Bonus2,SPR_PiratePanic_Bonus2End
	dl $FE6F42,$FE6F94,SPR_GangplankGalley_Bonus2,SPR_GangplankGalley_Bonus2End
	dl $FE6F94,$FE6FA6,SPR_RattleBattle_Bonus1,SPR_RattleBattle_Bonus1End
	dl $FE6FA6,$FE6FC0,SPR_RattleBattle_Bonus3,SPR_RattleBattle_Bonus3End
	dl $FE6FC0,$FE6FDA,SPR_HotHeadHop_Bonus3,SPR_HotHeadHop_Bonus3End
	dl $FE6FDA,$FE700C,SPR_HotHeadHop_Bonus1,SPR_HotHeadHop_Bonus1End
	dl $FE700C,$FE7066,SPR_RedHotRide_Bonus1,SPR_RedHotRide_Bonus1End
	dl $FE7066,$FE7080,SPR_RedHotRide_Bonus2,SPR_RedHotRide_Bonus2End
	dl $FE7080,$FE7092,SPR_MainbraceMayhem_Bonus1,SPR_MainbraceMayhem_Bonus1End
	dl $FE7092,$FE70EC,SPR_MainbraceMayhem_Bonus2,SPR_MainbraceMayhem_Bonus2End
	dl $FE70EC,$FE7116,SPR_SlimeClimb_Bonus1,SPR_SlimeClimb_Bonus1End
	dl $FE7116,$FE7160,SPR_TopsailTrouble_Bonus1,SPR_TopsailTrouble_Bonus1End
	dl $FE7160,$FE7192,SPR_TopsailTrouble_Bonus2,SPR_TopsailTrouble_Bonus2End
	dl $FE7192,$FE71A4,SPR_MainbraceMayhem_Bonus3,SPR_MainbraceMayhem_Bonus3End
	dl $FE71A4,$FE720E,SPR_SlimbClimb_Bonus2,SPR_SlimbClimb_Bonus2End
	dl $FE720E,$FE7260,SPR_RattleBattle_Bonus2,SPR_RattleBattle_Bonus2End
	dl $FE7260,$FE7682,SPR_KlobberKarnage_Main,SPR_KlobberKarnage_MainEnd
	dl $FE7682,$FE769C,SPR_LockjawsLocker_Bonus1,SPR_LockjawsLocker_Bonus1End
	dl $FE769C,$FE76BE,SPR_GlimmersGalleon_Bonus2,SPR_GlimmersGalleon_Bonus2End
	dl $FE76BE,$FE7730,SPR_LavaLagoon_Bonus1,SPR_LavaLagoon_Bonus1End
	dl $FE7730,$FE774A,SPR_GlimmersGalleon_Bonus1,SPR_GlimmersGalleon_Bonus1End
	dl $FE774A,$FE7764,SPR_GhostlyGrove_Bonus1,SPR_GhostlyGrove_Bonus1End
	dl $FE7764,$FE77A6,SPR_GustyGlade_Bonus1,SPR_GustyGlade_Bonus1End
	dl $FE77A6,$FE77D0,SPR_GustyGlade_Bonus2,SPR_GustyGlade_Bonus2End
	dl $FE77D0,$FE7802,SPR_GhostlyGrove_Bonus2,SPR_GhostlyGrove_Bonus2End
	dl $FE7802,$FE7834,SPR_BarrelBayou_Bonus1,SPR_BarrelBayou_Bonus1End
	dl $FE7834,$FE787E,SPR_BarrelBayou_Bonus2,SPR_BarrelBayou_Bonus2End
	dl $FE787E,$FE78B8,SPR_KrockheadKlamber_Bonus1,SPR_KrockheadKlamber_Bonus1End
	dl $FE78B8,$FE78D2,SPR_MudholeMarsh_Bonus1,SPR_MudholeMarsh_Bonus1End
	dl $FE78D2,$FE791C,SPR_MudholeMarsh_Bonus2,SPR_MudholeMarsh_Bonus2End
	dl $FE791C,$FE7926,SPR_HotHeadHop_Warp,SPR_HotHeadHop_WarpEnd
	dl $FE7926,$FE7CA8,SPR_ClappersCavern_Main,SPR_ClappersCavern_MainEnd
	dl $FE7CA8,$FE7D92,SPR_AnimalAntics_EngaurdSection,SPR_AnimalAntics_EngaurdSectionEnd
	dl $FE7D92,$FE7DA4,SPR_ClappersCavern_Bonus1,SPR_ClappersCavern_Bonus1End
	dl $FE7DA4,$FE7DD6,SPR_ClappersCavern_Bonus2,SPR_ClappersCavern_Bonus2End
	dl $FE7DD6,$FE7DF0,SPR_ArcticAbyss_Bonus1,SPR_ArcticAbyss_Bonus1End
	dl $FE7DF0,$FE7E32,SPR_BlackIceBattle_Bonus1,SPR_BlackIceBattle_Bonus1End
	dl $FE7E32,$FE7E74,SPR_ArcticAbyss_Bonus2,SPR_ArcticAbyss_Bonus2End
	dl $FE7E74,$FE81AE,SPR_BlackIceBattle_Main,SPR_BlackIceBattle_MainEnd
	dl $FE81AE,$FE8230,SPR_KlobberKarnage_Bonus1,SPR_KlobberKarnage_Bonus1End
	dl $FE8230,$FE8282,SPR_JungleJinx_Bonus1,SPR_JungleJinx_Bonus1End
	dl $FE8282,$FE856C,SPR_JungleJinx_Main,SPR_JungleJinx_MainEnd
	dl $FE856C,$FE860E,SPR_AnimalAntics_RambiSection,SPR_AnimalAntics_RambiSectionEnd
	dl $FE860E,$FE8730,SPR_AnimalAntics_SquitterSection,SPR_AnimalAntics_SquitterSectionEnd
	dl $FE8730,$FE87AA,SPR_AnimalAntics_RattlySection,SPR_AnimalAntics_RattlySectionEnd
	dl $FE87AA,$FE8814,SPR_AnimalAntics_Bonus1,SPR_AnimalAntics_Bonus1End
	dl $FE8814,$FE8886,SPR_FieryFurnace_Bonus1,SPR_FieryFurnace_Bonus1End
	dl $FE8886,$FE89F8,SPR_AnimalAntics_SquawksSection,SPR_AnimalAntics_SquawksSectionEnd
	dl $FE89F8,$FE8A1A,SPR_BrambleBlast_Bonus2,SPR_BrambleBlast_Bonus2End
	dl $FE8A1A,$FE8A84,SPR_TargetTerror_Bonus1,SPR_TargetTerror_Bonus1End
	dl $FE8A84,$FE8AF6,SPR_BrambleScramble_Bonus1,SPR_BrambleScramble_Bonus1End
	dl $FE8AF6,$FE8B10,SPR_WindyWell_Bonus2,SPR_WindyWell_Bonus2End
	dl $FE8B10,$FE8B42,SPR_WebWoods_Bonus1,SPR_WebWoods_Bonus1End
	dl $FE8B42,$FE8B5C,SPR_ToxicTower_Bonus1,SPR_ToxicTower_Bonus1End
	dl $FE8B5C,$FE8C36,SPR_BrambleBlast_Bonus1,SPR_BrambleBlast_Bonus1End
	dl $FE8C36,$FE8C50,SPR_ScreechsSprint_Bonus1,SPR_ScreechsSprint_Bonus1End
	dl $FE8C50,$FE8C6A,SPR_GangplankGalley_Bonus1,SPR_GangplankGalley_Bonus1End
	dl $FE8C6A,$FE8CC4,SPR_SquawksShaft_Bonus3,SPR_SquawksShaft_Bonus3End
	dl $FE8CC4,$FE8D06,SPR_KannonsKlaim_Bonus3,SPR_KannonsKlaim_Bonus3End
	dl $FE8D06,$FE8D68,SPR_KannonsKlaim_Bonus1,SPR_KannonsKlaim_Bonus1End
	dl $FE8D68,$FE8DB2,SPR_SquawksShaft_Bonus1,SPR_SquawksShaft_Bonus1End
	dl $FE8DB2,$FE8E14,SPR_KannonsKlaim_Bonus2,SPR_KannonsKlaim_Bonus2End
	dl $FE8E14,$FE8E66,SPR_HornetHole_Bonus1,SPR_HornetHole_Bonus1End
	dl $FE8E66,$FE8EC8,SPR_ParrotChutePanic_Bonus2,SPR_ParrotChutePanic_Bonus2End
	dl $FE8EC8,$FE8EE2,SPR_HornetHole_Bonus3,SPR_HornetHole_Bonus3End
	dl $FE8EE2,$FE8EFC,SPR_ParrotChutePanic_Bonus1,SPR_ParrotChutePanic_Bonus1End
	dl $FE8EFC,$FE8F56,SPR_RambiRumble_Bonus2,SPR_RambiRumble_Bonus2End
	dl $FE8F56,$FE8F68,SPR_HornetHole_Bonus2,SPR_HornetHole_Bonus2End
	dl $FE8F68,$FE8F7A,SPR_RambiRumble_Bonus1,SPR_RambiRumble_Bonus1End
	dl $FE8F7A,$FE9004,SPR_ChainlinkChamber_Bonus1,SPR_ChainlinkChamber_Bonus1End
	dl $FE9004,$FE904E,SPR_ChainlinkChamber_Bonus2,SPR_ChainlinkChamber_Bonus2End
	dl $FE904E,$FE90A0,SPR_CastleCrush_Bonus1,SPR_CastleCrush_Bonus1End
	dl $FE90A0,$FE90CA,SPR_CastleCrush_Bonus2,SPR_CastleCrush_Bonus2End
	dl $FE90CA,$FE90F4,SPR_StrongholdShowdown_Main,SPR_StrongholdShowdown_MainEnd
	dl $FE90F4,$FE914E,SPR_SquawksShaft_Bonus2,SPR_SquawksShaft_Bonus2End
	dl $FE914E,$FE91B0,SPR_WindyWell_Bonus1,SPR_WindyWell_Bonus1End
	dl $FE91B0,$FE91CA,SPR_WebWoods_Bonus2,SPR_WebWoods_Bonus2End
	dl $FE91CA,$FE91EC,SPR_HauntedHall_Bonus1,SPR_HauntedHall_Bonus1End
	dl $FE91EC,$FE920E,SPR_RicketyRace_Exit,SPR_RicketyRace_ExitEnd
	dl $FE920E,$FE9238,SPR_HauntedHall_Exit,SPR_HauntedHall_ExitEnd
	dl $FE9238,$FE9252,SPR_HauntedHall_Bonus3,SPR_HauntedHall_Bonus3End
	dl $FE9252,$FE92BC,SPR_TargetTerror_Bonus2,SPR_TargetTerror_Bonus2End
	dl $FE92BC,$FE92DE,SPR_HauntedHall_Bonus2,SPR_HauntedHall_Bonus2End
	dl $FE92DE,$FE9350,SPR_RicketyRace_Bonus1,SPR_RicketyRace_Bonus1End
LevelSpritePointersEnd:

;--------------------------------------------------------------------

BananaDataPointersStart:
	dl $FDADE6,$FDAEDA,BFD_GlimmersGalleon_Main,BFD_GlimmersGalleon_MainEnd
	dl $FDAEDA,$FDAFA2,BFD_RambiRumble_Main,BFD_RambiRumble_MainEnd
	dl $FDAFA2,$FDAFEA,BFD_PiratePanic_Main,BFD_PiratePanic_MainEnd
	dl $FDAFEA,$FDB022,BFD_GangplankGalley_Main,BFD_GangplankGalley_MainEnd
	dl $FDB022,$FDB08A,BFD_RattleBattle_Main,BFD_RattleBattle_MainEnd
	dl $FDB08A,$FDB106,BFD_HotHeadHop_Main,BFD_HotHeadHop_MainEnd
	dl $FDB106,$FDB182,BFD_RedHotRide_Main,BFD_RedHotRide_MainEnd
	dl $FDB182,$FDB22E,BFD_SlimbClimb_Main,BFD_SlimbClimb_MainEnd
	dl $FDB22E,$FDB292,BFD_TopsailTrouble_Main,BFD_TopsailTrouble_MainEnd
	dl $FDB292,$FDB302,BFD_MainbraceMayhem_Main,BFD_MainbraceMayhem_MainEnd
	dl $FDB302,$FDB30E,BFD_KreepyKrow_Main,BFD_KreepyKrow_MainEnd
	dl $FDB30E,$FDB3CA,BFD_TargetTerror_Main,BFD_TargetTerror_MainEnd
	dl $FDB3CA,$FDB442,BFD_RicketyRace_Main,BFD_RicketyRace_MainEnd
	dl $FDB442,$FDB50E,BFD_HauntedHall_Main,BFD_HauntedHall_MainEnd
	dl $FDB50E,$FDB5F2,BFD_HornetHole_Main,BFD_HornetHole_MainEnd
	dl $FDB5F2,$FDB5F6,BFD_RambiRumble_RambiRoom,BFD_RambiRumble_RambiRoomEnd
	dl $FDB5F6,$FDB6EA,BFD_ParrotChutePanic_Main,BFD_ParrotChutePanic_MainEnd
	dl $FDB6EA,$FDB79A,BFD_LavaLagoon_Main,BFD_LavaLagoon_MainEnd
	dl $FDB79A,$FDB85A,BFD_LockjawsLocker_Main,BFD_LockjawsLocker_MainEnd
	dl $FDB85A,$FDB906,BFD_FieryFurnace_Main,BFD_FieryFurnace_MainEnd
	dl $FDB906,$FDB96E,BFD_WebWoods_Main,BFD_WebWoods_MainEnd
	dl $FDB96E,$FDB9FE,BFD_GustyGlade_Main,BFD_GustyGlade_MainEnd
	dl $FDB9FE,$FDBA8A,BFD_GhostlyGrove_Main,BFD_GhostlyGrove_MainEnd
	dl $FDBA8A,$FDBA8E,BFD_TopsailTrouble_Warp,BFD_TopsailTrouble_WarpEnd
	dl $FDBA8E,$FDBA92,BFD_HotHeadHop_Bonus2,BFD_HotHeadHop_Bonus2End
	dl $FDBA92,$FDBA9A,BFD_PiratePanic_Warp,BFD_PiratePanic_WarpEnd
	dl $FDBA9A,$FDBAA2,BFD_TargetTerror_Exit,BFD_TargetTerror_ExitEnd
	dl $FDBAA2,$FDBAA6,BFD_UnusedForestBananaCache,BFD_UnusedForestBananaCacheEnd
	dl $FDBAA6,$FDBAAA,BFD_MainbraceMayhem_Warp,BFD_MainbraceMayhem_WarpEnd
	dl $FDBAAA,$FDBAAE,BFD_RattleBattle_RattlyRoom,BFD_RattleBattle_RattlyRoomEnd
	dl $FDBAAE,$FDBB4E,BFD_WindyWell_Main,BFD_WindyWell_MainEnd
	dl $FDBB4E,$FDBBBA,BFD_SquawksShaft_Main,BFD_SquawksShaft_MainEnd
	dl $FDBBBA,$FDBC36,BFD_KannonsKlaim_Main,BFD_KannonsKlaim_MainEnd
	dl $FDBC36,$FDBC3E,BFD_ParrotChutePanic_RareLogoRoom,BFD_ParrotChutePanic_RareLogoRoomEnd
	dl $FDBC3E,$FDBC42,BFD_KannonsKlaim_Warp,BFD_KannonsKlaim_WarpEnd
	dl $FDBC42,$FDBCB6,BFD_BarrelBayou_Main,BFD_BarrelBayou_MainEnd
	dl $FDBCB6,$FDBD6E,BFD_KrockheadKlamber_Main,BFD_KrockheadKlamber_MainEnd
	dl $FDBD6E,$FDBD82,BFD_WebWoods_SquitterRoom,BFD_WebWoods_SquitterRoomEnd
	dl $FDBD82,$FDBDE6,BFD_MudholeMarsh_Main,BFD_MudholeMarsh_MainEnd
	dl $FDBDE6,$FDBEA2,BFD_BrambleBlast_Main,BFD_BrambleBlast_MainEnd
	dl $FDBEA2,$FDBF6A,BFD_BrambleScramble_Main,BFD_BrambleScramble_MainEnd
	dl $FDBF6A,$FDC042,BFD_ScreechsSprint_Main,BFD_ScreechsSprint_MainEnd
	dl $FDC042,$FDC046,BFD_KingZingSting_Main,BFD_KingZingSting_MainEnd
	dl $FDC046,$FDC0DA,BFD_CastleCrush_Main,BFD_CastleCrush_MainEnd
	dl $FDC0DA,$FDC0DE,BFD_LockjawsLocker_Warp,BFD_LockjawsLocker_WarpEnd
	dl $FDC0DE,$FDC0E2,BFD_LavaLagoon_Warp,BFD_LavaLagoon_WarpEnd
	dl $FDC0E2,$FDC0E6,BFD_SquawksShaft_Warp,BFD_SquawksShaft_WarpEnd
	dl $FDC0E6,$FDC146,BFD_ArcticAbyss_Main,BFD_ArcticAbyss_MainEnd
	dl $FDC146,$FDC1BE,BFD_ChainlinkChamber_Main,BFD_ChainlinkChamber_MainEnd
	dl $FDC1BE,$FDC26A,BFD_ToxicTower_Main,BFD_ToxicTower_MainEnd
	dl $FDC26A,$FDC276,BFD_PiratePanic_Bonus1,BFD_PiratePanic_Bonus1End
	dl $FDC276,$FDC27A,BFD_GangplankGalley_Bonus2,BFD_GangplankGalley_Bonus2End
	dl $FDC27A,$FDC29A,BFD_RattleBattle_Bonus1,BFD_RattleBattle_Bonus1End
	dl $FDC29A,$FDC2B6,BFD_RattleBattle_Bonus3,BFD_RattleBattle_Bonus3End
	dl $FDC2B6,$FDC2C2,BFD_HotHeadHop_Bonus3,BFD_HotHeadHop_Bonus3End
	dl $FDC2C2,$FDC2DA,BFD_HotHeadHop_Bonus1,BFD_HotHeadHop_Bonus1End
	dl $FDC2DA,$FDC2E2,BFD_RedHotRide_Bonus1,BFD_RedHotRide_Bonus1End
	dl $FDC2E2,$FDC2F2,BFD_RedHotRide_Bonus2,BFD_RedHotRide_Bonus2End
	dl $FDC2F2,$FDC312,BFD_MainbraceMayhem_Bonus1,BFD_MainbraceMayhem_Bonus1End
	dl $FDC312,$FDC33A,BFD_SlimeClimb_Bonus1,BFD_SlimeClimb_Bonus1End
	dl $FDC33A,$FDC33E,BFD_TopsailTrouble_Bonus2,BFD_TopsailTrouble_Bonus2End
	dl $FDC33E,$FDC35E,BFD_MainbraceMayhem_Bonus3,BFD_MainbraceMayhem_Bonus3End
	dl $FDC35E,$FDC3E2,BFD_KlobberKarnage_Main,BFD_KlobberKarnage_MainEnd
	dl $FDC3E2,$FDC416,BFD_LockjawsLocker_Bonus1,BFD_LockjawsLocker_Bonus1End
	dl $FDC416,$FDC436,BFD_GlimmersGalleon_Bonus2,BFD_GlimmersGalleon_Bonus2End
	dl $FDC436,$FDC442,BFD_GustyGlade_Bonus1,BFD_GustyGlade_Bonus1End
	dl $FDC442,$FDC45A,BFD_GustyGlade_Bonus2,BFD_GustyGlade_Bonus2End
	dl $FDC45A,$FDC46E,BFD_GhostlyGrove_Bonus2,BFD_GhostlyGrove_Bonus2End
	dl $FDC46E,$FDC47A,BFD_BarrelBayou_Bonus2,BFD_BarrelBayou_Bonus2End
	dl $FDC47A,$FDC492,BFD_MudholeMarsh_Bonus1,BFD_MudholeMarsh_Bonus1End
	dl $FDC492,$FDC49E,BFD_MudholeMarsh_Bonus2,BFD_MudholeMarsh_Bonus2End
	dl $FDC49E,$FDC4A2,BFD_HotHeadHop_Warp,BFD_HotHeadHop_WarpEnd
	dl $FDC4A2,$FDC532,BFD_ClappersCavern_Main,BFD_ClappersCavern_MainEnd
	dl $FDC532,$FDC552,BFD_AnimalAntics_EngaurdSection,BFD_AnimalAntics_EngaurdSectionEnd
	dl $FDC552,$FDC56E,BFD_ClappersCavern_Bonus1,BFD_ClappersCavern_Bonus1End
	dl $FDC56E,$FDC58E,BFD_ClappersCavern_Bonus2,BFD_ClappersCavern_Bonus2End
	dl $FDC58E,$FDC5AE,BFD_ArcticAbyss_Bonus1,BFD_ArcticAbyss_Bonus1End
	dl $FDC5AE,$FDC5BA,BFD_BlackIceBattle_Bonus1,BFD_BlackIceBattle_Bonus1End
	dl $FDC5BA,$FDC5C2,BFD_ArcticAbyss_Bonus2,BFD_ArcticAbyss_Bonus2End
	dl $FDC5C2,$FDC626,BFD_BlackIceBattle_Main,BFD_BlackIceBattle_MainEnd
	dl $FDC626,$FDC6E6,BFD_JungleJinx_Main,BFD_JungleJinx_MainEnd
	dl $FDC6E6,$FDC6FE,BFD_AnimalAntics_RambiSection,BFD_AnimalAntics_RambiSectionEnd
	dl $FDC6FE,$FDC72E,BFD_AnimalAntics_SquitterSection,BFD_AnimalAntics_SquitterSectionEnd
	dl $FDC72E,$FDC746,BFD_AnimalAntics_RattlySection,BFD_AnimalAntics_RattlySectionEnd
	dl $FDC746,$FDC762,BFD_FieryFurnace_Bonus1,BFD_FieryFurnace_Bonus1End
	dl $FDC762,$FDC7BE,BFD_AnimalAntics_SquawksSection,BFD_AnimalAntics_SquawksSectionEnd
	dl $FDC7BE,$FDC7D2,BFD_BrambleBlast_Bonus2,BFD_BrambleBlast_Bonus2End
	dl $FDC7D2,$FDC7FA,BFD_BrambleScramble_Bonus1,BFD_BrambleScramble_Bonus1End
	dl $FDC7FA,$FDC80E,BFD_WindyWell_Bonus2,BFD_WindyWell_Bonus2End
	dl $FDC80E,$FDC81E,BFD_WebWoods_Bonus1,BFD_WebWoods_Bonus1End
	dl $FDC81E,$FDC836,BFD_ToxicTower_Bonus1,BFD_ToxicTower_Bonus1End
	dl $FDC836,$FDC83A,BFD_BrambleBlast_Bonus1,BFD_BrambleBlast_Bonus1End
	dl $FDC83A,$FDC87A,BFD_ScreechsSprint_Bonus1,BFD_ScreechsSprint_Bonus1End
	dl $FDC87A,$FDC882,BFD_KannonsKlaim_Bonus1,BFD_KannonsKlaim_Bonus1End
	dl $FDC882,$FDC896,BFD_KannonsKlaim_Bonus2,BFD_KannonsKlaim_Bonus2End
	dl $FDC896,$FDC8A2,BFD_ParrotChutePanic_Bonus2,BFD_ParrotChutePanic_Bonus2End
	dl $FDC8A2,$FDC8A6,BFD_HornetHole_Bonus3,BFD_HornetHole_Bonus3End
	dl $FDC8A6,$FDC8D6,BFD_ParrotChutePanic_Bonus1,BFD_ParrotChutePanic_Bonus1End
	dl $FDC8D6,$FDC8E6,BFD_RambiRumble_Bonus2,BFD_RambiRumble_Bonus2End
	dl $FDC8E6,$FDC8EA,BFD_HornetHole_Bonus2,BFD_HornetHole_Bonus2End
	dl $FDC8EA,$FDC902,BFD_RambiRumble_Bonus1,BFD_RambiRumble_Bonus1End
	dl $FDC902,$FDC922,BFD_ChainlinkChamber_Bonus1,BFD_ChainlinkChamber_Bonus1End
	dl $FDC922,$FDC93A,BFD_ChainlinkChamber_Bonus2,BFD_ChainlinkChamber_Bonus2End
	dl $FDC93A,$FDC96A,BFD_CastleCrush_Bonus2,BFD_CastleCrush_Bonus2End
	dl $FDC96A,$FDC98E,BFD_SquawksShaft_Bonus2,BFD_SquawksShaft_Bonus2End
	dl $FDC98E,$FDC99E,BFD_WindyWell_Bonus1,BFD_WindyWell_Bonus1End
	dl $FDC99E,$FDC9A6,BFD_WebWoods_Bonus2,BFD_WebWoods_Bonus2End
	dl $FDC9A6,$FDC9CA,BFD_HauntedHall_Bonus1,BFD_HauntedHall_Bonus1End
	dl $FDC9CA,$FDC9DA,BFD_RicketyRace_Exit,BFD_RicketyRace_ExitEnd
	dl $FDC9DA,$FDCA12,BFD_HauntedHall_Bonus3,BFD_HauntedHall_Bonus3End
	dl $FDCA12,$FDCA3E,BFD_TargetTerror_Bonus2,BFD_TargetTerror_Bonus2End
	dl $FDCA3E,$FDCA82,BFD_HauntedHall_Bonus2,BFD_HauntedHall_Bonus2End
BananaDataPointersEnd:

;--------------------------------------------------------------------

PalettesPointersStart:
	dl $FD0408,$FD0410,PAL_Layer3_ErorrMessageScreenText,PAL_Layer3_ErorrMessageScreenTextEnd
	dl $FD0410,$FD0610,PAL_UnknownPalette1,PAL_UnknownPalette1End
	dl $FD0610,$FD06F0,PAL_FGBG_Level_GustyGlade,PAL_FGBG_Level_GustyGladeEnd
	dl $FD06F0,$FD07F0,PAL_FGBG_Level_GhostlyGrove,PAL_FGBG_Level_GhostlyGroveEnd
	dl $FD07F0,$FD08F0,PAL_FGBG_Level_LavaLagoon,PAL_FGBG_Level_LavaLagoonEnd
	dl $FD08F0,$FD0910,PAL_Layer3_LavaLagoonChilledWater,PAL_Layer3_LavaLagoonChilledWaterEnd
	dl $FD0910,$FD0A10,PAL_FGBG_Level_LockjawsSaga,PAL_FGBG_Level_LockjawsSagaEnd
	dl $FD0A10,$FD0B10,PAL_FGBG_Level_HornetHole,PAL_FGBG_Level_HornetHoleEnd
	dl $FD0B10,$FD0CD0,PAL_FGBG_WorldMap,PAL_FGBG_WorldMapEnd
	dl $FD0CD0,$FD0DD0,PAL_FGBG_Level_PiratePanic,PAL_FGBG_Level_PiratePanicEnd
	dl $FD0DD0,$FD0DF0,PAL_Layer3_Level_RedHotRide,PAL_Layer3_Level_RedHotRideEnd
	dl $FD0DF0,$FD0EF0,PAL_FGBG_Level_HotHeadHop,PAL_FGBG_Level_HotHeadHopEnd
	dl $FD0EF0,$FD0FF0,PAL_FGBG_Level_FieryFurnace,PAL_FGBG_Level_FieryFurnaceEnd
	dl $FD0FF0,$FD10F0,PAL_FGBG_MonkeyMuseum,PAL_FGBG_MonkeyMuseumEnd
	dl $FD10F0,$FD11F0,PAL_FGBG_FunkysFlightsII,PAL_FGBG_FunkysFlightsIIEnd
	dl $FD11F0,$FD12F0,PAL_FGBG_KongKollage,PAL_FGBG_KongKollageEnd
	dl $FD12F0,$FD13F0,PAL_FGBG_SwankysBonusBonanza,PAL_FGBG_SwankysBonusBonanzaEnd
	dl $FD13F0,$FD14F0,PAL_FGBG_KlubbasKiosk,PAL_FGBG_KlubbasKioskEnd
	dl $FD14F0,$FD15F0,PAL_FGBG_Level_TopsailTrouble,PAL_FGBG_Level_TopsailTroubleEnd
	dl $FD15F0,$FD1610,PAL_Layer2_TopsailTroubleBackground,PAL_Layer2_TopsailTroubleBackgroundEnd
	dl $FD1610,$FD1710,PAL_FGBG_Level_MainbraceMayhem,PAL_FGBG_Level_MainbraceMayhemEnd
	dl $FD1710,$FD1870,PAL_FGBG_Level_TargetTerror,PAL_FGBG_Level_TargetTerrorEnd
	dl $FD1870,$FD1970,PAL_FGBG_GangplankGalleonMap,PAL_FGBG_GangplankGalleonMapEnd
	dl $FD1970,$FD1A70,PAL_FGBG_CrocodileCauldronMap,PAL_FGBG_CrocodileCauldronMapEnd
	dl $FD1A70,$FD1B70,PAL_FGBG_KremQuayMap,PAL_FGBG_KremQuayMapEnd
	dl $FD1B70,$FD1C70,PAL_FGBG_KrazyKremlandMap1,PAL_FGBG_KrazyKremlandMap1End
	dl $FD1C70,$FD1D70,PAL_FGBG_GloomyGultchMap,PAL_FGBG_GloomyGultchMapEnd
	dl $FD1D70,$FD1E70,PAL_FGBG_KRoolsKeepMap,PAL_FGBG_KRoolsKeepMapEnd
	dl $FD1E70,$FD1F70,PAL_FGBG_TheFlyingKrocMap,PAL_FGBG_TheFlyingKrocMapEnd
	dl $FD1F70,$FD2070,PAL_FGBG_LostWorldMap,PAL_FGBG_LostWorldMapEnd
	dl $FD2070,$FD2170,PAL_FGBG_KrazyKremlandMap2,PAL_FGBG_KrazyKremlandMap2End
	dl $FD2170,$FD2270,PAL_FGBG_Level_KaptainsKabin,PAL_FGBG_Level_KaptainsKabinEnd
	dl $FD2270,$FD228E,PAL_Layer3_Shine,PAL_Layer3_ShineEnd
	dl $FD228E,$FD238E,PAL_FGBG_Level_KannonsKlaim,PAL_FGBG_Level_KannonsKlaimEnd
	dl $FD238E,$FD248E,PAL_FGBG_Level_SquawksShaft,PAL_FGBG_Level_SquawksShaftEnd
	dl $FD248E,$FD258E,PAL_FGBG_Level_WindyWell,PAL_FGBG_Level_WindyWellEnd
	dl $FD258E,$FD268E,PAL_FGBG_GameOverScreen,PAL_FGBG_GameOverScreenEnd
	dl $FD268E,$FD26AE,PAL_Layer1_FallingLeaves,PAL_Layer1_FallingLeavesEnd
	dl $FD26AE,$FD27CE,PAL_Layer1_TitleScreen,PAL_Layer1_TitleScreenEnd
	dl $FD27CE,$FD27EE,PAL_Layer1_CopyrightScreen,PAL_Layer1_CopyrightScreenEnd
	dl $FD27EE,$FD28EE,PAL_FGBG_Level_BayouBoogie,PAL_FGBG_Level_BayouBoogieEnd
	dl $FD28EE,$FD29EE,PAL_FGBG_Level_BrambleBlast,PAL_FGBG_Level_BrambleBlastEnd
	dl $FD29EE,$FD2AEE,PAL_FGBG_Level_ScreechsSprint,PAL_FGBG_Level_ScreechsSprintEnd
	dl $FD2AEE,$FD2BEE,PAL_FGBG_Level_BrambleScramble,PAL_FGBG_Level_BrambleScrambleEnd
	dl $FD2BEE,$FD2CEE,PAL_FGBG_Level_GlimmersGalleon,PAL_FGBG_Level_GlimmersGalleonEnd
	dl $FD2CEE,$FD2DCE,PAL_FGBG_Level_KrocodileKore,PAL_FGBG_Level_KrocodileKoreEnd
	dl $FD2DCE,$FD2DEE,PAL_Layer3_Level_ToxicTower,PAL_Layer3_Level_ToxicTowerEnd
	dl $FD2DEE,$FD2EEE,PAL_FGBG_Level_CastleCrush,PAL_FGBG_Level_CastleCrushEnd
	dl $FD2EEE,$FD2FEE,PAL_FGBG_Level_HauntedHall,PAL_FGBG_Level_HauntedHallEnd
	dl $FD2FEE,$FD300E,PAL_Layer2_Kackle2,PAL_Layer2_Kackle2End
	dl $FD300E,$FD302E,PAL_Layer2_Kackle3,PAL_Layer2_Kackle3End
	dl $FD302E,$FD304E,PAL_Layer2_Kackle4,PAL_Layer2_Kackle4End
	dl $FD304E,$FD314E,PAL_FGBG_Level_SlimeClimb,PAL_FGBG_Level_SlimeClimbEnd
	dl $FD314E,$FD324E,PAL_FGBG_Level_KRoolDuel,PAL_FGBG_Level_KRoolDuelEnd
	dl $FD324E,$FD334E,PAL_FGBG_Level_RattleBattle,PAL_FGBG_Level_RattleBattleEnd
	dl $FD334E,$FD364E,PAL_FGBG_Level_GangplankGalleySunsetPalettes1,PAL_FGBG_Level_GangplankGalleySunsetPalettes1End
	dl $FD364E,$FD394E,PAL_FGBG_Level_GangplankGalleySunsetPalettes2,PAL_FGBG_Level_GangplankGalleySunsetPalettes2End
	dl $FD394E,$FD398E,PAL_Layer3_FrozenWater,PAL_Layer3_FrozenWaterEnd
	dl $FD398E,$FD3A4E,PAL_FGBG_Level_BlackIceBattle,PAL_FGBG_Level_BlackIceBattleEnd
	dl $FD3A4E,$FD3B4E,PAL_FGBG_Level_WebWoods,PAL_FGBG_Level_WebWoodsEnd
	dl $FD3B4E,$FD3B6E,PAL_UnknownPalette2,PAL_UnknownPalette2End
	dl $FD3B6E,$FD3C6E,PAL_FGBG_Level_AnimalAntics_JungleAreas,PAL_FGBG_Level_AnimalAntics_JungleAreasEnd
	dl $FD3C6E,$FD3DEE,PAL_FGBG_FileSelectScreen,PAL_FGBG_FileSelectScreenEnd
	dl $FD3DEE,$FD3EAE,PAL_Layer1_DestroyThemAllScreen,PAL_Layer1_DestroyThemAllScreenEnd
	dl $FD3EAE,$FD3F6E,PAL_Layer1_CollectTheStarsScreen,PAL_Layer1_CollectTheStarsScreenEnd
	dl $FD3F6E,$FD402E,PAL_Layer1_FindTheTokenScreen,PAL_Layer1_FindTheTokenScreenEnd
	dl $FD402E,$FD412E,PAL_Layer1_CrankysVideoGameHeroesScreen,PAL_Layer1_CrankysVideoGameHeroesScreenEnd
	dl $FD412E,$FD414E,PAL_Layer1_YeScurvyKongKrew,PAL_Layer1_YeScurvyKongKrewEnd
	dl $FD414E,$FD416E,PAL_Layer1_DeveloperNames,PAL_Layer1_DeveloperNamesEnd
	dl $FD416E,$FD418E,PAL_Sprite_GoodEndingEnergyBeam,PAL_Sprite_GoodEndingEnergyBeamEnd
	dl $FD418E,$FD420E,PAL_Sprite_GoodEndingBottomHalfOfCrocodileIsle,PAL_Sprite_GoodEndingBottomHalfOfCrocodileIsleEnd
	dl $FD420E,$FD430E,PAL_Layer1_GoodEndingScreen,PAL_Layer1_GoodEndingScreenEnd
	dl $FD430E,$FD440E,PAL_FGBG_Level_KlobberKarnage,PAL_FGBG_Level_KlobberKarnageEnd
	dl $FD440E,$FD450E,PAL_FGBG_Level_JungleJinx,PAL_FGBG_Level_JungleJinxEnd
	dl $FD450E,$FD460E,PAL_FGBG_Level_KrocheadKlamber,PAL_FGBG_Level_KrocheadKlamberEnd
	dl $FD460E,$FD470E,PAL_FGBG_Level_MudholeMarsh,PAL_FGBG_Level_MudholeMarshEnd
	dl $FD61C2,$FD6242,PAL_Sprite_Fireworks,PAL_Sprite_FireworksEnd
	dl $FD6242,$FD62A0,PAL_Sprite_Unknown1,PAL_Sprite_Unknown1End
	dl $FD62A0,$FD62BE,PAL_Sprite_KlubbasClub,PAL_Sprite_KlubbasClubEnd
	dl $FD62BE,$FD62DC,PAL_Sprite_Klubba,PAL_Sprite_KlubbaEnd
	dl $FD62DC,$FD62FA,PAL_Sprite_BreakableWall_ShipDeck,PAL_Sprite_BreakableWall_ShipDeckEnd
	dl $FD62FA,$FD6318,PAL_Sprite_BreakableWall_BeeHive,PAL_Sprite_BreakableWall_BeeHiveEnd
	dl $FD6318,$FD6336,PAL_Sprite_BreakableWall_ForestLeftWall,PAL_Sprite_BreakableWall_ForestLeftWallEnd
	dl $FD6336,$FD6354,PAL_Sprite_BreakableWall_Castle,PAL_Sprite_BreakableWall_CastleEnd
	dl $FD6354,$FD6372,PAL_Sprite_Unknown2,PAL_Sprite_Unknown2End
	dl $FD6372,$FD6390,PAL_Sprite_BreakableWall_LavaCave,PAL_Sprite_BreakableWall_LavaCaveEnd
	dl $FD6390,$FD63AE,PAL_Sprite_BreakableWall_ShipHold_TallWoodenBox,PAL_Sprite_BreakableWall_ShipHold_TallWoodenBoxEnd
	dl $FD63AE,$FD63CC,PAL_Sprite_BreakableWall_IceCave,PAL_Sprite_BreakableWall_IceCaveEnd
	dl $FD63CC,$FD63EA,PAL_Sprite_Unknown3,PAL_Sprite_Unknown3End
	dl $FD63EA,$FD6408,PAL_Sprite_Unknown4,PAL_Sprite_Unknown4End
	dl $FD6408,$FD6426,PAL_Sprite_Unknown5,PAL_Sprite_Unknown5End
	dl $FD6426,$FD6446,PAL_Sprite_MapDiddyDixieTextAndLevelIcons,PAL_Sprite_MapDiddyDixieTextAndLevelIconsEnd
	dl $FD6446,$FD6464,PAL_Sprite_Link,PAL_Sprite_LinkEnd
	dl $FD6464,$FD6484,PAL_Sprite_MapKrocodileIcons,PAL_Sprite_MapKrocodileIconsEnd
	dl $FD6484,$FD64A2,PAL_Sprite_Diddy_Active,PAL_Sprite_Diddy_ActiveEnd
	dl $FD64A2,$FD64C0,PAL_Sprite_Diddy_Inactive,PAL_Sprite_Diddy_InactiveEnd
	dl $FD64C0,$FD64DE,PAL_Sprite_Diddy_P2Active,PAL_Sprite_Diddy_P2ActiveEnd
	dl $FD64DE,$FD64FC,PAL_Sprite_Diddy_P2Inactive,PAL_Sprite_Diddy_P2InactiveEnd
	dl $FD64FC,$FD651A,PAL_Sprite_Diddy_Frozen,PAL_Sprite_Diddy_FrozenEnd
	dl $FD651A,$FD6538,PAL_Sprite_Diddy_SlowMotion,PAL_Sprite_Diddy_SlowMotionEnd
	dl $FD6538,$FD6556,PAL_Sprite_Diddy_ReverseControls,PAL_Sprite_Diddy_ReverseControlsEnd
	dl $FD6556,$FD6574,PAL_Sprite_Diddy_Invincible,PAL_Sprite_Diddy_InvincibleEnd
	dl $FD6574,$FD6592,PAL_Sprite_Dixie_Active,PAL_Sprite_Dixie_ActiveEnd
	dl $FD6592,$FD65B0,PAL_Sprite_Dixie_Inactive,PAL_Sprite_Dixie_InactiveEnd
	dl $FD65B0,$FD65CE,PAL_Sprite_Dixie_P2Active,PAL_Sprite_Dixie_P2ActiveEnd
	dl $FD65CE,$FD65EC,PAL_Sprite_Dixie_P2Inactive,PAL_Sprite_Dixie_P2InactiveEnd
	dl $FD65EC,$FD660A,PAL_Sprite_Dixie_Frozen,PAL_Sprite_Dixie_FrozenEnd
	dl $FD660A,$FD6628,PAL_Sprite_Dixie_SlowMotion,PAL_Sprite_Dixie_SlowMotionEnd
	dl $FD6628,$FD6646,PAL_Sprite_Dixie_ReverseControls,PAL_Sprite_Dixie_ReverseControlsEnd
	dl $FD6646,$FD6664,PAL_Sprite_Dixie_Invincible,PAL_Sprite_Dixie_InvincibleEnd
	dl $FD6664,$FD6682,PAL_Sprite_Barrel,PAL_Sprite_BarrelEnd
	dl $FD6682,$FD66A0,PAL_Sprite_HUDNumbers,PAL_Sprite_HUDNumbersEnd
	dl $FD66A0,$FD66BE,PAL_Sprite_Squitter,PAL_Sprite_SquitterEnd
	dl $FD66BE,$FD66DC,PAL_Sprite_Unknown6,PAL_Sprite_Unknown6End
	dl $FD66DC,$FD66FA,PAL_Sprite_Klomp,PAL_Sprite_KlompEnd
	dl $FD66FA,$FD6718,PAL_Sprite_Kannon,PAL_Sprite_KannonEnd
	dl $FD6718,$FD6736,PAL_Sprite_Cannonball,PAL_Sprite_CannonballEnd
	dl $FD6736,$FD6754,PAL_Sprite_Cannon,PAL_Sprite_CannonEnd
	dl $FD6754,$FD6772,PAL_Sprite_LoadedCannon,PAL_Sprite_LoadedCannonEnd
	dl $FD6772,$FD6790,PAL_Sprite_OrangeShuri,PAL_Sprite_OrangeShuriEnd
	dl $FD6790,$FD67AE,PAL_Sprite_BlueKruncha,PAL_Sprite_BlueKrunchaEnd
	dl $FD67AE,$FD67CC,PAL_Sprite_LightRedKruncha,PAL_Sprite_LightRedKrunchaEnd
	dl $FD67CC,$FD67EA,PAL_Sprite_EnragedKruncha,PAL_Sprite_EnragedKrunchaEnd
	dl $FD67EA,$FD6808,PAL_Sprite_Rattly,PAL_Sprite_RattlyEnd
	dl $FD6808,$FD6826,PAL_Sprite_Lockjaw,PAL_Sprite_LockjawEnd
	dl $FD6826,$FD6844,PAL_Sprite_GreenSquawks,PAL_Sprite_GreenSquawksEnd
	dl $FD6844,$FD6862,PAL_Sprite_PurpleSquawks,PAL_Sprite_PurpleSquawksEnd
	dl $FD6862,$FD6880,PAL_Sprite_CreditsClickClack,PAL_Sprite_CreditsClickClackEnd
	dl $FD6880,$FD689E,PAL_Sprite_WaterSplash,PAL_Sprite_WaterSplashEnd
	dl $FD689E,$FD68BC,PAL_Sprite_YellowKutlass,PAL_Sprite_YellowKutlassEnd
	dl $FD68BC,$FD68DA,PAL_Sprite_Coins,PAL_Sprite_CoinsEnd
	dl $FD68DA,$FD68F8,PAL_Sprite_NoAnimalBuddySign,PAL_Sprite_NoAnimalBuddySignEnd
	dl $FD68F8,$FD6916,PAL_Sprite_Unknown7,PAL_Sprite_Unknown7End
	dl $FD6916,$FD6934,PAL_Sprite_LevelEndGoal,PAL_Sprite_LevelEndGoalEnd
	dl $FD6934,$FD6952,PAL_Sprite_RedExtraLifeBalloon,PAL_Sprite_RedExtraLifeBalloonEnd
	dl $FD6952,$FD6970,PAL_Sprite_GreenExtraLifeBalloon,PAL_Sprite_GreenExtraLifeBalloonEnd
	dl $FD6970,$FD698E,PAL_Sprite_BlueExtraLifeBalloon,PAL_Sprite_BlueExtraLifeBalloonEnd
	dl $FD698E,$FD69AC,PAL_Sprite_Neek,PAL_Sprite_NeekEnd
	dl $FD69AC,$FD69CA,PAL_Sprite_CatO9Tails,PAL_Sprite_CatO9TailsEnd
	dl $FD69CA,$FD69E8,PAL_Sprite_MiniNecky,PAL_Sprite_MiniNeckyEnd
	dl $FD69E8,$FD6A06,PAL_Sprite_GhostMiniNecky,PAL_Sprite_GhostMiniNeckyEnd
	dl $FD6A06,$FD6A24,PAL_Sprite_GreenKlobber,PAL_Sprite_GreenKlobberEnd
	dl $FD6A24,$FD6A42,PAL_Sprite_KrowsEgg,PAL_Sprite_KrowsEggEnd
	dl $FD6A42,$FD6A60,PAL_Sprite_KrowsBody,PAL_Sprite_KrowsBodyEnd
	dl $FD6A60,$FD6A7E,PAL_Sprite_KrowsHead,PAL_Sprite_KrowsHeadEnd
	dl $FD6A7E,$FD6A9C,PAL_Sprite_CrankyKong,PAL_Sprite_CrankyKongEnd
	dl $FD6A9C,$FD6ABA,PAL_Sprite_SwankyKong,PAL_Sprite_SwankyKongEnd
	dl $FD6ABA,$FD6AD8,PAL_Sprite_SkullCart,PAL_Sprite_SkullCartEnd
	dl $FD6AD8,$FD6AF6,PAL_Sprite_RedKlobber,PAL_Sprite_RedKlobberEnd
	dl $FD6AF6,$FD6B14,PAL_Sprite_RollercoasterGate,PAL_Sprite_RollercoasterGateEnd
	dl $FD6B14,$FD6B32,PAL_Sprite_GhostRope,PAL_Sprite_GhostRopeEnd
	dl $FD6B32,$FD6B50,PAL_Sprite_GreyKaboing,PAL_Sprite_GreyKaboingEnd
	dl $FD6B50,$FD6B6E,PAL_Sprite_BlueGreenKaboing,PAL_Sprite_BlueGreenKaboingEnd
	dl $FD6B6E,$FD6B8C,PAL_Sprite_HauntedHallDoor,PAL_Sprite_HauntedHallDoorEnd
	dl $FD6B8C,$FD6BAA,PAL_Sprite_GoodAndBadBarrel,PAL_Sprite_GoodAndBadBarrelEnd
	dl $FD6BAA,$FD6BC8,PAL_Sprite_Unknown8,PAL_Sprite_Unknown8End
	dl $FD6BC8,$FD6BE6,PAL_Sprite_BrownPuftup,PAL_Sprite_BrownPuftupEnd
	dl $FD6BE6,$FD6C04,PAL_Sprite_RedZinger,PAL_Sprite_RedZingerEnd
	dl $FD6C04,$FD6C22,PAL_Sprite_YellowZinger,PAL_Sprite_YellowZingerEnd
	dl $FD6C22,$FD6C40,PAL_Sprite_UnusedGreenZinger,PAL_Sprite_UnusedGreenZingerEnd
	dl $FD6C40,$FD6C5E,PAL_Sprite_Klinger,PAL_Sprite_KlingerEnd
	dl $FD6C5E,$FD6C7C,PAL_Sprite_Flitter,PAL_Sprite_FlitterEnd
	dl $FD6C7C,$FD6C9A,PAL_Sprite_BlueFlotsam,PAL_Sprite_BlueFlotsamEnd
	dl $FD6C9A,$FD6CB8,PAL_Sprite_UnusedRedFlotsam,PAL_Sprite_UnusedRedFlotsamEnd
	dl $FD6CB8,$FD6CD6,PAL_Sprite_UnusedYellowFlotsam,PAL_Sprite_UnusedYellowFlotsamEnd
	dl $FD6CD6,$FD6CF4,PAL_Sprite_GreenFlotsam,PAL_Sprite_GreenFlotsamEnd
	dl $FD6CF4,$FD6D12,PAL_Sprite_Glimmer,PAL_Sprite_GlimmerEnd
	dl $FD6D12,$FD6D30,PAL_Sprite_Rambi,PAL_Sprite_RambiEnd
	dl $FD6D30,$FD6D4E,PAL_Sprite_UnusedTurquoiseFlitter,PAL_Sprite_UnusedTurquoiseFlitterEnd
	dl $FD6D4E,$FD6D6C,PAL_Sprite_UnusedBlueWingFlitter,PAL_Sprite_UnusedBlueWingFlitterEnd
	dl $FD6D6C,$FD6D8A,PAL_Sprite_UnusedGreenWingFlitter,PAL_Sprite_UnusedGreenWingFlitterEnd
	dl $FD6D8A,$FD6DA8,PAL_Sprite_UnusedRedFlitter,PAL_Sprite_UnusedRedFlitterEnd
	dl $FD6DA8,$FD6DC6,PAL_Sprite_Spiny,PAL_Sprite_SpinyEnd
	dl $FD6DC6,$FD6DE4,PAL_Sprite_Kleever1,PAL_Sprite_Kleever1End
	dl $FD6DE4,$FD6E02,PAL_Sprite_KleeverHurt3,PAL_Sprite_KleeverHurt3End
	dl $FD6E02,$FD6E20,PAL_Sprite_Unknown9,PAL_Sprite_Unknown9End
	dl $FD6E20,$FD6E3E,PAL_Sprite_Klampon,PAL_Sprite_KlamponEnd
	dl $FD6E3E,$FD6E5C,PAL_Sprite_BrownKrochead,PAL_Sprite_BrownKrocheadEnd
	dl $FD6E5C,$FD6E7A,PAL_Sprite_Horsetail,PAL_Sprite_HorsetailEnd
	dl $FD6E7A,$FD6E98,PAL_Sprite_Unknown10,PAL_Sprite_Unknown10End
	dl $FD6E98,$FD6EB6,PAL_Sprite_RideableBalloon,PAL_Sprite_RideableBalloonEnd
	dl $FD6EB6,$FD6ED4,PAL_Sprite_DarkColoredChest,PAL_Sprite_DarkColoredChestEnd
	dl $FD6ED4,$FD6EF2,PAL_Sprite_Kloak,PAL_Sprite_KloakEnd
	dl $FD6EF2,$FD6F10,PAL_Sprite_HelicopterBarrelWings,PAL_Sprite_HelicopterBarrelWingsEnd
	dl $FD6F10,$FD6F2E,PAL_Sprite_KleeverHurt1,PAL_Sprite_KleeverHurt1End
	dl $FD6F2E,$FD6F4C,PAL_Sprite_KleeverHurt2,PAL_Sprite_KleeverHurt2End
	dl $FD6F4C,$FD6F6A,PAL_Sprite_Enguarde,PAL_Sprite_EnguardeEnd
	dl $FD6F6A,$FD6F88,PAL_Sprite_YellowKlobber,PAL_Sprite_YellowKlobberEnd
	dl $FD6F88,$FD6FA6,PAL_Sprite_BlackKlobber,PAL_Sprite_BlackKlobberEnd
	dl $FD6FA6,$FD6FC4,PAL_Sprite_Unknown11,PAL_Sprite_Unknown11End
	dl $FD6FC4,$FD6FE2,PAL_Sprite_Unknown12,PAL_Sprite_Unknown12End
	dl $FD6FE2,$FD7000,PAL_Sprite_KRool,PAL_Sprite_KRoolEnd
	dl $FD7000,$FD701E,PAL_Sprite_KRoolsGun,PAL_Sprite_KRoolsGunEnd
	dl $FD701E,$FD703C,PAL_Sprite_KRoolCoveredInSoot,PAL_Sprite_KRoolCoveredInSootEnd
	dl $FD703C,$FD705A,PAL_Sprite_ElectricGuitar,PAL_Sprite_ElectricGuitarEnd
	dl $FD705A,$FD7078,PAL_Sprite_BoomBox,PAL_Sprite_BoomBoxEnd
	dl $FD7078,$FD7096,PAL_Sprite_BlueKlank,PAL_Sprite_BlueKlankEnd
	dl $FD7096,$FD70B4,PAL_Sprite_Clapper,PAL_Sprite_ClapperEnd
	dl $FD70B4,$FD70EE,PAL_Sprite_KRoolGunVacuumEffect,PAL_Sprite_KRoolGunVacuumEffectEnd
	dl $FD70EE,$FD710C,PAL_Sprite_Screech,PAL_Sprite_ScreechEnd
	dl $FD710C,$FD712A,PAL_Sprite_GreenPuftup,PAL_Sprite_GreenPuftupEnd
	dl $FD712A,$FD7148,PAL_Sprite_PurplePuftup,PAL_Sprite_PurplePuftupEnd
	dl $FD7148,$FD7164,PAL_Sprite_PinkShuri,PAL_Sprite_PinkShuriEnd
	dl $FD7164,$FD7184,PAL_Sprite_FireAndExplosions,PAL_Sprite_FireAndExplosionsEnd
	dl $FD7184,$FD71A2,PAL_Sprite_RacingFlag,PAL_Sprite_RacingFlagEnd
	dl $FD71A2,$FD721A,PAL_Sprite_TrafficLight,PAL_Sprite_TrafficLightEnd
	dl $FD721A,$FD7238,PAL_Sprite_KRoolFreezeShots,PAL_Sprite_KRoolFreezeShotsEnd
	dl $FD7238,$FD7256,PAL_Sprite_KRoolSlowdownShots,PAL_Sprite_KRoolSlowdownShotsEnd
	dl $FD7256,$FD7274,PAL_Sprite_KRoolReverseShots,PAL_Sprite_KRoolReverseShotsEnd
	dl $FD7274,$FD7292,PAL_Sprite_Unknown13,PAL_Sprite_Unknown13End
	dl $FD7292,$FD72B2,PAL_Sprite_MapHelicopterBarrel,PAL_Sprite_MapHelicopterBarrelEnd
	dl $FD72B2,$FD72D0,PAL_Sprite_Yoshi,PAL_Sprite_YoshiEnd
	dl $FD72D0,$FD72EE,PAL_Sprite_Mario,PAL_Sprite_MarioEnd
	dl $FD72EE,$FD730C,PAL_Sprite_TransparentKRool1,PAL_Sprite_TransparentKRool1End
	dl $FD730C,$FD732A,PAL_Sprite_TransparentKRool2,PAL_Sprite_TransparentKRool2End
	dl $FD732A,$FD7348,PAL_Sprite_TransparentKRool3,PAL_Sprite_TransparentKRool3End
	dl $FD7348,$FD7366,PAL_Sprite_Unknown14,PAL_Sprite_Unknown14End
	dl $FD7366,$FD7384,PAL_Sprite_Unknown15,PAL_Sprite_Unknown15End
	dl $FD7384,$FD73A2,PAL_Sprite_Unknown16,PAL_Sprite_Unknown16End
	dl $FD73A2,$FD73C0,PAL_Sprite_Kudgel,PAL_Sprite_KudgelEnd
	dl $FD73C0,$FD73DE,PAL_Sprite_KudgelsClub,PAL_Sprite_KudgelsClubEnd
	dl $FD73DE,$FD73FC,PAL_Sprite_Unknown17,PAL_Sprite_Unknown17End
	dl $FD73FC,$FD741A,PAL_Sprite_Unknown18,PAL_Sprite_Unknown18End
	dl $FD741A,$FD7438,PAL_Sprite_Unknown19,PAL_Sprite_Unknown19End
	dl $FD7438,$FD7456,PAL_Sprite_Kleever2,PAL_Sprite_Kleever2End
	dl $FD7456,$FD7474,PAL_Sprite_Kleever5,PAL_Sprite_Kleever5End
	dl $FD7474,$FD7492,PAL_Sprite_Kleever3,PAL_Sprite_Kleever3End
	dl $FD7492,$FD74B0,PAL_Sprite_Kleever4,PAL_Sprite_Kleever4End
	dl $FD74B0,$FD74CE,PAL_Sprite_KingZingStinqStinger1,PAL_Sprite_KingZingStinqStinger1End
	dl $FD74CE,$FD74EC,PAL_Sprite_KingZingStinqStinger2,PAL_Sprite_KingZingStinqStinger2End
	dl $FD74EC,$FD750A,PAL_Sprite_KingZingStinqStinger3,PAL_Sprite_KingZingStinqStinger3End
	dl $FD750A,$FD7528,PAL_Sprite_KingZingStinqStinger4,PAL_Sprite_KingZingStinqStinger4End
	dl $FD7528,$FD7546,PAL_Sprite_FunkyKong,PAL_Sprite_FunkyKongEnd
	dl $FD7546,$FD7564,PAL_Sprite_Unknown20,PAL_Sprite_Unknown20End
	dl $FD7564,$FD7582,PAL_Sprite_KRoolsNote,PAL_Sprite_KRoolsNoteEnd
	dl $FD7582,$FD75A0,PAL_Sprite_WrinklyKong,PAL_Sprite_WrinklyKongEnd
	dl $FD75A0,$FD75FA,PAL_Sprite_WrinklyKongBook,PAL_Sprite_WrinklyKongBookEnd
	dl $FD75FA,$FD761A,PAL_Sprite_CrankyAndWrinklyLevelIcons,PAL_Sprite_CrankyAndWrinklyLevelIconsEnd
	dl $FD761A,$FD763A,PAL_Sprite_FunkyAndSwankyLevelIcons,PAL_Sprite_FunkyAndSwankyLevelIconsEnd
	dl $FD763A,$FD765A,PAL_Sprite_SkullLevelIcons,PAL_Sprite_SkullLevelIconsEnd
	dl $FD765A,$FD7678,PAL_Sprite_Unknown21,PAL_Sprite_Unknown21End
	dl $FD7678,$FD7696,PAL_Sprite_KudgelWaterSplash,PAL_Sprite_KudgelWaterSplashEnd
	dl $FD7696,$FD76B6,PAL_Sprite_LostWorldBridge,PAL_Sprite_LostWorldBridgeEnd
	dl $FD76B6,$FD76D4,PAL_Sprite_Unknown22,PAL_Sprite_Unknown22End
	dl $FD76D4,$FD76F2,PAL_Sprite_DonkeyKong,PAL_Sprite_DonkeyKongEnd
	dl $FD76F2,$FD7710,PAL_Sprite_FloppingFish,PAL_Sprite_FloppingFishEnd
	dl $FD7710,$FD772E,PAL_Sprite_Snapjaw,PAL_Sprite_SnapjawEnd
	dl $FD772E,$FD774C,PAL_Sprite_BreakableWall_ShipHold_ShortWoodenBox,PAL_Sprite_BreakableWall_ShipHold_ShortWoodenBoxEnd
	dl $FD774C,$FD776A,PAL_Sprite_FlyingKrocRoofPieces,PAL_Sprite_FlyingKrocRoofPiecesEnd
	dl $FD776A,$FD7788,PAL_Sprite_Unknown23,PAL_Sprite_Unknown23End
	dl $FD7788,$FD77A6,PAL_Sprite_GreenKutlass,PAL_Sprite_GreenKutlassEnd
	dl $FD77A6,$FD77C4,PAL_Sprite_GiantTire,PAL_Sprite_GiantTireEnd
	dl $FD77C4,$FD77E2,PAL_Sprite_Unknown24,PAL_Sprite_Unknown24End
	dl $FD77E2,$FD7800,PAL_Sprite_ClickClack,PAL_Sprite_ClickClackEnd
	dl $FD7800,$FD7820,PAL_Sprite_Unknown25,PAL_Sprite_Unknown25End
	dl $FD7820,$FD783E,PAL_Sprite_MapKRool,PAL_Sprite_MapKRoolEnd
	dl $FD783E,$FD785C,PAL_Sprite_MapKRoolWaterSplash,PAL_Sprite_MapKRoolWaterSplashEnd
	dl $FD785C,$FD787A,PAL_Sprite_Krook,PAL_Sprite_KrookEnd
	dl $FD787A,$FD7898,PAL_Sprite_GreenKrochead,PAL_Sprite_GreenKrocheadEnd
	dl $FD7898,$FD78B6,PAL_Sprite_OrangeKlank,PAL_Sprite_OrangeKlankEnd
	dl $FD78B6,$FD78D4,PAL_Sprite_PinkKlank,PAL_Sprite_PinkKlankEnd
	dl $FD78D4,$FD78F2,PAL_Sprite_KreepyKrowHead,PAL_Sprite_KreepyKrowHeadEnd
	dl $FD78F2,$FD7910,PAL_Sprite_KreepyKrowBody,PAL_Sprite_KreepyKrowBodyEnd
	dl $FD7910,$FD792E,PAL_Sprite_DyingKreepyKrowHead1,PAL_Sprite_DyingKreepyKrowHead1End
	dl $FD792E,$FD794C,PAL_Sprite_DyingKreepyKrowBody1,PAL_Sprite_DyingKreepyKrowBody1End
	dl $FD794C,$FD796A,PAL_Sprite_DyingKreepyKrowHead2,PAL_Sprite_DyingKreepyKrowHead2End
	dl $FD796A,$FD7988,PAL_Sprite_DyingKreepyKrowBody2,PAL_Sprite_DyingKreepyKrowBody2End
	dl $FD7988,$FD79A6,PAL_Sprite_DyingKreepyKrowHead3,PAL_Sprite_DyingKreepyKrowHead3End
	dl $FD79A6,$FD79C4,PAL_Sprite_DyingKreepyKrowBody3,PAL_Sprite_DyingKreepyKrowBody3End
	dl $FD79C4,$FD79E2,PAL_Sprite_BreakableWall_ForestRightWall,PAL_Sprite_BreakableWall_ForestRightWallEnd
PalettesPointersEnd:

;--------------------------------------------------------------------

MusicPointersStart:
	dl $EE1939,$EE195F,Music_None,Music_NoneEnd
	dl $EE195F,$EE1F6E,Music_WelcomeToCrocodileIsle,Music_WelcomeToCrocodileIsleEnd
	dl $EE1F6E,$EE2CD3,Music_KRoolReturns,Music_KRoolReturnsEnd
	dl $EE2CD3,$EE3D78,Music_BayouBoogie,Music_BayouBoogieEnd
	dl $EE3D78,$EE421F,Music_SwankysSwing,Music_SwankysSwingEnd
	dl $EE421F,$EE52FC,Music_ForestInterlude,Music_ForestInterludeEnd
	dl $EE52FC,$EE6007,Music_KlompsRomp,Music_KlompsRompEnd
	dl $EE6007,$EE6F47,Music_MiningMelancholy,Music_MiningMelancholyEnd
	dl $EE6F47,$EE748C,Music_FunkyTheMainMonkey,Music_FunkyTheMainMonkeyEnd
	dl $EE748C,$EE8572,Music_StickerbushSymphony,Music_StickerbushSymphonyEnd
	dl $EE8572,$EE8BC0,Music_KlubbasReveille,Music_KlubbasReveilleEnd
	dl $EE8BC0,$EE9BE0,Music_FlightOfTheZinger,Music_FlightOfTheZingerEnd
	dl $EE9BE0,$EEA050,Music_SchoolHouseHarmony,Music_SchoolHouseHarmonyEnd
	dl $EEA050,$EEAF4A,Music_HotHeadBop,Music_HotHeadBopEnd
	dl $EEAF4A,$EEBDBD,Music_DiscoTrain,Music_DiscoTrainEnd
	dl $EEBDBD,$EECE62,Music_BonusIntro,Music_BonusIntroEnd
	dl $F2357A,$F244D4,Music_LockjawsSaga,Music_LockjawsSagaEnd
	dl $F244D4,$F24760,Music_Opening,Music_OpeningEnd
	dl $F24760,$F25871,Music_SnakeyChantey,Music_SnakeyChanteyEnd
	dl $F25871,$F25D19,Music_StrongholdShowdown,Music_StrongholdShowdownEnd
	dl $F25D19,$F25FC1,Music_GameOver,Music_GameOverEnd
	dl $F25FC1,$F26F5B,Music_BossBossanova,Music_BossBossanovaEnd
	dl $F26F5B,$F28043,Music_KrooksMarch,Music_KrooksMarchEnd
	dl $F28043,$F290D0,Music_HauntedChase,Music_HauntedChaseEnd
	dl $F290D0,$F29653,Music_SteelDrumRhumba,Music_SteelDrumRhumbaEnd
	dl $F29653,$F29F80,Music_CrankysConga,Music_CrankysCongaEnd
	dl $F29F80,$F2AB96,Music_InASnowBoundLand,Music_InASnowBoundLandEnd
	dl $F2AB96,$F2BAD1,Music_PrimalRave,Music_PrimalRaveEnd
	dl $F2BAD1,$F2BFAE,Music_LostWorldAnthem,Music_LostWorldAnthemEnd
	dl $F2BFAE,$F2CFE3,Music_JibJig,Music_JibJigEnd
	dl $F2CFE3,$F2D64A,Music_DonkeyKongRescued,Music_DonkeyKongRescuedEnd
	dl $F2D64A,$F2E6A0,Music_CrocodileCacophony,Music_CrocodileCacophonyEnd
	dl $F2E6A0,$F2E727,Music_Unknown,Music_UnknownEnd
MusicPointersEnd:

;--------------------------------------------------------------------

SoundEffectPointersStart:
	dl $F2E72F,$F2F106,GlobalSoundEffects,GlobalSoundEffectsEnd
	dl $F2F106,$F2F12E,DATA_F2F106,DATA_F2F106End
	dl $F2F12E,$F2F2F0,DATA_F2F12E,DATA_F2F12EEnd
	dl $F2F2F0,$F2F558,DATA_F2F2F0,DATA_F2F2F0End
	dl $F2F558,$F2F6C5,DATA_F2F558,DATA_F2F558End
	dl $F2F6C5,$F2F722,DATA_F2F6C5,DATA_F2F6C5End
	dl $F2F722,$F2F978,DATA_F2F722,DATA_F2F722End
	dl $F2F978,$F2FB6A,DATA_F2F978,DATA_F2F978End
SoundEffectPointersEnd:

;--------------------------------------------------------------------

BRRPointersStart:
	dl $EECE66,$EECFFC,BRRFile00,BRRFile00End
	dl $EED000,$EED1CC,BRRFile01,BRRFile01End
	dl $EED1D0,$EED47C,BRRFile02,BRRFile02End
	dl $EED480,$EED63A,BRRFile03,BRRFile03End
	dl $EED63E,$EED87E,BRRFile04,BRRFile04End
	dl $EED882,$EEDC73,BRRFile05,BRRFile05End
	dl $EEDC77,$EEE055,BRRFile06,BRRFile06End
	dl $EEE059,$EEE1AF,BRRFile07,BRRFile07End
	dl $EEE1B3,$EEE8CE,BRRFile08,BRRFile08End
	dl $EEE8D2,$EEE9A2,BRRFile09,BRRFile09End
	dl $EEE9A6,$EEEE4B,BRRFile0A,BRRFile0AEnd
	dl $EEEE4F,$EEF6B6,BRRFile0B,BRRFile0BEnd
	dl $EEF6BA,$EEF8C5,BRRFile0C,BRRFile0CEnd
	dl $EEF8C9,$EEFDC8,BRRFile0D,BRRFile0DEnd
	dl $EEFDCC,$EEFFDF,BRRFile0E,BRRFile0EEnd
	dl $EEFFE3,$EF001A,BRRFile0F,BRRFile0FEnd
	dl $EF001E,$EF05BE,BRRFile10,BRRFile10End
	dl $EF05C2,$EF0997,BRRFile11,BRRFile11End
	dl $EF099B,$EF120B,BRRFile12,BRRFile12End
	dl $EF120F,$EF1EDC,BRRFile13,BRRFile13End
	dl $EF1EE0,$EF288C,BRRFile14,BRRFile14End
	dl $EF2890,$EF2F7E,BRRFile15,BRRFile15End
	dl $EF2F82,$EF3288,BRRFile16,BRRFile16End
	dl $EF328C,$EF335C,BRRFile17,BRRFile17End
	dl $EF3360,$EF35BC,BRRFile18,BRRFile18End
	dl $EF35C0,$EF37B0,BRRFile19,BRRFile19End
	dl $EF37B4,$EF3A10,BRRFile1A,BRRFile1AEnd
	dl $EF3A14,$EF3D5A,BRRFile1B,BRRFile1BEnd
	dl $EF3D5E,$EF4512,BRRFile1C,BRRFile1CEnd
	dl $EF4516,$EF4C79,BRRFile1D,BRRFile1DEnd
	dl $EF4C7D,$EF5053,BRRFile1E,BRRFile1EEnd
	dl $EF5057,$EF5910,BRRFile1F,BRRFile1FEnd
	dl $EF5914,$EF5927,BRRFile20,BRRFile20End
	dl $EF592B,$EF596B,BRRFile21,BRRFile21End
	dl $EF596F,$EF5D96,BRRFile22,BRRFile22End
	dl $EF5D9A,$EF63EF,BRRFile23,BRRFile23End
	dl $EF63F3,$EF66CD,BRRFile24,BRRFile24End
	dl $EF66D1,$EF66ED,BRRFile25,BRRFile25End
	dl $EF66F1,$EF6731,BRRFile26,BRRFile26End
	dl $EF6735,$EF6748,BRRFile27,BRRFile27End
	dl $EF674C,$EF69CC,BRRFile28,BRRFile28End
	dl $EF69D0,$EF720B,BRRFile29,BRRFile29End
	dl $EF720F,$EF72FA,BRRFile2A,BRRFile2AEnd
	dl $EF72FE,$EF7A2B,BRRFile2B,BRRFile2BEnd
	dl $EF7A2F,$EF8006,BRRFile2C,BRRFile2CEnd
	dl $EF800A,$EF818E,BRRFile2D,BRRFile2DEnd
	dl $EF8192,$EF8880,BRRFile2E,BRRFile2EEnd
	dl $EF8884,$EF90BF,BRRFile2F,BRRFile2FEnd
	dl $EF90C3,$EF90D6,BRRFile30,BRRFile30End
	dl $EF90DA,$EF943B,BRRFile31,BRRFile31End
	dl $EF943F,$EF9677,BRRFile32,BRRFile32End
	dl $EF967B,$EFA228,BRRFile33,BRRFile33End
	dl $EFA22C,$EFA7E8,BRRFile34,BRRFile34End
	dl $EFA7EC,$EFA81A,BRRFile35,BRRFile35End
	dl $EFA81E,$EFAC18,BRRFile36,BRRFile36End
	dl $EFAC1C,$EFAC4A,BRRFile37,BRRFile37End
	dl $EFAC4E,$EFAC7C,BRRFile38,BRRFile38End
	dl $EFAC80,$EFACAE,BRRFile39,BRRFile39End
	dl $EFACB2,$EFACE0,BRRFile3A,BRRFile3AEnd
	dl $EFACE4,$EFAD12,BRRFile3B,BRRFile3BEnd
	dl $EFAD16,$EFAD44,BRRFile3C,BRRFile3CEnd
	dl $EFAD48,$EFAD76,BRRFile3D,BRRFile3DEnd
	dl $EFAD7A,$EFADA8,BRRFile3E,BRRFile3EEnd
	dl $EFADAC,$EFADDA,BRRFile3F,BRRFile3FEnd
	dl $EFADDE,$EFAE0C,BRRFile40,BRRFile40End
	dl $EFAE10,$EFAE3E,BRRFile41,BRRFile41End
	dl $EFAE42,$EFAE70,BRRFile42,BRRFile42End
	dl $EFAE74,$EFAEA2,BRRFile43,BRRFile43End
	dl $EFAEA6,$EFAED4,BRRFile44,BRRFile44End
	dl $EFAED8,$EFAF06,BRRFile45,BRRFile45End
	dl $EFAF0A,$EFAF38,BRRFile46,BRRFile46End
	dl $EFAF3C,$EFAF6A,BRRFile47,BRRFile47End
	dl $EFAF6E,$EFAF9C,BRRFile48,BRRFile48End
	dl $EFAFA0,$EFAFCE,BRRFile49,BRRFile49End
	dl $EFAFD2,$EFB000,BRRFile4A,BRRFile4AEnd
	dl $EFB004,$EFB032,BRRFile4B,BRRFile4BEnd
	dl $EFB036,$EFB064,BRRFile4C,BRRFile4CEnd
	dl $EFB068,$EFB096,BRRFile4D,BRRFile4DEnd
	dl $EFB09A,$EFB0C8,BRRFile4E,BRRFile4EEnd
	dl $EFB0CC,$EFB0FA,BRRFile4F,BRRFile4FEnd
	dl $EFB0FE,$EFB11A,BRRFile50,BRRFile50End
	dl $EFB11E,$EFB13A,BRRFile51,BRRFile51End
	dl $EFB13E,$EFB15A,BRRFile52,BRRFile52End
	dl $EFB15E,$EFB17A,BRRFile53,BRRFile53End
	dl $EFB17E,$EFB19A,BRRFile54,BRRFile54End
	dl $EFB19E,$EFB1BA,BRRFile55,BRRFile55End
	dl $EFB1BE,$EFB1DA,BRRFile56,BRRFile56End
	dl $EFB1DE,$EFB1FA,BRRFile57,BRRFile57End
	dl $EFB1FE,$EFB21A,BRRFile58,BRRFile58End
	dl $EFB21E,$EFB23A,BRRFile59,BRRFile59End
	dl $EFB23E,$EFB26B,BRRFile5A,BRRFile5AEnd
	dl $EFB26F,$EFB29C,BRRFile5B,BRRFile5BEnd
	dl $EFB2A0,$EFB2CD,BRRFile5C,BRRFile5CEnd
	dl $EFB2D1,$EFB2FE,BRRFile5D,BRRFile5DEnd
	dl $EFB302,$EFB32F,BRRFile5E,BRRFile5EEnd
	dl $EFB333,$EFB360,BRRFile5F,BRRFile5FEnd
	dl $EFB364,$EFB391,BRRFile60,BRRFile60End
	dl $EFB395,$EFB3C2,BRRFile61,BRRFile61End
	dl $EFB3C6,$EFB3F3,BRRFile62,BRRFile62End
	dl $EFB3F7,$EFB424,BRRFile63,BRRFile63End
	dl $EFB428,$EFB455,BRRFile64,BRRFile64End
	dl $EFB459,$EFB486,BRRFile65,BRRFile65End
	dl $EFB48A,$EFB4B7,BRRFile66,BRRFile66End
	dl $EFB4BB,$EFB4E8,BRRFile67,BRRFile67End
	dl $EFB4EC,$EFB519,BRRFile68,BRRFile68End
	dl $EFB51D,$EFB54A,BRRFile69,BRRFile69End
	dl $EFB54E,$EFB57B,BRRFile6A,BRRFile6AEnd
	dl $EFB57F,$EFB5AC,BRRFile6B,BRRFile6BEnd
	dl $EFB5B0,$EFB5DD,BRRFile6C,BRRFile6CEnd
	dl $EFB5E1,$EFB60E,BRRFile6D,BRRFile6DEnd
	dl $EFB612,$EFB63F,BRRFile6E,BRRFile6EEnd
	dl $EFB643,$EFB670,BRRFile6F,BRRFile6FEnd
	dl $EFB674,$EFB6A1,BRRFile70,BRRFile70End
	dl $EFB6A5,$EFB6D2,BRRFile71,BRRFile71End
	dl $EFB6D6,$EFB703,BRRFile72,BRRFile72End
	dl $EFB707,$EFB734,BRRFile73,BRRFile73End
	dl $EFB738,$EFB765,BRRFile74,BRRFile74End
	dl $EFB769,$EFB796,BRRFile75,BRRFile75End
	dl $EFB79A,$EFB7C7,BRRFile76,BRRFile76End
	dl $EFB7CB,$EFB7F8,BRRFile77,BRRFile77End
	dl $EFB7FC,$EFB829,BRRFile78,BRRFile78End
	dl $EFB82D,$EFB85A,BRRFile79,BRRFile79End
	dl $EFB85E,$EFB912,BRRFile7A,BRRFile7AEnd
	dl $EFB916,$EFD404,BRRFile7B,BRRFile7BEnd
	dl $EFD408,$EFDB08,BRRFile7C,BRRFile7CEnd
	dl $EFDB0C,$EFE26F,BRRFile7D,BRRFile7DEnd
	dl $EFE273,$EFE8F5,BRRFile7E,BRRFile7EEnd
	dl $EFE8F9,$EFECBD,BRRFile7F,BRRFile7FEnd
	dl $EFECC1,$EFEDF4,BRRFile80,BRRFile80End
	dl $EFEDF8,$EFEEF5,BRRFile81,BRRFile81End
	dl $EFEEF9,$EFF035,BRRFile82,BRRFile82End
	dl $EFF039,$EFF11B,BRRFile83,BRRFile83End
	dl $EFF11F,$EFF894,BRRFile84,BRRFile84End
	dl $EFF898,$EFFAFC,BRRFile85,BRRFile85End
	dl $EFFB00,$EFFECD,BRRFile86,BRRFile86End
	dl $EFFED1,$F00162,BRRFile87,BRRFile87End
	dl $F00166,$F0062F,BRRFile88,BRRFile88End
	dl $F00633,$F00823,BRRFile89,BRRFile89End
	dl $F00827,$F009FC,BRRFile8A,BRRFile8AEnd
	dl $F00A00,$F00A1C,BRRFile8B,BRRFile8BEnd
	dl $F00A20,$F00FAF,BRRFile8C,BRRFile8CEnd
	dl $F00FB3,$F01674,BRRFile8D,BRRFile8DEnd
	dl $F01678,$F01B6E,BRRFile8E,BRRFile8EEnd
	dl $F01B72,$F01BA9,BRRFile8F,BRRFile8FEnd
	dl $F01BAD,$F02667,BRRFile90,BRRFile90End
	dl $F0266B,$F02800,BRRFile91,BRRFile91End
	dl $F02804,$F02988,BRRFile92,BRRFile92End
	dl $F0298C,$F02C2F,BRRFile93,BRRFile93End
	dl $F02C33,$F03A17,BRRFile94,BRRFile94End
	dl $F03A1B,$F03A5B,BRRFile95,BRRFile95End
	dl $F03A5F,$F03B1D,BRRFile96,BRRFile96End
	dl $F03B21,$F03D2B,BRRFile97,BRRFile97End
	dl $F03D2F,$F04854,BRRFile98,BRRFile98End
	dl $F04858,$F057E3,BRRFile99,BRRFile99End
	dl $F057E7,$F05FFD,BRRFile9A,BRRFile9AEnd
	dl $F06001,$F073F1,BRRFile9B,BRRFile9BEnd
	dl $F073F5,$F08A2D,BRRFile9C,BRRFile9CEnd
	dl $F08A31,$F09BFB,BRRFile9D,BRRFile9DEnd
	dl $F09BFF,$F0A157,BRRFile9E,BRRFile9EEnd
	dl $F0A15B,$F0A5FF,BRRFile9F,BRRFile9FEnd
	dl $F0A603,$F0AE2B,BRRFileA0,BRRFileA0End
	dl $F0AE2F,$F0B2B0,BRRFileA1,BRRFileA1End
	dl $F0B2B4,$F0B7FA,BRRFileA2,BRRFileA2End
	dl $F0B7FE,$F0BD45,BRRFileA3,BRRFileA3End
	dl $F0BD49,$F0C93E,BRRFileA4,BRRFileA4End
	dl $F0C942,$F0CD45,BRRFileA5,BRRFileA5End
	dl $F0CD49,$F0DC8C,BRRFileA6,BRRFileA6End
	dl $F0DC90,$F0F65E,BRRFileA7,BRRFileA7End
	dl $F0F662,$F1078A,BRRFileA8,BRRFileA8End
	dl $F1078E,$F10F26,BRRFileA9,BRRFileA9End
	dl $F10F2A,$F117C7,BRRFileAA,BRRFileAAEnd
	dl $F117CB,$F11EEE,BRRFileAB,BRRFileABEnd
	dl $F11EF2,$F11F0D,BRRFileAC,BRRFileACEnd
	dl $F11F11,$F12A9A,BRRFileAD,BRRFileADEnd
	dl $F12A9E,$F133B1,BRRFileAE,BRRFileAEEnd
	dl $F133B5,$F139DC,BRRFileAF,BRRFileAFEnd
	dl $F139E0,$F14B98,BRRFileB0,BRRFileB0End
	dl $F14B9C,$F14DA6,BRRFileB1,BRRFileB1End
	dl $F14DAA,$F15542,BRRFileB2,BRRFileB2End
	dl $F15546,$F15C0F,BRRFileB3,BRRFileB3End
	dl $F15C13,$F1663C,BRRFileB4,BRRFileB4End
	dl $F16640,$F16F1C,BRRFileB5,BRRFileB5End
	dl $F16F20,$F179D9,BRRFileB6,BRRFileB6End
	dl $F179DD,$F18004,BRRFileB7,BRRFileB7End
	dl $F18008,$F186E4,BRRFileB8,BRRFileB8End
	dl $F186E8,$F192E5,BRRFileB9,BRRFileB9End
	dl $F192E9,$F19304,BRRFileBA,BRRFileBAEnd
	dl $F19308,$F19311,BRRFileBB,BRRFileBBEnd
	dl $F19315,$F1946B,BRRFileBC,BRRFileBCEnd
	dl $F1946F,$F1A225,BRRFileBD,BRRFileBDEnd
	dl $F1A229,$F1A811,BRRFileBE,BRRFileBEEnd
	dl $F1A815,$F1AD5B,BRRFileBF,BRRFileBFEnd
	dl $F1AD5F,$F1B55A,BRRFileC0,BRRFileC0End
	dl $F1B55E,$F1B795,BRRFileC1,BRRFileC1End
	dl $F1B799,$F1B9D0,BRRFileC2,BRRFileC2End
	dl $F1B9D4,$F1BC0B,BRRFileC3,BRRFileC3End
	dl $F1BC0F,$F1C03F,BRRFileC4,BRRFileC4End
	dl $F1C043,$F1C916,BRRFileC5,BRRFileC5End
	dl $F1C91A,$F1CC05,BRRFileC6,BRRFileC6End
	dl $F1CC09,$F1CD4E,BRRFileC7,BRRFileC7End
	dl $F1CD52,$F1CFF6,BRRFileC8,BRRFileC8End
	dl $F1CFFA,$F1D190,BRRFileC9,BRRFileC9End
	dl $F1D194,$F1D68A,BRRFileCA,BRRFileCAEnd
	dl $F1D68E,$F1DF7C,BRRFileCB,BRRFileCBEnd
	dl $F1DF80,$F1E973,BRRFileCC,BRRFileCCEnd
	dl $F1E977,$F1EDA6,BRRFileCD,BRRFileCDEnd
	dl $F1EDAA,$F1F188,BRRFileCE,BRRFileCEEnd
	dl $F1F18C,$F1F195,BRRFileCF,BRRFileCFEnd
	dl $F1F199,$F1F337,BRRFileD0,BRRFileD0End
	dl $F1F33B,$F1F92C,BRRFileD1,BRRFileD1End
	dl $F1F930,$F20080,BRRFileD2,BRRFileD2End
	dl $F20084,$F202BB,BRRFileD3,BRRFileD3End
	dl $F202BF,$F218D4,BRRFileD4,BRRFileD4End
	dl $F218D8,$F21E5D,BRRFileD5,BRRFileD5End
	dl $F21E61,$F22132,BRRFileD6,BRRFileD6End
	dl $F22136,$F225B6,BRRFileD7,BRRFileD7End
	dl $F225BA,$F22C44,BRRFileD8,BRRFileD8End
	dl $F22C48,$F232D2,BRRFileD9,BRRFileD9End
	dl $F232D6,$F2357A,BRRFileDA,BRRFileDAEnd
BRRPointersEnd:

;--------------------------------------------------------------------

GFX_Sprite_PuftupSpike:
	db "GFX_Sprite_PuftupSpike.bin"
GFX_Sprite_PuftupSpikeEnd:
GFX_Sprite_Unknown1:
	db "GFX_Sprite_Unknown1.bin"
GFX_Sprite_Unknown1End:
GFX_Sprite_AirBubbles:
	db "GFX_Sprite_AirBubbles.bin"
GFX_Sprite_AirBubblesEnd:
GFX_Sprite_Sparkles:
	db "GFX_Sprite_Sparkles.bin"
GFX_Sprite_SparklesEnd:
GFX_Sprite_MetalHook:
	db "GFX_Sprite_MetalHook.bin"
GFX_Sprite_MetalHookEnd:
GFX_Sprite_CannonballPieces:
	db "GFX_Sprite_CannonballPieces.bin"
GFX_Sprite_CannonballPiecesEnd:
GFX_Sprite_EggShellPieces1:
	db "GFX_Sprite_EggShellPieces1.bin"
GFX_Sprite_EggShellPieces1End:
GFX_Sprite_EggShellPieces2:
	db "GFX_Sprite_EggShellPieces2.bin"
GFX_Sprite_EggShellPieces2End:
GFX_Sprite_Unknown2:
	db "GFX_Sprite_Unknown2.bin"
GFX_Sprite_Unknown2End:
GFX_Sprite_SquawksEgg:
	db "GFX_Sprite_SquawksEgg.bin"
GFX_Sprite_SquawksEggEnd:
GFX_Sprite_SmallSmokePuff:
	db "GFX_Sprite_SmallSmokePuff.bin"
GFX_Sprite_SmallSmokePuffEnd:
GFX_Sprite_CollectedKONGLetters:
	db "GFX_Sprite_CollectedKONGLetters.bin"
GFX_Sprite_CollectedKONGLettersEnd:
GFX_Layer1_Level_Castle:
	db "GFX_Layer1_Level_Castle.bin"
GFX_Layer1_Level_CastleEnd:
GFX_Layer2_Level_Castle:
	db "GFX_Layer2_Level_Castle.bin"
GFX_Layer2_Level_CastleEnd:
GFX_Layer3_GlimmersGalleon:
	db "GFX_Layer3_GlimmersGalleon.bin"
GFX_Layer3_GlimmersGalleonEnd:
GFX_Layer1_WebWoodsFog:
	db "GFX_Layer1_WebWoodsFog.bin"
GFX_Layer1_WebWoodsFogEnd:
GFX_Layer3_DialogueFont:
	db "GFX_Layer3_DialogueFont.bin"
GFX_Layer3_DialogueFontEnd:
GFX_Layer3_WindyWellLeaves:
	db "GFX_Layer3_WindyWellLeaves.bin"
GFX_Layer3_WindyWellLeavesEnd:
GFX_Layer2_Level_KrocodileKoreEnergyBeam:
	db "GFX_Layer2_Level_KrocodileKoreEnergyBeam.bin"
GFX_Layer2_Level_KrocodileKoreEnergyBeamEnd:
GFX_Layer1_SlowRain:
	db "GFX_Layer1_SlowRain.bin"
GFX_Layer1_SlowRainEnd:
GFX_Layer3_IceCave:
	db "GFX_Layer3_IceCave.bin"
GFX_Layer3_IceCaveEnd:
GFX_Layer2_KackleHand:
	db "GFX_Layer2_KackleHand.bin"
GFX_Layer2_KackleHandEnd:
GFX_Layer2_KackleHead:
	db "GFX_Layer2_KackleHead.bin"
GFX_Layer2_KackleHeadEnd:
GFX_Layer2_SmallLavaBubbles:
	db "GFX_Layer2_SmallLavaBubbles.bin"
GFX_Layer2_SmallLavaBubblesEnd:
GFX_Layer2_BeeLarva:
	db "GFX_Layer2_BeeLarva.bin"
GFX_Layer2_BeeLarvaEnd:
GFX_Layer2_Bee:
	db "GFX_Layer2_Bee.bin"
GFX_Layer2_BeeEnd:
GFX_Layer3_ShipDeck:
	db "GFX_Layer3_ShipDeck.bin"
GFX_Layer3_ShipDeckEnd:
GFX_FGBG_AnimatedCastleTiles:
	db "GFX_FGBG_AnimatedCastleTiles.bin"
GFX_FGBG_AnimatedCastleTilesEnd:
GFX_Layer1_FallingLeaves:
	db "GFX_Layer1_FallingLeaves.bin"
GFX_Layer1_FallingLeavesEnd:
GFX_Layer3_FastRain:
	db "GFX_Layer3_FastRain.bin"
GFX_Layer3_FastRainEnd:
GFX_Layer1_CopyrightScreen:
	db "GFX_Layer1_CopyrightScreen.bin"
GFX_Layer1_CopyrightScreenEnd:
GFX_Sprite_KleeverBonePiece:
	db "GFX_Sprite_KleeverBonePiece.bin"
GFX_Sprite_KleeverBonePieceEnd:
GFX_Sprite_FlyingKrocRoofPieces1:
	db "GFX_Sprite_FlyingKrocRoofPieces1.bin"
GFX_Sprite_FlyingKrocRoofPieces1End:
GFX_Sprite_BarrelPieces:
	db "GFX_Sprite_BarrelPieces.bin"
GFX_Sprite_BarrelPiecesEnd:
GFX_Layer2_GlimmersGalleonWindowBoards:
	db "GFX_Layer2_GlimmersGalleonWindowBoards.bin"
GFX_Layer2_GlimmersGalleonWindowBoardsEnd:
GFX_Layer1_LostWorldEnergyBeam:
	db "GFX_Layer1_LostWorldEnergyBeam.bin"
GFX_Layer1_LostWorldEnergyBeamEnd:
GFX_Layer1_MapKrocodileKore:
	db "GFX_Layer1_MapKrocodileKore.bin"
GFX_Layer1_MapKrocodileKoreEnd:
GFX_Sprite_SkullMapIcon:
	db "GFX_Sprite_SkullMapIcon.bin"
GFX_Sprite_SkullMapIconEnd:
GFX_Layer1_AnimatedPirateFlag:
	db "GFX_Layer1_AnimatedPirateFlag.bin"
GFX_Layer1_AnimatedPirateFlagEnd:
GFX_Sprite_DKCoinIcon:
	db "GFX_Sprite_DKCoinIcon.bin"
GFX_Sprite_DKCoinIconEnd:
GFX_Sprite_KremcoinIcon:
	db "GFX_Sprite_KremcoinIcon.bin"
GFX_Sprite_KremcoinIconEnd:
GFX_Sprite_ChestPieces:
	db "GFX_Sprite_ChestPieces.bin"
GFX_Sprite_ChestPiecesEnd:
GFX_Layer2_LargeLavaBubbles1:
	db "GFX_Layer2_LargeLavaBubbles1.bin"
GFX_Layer2_LargeLavaBubbles1End:
GFX_Layer2_LargeLavaBubbles2:
	db "GFX_Layer2_LargeLavaBubbles2.bin"
GFX_Layer2_LargeLavaBubbles2End:
GFX_Sprite_FlyingKrocRoofPieces2:
	db "GFX_Sprite_FlyingKrocRoofPieces2.bin"
GFX_Sprite_FlyingKrocRoofPieces2End:
GFX_Sprite_FlyingKrocRoofPieces3:
	db "GFX_Sprite_FlyingKrocRoofPieces3.bin"
GFX_Sprite_FlyingKrocRoofPieces3End:
GFX_Sprite_FlyingKrocRoofPieces4:
	db "GFX_Sprite_FlyingKrocRoofPieces4.bin"
GFX_Sprite_FlyingKrocRoofPieces4End:
GFX_Layer3_Level_Forest:
	db "GFX_Layer3_Level_Forest.bin"
GFX_Layer3_Level_ForestEnd:
GFX_Layer1_TheEnd:
	db "GFX_Layer1_TheEnd.bin"
GFX_Layer1_TheEndEnd:
GFX_Sprite_AreaNameFont:
	db "GFX_Sprite_AreaNameFont.bin"
GFX_Sprite_AreaNameFontEnd:
GFX_Sprite_OverworldArrows:
	db "GFX_Sprite_OverworldArrows.bin"
GFX_Sprite_OverworldArrowsEnd:
GFX_Sprite_MapIcons:
	db "GFX_Sprite_MapIcons.bin"
GFX_Sprite_MapIconsEnd:
GFX_Sprite_WaterDrop:
	db "GFX_Sprite_WaterDrop.bin"
GFX_Sprite_WaterDropEnd:
GFX_Sprite_FlyingKrocRoofPieces5:
	db "GFX_Sprite_FlyingKrocRoofPieces5.bin"
GFX_Sprite_FlyingKrocRoofPieces5End:
GFX_Sprite_HUDNumbers:
	db "GFX_Sprite_HUDNumbers.bin"
GFX_Sprite_HUDNumbersEnd:
GFX_Sprite_Bananas:
	db "GFX_Sprite_Bananas.bin"
GFX_Sprite_BananasEnd:
GFX_Sprite_CollectableStar:
	db "GFX_Sprite_CollectableStar.bin"
GFX_Sprite_CollectableStarEnd:

;--------------------------------------------------------------------

GFX_Diddy_Run1:
	db "GFX_Diddy_Run1.bin"
GFX_Diddy_Run1End:
GFX_Diddy_Run2:
	db "GFX_Diddy_Run2.bin"
GFX_Diddy_Run2End:
GFX_Diddy_Run3:
	db "GFX_Diddy_Run3.bin"
GFX_Diddy_Run3End:
GFX_Diddy_Run4:
	db "GFX_Diddy_Run4.bin"
GFX_Diddy_Run4End:
GFX_Diddy_Run5:
	db "GFX_Diddy_Run5.bin"
GFX_Diddy_Run5End:
GFX_Diddy_Run6:
	db "GFX_Diddy_Run6.bin"
GFX_Diddy_Run6End:
GFX_Diddy_Run7:
	db "GFX_Diddy_Run7.bin"
GFX_Diddy_Run7End:
GFX_Diddy_Run8:
	db "GFX_Diddy_Run8.bin"
GFX_Diddy_Run8End:
GFX_Diddy_Run9:
	db "GFX_Diddy_Run9.bin"
GFX_Diddy_Run9End:
GFX_Diddy_Run10:
	db "GFX_Diddy_Run10.bin"
GFX_Diddy_Run10End:
GFX_Diddy_Run11:
	db "GFX_Diddy_Run11.bin"
GFX_Diddy_Run11End:
GFX_Diddy_Run12:
	db "GFX_Diddy_Run12.bin"
GFX_Diddy_Run12End:
GFX_Diddy_Run13:
	db "GFX_Diddy_Run13.bin"
GFX_Diddy_Run13End:
GFX_BarrelCannon_AutoFire1:
	db "GFX_BarrelCannon_AutoFire1.bin"
GFX_BarrelCannon_AutoFire1End:
GFX_BarrelCannon_AutoFire2:
	db "GFX_BarrelCannon_AutoFire2.bin"
GFX_BarrelCannon_AutoFire2End:
GFX_BarrelCannon_AutoFire3:
	db "GFX_BarrelCannon_AutoFire3.bin"
GFX_BarrelCannon_AutoFire3End:
GFX_BarrelCannon_AutoFire4:
	db "GFX_BarrelCannon_AutoFire4.bin"
GFX_BarrelCannon_AutoFire4End:
GFX_BarrelCannon_AutoFire5:
	db "GFX_BarrelCannon_AutoFire5.bin"
GFX_BarrelCannon_AutoFire5End:
GFX_BarrelCannon_AutoFire6:
	db "GFX_BarrelCannon_AutoFire6.bin"
GFX_BarrelCannon_AutoFire6End:
GFX_BarrelCannon_AutoFire7:
	db "GFX_BarrelCannon_AutoFire7.bin"
GFX_BarrelCannon_AutoFire7End:
GFX_BarrelCannon_AutoFire8:
	db "GFX_BarrelCannon_AutoFire8.bin"
GFX_BarrelCannon_AutoFire8End:
GFX_BarrelCannon_AutoFire9:
	db "GFX_BarrelCannon_AutoFire9.bin"
GFX_BarrelCannon_AutoFire9End:
GFX_BarrelCannon_AutoFire10:
	db "GFX_BarrelCannon_AutoFire10.bin"
GFX_BarrelCannon_AutoFire10End:
GFX_BarrelCannon_AutoFire11:
	db "GFX_BarrelCannon_AutoFire11.bin"
GFX_BarrelCannon_AutoFire11End:
GFX_BarrelCannon_AutoFire12:
	db "GFX_BarrelCannon_AutoFire12.bin"
GFX_BarrelCannon_AutoFire12End:
GFX_BarrelCannon_AutoFire13:
	db "GFX_BarrelCannon_AutoFire13.bin"
GFX_BarrelCannon_AutoFire13End:
GFX_BarrelCannon_AutoFire14:
	db "GFX_BarrelCannon_AutoFire14.bin"
GFX_BarrelCannon_AutoFire14End:
GFX_BarrelCannon_AutoFire15:
	db "GFX_BarrelCannon_AutoFire15.bin"
GFX_BarrelCannon_AutoFire15End:
GFX_BarrelCannon_AutoFire16:
	db "GFX_BarrelCannon_AutoFire16.bin"
GFX_BarrelCannon_AutoFire16End:
GFX_Dixie_Run1:
	db "GFX_Dixie_Run1.bin"
GFX_Dixie_Run1End:
GFX_Dixie_Run2:
	db "GFX_Dixie_Run2.bin"
GFX_Dixie_Run2End:
GFX_Dixie_Run3:
	db "GFX_Dixie_Run3.bin"
GFX_Dixie_Run3End:
GFX_Dixie_Run4:
	db "GFX_Dixie_Run4.bin"
GFX_Dixie_Run4End:
GFX_Dixie_Run5:
	db "GFX_Dixie_Run5.bin"
GFX_Dixie_Run5End:
GFX_Dixie_Run6:
	db "GFX_Dixie_Run6.bin"
GFX_Dixie_Run6End:
GFX_Dixie_Run7:
	db "GFX_Dixie_Run7.bin"
GFX_Dixie_Run7End:
GFX_Dixie_Run8:
	db "GFX_Dixie_Run8.bin"
GFX_Dixie_Run8End:
GFX_Dixie_Run9:
	db "GFX_Dixie_Run9.bin"
GFX_Dixie_Run9End:
GFX_Dixie_Run10:
	db "GFX_Dixie_Run10.bin"
GFX_Dixie_Run10End:
GFX_Dixie_Run11:
	db "GFX_Dixie_Run11.bin"
GFX_Dixie_Run11End:
GFX_Dixie_Run12:
	db "GFX_Dixie_Run12.bin"
GFX_Dixie_Run12End:
GFX_Dixie_Run13:
	db "GFX_Dixie_Run13.bin"
GFX_Dixie_Run13End:
GFX_Dixie_Run14:
	db "GFX_Dixie_Run14.bin"
GFX_Dixie_Run14End:
GFX_Dixie_Run15:
	db "GFX_Dixie_Run15.bin"
GFX_Dixie_Run15End:
GFX_Dixie_Run16:
	db "GFX_Dixie_Run16.bin"
GFX_Dixie_Run16End:
GFX_Dixie_Walk1:
	db "GFX_Dixie_Walk1.bin"
GFX_Dixie_Walk1End:
GFX_Dixie_Walk2:
	db "GFX_Dixie_Walk2.bin"
GFX_Dixie_Walk2End:
GFX_Dixie_Walk3:
	db "GFX_Dixie_Walk3.bin"
GFX_Dixie_Walk3End:
GFX_Dixie_Walk4:
	db "GFX_Dixie_Walk4.bin"
GFX_Dixie_Walk4End:
GFX_Dixie_Walk5:
	db "GFX_Dixie_Walk5.bin"
GFX_Dixie_Walk5End:
GFX_Dixie_Walk6:
	db "GFX_Dixie_Walk6.bin"
GFX_Dixie_Walk6End:
GFX_Dixie_Walk7:
	db "GFX_Dixie_Walk7.bin"
GFX_Dixie_Walk7End:
GFX_Dixie_Walk8:
	db "GFX_Dixie_Walk8.bin"
GFX_Dixie_Walk8End:
GFX_Dixie_Walk9:
	db "GFX_Dixie_Walk9.bin"
GFX_Dixie_Walk9End:
GFX_Dixie_Walk10:
	db "GFX_Dixie_Walk10.bin"
GFX_Dixie_Walk10End:
GFX_Dixie_Walk11:
	db "GFX_Dixie_Walk11.bin"
GFX_Dixie_Walk11End:
GFX_Dixie_Walk12:
	db "GFX_Dixie_Walk12.bin"
GFX_Dixie_Walk12End:
GFX_Dixie_Walk13:
	db "GFX_Dixie_Walk13.bin"
GFX_Dixie_Walk13End:
GFX_Dixie_Walk14:
	db "GFX_Dixie_Walk14.bin"
GFX_Dixie_Walk14End:
GFX_Dixie_Walk15:
	db "GFX_Dixie_Walk15.bin"
GFX_Dixie_Walk15End:
GFX_Dixie_Walk16:
	db "GFX_Dixie_Walk16.bin"
GFX_Dixie_Walk16End:
GFX_Diddy_Walk1:
	db "GFX_Diddy_Walk1.bin"
GFX_Diddy_Walk1End:
GFX_Diddy_Walk2:
	db "GFX_Diddy_Walk2.bin"
GFX_Diddy_Walk2End:
GFX_Diddy_Walk3:
	db "GFX_Diddy_Walk3.bin"
GFX_Diddy_Walk3End:
GFX_Diddy_Walk4:
	db "GFX_Diddy_Walk4.bin"
GFX_Diddy_Walk4End:
GFX_Diddy_Walk5:
	db "GFX_Diddy_Walk5.bin"
GFX_Diddy_Walk5End:
GFX_Diddy_Walk6:
	db "GFX_Diddy_Walk6.bin"
GFX_Diddy_Walk6End:
GFX_Diddy_Walk7:
	db "GFX_Diddy_Walk7.bin"
GFX_Diddy_Walk7End:
GFX_Diddy_Walk8:
	db "GFX_Diddy_Walk8.bin"
GFX_Diddy_Walk8End:
GFX_Diddy_Walk9:
	db "GFX_Diddy_Walk9.bin"
GFX_Diddy_Walk9End:
GFX_Diddy_Walk10:
	db "GFX_Diddy_Walk10.bin"
GFX_Diddy_Walk10End:
GFX_Diddy_Walk11:
	db "GFX_Diddy_Walk11.bin"
GFX_Diddy_Walk11End:
GFX_Diddy_Walk12:
	db "GFX_Diddy_Walk12.bin"
GFX_Diddy_Walk12End:
GFX_Diddy_Walk13:
	db "GFX_Diddy_Walk13.bin"
GFX_Diddy_Walk13End:
GFX_Diddy_Walk14:
	db "GFX_Diddy_Walk14.bin"
GFX_Diddy_Walk14End:
GFX_Diddy_Walk15:
	db "GFX_Diddy_Walk15.bin"
GFX_Diddy_Walk15End:
GFX_Diddy_Walk16:
	db "GFX_Diddy_Walk16.bin"
GFX_Diddy_Walk16End:
GFX_Dixie_StandIdle1:
	db "GFX_Dixie_StandIdle1.bin"
GFX_Dixie_StandIdle1End:
GFX_Dixie_Jump1:
	db "GFX_Dixie_Jump1.bin"
GFX_Dixie_Jump1End:
GFX_Dixie_Jump2:
	db "GFX_Dixie_Jump2.bin"
GFX_Dixie_Jump2End:
GFX_Dixie_Jump3:
	db "GFX_Dixie_Jump3.bin"
GFX_Dixie_Jump3End:
GFX_Dixie_Jump4:
	db "GFX_Dixie_Jump4.bin"
GFX_Dixie_Jump4End:
GFX_Dixie_Jump5:
	db "GFX_Dixie_Jump5.bin"
GFX_Dixie_Jump5End:
GFX_Dixie_Jump6:
	db "GFX_Dixie_Jump6.bin"
GFX_Dixie_Jump6End:
GFX_Dixie_Jump7:
	db "GFX_Dixie_Jump7.bin"
GFX_Dixie_Jump7End:
GFX_Dixie_Jump8:
	db "GFX_Dixie_Jump8.bin"
GFX_Dixie_Jump8End:
GFX_Dixie_Jump9:
	db "GFX_Dixie_Jump9.bin"
GFX_Dixie_Jump9End:
GFX_Dixie_Jump10:
	db "GFX_Dixie_Jump10.bin"
GFX_Dixie_Jump10End:
GFX_Dixie_Jump11:
	db "GFX_Dixie_Jump11.bin"
GFX_Dixie_Jump11End:
GFX_Dixie_Jump12:
	db "GFX_Dixie_Jump12.bin"
GFX_Dixie_Jump12End:
GFX_Dixie_Jump13:
	db "GFX_Dixie_Jump13.bin"
GFX_Dixie_Jump13End:
GFX_Dixie_Jump14:
	db "GFX_Dixie_Jump14.bin"
GFX_Dixie_Jump14End:
GFX_Dixie_Jump15:
	db "GFX_Dixie_Jump15.bin"
GFX_Dixie_Jump15End:
GFX_Dixie_Jump16:
	db "GFX_Dixie_Jump16.bin"
GFX_Dixie_Jump16End:
GFX_Dixie_Jump17:
	db "GFX_Dixie_Jump17.bin"
GFX_Dixie_Jump17End:
GFX_Dixie_Jump18:
	db "GFX_Dixie_Jump18.bin"
GFX_Dixie_Jump18End:
GFX_Dixie_Jump19:
	db "GFX_Dixie_Jump19.bin"
GFX_Dixie_Jump19End:
GFX_Dixie_Jump20:
	db "GFX_Dixie_Jump20.bin"
GFX_Dixie_Jump20End:
GFX_Dixie_Jump21:
	db "GFX_Dixie_Jump21.bin"
GFX_Dixie_Jump21End:
GFX_Dixie_Jump22:
	db "GFX_Dixie_Jump22.bin"
GFX_Dixie_Jump22End:
GFX_Dixie_Jump23:
	db "GFX_Dixie_Jump23.bin"
GFX_Dixie_Jump23End:
GFX_Dixie_Jump24:
	db "GFX_Dixie_Jump24.bin"
GFX_Dixie_Jump24End:
GFX_Dixie_Jump25:
	db "GFX_Dixie_Jump25.bin"
GFX_Dixie_Jump25End:
GFX_Dixie_Jump26:
	db "GFX_Dixie_Jump26.bin"
GFX_Dixie_Jump26End:
GFX_Dixie_Jump27:
	db "GFX_Dixie_Jump27.bin"
GFX_Dixie_Jump27End:
GFX_Dixie_DrinkJuiceBox1:
	db "GFX_Dixie_DrinkJuiceBox1.bin"
GFX_Dixie_DrinkJuiceBox1End:
GFX_Dixie_DrinkJuiceBox2:
	db "GFX_Dixie_DrinkJuiceBox2.bin"
GFX_Dixie_DrinkJuiceBox2End:
GFX_Dixie_DrinkJuiceBox3:
	db "GFX_Dixie_DrinkJuiceBox3.bin"
GFX_Dixie_DrinkJuiceBox3End:
GFX_Dixie_DrinkJuiceBox4:
	db "GFX_Dixie_DrinkJuiceBox4.bin"
GFX_Dixie_DrinkJuiceBox4End:
GFX_Dixie_DrinkJuiceBox5:
	db "GFX_Dixie_DrinkJuiceBox5.bin"
GFX_Dixie_DrinkJuiceBox5End:
GFX_Dixie_DrinkJuiceBox6:
	db "GFX_Dixie_DrinkJuiceBox6.bin"
GFX_Dixie_DrinkJuiceBox6End:
GFX_Dixie_DrinkJuiceBox7:
	db "GFX_Dixie_DrinkJuiceBox7.bin"
GFX_Dixie_DrinkJuiceBox7End:
GFX_Dixie_DrinkJuiceBox8:
	db "GFX_Dixie_DrinkJuiceBox8.bin"
GFX_Dixie_DrinkJuiceBox8End:
GFX_Dixie_DrinkJuiceBox9:
	db "GFX_Dixie_DrinkJuiceBox9.bin"
GFX_Dixie_DrinkJuiceBox9End:
GFX_Dixie_DrinkJuiceBox10:
	db "GFX_Dixie_DrinkJuiceBox10.bin"
GFX_Dixie_DrinkJuiceBox10End:
GFX_Dixie_DrinkJuiceBox11:
	db "GFX_Dixie_DrinkJuiceBox11.bin"
GFX_Dixie_DrinkJuiceBox11End:
GFX_Dixie_DrinkJuiceBox12:
	db "GFX_Dixie_DrinkJuiceBox12.bin"
GFX_Dixie_DrinkJuiceBox12End:
GFX_Dixie_DrinkJuiceBox13:
	db "GFX_Dixie_DrinkJuiceBox13.bin"
GFX_Dixie_DrinkJuiceBox13End:
GFX_Dixie_DrinkJuiceBox14:
	db "GFX_Dixie_DrinkJuiceBox14.bin"
GFX_Dixie_DrinkJuiceBox14End:
GFX_Dixie_DrinkJuiceBox15:
	db "GFX_Dixie_DrinkJuiceBox15.bin"
GFX_Dixie_DrinkJuiceBox15End:
GFX_Dixie_DrinkJuiceBox16:
	db "GFX_Dixie_DrinkJuiceBox16.bin"
GFX_Dixie_DrinkJuiceBox16End:
GFX_Dixie_DrinkJuiceBox17:
	db "GFX_Dixie_DrinkJuiceBox17.bin"
GFX_Dixie_DrinkJuiceBox17End:
GFX_Dixie_DrinkJuiceBox18:
	db "GFX_Dixie_DrinkJuiceBox18.bin"
GFX_Dixie_DrinkJuiceBox18End:
GFX_Dixie_DrinkJuiceBox19:
	db "GFX_Dixie_DrinkJuiceBox19.bin"
GFX_Dixie_DrinkJuiceBox19End:
GFX_Dixie_DrinkJuiceBox20:
	db "GFX_Dixie_DrinkJuiceBox20.bin"
GFX_Dixie_DrinkJuiceBox20End:
GFX_Dixie_DrinkJuiceBox21:
	db "GFX_Dixie_DrinkJuiceBox21.bin"
GFX_Dixie_DrinkJuiceBox21End:
GFX_Dixie_DrinkJuiceBox22:
	db "GFX_Dixie_DrinkJuiceBox22.bin"
GFX_Dixie_DrinkJuiceBox22End:
GFX_Dixie_DrinkJuiceBox23:
	db "GFX_Dixie_DrinkJuiceBox23.bin"
GFX_Dixie_DrinkJuiceBox23End:
GFX_Dixie_DrinkJuiceBox24:
	db "GFX_Dixie_DrinkJuiceBox24.bin"
GFX_Dixie_DrinkJuiceBox24End:
GFX_Dixie_DrinkJuiceBox25:
	db "GFX_Dixie_DrinkJuiceBox25.bin"
GFX_Dixie_DrinkJuiceBox25End:
GFX_Dixie_DrinkJuiceBox26:
	db "GFX_Dixie_DrinkJuiceBox26.bin"
GFX_Dixie_DrinkJuiceBox26End:
GFX_Dixie_DrinkJuiceBox27:
	db "GFX_Dixie_DrinkJuiceBox27.bin"
GFX_Dixie_DrinkJuiceBox27End:
GFX_Dixie_DrinkJuiceBox28:
	db "GFX_Dixie_DrinkJuiceBox28.bin"
GFX_Dixie_DrinkJuiceBox28End:
GFX_Dixie_DrinkJuiceBox29:
	db "GFX_Dixie_DrinkJuiceBox29.bin"
GFX_Dixie_DrinkJuiceBox29End:
GFX_Dixie_DrinkJuiceBox30:
	db "GFX_Dixie_DrinkJuiceBox30.bin"
GFX_Dixie_DrinkJuiceBox30End:
GFX_Dixie_Roll1:
	db "GFX_Dixie_Roll1.bin"
GFX_Dixie_Roll1End:
GFX_Dixie_Roll2:
	db "GFX_Dixie_Roll2.bin"
GFX_Dixie_Roll2End:
GFX_Dixie_Roll3:
	db "GFX_Dixie_Roll3.bin"
GFX_Dixie_Roll3End:
GFX_Dixie_Roll4:
	db "GFX_Dixie_Roll4.bin"
GFX_Dixie_Roll4End:
GFX_Dixie_Roll5:
	db "GFX_Dixie_Roll5.bin"
GFX_Dixie_Roll5End:
GFX_Dixie_Roll6:
	db "GFX_Dixie_Roll6.bin"
GFX_Dixie_Roll6End:
GFX_Dixie_Roll7:
	db "GFX_Dixie_Roll7.bin"
GFX_Dixie_Roll7End:
GFX_Dixie_Roll8:
	db "GFX_Dixie_Roll8.bin"
GFX_Dixie_Roll8End:
GFX_Dixie_Roll9:
	db "GFX_Dixie_Roll9.bin"
GFX_Dixie_Roll9End:
GFX_Dixie_Roll10:
	db "GFX_Dixie_Roll10.bin"
GFX_Dixie_Roll10End:
GFX_Dixie_Roll11:
	db "GFX_Dixie_Roll11.bin"
GFX_Dixie_Roll11End:
GFX_Dixie_Roll12:
	db "GFX_Dixie_Roll12.bin"
GFX_Dixie_Roll12End:
GFX_Dixie_Roll13:
	db "GFX_Dixie_Roll13.bin"
GFX_Dixie_Roll13End:
GFX_Dixie_Roll14:
	db "GFX_Dixie_Roll14.bin"
GFX_Dixie_Roll14End:
GFX_Dixie_Roll15:
	db "GFX_Dixie_Roll15.bin"
GFX_Dixie_Roll15End:
GFX_Dixie_Roll16:
	db "GFX_Dixie_Roll16.bin"
GFX_Dixie_Roll16End:
GFX_Dixie_Roll17:
	db "GFX_Dixie_Roll17.bin"
GFX_Dixie_Roll17End:
GFX_Dixie_Roll18:
	db "GFX_Dixie_Roll18.bin"
GFX_Dixie_Roll18End:
GFX_Dixie_Roll19:
	db "GFX_Dixie_Roll19.bin"
GFX_Dixie_Roll19End:
GFX_Dixie_Roll20:
	db "GFX_Dixie_Roll20.bin"
GFX_Dixie_Roll20End:
GFX_Dixie_Hover1:
	db "GFX_Dixie_Hover1.bin"
GFX_Dixie_Hover1End:
GFX_Dixie_Hover2:
	db "GFX_Dixie_Hover2.bin"
GFX_Dixie_Hover2End:
GFX_Dixie_Hover3:
	db "GFX_Dixie_Hover3.bin"
GFX_Dixie_Hover3End:
GFX_Dixie_Hover4:
	db "GFX_Dixie_Hover4.bin"
GFX_Dixie_Hover4End:
GFX_Dixie_Hover5:
	db "GFX_Dixie_Hover5.bin"
GFX_Dixie_Hover5End:
GFX_Dixie_Hover6:
	db "GFX_Dixie_Hover6.bin"
GFX_Dixie_Hover6End:
GFX_Dixie_Hover7:
	db "GFX_Dixie_Hover7.bin"
GFX_Dixie_Hover7End:
GFX_Dixie_Hover8:
	db "GFX_Dixie_Hover8.bin"
GFX_Dixie_Hover8End:
GFX_Dixie_Hover9:
	db "GFX_Dixie_Hover9.bin"
GFX_Dixie_Hover9End:
GFX_Dixie_Hover10:
	db "GFX_Dixie_Hover10.bin"
GFX_Dixie_Hover10End:
GFX_Dixie_Hover11:
	db "GFX_Dixie_Hover11.bin"
GFX_Dixie_Hover11End:
GFX_Dixie_Hover12:
	db "GFX_Dixie_Hover12.bin"
GFX_Dixie_Hover12End:
GFX_Dixie_Turn1:
	db "GFX_Dixie_Turn1.bin"
GFX_Dixie_Turn1End:
GFX_Dixie_Turn2:
	db "GFX_Dixie_Turn2.bin"
GFX_Dixie_Turn2End:
GFX_Dixie_Hurt1:
	db "GFX_Dixie_Hurt1.bin"
GFX_Dixie_Hurt1End:
GFX_Dixie_Hurt2:
	db "GFX_Dixie_Hurt2.bin"
GFX_Dixie_Hurt2End:
GFX_Dixie_Hurt3:
	db "GFX_Dixie_Hurt3.bin"
GFX_Dixie_Hurt3End:
GFX_Dixie_Hurt4:
	db "GFX_Dixie_Hurt4.bin"
GFX_Dixie_Hurt4End:
GFX_Dixie_Hurt5:
	db "GFX_Dixie_Hurt5.bin"
GFX_Dixie_Hurt5End:
GFX_Dixie_Hurt6:
	db "GFX_Dixie_Hurt6.bin"
GFX_Dixie_Hurt6End:
GFX_Dixie_Hurt7:
	db "GFX_Dixie_Hurt7.bin"
GFX_Dixie_Hurt7End:
GFX_Dixie_Hurt8:
	db "GFX_Dixie_Hurt8.bin"
GFX_Dixie_Hurt8End:
GFX_Dixie_Hurt9:
	db "GFX_Dixie_Hurt9.bin"
GFX_Dixie_Hurt9End:
GFX_Dixie_Hurt10:
	db "GFX_Dixie_Hurt10.bin"
GFX_Dixie_Hurt10End:
GFX_Dixie_Hurt11:
	db "GFX_Dixie_Hurt11.bin"
GFX_Dixie_Hurt11End:
GFX_Dixie_Hurt12:
	db "GFX_Dixie_Hurt12.bin"
GFX_Dixie_Hurt12End:
GFX_Dixie_Hurt13:
	db "GFX_Dixie_Hurt13.bin"
GFX_Dixie_Hurt13End:
GFX_Dixie_Hurt14:
	db "GFX_Dixie_Hurt14.bin"
GFX_Dixie_Hurt14End:
GFX_Dixie_Hurt15:
	db "GFX_Dixie_Hurt15.bin"
GFX_Dixie_Hurt15End:
GFX_Dixie_Hurt16:
	db "GFX_Dixie_Hurt16.bin"
GFX_Dixie_Hurt16End:
GFX_Dixie_Hurt17:
	db "GFX_Dixie_Hurt17.bin"
GFX_Dixie_Hurt17End:
GFX_Dixie_Hurt18:
	db "GFX_Dixie_Hurt18.bin"
GFX_Dixie_Hurt18End:
GFX_Dixie_Hurt19:
	db "GFX_Dixie_Hurt19.bin"
GFX_Dixie_Hurt19End:
GFX_Dixie_Hurt20:
	db "GFX_Dixie_Hurt20.bin"
GFX_Dixie_Hurt20End:
GFX_Dixie_Hurt21:
	db "GFX_Dixie_Hurt21.bin"
GFX_Dixie_Hurt21End:
GFX_Dixie_Hurt22:
	db "GFX_Dixie_Hurt22.bin"
GFX_Dixie_Hurt22End:
GFX_Dixie_Hurt23:
	db "GFX_Dixie_Hurt23.bin"
GFX_Dixie_Hurt23End:
GFX_Dixie_Hurt24:
	db "GFX_Dixie_Hurt24.bin"
GFX_Dixie_Hurt24End:
GFX_Dixie_Hurt25:
	db "GFX_Dixie_Hurt25.bin"
GFX_Dixie_Hurt25End:
GFX_Dixie_Hurt26:
	db "GFX_Dixie_Hurt26.bin"
GFX_Dixie_Hurt26End:
GFX_Dixie_Hurt27:
	db "GFX_Dixie_Hurt27.bin"
GFX_Dixie_Hurt27End:
GFX_Dixie_Hurt28:
	db "GFX_Dixie_Hurt28.bin"
GFX_Dixie_Hurt28End:
GFX_Dixie_Hurt29:
	db "GFX_Dixie_Hurt29.bin"
GFX_Dixie_Hurt29End:
GFX_DiddyIdleSway1:
	db "GFX_DiddyIdleSway1.bin"
GFX_DiddyIdleSway1End:
GFX_DiddyIdleSway2:
	db "GFX_DiddyIdleSway2.bin"
GFX_DiddyIdleSway2End:
GFX_DiddyIdleSway3:
	db "GFX_DiddyIdleSway3.bin"
GFX_DiddyIdleSway3End:
GFX_DiddyIdleSway4:
	db "GFX_DiddyIdleSway4.bin"
GFX_DiddyIdleSway4End:
GFX_DiddyIdleSway5:
	db "GFX_DiddyIdleSway5.bin"
GFX_DiddyIdleSway5End:
GFX_DiddyIdleSway6:
	db "GFX_DiddyIdleSway6.bin"
GFX_DiddyIdleSway6End:
GFX_DiddyIdleSway7:
	db "GFX_DiddyIdleSway7.bin"
GFX_DiddyIdleSway7End:
GFX_DiddyIdleSway8:
	db "GFX_DiddyIdleSway8.bin"
GFX_DiddyIdleSway8End:
GFX_DiddyIdleSway9:
	db "GFX_DiddyIdleSway9.bin"
GFX_DiddyIdleSway9End:
GFX_DiddyIdleSway10:
	db "GFX_DiddyIdleSway10.bin"
GFX_DiddyIdleSway10End:
GFX_DiddyIdleSway11:
	db "GFX_DiddyIdleSway11.bin"
GFX_DiddyIdleSway11End:
GFX_DiddyIdleSway12:
	db "GFX_DiddyIdleSway12.bin"
GFX_DiddyIdleSway12End:
GFX_DiddyIdleSway13:
	db "GFX_DiddyIdleSway13.bin"
GFX_DiddyIdleSway13End:
GFX_DiddyIdleSway14:
	db "GFX_DiddyIdleSway14.bin"
GFX_DiddyIdleSway14End:
GFX_DiddyIdleSway15:
	db "GFX_DiddyIdleSway15.bin"
GFX_DiddyIdleSway15End:
GFX_DiddyIdleSway16:
	db "GFX_DiddyIdleSway16.bin"
GFX_DiddyIdleSway16End:
GFX_DiddyIdleSway17:
	db "GFX_DiddyIdleSway17.bin"
GFX_DiddyIdleSway17End:
GFX_DiddyIdleSway18:
	db "GFX_DiddyIdleSway18.bin"
GFX_DiddyIdleSway18End:
GFX_DiddyIdleSway19:
	db "GFX_DiddyIdleSway19.bin"
GFX_DiddyIdleSway19End:
GFX_DiddyIdleSway20:
	db "GFX_DiddyIdleSway20.bin"
GFX_DiddyIdleSway20End:
GFX_DiddyIdleSway21:
	db "GFX_DiddyIdleSway21.bin"
GFX_DiddyIdleSway21End:
GFX_DiddyIdleSway22:
	db "GFX_DiddyIdleSway22.bin"
GFX_DiddyIdleSway22End:
GFX_Diddy_Jump1:
	db "GFX_Diddy_Jump1.bin"
GFX_Diddy_Jump1End:
GFX_Diddy_Jump2:
	db "GFX_Diddy_Jump2.bin"
GFX_Diddy_Jump2End:
GFX_Diddy_Jump3:
	db "GFX_Diddy_Jump3.bin"
GFX_Diddy_Jump3End:
GFX_Diddy_Jump4:
	db "GFX_Diddy_Jump4.bin"
GFX_Diddy_Jump4End:
GFX_Diddy_Jump5:
	db "GFX_Diddy_Jump5.bin"
GFX_Diddy_Jump5End:
GFX_Diddy_Jump6:
	db "GFX_Diddy_Jump6.bin"
GFX_Diddy_Jump6End:
GFX_Diddy_Jump7:
	db "GFX_Diddy_Jump7.bin"
GFX_Diddy_Jump7End:
GFX_Diddy_Jump8:
	db "GFX_Diddy_Jump8.bin"
GFX_Diddy_Jump8End:
GFX_Diddy_Jump9:
	db "GFX_Diddy_Jump9.bin"
GFX_Diddy_Jump9End:
GFX_Diddy_Jump10:
	db "GFX_Diddy_Jump10.bin"
GFX_Diddy_Jump10End:
GFX_Diddy_Jump11:
	db "GFX_Diddy_Jump11.bin"
GFX_Diddy_Jump11End:
GFX_Diddy_Jump12:
	db "GFX_Diddy_Jump12.bin"
GFX_Diddy_Jump12End:
GFX_Diddy_Jump13:
	db "GFX_Diddy_Jump13.bin"
GFX_Diddy_Jump13End:
GFX_Diddy_Jump14:
	db "GFX_Diddy_Jump14.bin"
GFX_Diddy_Jump14End:
GFX_Diddy_Jump15:
	db "GFX_Diddy_Jump15.bin"
GFX_Diddy_Jump15End:
GFX_Diddy_Jump16:
	db "GFX_Diddy_Jump16.bin"
GFX_Diddy_Jump16End:
GFX_Diddy_Jump17:
	db "GFX_Diddy_Jump17.bin"
GFX_Diddy_Jump17End:
GFX_Diddy_Jump18:
	db "GFX_Diddy_Jump18.bin"
GFX_Diddy_Jump18End:
GFX_Diddy_Jump19:
	db "GFX_Diddy_Jump19.bin"
GFX_Diddy_Jump19End:
GFX_Diddy_Jump20:
	db "GFX_Diddy_Jump20.bin"
GFX_Diddy_Jump20End:
GFX_Diddy_Roll1:
	db "GFX_Diddy_Roll1.bin"
GFX_Diddy_Roll1End:
GFX_Diddy_Roll2:
	db "GFX_Diddy_Roll2.bin"
GFX_Diddy_Roll2End:
GFX_Diddy_Roll3:
	db "GFX_Diddy_Roll3.bin"
GFX_Diddy_Roll3End:
GFX_Diddy_Roll4:
	db "GFX_Diddy_Roll4.bin"
GFX_Diddy_Roll4End:
GFX_Diddy_Roll5:
	db "GFX_Diddy_Roll5.bin"
GFX_Diddy_Roll5End:
GFX_Diddy_Roll6:
	db "GFX_Diddy_Roll6.bin"
GFX_Diddy_Roll6End:
GFX_Diddy_Roll7:
	db "GFX_Diddy_Roll7.bin"
GFX_Diddy_Roll7End:
GFX_Diddy_Roll8:
	db "GFX_Diddy_Roll8.bin"
GFX_Diddy_Roll8End:
GFX_Diddy_Roll9:
	db "GFX_Diddy_Roll9.bin"
GFX_Diddy_Roll9End:
GFX_Diddy_Roll10:
	db "GFX_Diddy_Roll10.bin"
GFX_Diddy_Roll10End:
GFX_Diddy_Roll11:
	db "GFX_Diddy_Roll11.bin"
GFX_Diddy_Roll11End:
GFX_Diddy_Roll12:
	db "GFX_Diddy_Roll12.bin"
GFX_Diddy_Roll12End:
GFX_Diddy_Roll13:
	db "GFX_Diddy_Roll13.bin"
GFX_Diddy_Roll13End:
GFX_Diddy_Roll14:
	db "GFX_Diddy_Roll14.bin"
GFX_Diddy_Roll14End:
GFX_Diddy_Roll15:
	db "GFX_Diddy_Roll15.bin"
GFX_Diddy_Roll15End:
GFX_Diddy_Roll16:
	db "GFX_Diddy_Roll16.bin"
GFX_Diddy_Roll16End:
GFX_Diddy_Roll17:
	db "GFX_Diddy_Roll17.bin"
GFX_Diddy_Roll17End:
GFX_Diddy_Roll18:
	db "GFX_Diddy_Roll18.bin"
GFX_Diddy_Roll18End:
GFX_Diddy_Roll19:
	db "GFX_Diddy_Roll19.bin"
GFX_Diddy_Roll19End:
GFX_Diddy_Roll20:
	db "GFX_Diddy_Roll20.bin"
GFX_Diddy_Roll20End:
GFX_Dixie_StandIdle2:
	db "GFX_Dixie_StandIdle2.bin"
GFX_Dixie_StandIdle2End:
GFX_Dixie_StandIdle3:
	db "GFX_Dixie_StandIdle3.bin"
GFX_Dixie_StandIdle3End:
GFX_Dixie_StandIdle4:
	db "GFX_Dixie_StandIdle4.bin"
GFX_Dixie_StandIdle4End:
GFX_Dixie_StandIdle5:
	db "GFX_Dixie_StandIdle5.bin"
GFX_Dixie_StandIdle5End:
GFX_Dixie_StandIdle6:
	db "GFX_Dixie_StandIdle6.bin"
GFX_Dixie_StandIdle6End:
GFX_Dixie_StandIdle7:
	db "GFX_Dixie_StandIdle7.bin"
GFX_Dixie_StandIdle7End:
GFX_Dixie_StandIdle8:
	db "GFX_Dixie_StandIdle8.bin"
GFX_Dixie_StandIdle8End:
GFX_Dixie_StandIdle9:
	db "GFX_Dixie_StandIdle9.bin"
GFX_Dixie_StandIdle9End:
GFX_Dixie_StandIdle10:
	db "GFX_Dixie_StandIdle10.bin"
GFX_Dixie_StandIdle10End:
GFX_Dixie_StandIdle11:
	db "GFX_Dixie_StandIdle11.bin"
GFX_Dixie_StandIdle11End:
GFX_Dixie_StandIdle12:
	db "GFX_Dixie_StandIdle12.bin"
GFX_Dixie_StandIdle12End:
GFX_Dixie_StandIdle13:
	db "GFX_Dixie_StandIdle13.bin"
GFX_Dixie_StandIdle13End:
GFX_Dixie_StandIdle14:
	db "GFX_Dixie_StandIdle14.bin"
GFX_Dixie_StandIdle14End:
GFX_Dixie_StandIdle15:
	db "GFX_Dixie_StandIdle15.bin"
GFX_Dixie_StandIdle15End:
GFX_Dixie_StandIdle16:
	db "GFX_Dixie_StandIdle16.bin"
GFX_Dixie_StandIdle16End:
GFX_Dixie_Duck1:
	db "GFX_Dixie_Duck1.bin"
GFX_Dixie_Duck1End:
GFX_Dixie_Duck2:
	db "GFX_Dixie_Duck2.bin"
GFX_Dixie_Duck2End:
GFX_Dixie_Duck3:
	db "GFX_Dixie_Duck3.bin"
GFX_Dixie_Duck3End:
GFX_Dixie_Duck4:
	db "GFX_Dixie_Duck4.bin"
GFX_Dixie_Duck4End:
GFX_Dixie_Duck5:
	db "GFX_Dixie_Duck5.bin"
GFX_Dixie_Duck5End:
GFX_Dixie_Duck6:
	db "GFX_Dixie_Duck6.bin"
GFX_Dixie_Duck6End:
GFX_Dixie_Duck7:
	db "GFX_Dixie_Duck7.bin"
GFX_Dixie_Duck7End:
GFX_Dixie_Duck8:
	db "GFX_Dixie_Duck8.bin"
GFX_Dixie_Duck8End:
GFX_Diddy_Duck1:
	db "GFX_Diddy_Duck1.bin"
GFX_Diddy_Duck1End:
GFX_Diddy_Duck2:
	db "GFX_Diddy_Duck2.bin"
GFX_Diddy_Duck2End:
GFX_Diddy_Duck3:
	db "GFX_Diddy_Duck3.bin"
GFX_Diddy_Duck3End:
GFX_Diddy_Duck4:
	db "GFX_Diddy_Duck4.bin"
GFX_Diddy_Duck4End:
GFX_Diddy_Duck5:
	db "GFX_Diddy_Duck5.bin"
GFX_Diddy_Duck5End:
GFX_Diddy_Duck6:
	db "GFX_Diddy_Duck6.bin"
GFX_Diddy_Duck6End:
GFX_Diddy_Duck7:
	db "GFX_Diddy_Duck7.bin"
GFX_Diddy_Duck7End:
GFX_Diddy_Duck8:
	db "GFX_Diddy_Duck8.bin"
GFX_Diddy_Duck8End:
GFX_Diddy_Duck9:
	db "GFX_Diddy_Duck9.bin"
GFX_Diddy_Duck9End:
GFX_Diddy_Duck10:
	db "GFX_Diddy_Duck10.bin"
GFX_Diddy_Duck10End:
GFX_Diddy_Duck11:
	db "GFX_Diddy_Duck11.bin"
GFX_Diddy_Duck11End:
GFX_Diddy_Duck12:
	db "GFX_Diddy_Duck12.bin"
GFX_Diddy_Duck12End:
GFX_Diddy_Duck13:
	db "GFX_Diddy_Duck13.bin"
GFX_Diddy_Duck13End:
GFX_Diddy_Hurt1:
	db "GFX_Diddy_Hurt1.bin"
GFX_Diddy_Hurt1End:
GFX_Diddy_Hurt2:
	db "GFX_Diddy_Hurt2.bin"
GFX_Diddy_Hurt2End:
GFX_Diddy_Hurt3:
	db "GFX_Diddy_Hurt3.bin"
GFX_Diddy_Hurt3End:
GFX_Diddy_Hurt4:
	db "GFX_Diddy_Hurt4.bin"
GFX_Diddy_Hurt4End:
GFX_Diddy_Hurt5:
	db "GFX_Diddy_Hurt5.bin"
GFX_Diddy_Hurt5End:
GFX_Diddy_Hurt6:
	db "GFX_Diddy_Hurt6.bin"
GFX_Diddy_Hurt6End:
GFX_Diddy_Hurt7:
	db "GFX_Diddy_Hurt7.bin"
GFX_Diddy_Hurt7End:
GFX_Diddy_Hurt8:
	db "GFX_Diddy_Hurt8.bin"
GFX_Diddy_Hurt8End:
GFX_Diddy_Hurt9:
	db "GFX_Diddy_Hurt9.bin"
GFX_Diddy_Hurt9End:
GFX_Diddy_Hurt10:
	db "GFX_Diddy_Hurt10.bin"
GFX_Diddy_Hurt10End:
GFX_Diddy_Hurt11:
	db "GFX_Diddy_Hurt11.bin"
GFX_Diddy_Hurt11End:
GFX_Diddy_Hurt12:
	db "GFX_Diddy_Hurt12.bin"
GFX_Diddy_Hurt12End:
GFX_Diddy_Hurt13:
	db "GFX_Diddy_Hurt13.bin"
GFX_Diddy_Hurt13End:
GFX_Diddy_Hurt14:
	db "GFX_Diddy_Hurt14.bin"
GFX_Diddy_Hurt14End:
GFX_Diddy_Hurt15:
	db "GFX_Diddy_Hurt15.bin"
GFX_Diddy_Hurt15End:
GFX_Diddy_Hurt16:
	db "GFX_Diddy_Hurt16.bin"
GFX_Diddy_Hurt16End:
GFX_Diddy_Hurt17:
	db "GFX_Diddy_Hurt17.bin"
GFX_Diddy_Hurt17End:
GFX_Diddy_Hurt18:
	db "GFX_Diddy_Hurt18.bin"
GFX_Diddy_Hurt18End:
GFX_Diddy_Hurt19:
	db "GFX_Diddy_Hurt19.bin"
GFX_Diddy_Hurt19End:
GFX_Diddy_Hurt20:
	db "GFX_Diddy_Hurt20.bin"
GFX_Diddy_Hurt20End:
GFX_Squitter_Walk1:
	db "GFX_Squitter_Walk1.bin"
GFX_Squitter_Walk1End:
GFX_Squitter_Walk2:
	db "GFX_Squitter_Walk2.bin"
GFX_Squitter_Walk2End:
GFX_Squitter_Walk3:
	db "GFX_Squitter_Walk3.bin"
GFX_Squitter_Walk3End:
GFX_Squitter_Walk4:
	db "GFX_Squitter_Walk4.bin"
GFX_Squitter_Walk4End:
GFX_Squitter_Walk5:
	db "GFX_Squitter_Walk5.bin"
GFX_Squitter_Walk5End:
GFX_Squitter_Walk6:
	db "GFX_Squitter_Walk6.bin"
GFX_Squitter_Walk6End:
GFX_Squitter_Walk7:
	db "GFX_Squitter_Walk7.bin"
GFX_Squitter_Walk7End:
GFX_Squitter_Walk8:
	db "GFX_Squitter_Walk8.bin"
GFX_Squitter_Walk8End:
GFX_Squitter_Walk9:
	db "GFX_Squitter_Walk9.bin"
GFX_Squitter_Walk9End:
GFX_Squitter_Walk10:
	db "GFX_Squitter_Walk10.bin"
GFX_Squitter_Walk10End:
GFX_Squitter_Walk11:
	db "GFX_Squitter_Walk11.bin"
GFX_Squitter_Walk11End:
GFX_Squitter_Walk12:
	db "GFX_Squitter_Walk12.bin"
GFX_Squitter_Walk12End:
GFX_Squitter_Walk13:
	db "GFX_Squitter_Walk13.bin"
GFX_Squitter_Walk13End:
GFX_Squitter_Walk14:
	db "GFX_Squitter_Walk14.bin"
GFX_Squitter_Walk14End:
GFX_Squitter_Walk15:
	db "GFX_Squitter_Walk15.bin"
GFX_Squitter_Walk15End:
GFX_Squitter_Walk16:
	db "GFX_Squitter_Walk16.bin"
GFX_Squitter_Walk16End:
GFX_Squitter_Stand1:
	db "GFX_Squitter_Stand1.bin"
GFX_Squitter_Stand1End:
GFX_Squitter_Stand2:
	db "GFX_Squitter_Stand2.bin"
GFX_Squitter_Stand2End:
GFX_Squitter_Stand3:
	db "GFX_Squitter_Stand3.bin"
GFX_Squitter_Stand3End:
GFX_Squitter_Jump1:
	db "GFX_Squitter_Jump1.bin"
GFX_Squitter_Jump1End:
GFX_Squitter_Jump2:
	db "GFX_Squitter_Jump2.bin"
GFX_Squitter_Jump2End:
GFX_Squitter_Jump3:
	db "GFX_Squitter_Jump3.bin"
GFX_Squitter_Jump3End:
GFX_Squitter_Jump4:
	db "GFX_Squitter_Jump4.bin"
GFX_Squitter_Jump4End:
GFX_Squitter_Jump5:
	db "GFX_Squitter_Jump5.bin"
GFX_Squitter_Jump5End:
GFX_Squitter_Jump6:
	db "GFX_Squitter_Jump6.bin"
GFX_Squitter_Jump6End:
GFX_WoodenBox_Idle:
	db "GFX_WoodenBox_Idle.bin"
GFX_WoodenBox_IdleEnd:
GFX_WoodenBox_Grabbed1:
	db "GFX_WoodenBox_Grabbed1.bin"
GFX_WoodenBox_Grabbed1End:
GFX_WoodenBox_Grabbed2:
	db "GFX_WoodenBox_Grabbed2.bin"
GFX_WoodenBox_Grabbed2End:
GFX_Dixie_SitOnAnimalBuddy1:
	db "GFX_Dixie_SitOnAnimalBuddy1.bin"
GFX_Dixie_SitOnAnimalBuddy1End:
GFX_Dixie_SitOnAnimalBuddy2:
	db "GFX_Dixie_SitOnAnimalBuddy2.bin"
GFX_Dixie_SitOnAnimalBuddy2End:
GFX_Dixie_SitOnAnimalBuddy3:
	db "GFX_Dixie_SitOnAnimalBuddy3.bin"
GFX_Dixie_SitOnAnimalBuddy3End:
GFX_Dixie_SitOnAnimalBuddy4:
	db "GFX_Dixie_SitOnAnimalBuddy4.bin"
GFX_Dixie_SitOnAnimalBuddy4End:
GFX_Dixie_SitOnAnimalBuddy5:
	db "GFX_Dixie_SitOnAnimalBuddy5.bin"
GFX_Dixie_SitOnAnimalBuddy5End:
GFX_Dixie_SitOnAnimalBuddy6:
	db "GFX_Dixie_SitOnAnimalBuddy6.bin"
GFX_Dixie_SitOnAnimalBuddy6End:
GFX_Dixie_SitOnAnimalBuddy7:
	db "GFX_Dixie_SitOnAnimalBuddy7.bin"
GFX_Dixie_SitOnAnimalBuddy7End:
GFX_Dixie_SitOnAnimalBuddy8:
	db "GFX_Dixie_SitOnAnimalBuddy8.bin"
GFX_Dixie_SitOnAnimalBuddy8End:
GFX_Dixie_SitOnAnimalBuddy9:
	db "GFX_Dixie_SitOnAnimalBuddy9.bin"
GFX_Dixie_SitOnAnimalBuddy9End:
GFX_Dixie_SitOnAnimalBuddy10:
	db "GFX_Dixie_SitOnAnimalBuddy10.bin"
GFX_Dixie_SitOnAnimalBuddy10End:
GFX_Dixie_SitOnAnimalBuddy11:
	db "GFX_Dixie_SitOnAnimalBuddy11.bin"
GFX_Dixie_SitOnAnimalBuddy11End:
GFX_Dixie_SitOnAnimalBuddy12:
	db "GFX_Dixie_SitOnAnimalBuddy12.bin"
GFX_Dixie_SitOnAnimalBuddy12End:
GFX_ThrowBarrel_Idle:
	db "GFX_ThrowBarrel_Idle.bin"
GFX_ThrowBarrel_IdleEnd:
GFX_ThrowBarrel_Grabbed1:
	db "GFX_ThrowBarrel_Grabbed1.bin"
GFX_ThrowBarrel_Grabbed1End:
GFX_ThrowBarrel_Grabbed2:
	db "GFX_ThrowBarrel_Grabbed2.bin"
GFX_ThrowBarrel_Grabbed2End:
GFX_ThrowBarrel_Grabbed3:
	db "GFX_ThrowBarrel_Grabbed3.bin"
GFX_ThrowBarrel_Grabbed3End:
GFX_ThrowBarrel_Grabbed4:
	db "GFX_ThrowBarrel_Grabbed4.bin"
GFX_ThrowBarrel_Grabbed4End:
GFX_TNTBarrel_Idle:
	db "GFX_TNTBarrel_Idle.bin"
GFX_TNTBarrel_IdleEnd:
GFX_DKBarrel_Letters1:
	db "GFX_DKBarrel_Letters1.bin"
GFX_DKBarrel_Letters1End:
GFX_DKBarrel_Letters2:
	db "GFX_DKBarrel_Letters2.bin"
GFX_DKBarrel_Letters2End:
GFX_DKBarrel_Letters3:
	db "GFX_DKBarrel_Letters3.bin"
GFX_DKBarrel_Letters3End:
GFX_DKBarrel_Letters4:
	db "GFX_DKBarrel_Letters4.bin"
GFX_DKBarrel_Letters4End:
GFX_DKBarrel_Letters5:
	db "GFX_DKBarrel_Letters5.bin"
GFX_DKBarrel_Letters5End:
GFX_DKBarrel_Letters6:
	db "GFX_DKBarrel_Letters6.bin"
GFX_DKBarrel_Letters6End:
GFX_DKBarrel_Letters7:
	db "GFX_DKBarrel_Letters7.bin"
GFX_DKBarrel_Letters7End:
GFX_DKBarrel_Letters8:
	db "GFX_DKBarrel_Letters8.bin"
GFX_DKBarrel_Letters8End:
GFX_DKBarrel_Barrel1:
	db "GFX_DKBarrel_Barrel1.bin"
GFX_DKBarrel_Barrel1End:
GFX_DKBarrel_Barrel2:
	db "GFX_DKBarrel_Barrel2.bin"
GFX_DKBarrel_Barrel2End:
GFX_DKBarrel_Barrel3:
	db "GFX_DKBarrel_Barrel3.bin"
GFX_DKBarrel_Barrel3End:
GFX_DKBarrel_Barrel4:
	db "GFX_DKBarrel_Barrel4.bin"
GFX_DKBarrel_Barrel4End:
GFX_DKBarrel_Barrel5:
	db "GFX_DKBarrel_Barrel5.bin"
GFX_DKBarrel_Barrel5End:
GFX_DKBarrel_Barrel6:
	db "GFX_DKBarrel_Barrel6.bin"
GFX_DKBarrel_Barrel6End:
GFX_DKBarrel_Barrel7:
	db "GFX_DKBarrel_Barrel7.bin"
GFX_DKBarrel_Barrel7End:
GFX_DKBarrel_Barrel8:
	db "GFX_DKBarrel_Barrel8.bin"
GFX_DKBarrel_Barrel8End:
GFX_BarrelCannon_Base1:
	db "GFX_BarrelCannon_Base1.bin"
GFX_BarrelCannon_Base1End:
GFX_BarrelCannon_Base2:
	db "GFX_BarrelCannon_Base2.bin"
GFX_BarrelCannon_Base2End:
GFX_BarrelCannon_Base3:
	db "GFX_BarrelCannon_Base3.bin"
GFX_BarrelCannon_Base3End:
GFX_BarrelCannon_Base4:
	db "GFX_BarrelCannon_Base4.bin"
GFX_BarrelCannon_Base4End:
GFX_BarrelCannon_Base5:
	db "GFX_BarrelCannon_Base5.bin"
GFX_BarrelCannon_Base5End:
GFX_BarrelCannon_Base6:
	db "GFX_BarrelCannon_Base6.bin"
GFX_BarrelCannon_Base6End:
GFX_BarrelCannon_Base7:
	db "GFX_BarrelCannon_Base7.bin"
GFX_BarrelCannon_Base7End:
GFX_BarrelCannon_Base8:
	db "GFX_BarrelCannon_Base8.bin"
GFX_BarrelCannon_Base8End:
GFX_BarrelCannon_Base9:
	db "GFX_BarrelCannon_Base9.bin"
GFX_BarrelCannon_Base9End:
GFX_BarrelCannon_Base10:
	db "GFX_BarrelCannon_Base10.bin"
GFX_BarrelCannon_Base10End:
GFX_BarrelCannon_Base11:
	db "GFX_BarrelCannon_Base11.bin"
GFX_BarrelCannon_Base11End:
GFX_BarrelCannon_Base12:
	db "GFX_BarrelCannon_Base12.bin"
GFX_BarrelCannon_Base12End:
GFX_BarrelCannon_Base13:
	db "GFX_BarrelCannon_Base13.bin"
GFX_BarrelCannon_Base13End:
GFX_BarrelCannon_Base14:
	db "GFX_BarrelCannon_Base14.bin"
GFX_BarrelCannon_Base14End:
GFX_BarrelCannon_Base15:
	db "GFX_BarrelCannon_Base15.bin"
GFX_BarrelCannon_Base15End:
GFX_BarrelCannon_Base16:
	db "GFX_BarrelCannon_Base16.bin"
GFX_BarrelCannon_Base16End:
GFX_ThrowBarrel_Thrown1:
	db "GFX_ThrowBarrel_Thrown1.bin"
GFX_ThrowBarrel_Thrown1End:
GFX_ThrowBarrel_Thrown2:
	db "GFX_ThrowBarrel_Thrown2.bin"
GFX_ThrowBarrel_Thrown2End:
GFX_ThrowBarrel_Thrown3:
	db "GFX_ThrowBarrel_Thrown3.bin"
GFX_ThrowBarrel_Thrown3End:
GFX_ThrowBarrel_Thrown4:
	db "GFX_ThrowBarrel_Thrown4.bin"
GFX_ThrowBarrel_Thrown4End:
GFX_ThrowBarrel_Thrown5:
	db "GFX_ThrowBarrel_Thrown5.bin"
GFX_ThrowBarrel_Thrown5End:
GFX_ThrowBarrel_Thrown6:
	db "GFX_ThrowBarrel_Thrown6.bin"
GFX_ThrowBarrel_Thrown6End:
GFX_ThrowBarrel_Thrown7:
	db "GFX_ThrowBarrel_Thrown7.bin"
GFX_ThrowBarrel_Thrown7End:
GFX_ThrowBarrel_Thrown8:
	db "GFX_ThrowBarrel_Thrown8.bin"
GFX_ThrowBarrel_Thrown8End:
GFX_Klomp_Walk1:
	db "GFX_Klomp_Walk1.bin"
GFX_Klomp_Walk1End:
GFX_Klomp_Walk2:
	db "GFX_Klomp_Walk2.bin"
GFX_Klomp_Walk2End:
GFX_Klomp_Walk3:
	db "GFX_Klomp_Walk3.bin"
GFX_Klomp_Walk3End:
GFX_Klomp_Walk4:
	db "GFX_Klomp_Walk4.bin"
GFX_Klomp_Walk4End:
GFX_Klomp_Walk5:
	db "GFX_Klomp_Walk5.bin"
GFX_Klomp_Walk5End:
GFX_Klomp_Walk6:
	db "GFX_Klomp_Walk6.bin"
GFX_Klomp_Walk6End:
GFX_Klomp_Walk7:
	db "GFX_Klomp_Walk7.bin"
GFX_Klomp_Walk7End:
GFX_Klomp_Walk8:
	db "GFX_Klomp_Walk8.bin"
GFX_Klomp_Walk8End:
GFX_Klomp_Walk9:
	db "GFX_Klomp_Walk9.bin"
GFX_Klomp_Walk9End:
GFX_Kannon_Walk1:
	db "GFX_Kannon_Walk1.bin"
GFX_Kannon_Walk1End:
GFX_Kannon_Walk2:
	db "GFX_Kannon_Walk2.bin"
GFX_Kannon_Walk2End:
GFX_Kannon_Walk3:
	db "GFX_Kannon_Walk3.bin"
GFX_Kannon_Walk3End:
GFX_CheckpointBarrel_Idle1:
	db "GFX_CheckpointBarrel_Idle1.bin"
GFX_CheckpointBarrel_Idle1End:
GFX_CheckpointBarrel_Idle2:
	db "GFX_CheckpointBarrel_Idle2.bin"
GFX_CheckpointBarrel_Idle2End:
GFX_CheckpointBarrel_Idle3:
	db "GFX_CheckpointBarrel_Idle3.bin"
GFX_CheckpointBarrel_Idle3End:
GFX_CheckpointBarrel_Idle4:
	db "GFX_CheckpointBarrel_Idle4.bin"
GFX_CheckpointBarrel_Idle4End:
GFX_CheckpointBarrel_Idle5:
	db "GFX_CheckpointBarrel_Idle5.bin"
GFX_CheckpointBarrel_Idle5End:
GFX_CheckpointBarrel_Idle6:
	db "GFX_CheckpointBarrel_Idle6.bin"
GFX_CheckpointBarrel_Idle6End:
GFX_CheckpointBarrel_Idle7:
	db "GFX_CheckpointBarrel_Idle7.bin"
GFX_CheckpointBarrel_Idle7End:
GFX_CheckpointBarrel_Idle8:
	db "GFX_CheckpointBarrel_Idle8.bin"
GFX_CheckpointBarrel_Idle8End:
GFX_Chest_Idle:
	db "GFX_Chest_Idle.bin"
GFX_Chest_IdleEnd:
GFX_InvincibilityBarrel_Idle:
	db "GFX_InvincibilityBarrel_Idle.bin"
GFX_InvincibilityBarrel_IdleEnd:
GFX_Hook_Idle:
	db "GFX_Hook_Idle.bin"
GFX_Hook_IdleEnd:
GFX_AnimalBuddyBox_Rambi:
	db "GFX_AnimalBuddyBox_Rambi.bin"
GFX_AnimalBuddyBox_RambiEnd:
GFX_AnimalBuddyBox_Squawks:
	db "GFX_AnimalBuddyBox_Squawks.bin"
GFX_AnimalBuddyBox_SquawksEnd:
GFX_AnimalBuddyBox_Enguarde:
	db "GFX_AnimalBuddyBox_Enguarde.bin"
GFX_AnimalBuddyBox_EnguardeEnd:
GFX_AnimalBuddyBox_Rattly:
	db "GFX_AnimalBuddyBox_Rattly.bin"
GFX_AnimalBuddyBox_RattlyEnd:
GFX_AnimalBuddyBox_Squitter:
	db "GFX_AnimalBuddyBox_Squitter.bin"
GFX_AnimalBuddyBox_SquitterEnd:
GFX_AnimalBuddyBox_Open:
	db "GFX_AnimalBuddyBox_Open.bin"
GFX_AnimalBuddyBox_OpenEnd:
GFX_BonusCannon_Idle:
	db "GFX_BonusCannon_Idle.bin"
GFX_BonusCannon_IdleEnd:
GFX_Cannonball_Thrown1:
	db "GFX_Cannonball_Thrown1.bin"
GFX_Cannonball_Thrown1End:
GFX_Cannonball_Thrown2:
	db "GFX_Cannonball_Thrown2.bin"
GFX_Cannonball_Thrown2End:
GFX_Cannonball_Thrown3:
	db "GFX_Cannonball_Thrown3.bin"
GFX_Cannonball_Thrown3End:
GFX_Cannonball_Thrown4:
	db "GFX_Cannonball_Thrown4.bin"
GFX_Cannonball_Thrown4End:
GFX_Dixie_Pickup1:
	db "GFX_Dixie_Pickup1.bin"
GFX_Dixie_Pickup1End:
GFX_Dixie_Pickup2:
	db "GFX_Dixie_Pickup2.bin"
GFX_Dixie_Pickup2End:
GFX_Dixie_Pickup3:
	db "GFX_Dixie_Pickup3.bin"
GFX_Dixie_Pickup3End:
GFX_Dixie_Pickup4:
	db "GFX_Dixie_Pickup4.bin"
GFX_Dixie_Pickup4End:
GFX_Dixie_Pickup5:
	db "GFX_Dixie_Pickup5.bin"
GFX_Dixie_Pickup5End:
GFX_Dixie_Pickup6:
	db "GFX_Dixie_Pickup6.bin"
GFX_Dixie_Pickup6End:
GFX_Dixie_Pickup7:
	db "GFX_Dixie_Pickup7.bin"
GFX_Dixie_Pickup7End:
GFX_Dixie_Pickup8:
	db "GFX_Dixie_Pickup8.bin"
GFX_Dixie_Pickup8End:
GFX_Dixie_Pickup9:
	db "GFX_Dixie_Pickup9.bin"
GFX_Dixie_Pickup9End:
GFX_Dixie_Pickup10:
	db "GFX_Dixie_Pickup10.bin"
GFX_Dixie_Pickup10End:
GFX_Dixie_Pickup11:
	db "GFX_Dixie_Pickup11.bin"
GFX_Dixie_Pickup11End:
GFX_Dixie_Pickup12:
	db "GFX_Dixie_Pickup12.bin"
GFX_Dixie_Pickup12End:
GFX_Dixie_Pickup13:
	db "GFX_Dixie_Pickup13.bin"
GFX_Dixie_Pickup13End:
GFX_Dixie_Throw1:
	db "GFX_Dixie_Throw1.bin"
GFX_Dixie_Throw1End:
GFX_Dixie_Throw2:
	db "GFX_Dixie_Throw2.bin"
GFX_Dixie_Throw2End:
GFX_Dixie_Throw3:
	db "GFX_Dixie_Throw3.bin"
GFX_Dixie_Throw3End:
GFX_Dixie_Throw4:
	db "GFX_Dixie_Throw4.bin"
GFX_Dixie_Throw4End:
GFX_Dixie_Throw5:
	db "GFX_Dixie_Throw5.bin"
GFX_Dixie_Throw5End:
GFX_Dixie_Throw6:
	db "GFX_Dixie_Throw6.bin"
GFX_Dixie_Throw6End:
GFX_Dixie_Throw7:
	db "GFX_Dixie_Throw7.bin"
GFX_Dixie_Throw7End:
GFX_Dixie_Throw8:
	db "GFX_Dixie_Throw8.bin"
GFX_Dixie_Throw8End:
GFX_Dixie_Throw9:
	db "GFX_Dixie_Throw9.bin"
GFX_Dixie_Throw9End:
GFX_Dixie_Throw10:
	db "GFX_Dixie_Throw10.bin"
GFX_Dixie_Throw10End:
GFX_Dixie_Throw11:
	db "GFX_Dixie_Throw11.bin"
GFX_Dixie_Throw11End:
GFX_Dixie_Throw12:
	db "GFX_Dixie_Throw12.bin"
GFX_Dixie_Throw12End:
GFX_Dixie_Throw13:
	db "GFX_Dixie_Throw13.bin"
GFX_Dixie_Throw13End:
GFX_Dixie_Throw14:
	db "GFX_Dixie_Throw14.bin"
GFX_Dixie_Throw14End:
GFX_Dixie_Throw15:
	db "GFX_Dixie_Throw15.bin"
GFX_Dixie_Throw15End:
GFX_Dixie_Throw16:
	db "GFX_Dixie_Throw16.bin"
GFX_Dixie_Throw16End:
GFX_Dixie_Throw17:
	db "GFX_Dixie_Throw17.bin"
GFX_Dixie_Throw17End:
GFX_Dixie_Throw18:
	db "GFX_Dixie_Throw18.bin"
GFX_Dixie_Throw18End:
GFX_Dixie_Throw19:
	db "GFX_Dixie_Throw19.bin"
GFX_Dixie_Throw19End:
GFX_Dixie_Throw20:
	db "GFX_Dixie_Throw20.bin"
GFX_Dixie_Throw20End:
GFX_Dixie_Throw21:
	db "GFX_Dixie_Throw21.bin"
GFX_Dixie_Throw21End:
GFX_Shuri_Idle1:
	db "GFX_Shuri_Idle1.bin"
GFX_Shuri_Idle1End:
GFX_Shuri_Idle2:
	db "GFX_Shuri_Idle2.bin"
GFX_Shuri_Idle2End:
GFX_Shuri_Idle3:
	db "GFX_Shuri_Idle3.bin"
GFX_Shuri_Idle3End:
GFX_Shuri_Idle4:
	db "GFX_Shuri_Idle4.bin"
GFX_Shuri_Idle4End:
GFX_Shuri_Idle5:
	db "GFX_Shuri_Idle5.bin"
GFX_Shuri_Idle5End:
GFX_Shuri_Idle6:
	db "GFX_Shuri_Idle6.bin"
GFX_Shuri_Idle6End:
GFX_Shuri_Idle7:
	db "GFX_Shuri_Idle7.bin"
GFX_Shuri_Idle7End:
GFX_Shuri_Idle8:
	db "GFX_Shuri_Idle8.bin"
GFX_Shuri_Idle8End:
GFX_Diddy_Pickup1:
	db "GFX_Diddy_Pickup1.bin"
GFX_Diddy_Pickup1End:
GFX_Diddy_Pickup2:
	db "GFX_Diddy_Pickup2.bin"
GFX_Diddy_Pickup2End:
GFX_Diddy_Pickup3:
	db "GFX_Diddy_Pickup3.bin"
GFX_Diddy_Pickup3End:
GFX_Diddy_Pickup4:
	db "GFX_Diddy_Pickup4.bin"
GFX_Diddy_Pickup4End:
GFX_Diddy_Pickup5:
	db "GFX_Diddy_Pickup5.bin"
GFX_Diddy_Pickup5End:
GFX_Diddy_HoldWalk1:
	db "GFX_Diddy_HoldWalk1.bin"
GFX_Diddy_HoldWalk1End:
GFX_Diddy_HoldWalk2:
	db "GFX_Diddy_HoldWalk2.bin"
GFX_Diddy_HoldWalk2End:
GFX_Diddy_HoldWalk3:
	db "GFX_Diddy_HoldWalk3.bin"
GFX_Diddy_HoldWalk3End:
GFX_Diddy_HoldWalk4:
	db "GFX_Diddy_HoldWalk4.bin"
GFX_Diddy_HoldWalk4End:
GFX_Diddy_HoldWalk5:
	db "GFX_Diddy_HoldWalk5.bin"
GFX_Diddy_HoldWalk5End:
GFX_Diddy_HoldWalk6:
	db "GFX_Diddy_HoldWalk6.bin"
GFX_Diddy_HoldWalk6End:
GFX_Diddy_HoldWalk7:
	db "GFX_Diddy_HoldWalk7.bin"
GFX_Diddy_HoldWalk7End:
GFX_Diddy_HoldWalk8:
	db "GFX_Diddy_HoldWalk8.bin"
GFX_Diddy_HoldWalk8End:
GFX_Diddy_HoldWalk9:
	db "GFX_Diddy_HoldWalk9.bin"
GFX_Diddy_HoldWalk9End:
GFX_Diddy_Throw1:
	db "GFX_Diddy_Throw1.bin"
GFX_Diddy_Throw1End:
GFX_Diddy_Throw2:
	db "GFX_Diddy_Throw2.bin"
GFX_Diddy_Throw2End:
GFX_Diddy_Throw3:
	db "GFX_Diddy_Throw3.bin"
GFX_Diddy_Throw3End:
GFX_Diddy_Throw4:
	db "GFX_Diddy_Throw4.bin"
GFX_Diddy_Throw4End:
GFX_Diddy_Throw5:
	db "GFX_Diddy_Throw5.bin"
GFX_Diddy_Throw5End:
GFX_Diddy_Throw6:
	db "GFX_Diddy_Throw6.bin"
GFX_Diddy_Throw6End:
GFX_Diddy_Throw7:
	db "GFX_Diddy_Throw7.bin"
GFX_Diddy_Throw7End:
GFX_Diddy_Throw8:
	db "GFX_Diddy_Throw8.bin"
GFX_Diddy_Throw8End:
GFX_Diddy_Throw9:
	db "GFX_Diddy_Throw9.bin"
GFX_Diddy_Throw9End:
GFX_Diddy_Throw10:
	db "GFX_Diddy_Throw10.bin"
GFX_Diddy_Throw10End:
GFX_Diddy_Throw11:
	db "GFX_Diddy_Throw11.bin"
GFX_Diddy_Throw11End:
GFX_Diddy_Throw12:
	db "GFX_Diddy_Throw12.bin"
GFX_Diddy_Throw12End:
GFX_Diddy_Throw13:
	db "GFX_Diddy_Throw13.bin"
GFX_Diddy_Throw13End:
GFX_Diddy_Throw14:
	db "GFX_Diddy_Throw14.bin"
GFX_Diddy_Throw14End:
GFX_Shuri_Spin1:
	db "GFX_Shuri_Spin1.bin"
GFX_Shuri_Spin1End:
GFX_Shuri_Spin2:
	db "GFX_Shuri_Spin2.bin"
GFX_Shuri_Spin2End:
GFX_Shuri_Spin3:
	db "GFX_Shuri_Spin3.bin"
GFX_Shuri_Spin3End:
GFX_Shuri_Spin4:
	db "GFX_Shuri_Spin4.bin"
GFX_Shuri_Spin4End:
GFX_Shuri_Spin5:
	db "GFX_Shuri_Spin5.bin"
GFX_Shuri_Spin5End:
GFX_Shuri_Spin6:
	db "GFX_Shuri_Spin6.bin"
GFX_Shuri_Spin6End:
GFX_Shuri_Spin7:
	db "GFX_Shuri_Spin7.bin"
GFX_Shuri_Spin7End:
GFX_Shuri_Spin8:
	db "GFX_Shuri_Spin8.bin"
GFX_Shuri_Spin8End:
GFX_Shuri_Spin9:
	db "GFX_Shuri_Spin9.bin"
GFX_Shuri_Spin9End:
GFX_Shuri_Spin10:
	db "GFX_Shuri_Spin10.bin"
GFX_Shuri_Spin10End:
GFX_Shuri_Spin11:
	db "GFX_Shuri_Spin11.bin"
GFX_Shuri_Spin11End:
GFX_Shuri_Spin12:
	db "GFX_Shuri_Spin12.bin"
GFX_Shuri_Spin12End:
GFX_Shuri_Spin13:
	db "GFX_Shuri_Spin13.bin"
GFX_Shuri_Spin13End:
GFX_Shuri_Spin14:
	db "GFX_Shuri_Spin14.bin"
GFX_Shuri_Spin14End:
GFX_Kruncha_Walk1:
	db "GFX_Kruncha_Walk1.bin"
GFX_Kruncha_Walk1End:
GFX_Kruncha_Walk2:
	db "GFX_Kruncha_Walk2.bin"
GFX_Kruncha_Walk2End:
GFX_Kruncha_Walk3:
	db "GFX_Kruncha_Walk3.bin"
GFX_Kruncha_Walk3End:
GFX_Kruncha_Walk4:
	db "GFX_Kruncha_Walk4.bin"
GFX_Kruncha_Walk4End:
GFX_Kruncha_Walk5:
	db "GFX_Kruncha_Walk5.bin"
GFX_Kruncha_Walk5End:
GFX_Kruncha_Walk6:
	db "GFX_Kruncha_Walk6.bin"
GFX_Kruncha_Walk6End:
GFX_Kruncha_Walk7:
	db "GFX_Kruncha_Walk7.bin"
GFX_Kruncha_Walk7End:
GFX_Kruncha_Walk8:
	db "GFX_Kruncha_Walk8.bin"
GFX_Kruncha_Walk8End:
GFX_Kruncha_Walk9:
	db "GFX_Kruncha_Walk9.bin"
GFX_Kruncha_Walk9End:
GFX_Kruncha_Walk10:
	db "GFX_Kruncha_Walk10.bin"
GFX_Kruncha_Walk10End:
GFX_Kruncha_Walk11:
	db "GFX_Kruncha_Walk11.bin"
GFX_Kruncha_Walk11End:
GFX_Dixie_HoldWalk1:
	db "GFX_Dixie_HoldWalk1.bin"
GFX_Dixie_HoldWalk1End:
GFX_Dixie_HoldWalk2:
	db "GFX_Dixie_HoldWalk2.bin"
GFX_Dixie_HoldWalk2End:
GFX_Dixie_HoldWalk3:
	db "GFX_Dixie_HoldWalk3.bin"
GFX_Dixie_HoldWalk3End:
GFX_Dixie_HoldWalk4:
	db "GFX_Dixie_HoldWalk4.bin"
GFX_Dixie_HoldWalk4End:
GFX_Dixie_HoldWalk5:
	db "GFX_Dixie_HoldWalk5.bin"
GFX_Dixie_HoldWalk5End:
GFX_Dixie_HoldWalk6:
	db "GFX_Dixie_HoldWalk6.bin"
GFX_Dixie_HoldWalk6End:
GFX_Dixie_HoldWalk7:
	db "GFX_Dixie_HoldWalk7.bin"
GFX_Dixie_HoldWalk7End:
GFX_Dixie_HoldWalk8:
	db "GFX_Dixie_HoldWalk8.bin"
GFX_Dixie_HoldWalk8End:
GFX_Dixie_HoldWalk9:
	db "GFX_Dixie_HoldWalk9.bin"
GFX_Dixie_HoldWalk9End:
GFX_Dixie_HoldWalk10:
	db "GFX_Dixie_HoldWalk10.bin"
GFX_Dixie_HoldWalk10End:
GFX_Dixie_HoldWalk11:
	db "GFX_Dixie_HoldWalk11.bin"
GFX_Dixie_HoldWalk11End:
GFX_Dixie_HoldWalk12:
	db "GFX_Dixie_HoldWalk12.bin"
GFX_Dixie_HoldWalk12End:
GFX_Dixie_HoldWalk13:
	db "GFX_Dixie_HoldWalk13.bin"
GFX_Dixie_HoldWalk13End:
GFX_Dixie_HoldWalk14:
	db "GFX_Dixie_HoldWalk14.bin"
GFX_Dixie_HoldWalk14End:
GFX_Dixie_HoldWalk15:
	db "GFX_Dixie_HoldWalk15.bin"
GFX_Dixie_HoldWalk15End:
GFX_Dixie_HoldWalk16:
	db "GFX_Dixie_HoldWalk16.bin"
GFX_Dixie_HoldWalk16End:
GFX_Dixie_Bounce1:
	db "GFX_Dixie_Bounce1.bin"
GFX_Dixie_Bounce1End:
GFX_Dixie_Bounce2:
	db "GFX_Dixie_Bounce2.bin"
GFX_Dixie_Bounce2End:
GFX_Dixie_Bounce3:
	db "GFX_Dixie_Bounce3.bin"
GFX_Dixie_Bounce3End:
GFX_Dixie_Bounce4:
	db "GFX_Dixie_Bounce4.bin"
GFX_Dixie_Bounce4End:
GFX_Dixie_Bounce5:
	db "GFX_Dixie_Bounce5.bin"
GFX_Dixie_Bounce5End:
GFX_Dixie_Bounce6:
	db "GFX_Dixie_Bounce6.bin"
GFX_Dixie_Bounce6End:
GFX_Dixie_Bounce7:
	db "GFX_Dixie_Bounce7.bin"
GFX_Dixie_Bounce7End:
GFX_Dixie_Bounce8:
	db "GFX_Dixie_Bounce8.bin"
GFX_Dixie_Bounce8End:
GFX_Dixie_Bounce9:
	db "GFX_Dixie_Bounce9.bin"
GFX_Dixie_Bounce9End:
GFX_Dixie_Bounce10:
	db "GFX_Dixie_Bounce10.bin"
GFX_Dixie_Bounce10End:
GFX_Dixie_Bounce11:
	db "GFX_Dixie_Bounce11.bin"
GFX_Dixie_Bounce11End:
GFX_Dixie_Bounce12:
	db "GFX_Dixie_Bounce12.bin"
GFX_Dixie_Bounce12End:
GFX_Dixie_Bounce13:
	db "GFX_Dixie_Bounce13.bin"
GFX_Dixie_Bounce13End:
GFX_Dixie_Bounce14:
	db "GFX_Dixie_Bounce14.bin"
GFX_Dixie_Bounce14End:
GFX_Dixie_Bounce15:
	db "GFX_Dixie_Bounce15.bin"
GFX_Dixie_Bounce15End:
GFX_Dixie_Bounce16:
	db "GFX_Dixie_Bounce16.bin"
GFX_Dixie_Bounce16End:
GFX_Dixie_HoldIdle1:
	db "GFX_Dixie_HoldIdle1.bin"
GFX_Dixie_HoldIdle1End:
GFX_Dixie_HoldIdle2:
	db "GFX_Dixie_HoldIdle2.bin"
GFX_Dixie_HoldIdle2End:
GFX_WorldMapTorch_Idle1:
	db "GFX_WorldMapTorch_Idle1.bin"
GFX_WorldMapTorch_Idle1End:
GFX_WorldMapTorch_Idle2:
	db "GFX_WorldMapTorch_Idle2.bin"
GFX_WorldMapTorch_Idle2End:
GFX_WorldMapTorch_Idle3:
	db "GFX_WorldMapTorch_Idle3.bin"
GFX_WorldMapTorch_Idle3End:
GFX_WorldMapTorch_Idle4:
	db "GFX_WorldMapTorch_Idle4.bin"
GFX_WorldMapTorch_Idle4End:
GFX_WorldMapTorch_Idle5:
	db "GFX_WorldMapTorch_Idle5.bin"
GFX_WorldMapTorch_Idle5End:
GFX_WorldMapTorch_Idle6:
	db "GFX_WorldMapTorch_Idle6.bin"
GFX_WorldMapTorch_Idle6End:
GFX_WorldMapTorch_Idle7:
	db "GFX_WorldMapTorch_Idle7.bin"
GFX_WorldMapTorch_Idle7End:
GFX_WorldMapTorch_Idle8:
	db "GFX_WorldMapTorch_Idle8.bin"
GFX_WorldMapTorch_Idle8End:
GFX_WorldMapBat_Fly1:
	db "GFX_WorldMapBat_Fly1.bin"
GFX_WorldMapBat_Fly1End:
GFX_WorldMapBat_Fly2:
	db "GFX_WorldMapBat_Fly2.bin"
GFX_WorldMapBat_Fly2End:
GFX_WorldMapBat_Fly3:
	db "GFX_WorldMapBat_Fly3.bin"
GFX_WorldMapBat_Fly3End:
GFX_WorldMapBat_Fly4:
	db "GFX_WorldMapBat_Fly4.bin"
GFX_WorldMapBat_Fly4End:
GFX_WorldMapBat_Fly5:
	db "GFX_WorldMapBat_Fly5.bin"
GFX_WorldMapBat_Fly5End:
GFX_WorldMapBat_Fly6:
	db "GFX_WorldMapBat_Fly6.bin"
GFX_WorldMapBat_Fly6End:
GFX_WorldMapBat_Fly7:
	db "GFX_WorldMapBat_Fly7.bin"
GFX_WorldMapBat_Fly7End:
GFX_WorldMapBat_Fly8:
	db "GFX_WorldMapBat_Fly8.bin"
GFX_WorldMapBat_Fly8End:
GFX_WorldMapBat_Fly9:
	db "GFX_WorldMapBat_Fly9.bin"
GFX_WorldMapBat_Fly9End:
GFX_WorldMapBat_Fly10:
	db "GFX_WorldMapBat_Fly10.bin"
GFX_WorldMapBat_Fly10End:
GFX_WorldMapBat_Fly11:
	db "GFX_WorldMapBat_Fly11.bin"
GFX_WorldMapBat_Fly11End:
GFX_WorldMapBat_Fly12:
	db "GFX_WorldMapBat_Fly12.bin"
GFX_WorldMapBat_Fly12End:
GFX_WorldMapBat_Fly13:
	db "GFX_WorldMapBat_Fly13.bin"
GFX_WorldMapBat_Fly13End:
GFX_WorldMapBat_Fly14:
	db "GFX_WorldMapBat_Fly14.bin"
GFX_WorldMapBat_Fly14End:
GFX_WorldMapBat_Fly15:
	db "GFX_WorldMapBat_Fly15.bin"
GFX_WorldMapBat_Fly15End:
GFX_WorldMapBat_Fly16:
	db "GFX_WorldMapBat_Fly16.bin"
GFX_WorldMapBat_Fly16End:
GFX_WorldMapBat_Fly17:
	db "GFX_WorldMapBat_Fly17.bin"
GFX_WorldMapBat_Fly17End:
GFX_WorldMapBat_Fly18:
	db "GFX_WorldMapBat_Fly18.bin"
GFX_WorldMapBat_Fly18End:
GFX_WorldMapBat_Fly19:
	db "GFX_WorldMapBat_Fly19.bin"
GFX_WorldMapBat_Fly19End:
GFX_WorldMapBat_Fly20:
	db "GFX_WorldMapBat_Fly20.bin"
GFX_WorldMapBat_Fly20End:
GFX_WorldMapBat_Fly21:
	db "GFX_WorldMapBat_Fly21.bin"
GFX_WorldMapBat_Fly21End:
GFX_WorldMapBat_Fly22:
	db "GFX_WorldMapBat_Fly22.bin"
GFX_WorldMapBat_Fly22End:
GFX_WorldMapBat_Fly23:
	db "GFX_WorldMapBat_Fly23.bin"
GFX_WorldMapBat_Fly23End:
GFX_WorldMapBat_Fly24:
	db "GFX_WorldMapBat_Fly24.bin"
GFX_WorldMapBat_Fly24End:
GFX_WorldMapBat_Fly25:
	db "GFX_WorldMapBat_Fly25.bin"
GFX_WorldMapBat_Fly25End:
GFX_WorldMapBat_Fly26:
	db "GFX_WorldMapBat_Fly26.bin"
GFX_WorldMapBat_Fly26End:
GFX_WorldMapBat_Fly27:
	db "GFX_WorldMapBat_Fly27.bin"
GFX_WorldMapBat_Fly27End:
GFX_WorldMapBat_Fly28:
	db "GFX_WorldMapBat_Fly28.bin"
GFX_WorldMapBat_Fly28End:
GFX_WorldMapBat_Fly29:
	db "GFX_WorldMapBat_Fly29.bin"
GFX_WorldMapBat_Fly29End:
GFX_WorldMapBat_Fly30:
	db "GFX_WorldMapBat_Fly30.bin"
GFX_WorldMapBat_Fly30End:
GFX_WorldMapBat_Fly31:
	db "GFX_WorldMapBat_Fly31.bin"
GFX_WorldMapBat_Fly31End:
GFX_WorldMapBat_Fly32:
	db "GFX_WorldMapBat_Fly32.bin"
GFX_WorldMapBat_Fly32End:
GFX_WorldMapFlag_Idle1:
	db "GFX_WorldMapFlag_Idle1.bin"
GFX_WorldMapFlag_Idle1End:
GFX_WorldMapFlag_Idle2:
	db "GFX_WorldMapFlag_Idle2.bin"
GFX_WorldMapFlag_Idle2End:
GFX_WorldMapFlag_Idle3:
	db "GFX_WorldMapFlag_Idle3.bin"
GFX_WorldMapFlag_Idle3End:
GFX_WorldMapFlag_Idle4:
	db "GFX_WorldMapFlag_Idle4.bin"
GFX_WorldMapFlag_Idle4End:
GFX_WorldMapFlag_Idle5:
	db "GFX_WorldMapFlag_Idle5.bin"
GFX_WorldMapFlag_Idle5End:
GFX_WorldMapFlag_Idle6:
	db "GFX_WorldMapFlag_Idle6.bin"
GFX_WorldMapFlag_Idle6End:
GFX_WorldMapFlag_Idle7:
	db "GFX_WorldMapFlag_Idle7.bin"
GFX_WorldMapFlag_Idle7End:
GFX_WorldMapFlag_Idle8:
	db "GFX_WorldMapFlag_Idle8.bin"
GFX_WorldMapFlag_Idle8End:
GFX_WorldMapFlag_Idle9:
	db "GFX_WorldMapFlag_Idle9.bin"
GFX_WorldMapFlag_Idle9End:
GFX_WorldMapFlag_Idle10:
	db "GFX_WorldMapFlag_Idle10.bin"
GFX_WorldMapFlag_Idle10End:
GFX_WorldMapFlag_Idle11:
	db "GFX_WorldMapFlag_Idle11.bin"
GFX_WorldMapFlag_Idle11End:
GFX_WorldMapFlag_Idle12:
	db "GFX_WorldMapFlag_Idle12.bin"
GFX_WorldMapFlag_Idle12End:
GFX_WorldMapSmoke_Puff1:
	db "GFX_WorldMapSmoke_Puff1.bin"
GFX_WorldMapSmoke_Puff1End:
GFX_WorldMapSmoke_Puff2:
	db "GFX_WorldMapSmoke_Puff2.bin"
GFX_WorldMapSmoke_Puff2End:
GFX_WorldMapSmoke_Puff3:
	db "GFX_WorldMapSmoke_Puff3.bin"
GFX_WorldMapSmoke_Puff3End:
GFX_WorldMapSmoke_Puff4:
	db "GFX_WorldMapSmoke_Puff4.bin"
GFX_WorldMapSmoke_Puff4End:
GFX_WorldMapSmoke_Puff5:
	db "GFX_WorldMapSmoke_Puff5.bin"
GFX_WorldMapSmoke_Puff5End:
GFX_WorldMapSmoke_Puff6:
	db "GFX_WorldMapSmoke_Puff6.bin"
GFX_WorldMapSmoke_Puff6End:
GFX_WorldMapSmoke_Puff7:
	db "GFX_WorldMapSmoke_Puff7.bin"
GFX_WorldMapSmoke_Puff7End:
GFX_WorldMapSmoke_Puff8:
	db "GFX_WorldMapSmoke_Puff8.bin"
GFX_WorldMapSmoke_Puff8End:
GFX_WorldMapSmoke_Puff9:
	db "GFX_WorldMapSmoke_Puff9.bin"
GFX_WorldMapSmoke_Puff9End:
GFX_WorldMapSmoke_Puff10:
	db "GFX_WorldMapSmoke_Puff10.bin"
GFX_WorldMapSmoke_Puff10End:
GFX_WorldMapSmoke_Puff11:
	db "GFX_WorldMapSmoke_Puff11.bin"
GFX_WorldMapSmoke_Puff11End:
GFX_WorldMapSmoke_Puff12:
	db "GFX_WorldMapSmoke_Puff12.bin"
GFX_WorldMapSmoke_Puff12End:
GFX_WorldMapSmoke_Puff13:
	db "GFX_WorldMapSmoke_Puff13.bin"
GFX_WorldMapSmoke_Puff13End:
GFX_WorldMapSmoke_Puff14:
	db "GFX_WorldMapSmoke_Puff14.bin"
GFX_WorldMapSmoke_Puff14End:
GFX_WorldMapSmoke_Puff15:
	db "GFX_WorldMapSmoke_Puff15.bin"
GFX_WorldMapSmoke_Puff15End:
GFX_WorldMapSmoke_Puff16:
	db "GFX_WorldMapSmoke_Puff16.bin"
GFX_WorldMapSmoke_Puff16End:
GFX_WorldMapShark_Swim1:
	db "GFX_WorldMapShark_Swim1.bin"
GFX_WorldMapShark_Swim1End:
GFX_WorldMapShark_Swim2:
	db "GFX_WorldMapShark_Swim2.bin"
GFX_WorldMapShark_Swim2End:
GFX_WorldMapShark_Swim3:
	db "GFX_WorldMapShark_Swim3.bin"
GFX_WorldMapShark_Swim3End:
GFX_WorldMapShark_Swim4:
	db "GFX_WorldMapShark_Swim4.bin"
GFX_WorldMapShark_Swim4End:
GFX_WorldMapShark_Swim5:
	db "GFX_WorldMapShark_Swim5.bin"
GFX_WorldMapShark_Swim5End:
GFX_WorldMapShark_Swim6:
	db "GFX_WorldMapShark_Swim6.bin"
GFX_WorldMapShark_Swim6End:
GFX_WorldMapShark_Swim7:
	db "GFX_WorldMapShark_Swim7.bin"
GFX_WorldMapShark_Swim7End:
GFX_WorldMapShark_Swim8:
	db "GFX_WorldMapShark_Swim8.bin"
GFX_WorldMapShark_Swim8End:
GFX_WorldMapShark_Swim9:
	db "GFX_WorldMapShark_Swim9.bin"
GFX_WorldMapShark_Swim9End:
GFX_WorldMapShark_Swim10:
	db "GFX_WorldMapShark_Swim10.bin"
GFX_WorldMapShark_Swim10End:
GFX_WorldMapShark_Swim11:
	db "GFX_WorldMapShark_Swim11.bin"
GFX_WorldMapShark_Swim11End:
GFX_WorldMapShark_Swim12:
	db "GFX_WorldMapShark_Swim12.bin"
GFX_WorldMapShark_Swim12End:
GFX_WorldMapShark_Swim13:
	db "GFX_WorldMapShark_Swim13.bin"
GFX_WorldMapShark_Swim13End:
GFX_WorldMapShark_Swim14:
	db "GFX_WorldMapShark_Swim14.bin"
GFX_WorldMapShark_Swim14End:
GFX_WorldMapShark_Swim15:
	db "GFX_WorldMapShark_Swim15.bin"
GFX_WorldMapShark_Swim15End:
GFX_WorldMapShark_Swim16:
	db "GFX_WorldMapShark_Swim16.bin"
GFX_WorldMapShark_Swim16End:
GFX_WorldMapZinger_Fly1:
	db "GFX_WorldMapZinger_Fly1.bin"
GFX_WorldMapZinger_Fly1End:
GFX_WorldMapZinger_Fly2:
	db "GFX_WorldMapZinger_Fly2.bin"
GFX_WorldMapZinger_Fly2End:
GFX_WorldMapZinger_Fly3:
	db "GFX_WorldMapZinger_Fly3.bin"
GFX_WorldMapZinger_Fly3End:
GFX_WorldMapZinger_Fly4:
	db "GFX_WorldMapZinger_Fly4.bin"
GFX_WorldMapZinger_Fly4End:
GFX_WorldMapZinger_Fly5:
	db "GFX_WorldMapZinger_Fly5.bin"
GFX_WorldMapZinger_Fly5End:
GFX_WorldMapZinger_Fly6:
	db "GFX_WorldMapZinger_Fly6.bin"
GFX_WorldMapZinger_Fly6End:
GFX_WorldMapZinger_Fly7:
	db "GFX_WorldMapZinger_Fly7.bin"
GFX_WorldMapZinger_Fly7End:
GFX_WorldMapZinger_Fly8:
	db "GFX_WorldMapZinger_Fly8.bin"
GFX_WorldMapZinger_Fly8End:
GFX_Dixie_Swim1:
	db "GFX_Dixie_Swim1.bin"
GFX_Dixie_Swim1End:
GFX_Dixie_Swim2:
	db "GFX_Dixie_Swim2.bin"
GFX_Dixie_Swim2End:
GFX_Dixie_Swim3:
	db "GFX_Dixie_Swim3.bin"
GFX_Dixie_Swim3End:
GFX_Dixie_Swim4:
	db "GFX_Dixie_Swim4.bin"
GFX_Dixie_Swim4End:
GFX_Dixie_Swim5:
	db "GFX_Dixie_Swim5.bin"
GFX_Dixie_Swim5End:
GFX_Dixie_Swim6:
	db "GFX_Dixie_Swim6.bin"
GFX_Dixie_Swim6End:
GFX_Dixie_Swim7:
	db "GFX_Dixie_Swim7.bin"
GFX_Dixie_Swim7End:
GFX_Dixie_Swim8:
	db "GFX_Dixie_Swim8.bin"
GFX_Dixie_Swim8End:
GFX_Dixie_Swim9:
	db "GFX_Dixie_Swim9.bin"
GFX_Dixie_Swim9End:
GFX_Dixie_Swim10:
	db "GFX_Dixie_Swim10.bin"
GFX_Dixie_Swim10End:
GFX_Dixie_Swim11:
	db "GFX_Dixie_Swim11.bin"
GFX_Dixie_Swim11End:
GFX_Dixie_Swim12:
	db "GFX_Dixie_Swim12.bin"
GFX_Dixie_Swim12End:
GFX_Dixie_Swim13:
	db "GFX_Dixie_Swim13.bin"
GFX_Dixie_Swim13End:
GFX_Dixie_Swim14:
	db "GFX_Dixie_Swim14.bin"
GFX_Dixie_Swim14End:
GFX_Dixie_Swim15:
	db "GFX_Dixie_Swim15.bin"
GFX_Dixie_Swim15End:
GFX_Dixie_Swim16:
	db "GFX_Dixie_Swim16.bin"
GFX_Dixie_Swim16End:
GFX_Sun_Idle:
	db "GFX_Sun_Idle.bin"
GFX_Sun_IdleEnd:
GFX_Rattly_IdleBounce1:
	db "GFX_Rattly_IdleBounce1.bin"
GFX_Rattly_IdleBounce1End:
GFX_Rattly_IdleBounce2:
	db "GFX_Rattly_IdleBounce2.bin"
GFX_Rattly_IdleBounce2End:
GFX_Rattly_IdleBounce3:
	db "GFX_Rattly_IdleBounce3.bin"
GFX_Rattly_IdleBounce3End:
GFX_Rattly_IdleBounce4:
	db "GFX_Rattly_IdleBounce4.bin"
GFX_Rattly_IdleBounce4End:
GFX_Rattly_IdleBounce5:
	db "GFX_Rattly_IdleBounce5.bin"
GFX_Rattly_IdleBounce5End:
GFX_Rattly_IdleBounce6:
	db "GFX_Rattly_IdleBounce6.bin"
GFX_Rattly_IdleBounce6End:
GFX_Rattly_Jump1:
	db "GFX_Rattly_Jump1.bin"
GFX_Rattly_Jump1End:
GFX_Rattly_Jump2:
	db "GFX_Rattly_Jump2.bin"
GFX_Rattly_Jump2End:
GFX_Rattly_Jump3:
	db "GFX_Rattly_Jump3.bin"
GFX_Rattly_Jump3End:
GFX_Rattly_Jump4:
	db "GFX_Rattly_Jump4.bin"
GFX_Rattly_Jump4End:
GFX_Rattly_Jump5:
	db "GFX_Rattly_Jump5.bin"
GFX_Rattly_Jump5End:
GFX_Rattly_Jump6:
	db "GFX_Rattly_Jump6.bin"
GFX_Rattly_Jump6End:
GFX_Rattly_Jump7:
	db "GFX_Rattly_Jump7.bin"
GFX_Rattly_Jump7End:
GFX_Rattly_Jump8:
	db "GFX_Rattly_Jump8.bin"
GFX_Rattly_Jump8End:
GFX_Rattly_Jump9:
	db "GFX_Rattly_Jump9.bin"
GFX_Rattly_Jump9End:
GFX_BurstEffect_Idle1:
	db "GFX_BurstEffect_Idle1.bin"
GFX_BurstEffect_Idle1End:
GFX_BurstEffect_Idle2:
	db "GFX_BurstEffect_Idle2.bin"
GFX_BurstEffect_Idle2End:
GFX_BurstEffect_Idle3:
	db "GFX_BurstEffect_Idle3.bin"
GFX_BurstEffect_Idle3End:
GFX_BurstEffect_Idle4:
	db "GFX_BurstEffect_Idle4.bin"
GFX_BurstEffect_Idle4End:
GFX_BurstEffect_Idle5:
	db "GFX_BurstEffect_Idle5.bin"
GFX_BurstEffect_Idle5End:
GFX_BurstEffect_Idle6:
	db "GFX_BurstEffect_Idle6.bin"
GFX_BurstEffect_Idle6End:
GFX_Dixie_RideRattly1:
	db "GFX_Dixie_RideRattly1.bin"
GFX_Dixie_RideRattly1End:
GFX_Dixie_RideRattly2:
	db "GFX_Dixie_RideRattly2.bin"
GFX_Dixie_RideRattly2End:
GFX_Dixie_RideRattly3:
	db "GFX_Dixie_RideRattly3.bin"
GFX_Dixie_RideRattly3End:
GFX_Dixie_RideRattly4:
	db "GFX_Dixie_RideRattly4.bin"
GFX_Dixie_RideRattly4End:
GFX_Dixie_RideRattly5:
	db "GFX_Dixie_RideRattly5.bin"
GFX_Dixie_RideRattly5End:
GFX_Dixie_RideRattly6:
	db "GFX_Dixie_RideRattly6.bin"
GFX_Dixie_RideRattly6End:
GFX_Dixie_RideRattly7:
	db "GFX_Dixie_RideRattly7.bin"
GFX_Dixie_RideRattly7End:
GFX_Dixie_RideRattly8:
	db "GFX_Dixie_RideRattly8.bin"
GFX_Dixie_RideRattly8End:
GFX_Dixie_RideRattly9:
	db "GFX_Dixie_RideRattly9.bin"
GFX_Dixie_RideRattly9End:
GFX_Dixie_RideRattly10:
	db "GFX_Dixie_RideRattly10.bin"
GFX_Dixie_RideRattly10End:
GFX_Dixie_RideRattly11:
	db "GFX_Dixie_RideRattly11.bin"
GFX_Dixie_RideRattly11End:
GFX_Dixie_RideRattly12:
	db "GFX_Dixie_RideRattly12.bin"
GFX_Dixie_RideRattly12End:
GFX_Dixie_RideRattly13:
	db "GFX_Dixie_RideRattly13.bin"
GFX_Dixie_RideRattly13End:
GFX_Dixie_RideRattly14:
	db "GFX_Dixie_RideRattly14.bin"
GFX_Dixie_RideRattly14End:
GFX_Lockjaw_Swim1:
	db "GFX_Lockjaw_Swim1.bin"
GFX_Lockjaw_Swim1End:
GFX_Lockjaw_Swim2:
	db "GFX_Lockjaw_Swim2.bin"
GFX_Lockjaw_Swim2End:
GFX_Lockjaw_Swim3:
	db "GFX_Lockjaw_Swim3.bin"
GFX_Lockjaw_Swim3End:
GFX_Lockjaw_Swim4:
	db "GFX_Lockjaw_Swim4.bin"
GFX_Lockjaw_Swim4End:
GFX_Lockjaw_Swim5:
	db "GFX_Lockjaw_Swim5.bin"
GFX_Lockjaw_Swim5End:
GFX_Lockjaw_Swim6:
	db "GFX_Lockjaw_Swim6.bin"
GFX_Lockjaw_Swim6End:
GFX_Lockjaw_Swim7:
	db "GFX_Lockjaw_Swim7.bin"
GFX_Lockjaw_Swim7End:
GFX_Lockjaw_Swim8:
	db "GFX_Lockjaw_Swim8.bin"
GFX_Lockjaw_Swim8End:
GFX_Lockjaw_Swim9:
	db "GFX_Lockjaw_Swim9.bin"
GFX_Lockjaw_Swim9End:
GFX_Lockjaw_Swim10:
	db "GFX_Lockjaw_Swim10.bin"
GFX_Lockjaw_Swim10End:
GFX_Lockjaw_Swim11:
	db "GFX_Lockjaw_Swim11.bin"
GFX_Lockjaw_Swim11End:
GFX_Lockjaw_Swim12:
	db "GFX_Lockjaw_Swim12.bin"
GFX_Lockjaw_Swim12End:
GFX_Lockjaw_Attack1:
	db "GFX_Lockjaw_Attack1.bin"
GFX_Lockjaw_Attack1End:
GFX_Lockjaw_Attack2:
	db "GFX_Lockjaw_Attack2.bin"
GFX_Lockjaw_Attack2End:
GFX_Lockjaw_Attack3:
	db "GFX_Lockjaw_Attack3.bin"
GFX_Lockjaw_Attack3End:
GFX_Lockjaw_Attack4:
	db "GFX_Lockjaw_Attack4.bin"
GFX_Lockjaw_Attack4End:
GFX_Lockjaw_Attack5:
	db "GFX_Lockjaw_Attack5.bin"
GFX_Lockjaw_Attack5End:
GFX_Lockjaw_Attack6:
	db "GFX_Lockjaw_Attack6.bin"
GFX_Lockjaw_Attack6End:
GFX_Lockjaw_Attack7:
	db "GFX_Lockjaw_Attack7.bin"
GFX_Lockjaw_Attack7End:
GFX_Lockjaw_Attack8:
	db "GFX_Lockjaw_Attack8.bin"
GFX_Lockjaw_Attack8End:
GFX_Dixie_HangOnVerticalRope:
	db "GFX_Dixie_HangOnVerticalRope.bin"
GFX_Dixie_HangOnVerticalRopeEnd:
GFX_Dixie_TurnOnVerticalRope1:
	db "GFX_Dixie_TurnOnVerticalRope1.bin"
GFX_Dixie_TurnOnVerticalRope1End:
GFX_Dixie_TurnOnVerticalRope2:
	db "GFX_Dixie_TurnOnVerticalRope2.bin"
GFX_Dixie_TurnOnVerticalRope2End:
GFX_Dixie_TurnOnVerticalRope3:
	db "GFX_Dixie_TurnOnVerticalRope3.bin"
GFX_Dixie_TurnOnVerticalRope3End:
GFX_Dixie_GrabAdjacentVerticalRope1:
	db "GFX_Dixie_GrabAdjacentVerticalRope1.bin"
GFX_Dixie_GrabAdjacentVerticalRope1End:
GFX_Dixie_GrabAdjacentVerticalRope2:
	db "GFX_Dixie_GrabAdjacentVerticalRope2.bin"
GFX_Dixie_GrabAdjacentVerticalRope2End:
GFX_Dixie_GrabAdjacentVerticalRope3:
	db "GFX_Dixie_GrabAdjacentVerticalRope3.bin"
GFX_Dixie_GrabAdjacentVerticalRope3End:
GFX_Dixie_GrabAdjacentVerticalRope4:
	db "GFX_Dixie_GrabAdjacentVerticalRope4.bin"
GFX_Dixie_GrabAdjacentVerticalRope4End:
GFX_Dixie_GrabAdjacentVerticalRope5:
	db "GFX_Dixie_GrabAdjacentVerticalRope5.bin"
GFX_Dixie_GrabAdjacentVerticalRope5End:
GFX_Dixie_GrabAdjacentVerticalRope6:
	db "GFX_Dixie_GrabAdjacentVerticalRope6.bin"
GFX_Dixie_GrabAdjacentVerticalRope6End:
GFX_Dixie_GrabAdjacentVerticalRope7:
	db "GFX_Dixie_GrabAdjacentVerticalRope7.bin"
GFX_Dixie_GrabAdjacentVerticalRope7End:
GFX_Dixie_GrabAdjacentVerticalRope8:
	db "GFX_Dixie_GrabAdjacentVerticalRope8.bin"
GFX_Dixie_GrabAdjacentVerticalRope8End:
GFX_Squawks_Fly1:
	db "GFX_Squawks_Fly1.bin"
GFX_Squawks_Fly1End:
GFX_Squawks_Fly2:
	db "GFX_Squawks_Fly2.bin"
GFX_Squawks_Fly2End:
GFX_Squawks_Fly3:
	db "GFX_Squawks_Fly3.bin"
GFX_Squawks_Fly3End:
GFX_Squawks_Fly4:
	db "GFX_Squawks_Fly4.bin"
GFX_Squawks_Fly4End:
GFX_Squawks_Fly5:
	db "GFX_Squawks_Fly5.bin"
GFX_Squawks_Fly5End:
GFX_Squawks_Fly6:
	db "GFX_Squawks_Fly6.bin"
GFX_Squawks_Fly6End:
GFX_Squawks_Fly7:
	db "GFX_Squawks_Fly7.bin"
GFX_Squawks_Fly7End:
GFX_Squawks_Fly8:
	db "GFX_Squawks_Fly8.bin"
GFX_Squawks_Fly8End:
GFX_Squawks_Fly9:
	db "GFX_Squawks_Fly9.bin"
GFX_Squawks_Fly9End:
GFX_Squawks_Fly10:
	db "GFX_Squawks_Fly10.bin"
GFX_Squawks_Fly10End:
GFX_Squawks_Fly11:
	db "GFX_Squawks_Fly11.bin"
GFX_Squawks_Fly11End:
GFX_Squawks_Fly12:
	db "GFX_Squawks_Fly12.bin"
GFX_Squawks_Fly12End:
GFX_Squawks_Fly13:
	db "GFX_Squawks_Fly13.bin"
GFX_Squawks_Fly13End:
GFX_Squawks_Fly14:
	db "GFX_Squawks_Fly14.bin"
GFX_Squawks_Fly14End:
GFX_ClickClack_Walk1:
	db "GFX_ClickClack_Walk1.bin"
GFX_ClickClack_Walk1End:
GFX_ClickClack_Walk2:
	db "GFX_ClickClack_Walk2.bin"
GFX_ClickClack_Walk2End:
GFX_ClickClack_Walk3:
	db "GFX_ClickClack_Walk3.bin"
GFX_ClickClack_Walk3End:
GFX_ClickClack_Walk4:
	db "GFX_ClickClack_Walk4.bin"
GFX_ClickClack_Walk4End:
GFX_ClickClack_Walk5:
	db "GFX_ClickClack_Walk5.bin"
GFX_ClickClack_Walk5End:
GFX_ClickClack_Walk6:
	db "GFX_ClickClack_Walk6.bin"
GFX_ClickClack_Walk6End:
GFX_ClickClack_Walk7:
	db "GFX_ClickClack_Walk7.bin"
GFX_ClickClack_Walk7End:
GFX_ClickClack_Walk8:
	db "GFX_ClickClack_Walk8.bin"
GFX_ClickClack_Walk8End:
GFX_ClickClack_FlipOver1:
	db "GFX_ClickClack_FlipOver1.bin"
GFX_ClickClack_FlipOver1End:
GFX_ClickClack_FlipOver2:
	db "GFX_ClickClack_FlipOver2.bin"
GFX_ClickClack_FlipOver2End:
GFX_ClickClack_FlipOver3:
	db "GFX_ClickClack_FlipOver3.bin"
GFX_ClickClack_FlipOver3End:
GFX_ClickClack_FlipOver4:
	db "GFX_ClickClack_FlipOver4.bin"
GFX_ClickClack_FlipOver4End:
GFX_ClickClack_FlipOver5:
	db "GFX_ClickClack_FlipOver5.bin"
GFX_ClickClack_FlipOver5End:
GFX_ClickClack_FlipOver6:
	db "GFX_ClickClack_FlipOver6.bin"
GFX_ClickClack_FlipOver6End:
GFX_ClickClack_FlipOver7:
	db "GFX_ClickClack_FlipOver7.bin"
GFX_ClickClack_FlipOver7End:
GFX_ClickClack_FlipOver8:
	db "GFX_ClickClack_FlipOver8.bin"
GFX_ClickClack_FlipOver8End:
GFX_ClickClack_Helpless1:
	db "GFX_ClickClack_Helpless1.bin"
GFX_ClickClack_Helpless1End:
GFX_ClickClack_Helpless2:
	db "GFX_ClickClack_Helpless2.bin"
GFX_ClickClack_Helpless2End:
GFX_ClickClack_Helpless3:
	db "GFX_ClickClack_Helpless3.bin"
GFX_ClickClack_Helpless3End:
GFX_ClickClack_Helpless4:
	db "GFX_ClickClack_Helpless4.bin"
GFX_ClickClack_Helpless4End:
GFX_ClickClack_Helpless5:
	db "GFX_ClickClack_Helpless5.bin"
GFX_ClickClack_Helpless5End:
GFX_ClickClack_Helpless6:
	db "GFX_ClickClack_Helpless6.bin"
GFX_ClickClack_Helpless6End:
GFX_ClickClack_Helpless7:
	db "GFX_ClickClack_Helpless7.bin"
GFX_ClickClack_Helpless7End:
GFX_ClickClack_Helpless8:
	db "GFX_ClickClack_Helpless8.bin"
GFX_ClickClack_Helpless8End:
GFX_Dixie_HangFromSquawks1:
	db "GFX_Dixie_HangFromSquawks1.bin"
GFX_Dixie_HangFromSquawks1End:
GFX_Dixie_HangFromSquawks2:
	db "GFX_Dixie_HangFromSquawks2.bin"
GFX_Dixie_HangFromSquawks2End:
GFX_Dixie_HangFromSquawks3:
	db "GFX_Dixie_HangFromSquawks3.bin"
GFX_Dixie_HangFromSquawks3End:
GFX_Dixie_HangFromSquawks4:
	db "GFX_Dixie_HangFromSquawks4.bin"
GFX_Dixie_HangFromSquawks4End:
GFX_Dixie_HangFromSquawks5:
	db "GFX_Dixie_HangFromSquawks5.bin"
GFX_Dixie_HangFromSquawks5End:
GFX_Dixie_HangFromSquawks6:
	db "GFX_Dixie_HangFromSquawks6.bin"
GFX_Dixie_HangFromSquawks6End:
GFX_Dixie_HangFromSquawks7:
	db "GFX_Dixie_HangFromSquawks7.bin"
GFX_Dixie_HangFromSquawks7End:
GFX_Dixie_HangFromSquawks8:
	db "GFX_Dixie_HangFromSquawks8.bin"
GFX_Dixie_HangFromSquawks8End:
GFX_WaterSplash_Idle1:
	db "GFX_WaterSplash_Idle1.bin"
GFX_WaterSplash_Idle1End:
GFX_WaterSplash_Idle2:
	db "GFX_WaterSplash_Idle2.bin"
GFX_WaterSplash_Idle2End:
GFX_WaterSplash_Idle3:
	db "GFX_WaterSplash_Idle3.bin"
GFX_WaterSplash_Idle3End:
GFX_WaterSplash_Idle4:
	db "GFX_WaterSplash_Idle4.bin"
GFX_WaterSplash_Idle4End:
GFX_WaterSplash_Idle5:
	db "GFX_WaterSplash_Idle5.bin"
GFX_WaterSplash_Idle5End:
GFX_WaterSplash_Idle6:
	db "GFX_WaterSplash_Idle6.bin"
GFX_WaterSplash_Idle6End:
GFX_WaterSplash_Idle7:
	db "GFX_WaterSplash_Idle7.bin"
GFX_WaterSplash_Idle7End:
GFX_WaterSplash_Idle8:
	db "GFX_WaterSplash_Idle8.bin"
GFX_WaterSplash_Idle8End:
GFX_WaterSplash_Idle9:
	db "GFX_WaterSplash_Idle9.bin"
GFX_WaterSplash_Idle9End:
GFX_WaterSplash_Idle10:
	db "GFX_WaterSplash_Idle10.bin"
GFX_WaterSplash_Idle10End:
GFX_WaterSplash_Idle11:
	db "GFX_WaterSplash_Idle11.bin"
GFX_WaterSplash_Idle11End:
GFX_WaterSplash_Idle12:
	db "GFX_WaterSplash_Idle12.bin"
GFX_WaterSplash_Idle12End:
GFX_WaterSplash_Idle13:
	db "GFX_WaterSplash_Idle13.bin"
GFX_WaterSplash_Idle13End:
GFX_WaterSplash_Idle14:
	db "GFX_WaterSplash_Idle14.bin"
GFX_WaterSplash_Idle14End:
GFX_WaterSplash_Idle15:
	db "GFX_WaterSplash_Idle15.bin"
GFX_WaterSplash_Idle15End:
GFX_WaterSplash_Idle16:
	db "GFX_WaterSplash_Idle16.bin"
GFX_WaterSplash_Idle16End:
GFX_CrocodileCauldronNosePiece_Idle:
	db "GFX_CrocodileCauldronNosePiece_Idle.bin"
GFX_CrocodileCauldronNosePiece_IdleEnd:
GFX_Kutlass_Walk1:
	db "GFX_Kutlass_Walk1.bin"
GFX_Kutlass_Walk1End:
GFX_Kutlass_Walk2:
	db "GFX_Kutlass_Walk2.bin"
GFX_Kutlass_Walk2End:
GFX_Kutlass_Walk3:
	db "GFX_Kutlass_Walk3.bin"
GFX_Kutlass_Walk3End:
GFX_Kutlass_Walk4:
	db "GFX_Kutlass_Walk4.bin"
GFX_Kutlass_Walk4End:
GFX_Kutlass_Walk5:
	db "GFX_Kutlass_Walk5.bin"
GFX_Kutlass_Walk5End:
GFX_Kutlass_Walk6:
	db "GFX_Kutlass_Walk6.bin"
GFX_Kutlass_Walk6End:
GFX_Kutlass_Walk7:
	db "GFX_Kutlass_Walk7.bin"
GFX_Kutlass_Walk7End:
GFX_Kutlass_Walk8:
	db "GFX_Kutlass_Walk8.bin"
GFX_Kutlass_Walk8End:
GFX_MapDixie_Walk1:
	db "GFX_MapDixie_Walk1.bin"
GFX_MapDixie_Walk1End:
GFX_MapDixie_Walk2:
	db "GFX_MapDixie_Walk2.bin"
GFX_MapDixie_Walk2End:
GFX_MapDixie_Walk3:
	db "GFX_MapDixie_Walk3.bin"
GFX_MapDixie_Walk3End:
GFX_MapDixie_Walk4:
	db "GFX_MapDixie_Walk4.bin"
GFX_MapDixie_Walk4End:
GFX_MapDixie_Walk5:
	db "GFX_MapDixie_Walk5.bin"
GFX_MapDixie_Walk5End:
GFX_MapDixie_Walk6:
	db "GFX_MapDixie_Walk6.bin"
GFX_MapDixie_Walk6End:
GFX_MapDixie_Walk7:
	db "GFX_MapDixie_Walk7.bin"
GFX_MapDixie_Walk7End:
GFX_MapDixie_Walk8:
	db "GFX_MapDixie_Walk8.bin"
GFX_MapDixie_Walk8End:
GFX_MapDiddy_Walk1:
	db "GFX_MapDiddy_Walk1.bin"
GFX_MapDiddy_Walk1End:
GFX_MapDiddy_Walk2:
	db "GFX_MapDiddy_Walk2.bin"
GFX_MapDiddy_Walk2End:
GFX_MapDiddy_Walk3:
	db "GFX_MapDiddy_Walk3.bin"
GFX_MapDiddy_Walk3End:
GFX_MapDiddy_Walk4:
	db "GFX_MapDiddy_Walk4.bin"
GFX_MapDiddy_Walk4End:
GFX_MapDiddy_Walk5:
	db "GFX_MapDiddy_Walk5.bin"
GFX_MapDiddy_Walk5End:
GFX_MapDiddy_Walk6:
	db "GFX_MapDiddy_Walk6.bin"
GFX_MapDiddy_Walk6End:
GFX_MapDiddy_Walk7:
	db "GFX_MapDiddy_Walk7.bin"
GFX_MapDiddy_Walk7End:
GFX_MapDiddy_Walk8:
	db "GFX_MapDiddy_Walk8.bin"
GFX_MapDiddy_Walk8End:
GFX_Squawks_SpitEgg1:
	db "GFX_Squawks_SpitEgg1.bin"
GFX_Squawks_SpitEgg1End:
GFX_Squawks_SpitEgg2:
	db "GFX_Squawks_SpitEgg2.bin"
GFX_Squawks_SpitEgg2End:
GFX_Squawks_SpitEgg3:
	db "GFX_Squawks_SpitEgg3.bin"
GFX_Squawks_SpitEgg3End:
GFX_Squawks_SpitEgg4:
	db "GFX_Squawks_SpitEgg4.bin"
GFX_Squawks_SpitEgg4End:
GFX_Squawks_SpitEgg5:
	db "GFX_Squawks_SpitEgg5.bin"
GFX_Squawks_SpitEgg5End:
GFX_Kremcoin_Idle1:
	db "GFX_Kremcoin_Idle1.bin"
GFX_Kremcoin_Idle1End:
GFX_Kremcoin_Idle2:
	db "GFX_Kremcoin_Idle2.bin"
GFX_Kremcoin_Idle2End:
GFX_Kremcoin_Idle3:
	db "GFX_Kremcoin_Idle3.bin"
GFX_Kremcoin_Idle3End:
GFX_Kremcoin_Idle4:
	db "GFX_Kremcoin_Idle4.bin"
GFX_Kremcoin_Idle4End:
GFX_Kremcoin_Idle5:
	db "GFX_Kremcoin_Idle5.bin"
GFX_Kremcoin_Idle5End:
GFX_Kremcoin_Idle6:
	db "GFX_Kremcoin_Idle6.bin"
GFX_Kremcoin_Idle6End:
GFX_Kremcoin_Idle7:
	db "GFX_Kremcoin_Idle7.bin"
GFX_Kremcoin_Idle7End:
GFX_Kremcoin_Idle8:
	db "GFX_Kremcoin_Idle8.bin"
GFX_Kremcoin_Idle8End:
GFX_Diddy_Bounce1:
	db "GFX_Diddy_Bounce1.bin"
GFX_Diddy_Bounce1End:
GFX_Diddy_Bounce2:
	db "GFX_Diddy_Bounce2.bin"
GFX_Diddy_Bounce2End:
GFX_Diddy_Bounce3:
	db "GFX_Diddy_Bounce3.bin"
GFX_Diddy_Bounce3End:
GFX_Diddy_Bounce4:
	db "GFX_Diddy_Bounce4.bin"
GFX_Diddy_Bounce4End:
GFX_Diddy_Bounce5:
	db "GFX_Diddy_Bounce5.bin"
GFX_Diddy_Bounce5End:
GFX_Diddy_Bounce6:
	db "GFX_Diddy_Bounce6.bin"
GFX_Diddy_Bounce6End:
GFX_Diddy_Bounce7:
	db "GFX_Diddy_Bounce7.bin"
GFX_Diddy_Bounce7End:
GFX_Diddy_Bounce8:
	db "GFX_Diddy_Bounce8.bin"
GFX_Diddy_Bounce8End:
GFX_Diddy_Bounce9:
	db "GFX_Diddy_Bounce9.bin"
GFX_Diddy_Bounce9End:
GFX_Diddy_Bounce10:
	db "GFX_Diddy_Bounce10.bin"
GFX_Diddy_Bounce10End:
GFX_Diddy_Bounce11:
	db "GFX_Diddy_Bounce11.bin"
GFX_Diddy_Bounce11End:
GFX_Diddy_Bounce12:
	db "GFX_Diddy_Bounce12.bin"
GFX_Diddy_Bounce12End:
GFX_Diddy_Bounce13:
	db "GFX_Diddy_Bounce13.bin"
GFX_Diddy_Bounce13End:
GFX_Diddy_Bounce14:
	db "GFX_Diddy_Bounce14.bin"
GFX_Diddy_Bounce14End:
GFX_Diddy_Bounce15:
	db "GFX_Diddy_Bounce15.bin"
GFX_Diddy_Bounce15End:
GFX_Diddy_Bounce16:
	db "GFX_Diddy_Bounce16.bin"
GFX_Diddy_Bounce16End:
GFX_Diddy_Bounce17:
	db "GFX_Diddy_Bounce17.bin"
GFX_Diddy_Bounce17End:
GFX_Diddy_Bounce18:
	db "GFX_Diddy_Bounce18.bin"
GFX_Diddy_Bounce18End:
GFX_Fireworks_Launch1:
	db "GFX_Fireworks_Launch1.bin"
GFX_Fireworks_Launch1End:
GFX_Fireworks_Launch2:
	db "GFX_Fireworks_Launch2.bin"
GFX_Fireworks_Launch2End:
GFX_Fireworks_Launch3:
	db "GFX_Fireworks_Launch3.bin"
GFX_Fireworks_Launch3End:
GFX_Fireworks_Launch4:
	db "GFX_Fireworks_Launch4.bin"
GFX_Fireworks_Launch4End:
GFX_Fireworks_Launch5:
	db "GFX_Fireworks_Launch5.bin"
GFX_Fireworks_Launch5End:
GFX_Fireworks_Launch6:
	db "GFX_Fireworks_Launch6.bin"
GFX_Fireworks_Launch6End:
GFX_Fireworks_Launch7:
	db "GFX_Fireworks_Launch7.bin"
GFX_Fireworks_Launch7End:
GFX_Fireworks_Launch8:
	db "GFX_Fireworks_Launch8.bin"
GFX_Fireworks_Launch8End:
GFX_Fireworks_Launch9:
	db "GFX_Fireworks_Launch9.bin"
GFX_Fireworks_Launch9End:
GFX_Kutlass_Attack1:
	db "GFX_Kutlass_Attack1.bin"
GFX_Kutlass_Attack1End:
GFX_Kutlass_Attack2:
	db "GFX_Kutlass_Attack2.bin"
GFX_Kutlass_Attack2End:
GFX_Kutlass_Attack3:
	db "GFX_Kutlass_Attack3.bin"
GFX_Kutlass_Attack3End:
GFX_Kutlass_Attack4:
	db "GFX_Kutlass_Attack4.bin"
GFX_Kutlass_Attack4End:
GFX_Kutlass_Attack5:
	db "GFX_Kutlass_Attack5.bin"
GFX_Kutlass_Attack5End:
GFX_Kutlass_Attack6:
	db "GFX_Kutlass_Attack6.bin"
GFX_Kutlass_Attack6End:
GFX_Kutlass_Attack7:
	db "GFX_Kutlass_Attack7.bin"
GFX_Kutlass_Attack7End:
GFX_Kutlass_Attack8:
	db "GFX_Kutlass_Attack8.bin"
GFX_Kutlass_Attack8End:
GFX_Kutlass_Attack9:
	db "GFX_Kutlass_Attack9.bin"
GFX_Kutlass_Attack9End:
GFX_Kutlass_Attack10:
	db "GFX_Kutlass_Attack10.bin"
GFX_Kutlass_Attack10End:
GFX_Kutlass_Attack11:
	db "GFX_Kutlass_Attack11.bin"
GFX_Kutlass_Attack11End:
GFX_Kutlass_Attack12:
	db "GFX_Kutlass_Attack12.bin"
GFX_Kutlass_Attack12End:
GFX_Kutlass_Attack13:
	db "GFX_Kutlass_Attack13.bin"
GFX_Kutlass_Attack13End:
GFX_Kutlass_Attack14:
	db "GFX_Kutlass_Attack14.bin"
GFX_Kutlass_Attack14End:
GFX_Kutlass_Attack15:
	db "GFX_Kutlass_Attack15.bin"
GFX_Kutlass_Attack15End:
GFX_Kutlass_Attack16:
	db "GFX_Kutlass_Attack16.bin"
GFX_Kutlass_Attack16End:
GFX_Kutlass_Attack17:
	db "GFX_Kutlass_Attack17.bin"
GFX_Kutlass_Attack17End:
GFX_Kutlass_Attack18:
	db "GFX_Kutlass_Attack18.bin"
GFX_Kutlass_Attack18End:
GFX_Kutlass_Attack19:
	db "GFX_Kutlass_Attack19.bin"
GFX_Kutlass_Attack19End:
GFX_Kutlass_Attack20:
	db "GFX_Kutlass_Attack20.bin"
GFX_Kutlass_Attack20End:
GFX_Kutlass_Attack21:
	db "GFX_Kutlass_Attack21.bin"
GFX_Kutlass_Attack21End:
GFX_UnknownEffect1_Idle1:
	db "GFX_UnknownEffect1_Idle1.bin"
GFX_UnknownEffect1_Idle1End:
GFX_UnknownEffect1_Idle2:
	db "GFX_UnknownEffect1_Idle2.bin"
GFX_UnknownEffect1_Idle2End:
GFX_UnknownEffect1_Idle3:
	db "GFX_UnknownEffect1_Idle3.bin"
GFX_UnknownEffect1_Idle3End:
GFX_UnknownEffect1_Idle4:
	db "GFX_UnknownEffect1_Idle4.bin"
GFX_UnknownEffect1_Idle4End:
GFX_UnknownEffect1_Idle5:
	db "GFX_UnknownEffect1_Idle5.bin"
GFX_UnknownEffect1_Idle5End:
GFX_UnknownEffect1_Idle6:
	db "GFX_UnknownEffect1_Idle6.bin"
GFX_UnknownEffect1_Idle6End:
GFX_UnknownEffect1_Idle7:
	db "GFX_UnknownEffect1_Idle7.bin"
GFX_UnknownEffect1_Idle7End:
GFX_UnknownEffect1_Idle8:
	db "GFX_UnknownEffect1_Idle8.bin"
GFX_UnknownEffect1_Idle8End:
GFX_LevelExit_Barrel:
	db "GFX_LevelExit_Barrel.bin"
GFX_LevelExit_BarrelEnd:
GFX_LevelExit_Pole:
	db "GFX_LevelExit_Pole.bin"
GFX_LevelExit_PoleEnd:
GFX_BarrelCannonSymbols_One:
	db "GFX_BarrelCannonSymbols_One.bin"
GFX_BarrelCannonSymbols_OneEnd:
GFX_BarrelCannonSymbols_Two:
	db "GFX_BarrelCannonSymbols_Two.bin"
GFX_BarrelCannonSymbols_TwoEnd:
GFX_BarrelCannonSymbols_Three:
	db "GFX_BarrelCannonSymbols_Three.bin"
GFX_BarrelCannonSymbols_ThreeEnd:
GFX_BarrelCannonSymbols_Four:
	db "GFX_BarrelCannonSymbols_Four.bin"
GFX_BarrelCannonSymbols_FourEnd:
GFX_BarrelCannonSymbols_Five:
	db "GFX_BarrelCannonSymbols_Five.bin"
GFX_BarrelCannonSymbols_FiveEnd:
GFX_LifeBallon_Idle1:
	db "GFX_LifeBallon_Idle1.bin"
GFX_LifeBallon_Idle1End:
GFX_LifeBallon_Idle2:
	db "GFX_LifeBallon_Idle2.bin"
GFX_LifeBallon_Idle2End:
GFX_LifeBallon_Idle3:
	db "GFX_LifeBallon_Idle3.bin"
GFX_LifeBallon_Idle3End:
GFX_LifeBallon_Idle4:
	db "GFX_LifeBallon_Idle4.bin"
GFX_LifeBallon_Idle4End:
GFX_LifeBallon_Idle5:
	db "GFX_LifeBallon_Idle5.bin"
GFX_LifeBallon_Idle5End:
GFX_LifeBallon_Idle6:
	db "GFX_LifeBallon_Idle6.bin"
GFX_LifeBallon_Idle6End:
GFX_LifeBallon_Idle7:
	db "GFX_LifeBallon_Idle7.bin"
GFX_LifeBallon_Idle7End:
GFX_LifeBallon_Idle8:
	db "GFX_LifeBallon_Idle8.bin"
GFX_LifeBallon_Idle8End:
GFX_NoAnimalBuddySign_Rattly:
	db "GFX_NoAnimalBuddySign_Rattly.bin"
GFX_NoAnimalBuddySign_RattlyEnd:
GFX_NoAnimalBuddySign_Enguarde:
	db "GFX_NoAnimalBuddySign_Enguarde.bin"
GFX_NoAnimalBuddySign_EnguardeEnd:
GFX_NoAnimalBuddySign_Squawks:
	db "GFX_NoAnimalBuddySign_Squawks.bin"
GFX_NoAnimalBuddySign_SquawksEnd:
GFX_NoAnimalBuddySign_Rambi:
	db "GFX_NoAnimalBuddySign_Rambi.bin"
GFX_NoAnimalBuddySign_RambiEnd:
GFX_NoAnimalBuddySign_Squitter:
	db "GFX_NoAnimalBuddySign_Squitter.bin"
GFX_NoAnimalBuddySign_SquitterEnd:
GFX_DKCoin_Idle1:
	db "GFX_DKCoin_Idle1.bin"
GFX_DKCoin_Idle1End:
GFX_DKCoin_Idle2:
	db "GFX_DKCoin_Idle2.bin"
GFX_DKCoin_Idle2End:
GFX_DKCoin_Idle3:
	db "GFX_DKCoin_Idle3.bin"
GFX_DKCoin_Idle3End:
GFX_DKCoin_Idle4:
	db "GFX_DKCoin_Idle4.bin"
GFX_DKCoin_Idle4End:
GFX_DKCoin_Idle5:
	db "GFX_DKCoin_Idle5.bin"
GFX_DKCoin_Idle5End:
GFX_DKCoin_Idle6:
	db "GFX_DKCoin_Idle6.bin"
GFX_DKCoin_Idle6End:
GFX_DKCoin_Idle7:
	db "GFX_DKCoin_Idle7.bin"
GFX_DKCoin_Idle7End:
GFX_DKCoin_Idle8:
	db "GFX_DKCoin_Idle8.bin"
GFX_DKCoin_Idle8End:
GFX_Lockjaw_Turn1:
	db "GFX_Lockjaw_Turn1.bin"
GFX_Lockjaw_Turn1End:
GFX_Lockjaw_Turn2:
	db "GFX_Lockjaw_Turn2.bin"
GFX_Lockjaw_Turn2End:
GFX_Lockjaw_Turn3:
	db "GFX_Lockjaw_Turn3.bin"
GFX_Lockjaw_Turn3End:
GFX_Lockjaw_Turn4:
	db "GFX_Lockjaw_Turn4.bin"
GFX_Lockjaw_Turn4End:
GFX_Lockjaw_Turn5:
	db "GFX_Lockjaw_Turn5.bin"
GFX_Lockjaw_Turn5End:
GFX_Lockjaw_Turn6:
	db "GFX_Lockjaw_Turn6.bin"
GFX_Lockjaw_Turn6End:
GFX_Lockjaw_Turn7:
	db "GFX_Lockjaw_Turn7.bin"
GFX_Lockjaw_Turn7End:
GFX_Lockjaw_Dead:
	db "GFX_Lockjaw_Dead.bin"
GFX_Lockjaw_DeadEnd:
GFX_Shuri_Dead:
	db "GFX_Shuri_Dead.bin"
GFX_Shuri_DeadEnd:
GFX_Neek_Walk1:
	db "GFX_Neek_Walk1.bin"
GFX_Neek_Walk1End:
GFX_Neek_Walk2:
	db "GFX_Neek_Walk2.bin"
GFX_Neek_Walk2End:
GFX_Neek_Walk3:
	db "GFX_Neek_Walk3.bin"
GFX_Neek_Walk3End:
GFX_Neek_Walk4:
	db "GFX_Neek_Walk4.bin"
GFX_Neek_Walk4End:
GFX_Neek_Walk5:
	db "GFX_Neek_Walk5.bin"
GFX_Neek_Walk5End:
GFX_Neek_Walk6:
	db "GFX_Neek_Walk6.bin"
GFX_Neek_Walk6End:
GFX_Neek_Walk7:
	db "GFX_Neek_Walk7.bin"
GFX_Neek_Walk7End:
GFX_Neek_Walk8:
	db "GFX_Neek_Walk8.bin"
GFX_Neek_Walk8End:
GFX_Neek_Dead1:
	db "GFX_Neek_Dead1.bin"
GFX_Neek_Dead1End:
GFX_Neek_Dead2:
	db "GFX_Neek_Dead2.bin"
GFX_Neek_Dead2End:
GFX_Neek_Dead3:
	db "GFX_Neek_Dead3.bin"
GFX_Neek_Dead3End:
GFX_Neek_Dead4:
	db "GFX_Neek_Dead4.bin"
GFX_Neek_Dead4End:
GFX_Neek_Turn1:
	db "GFX_Neek_Turn1.bin"
GFX_Neek_Turn1End:
GFX_Neek_Turn2:
	db "GFX_Neek_Turn2.bin"
GFX_Neek_Turn2End:
GFX_Neek_Turn3:
	db "GFX_Neek_Turn3.bin"
GFX_Neek_Turn3End:
GFX_Klomp_Dead1:
	db "GFX_Klomp_Dead1.bin"
GFX_Klomp_Dead1End:
GFX_Klomp_Dead2:
	db "GFX_Klomp_Dead2.bin"
GFX_Klomp_Dead2End:
GFX_Klomp_Dead3:
	db "GFX_Klomp_Dead3.bin"
GFX_Klomp_Dead3End:
GFX_Klomp_Dead4:
	db "GFX_Klomp_Dead4.bin"
GFX_Klomp_Dead4End:
GFX_Klomp_Turn1:
	db "GFX_Klomp_Turn1.bin"
GFX_Klomp_Turn1End:
GFX_Klomp_Turn2:
	db "GFX_Klomp_Turn2.bin"
GFX_Klomp_Turn2End:
GFX_Klomp_Turn3:
	db "GFX_Klomp_Turn3.bin"
GFX_Klomp_Turn3End:
GFX_SmokePuff_Idle1:
	db "GFX_SmokePuff_Idle1.bin"
GFX_SmokePuff_Idle1End:
GFX_SmokePuff_Idle2:
	db "GFX_SmokePuff_Idle2.bin"
GFX_SmokePuff_Idle2End:
GFX_SmokePuff_Idle3:
	db "GFX_SmokePuff_Idle3.bin"
GFX_SmokePuff_Idle3End:
GFX_SmokePuff_Idle4:
	db "GFX_SmokePuff_Idle4.bin"
GFX_SmokePuff_Idle4End:
GFX_SmokePuff_Idle5:
	db "GFX_SmokePuff_Idle5.bin"
GFX_SmokePuff_Idle5End:
GFX_SmokePuff_Idle6:
	db "GFX_SmokePuff_Idle6.bin"
GFX_SmokePuff_Idle6End:
GFX_SmokePuff_Idle7:
	db "GFX_SmokePuff_Idle7.bin"
GFX_SmokePuff_Idle7End:
GFX_SmokePuff_Idle8:
	db "GFX_SmokePuff_Idle8.bin"
GFX_SmokePuff_Idle8End:
GFX_MiniNecky_Idle1:
	db "GFX_MiniNecky_Idle1.bin"
GFX_MiniNecky_Idle1End:
GFX_MiniNecky_Idle2:
	db "GFX_MiniNecky_Idle2.bin"
GFX_MiniNecky_Idle2End:
GFX_MiniNecky_Idle3:
	db "GFX_MiniNecky_Idle3.bin"
GFX_MiniNecky_Idle3End:
GFX_MiniNecky_Idle4:
	db "GFX_MiniNecky_Idle4.bin"
GFX_MiniNecky_Idle4End:
GFX_MiniNecky_Idle5:
	db "GFX_MiniNecky_Idle5.bin"
GFX_MiniNecky_Idle5End:
GFX_MiniNecky_Idle6:
	db "GFX_MiniNecky_Idle6.bin"
GFX_MiniNecky_Idle6End:
GFX_MiniNecky_Idle7:
	db "GFX_MiniNecky_Idle7.bin"
GFX_MiniNecky_Idle7End:
GFX_MiniNecky_Idle8:
	db "GFX_MiniNecky_Idle8.bin"
GFX_MiniNecky_Idle8End:
GFX_MiniNecky_Idle9:
	db "GFX_MiniNecky_Idle9.bin"
GFX_MiniNecky_Idle9End:
GFX_MiniNecky_Idle10:
	db "GFX_MiniNecky_Idle10.bin"
GFX_MiniNecky_Idle10End:
GFX_MiniNecky_Idle11:
	db "GFX_MiniNecky_Idle11.bin"
GFX_MiniNecky_Idle11End:
GFX_MiniNecky_Idle12:
	db "GFX_MiniNecky_Idle12.bin"
GFX_MiniNecky_Idle12End:
GFX_Klobber_Emerge1:
	db "GFX_Klobber_Emerge1.bin"
GFX_Klobber_Emerge1End:
GFX_Klobber_Emerge2:
	db "GFX_Klobber_Emerge2.bin"
GFX_Klobber_Emerge2End:
GFX_Klobber_Emerge3:
	db "GFX_Klobber_Emerge3.bin"
GFX_Klobber_Emerge3End:
GFX_Klobber_Emerge4:
	db "GFX_Klobber_Emerge4.bin"
GFX_Klobber_Emerge4End:
GFX_Klobber_Emerge5:
	db "GFX_Klobber_Emerge5.bin"
GFX_Klobber_Emerge5End:
GFX_Klobber_Emerge6:
	db "GFX_Klobber_Emerge6.bin"
GFX_Klobber_Emerge6End:
GFX_Klobber_Emerge7:
	db "GFX_Klobber_Emerge7.bin"
GFX_Klobber_Emerge7End:
GFX_Klobber_Emerge8:
	db "GFX_Klobber_Emerge8.bin"
GFX_Klobber_Emerge8End:
GFX_Klobber_Emerge9:
	db "GFX_Klobber_Emerge9.bin"
GFX_Klobber_Emerge9End:
GFX_Klobber_Emerge10:
	db "GFX_Klobber_Emerge10.bin"
GFX_Klobber_Emerge10End:
GFX_Klobber_Emerge11:
	db "GFX_Klobber_Emerge11.bin"
GFX_Klobber_Emerge11End:
GFX_Klobber_Emerge12:
	db "GFX_Klobber_Emerge12.bin"
GFX_Klobber_Emerge12End:
GFX_Klobber_Emerge13:
	db "GFX_Klobber_Emerge13.bin"
GFX_Klobber_Emerge13End:
GFX_MiniNecky_Attack1:
	db "GFX_MiniNecky_Attack1.bin"
GFX_MiniNecky_Attack1End:
GFX_MiniNecky_Attack2:
	db "GFX_MiniNecky_Attack2.bin"
GFX_MiniNecky_Attack2End:
GFX_MiniNecky_Attack3:
	db "GFX_MiniNecky_Attack3.bin"
GFX_MiniNecky_Attack3End:
GFX_MiniNecky_Attack4:
	db "GFX_MiniNecky_Attack4.bin"
GFX_MiniNecky_Attack4End:
GFX_MiniNecky_Attack5:
	db "GFX_MiniNecky_Attack5.bin"
GFX_MiniNecky_Attack5End:
GFX_MiniNecky_Attack6:
	db "GFX_MiniNecky_Attack6.bin"
GFX_MiniNecky_Attack6End:
GFX_MiniNecky_Attack7:
	db "GFX_MiniNecky_Attack7.bin"
GFX_MiniNecky_Attack7End:
GFX_MiniNecky_Attack8:
	db "GFX_MiniNecky_Attack8.bin"
GFX_MiniNecky_Attack8End:
GFX_MiniNecky_Attack9:
	db "GFX_MiniNecky_Attack9.bin"
GFX_MiniNecky_Attack9End:
GFX_MiniNecky_Attack10:
	db "GFX_MiniNecky_Attack10.bin"
GFX_MiniNecky_Attack10End:
GFX_MiniNecky_Attack11:
	db "GFX_MiniNecky_Attack11.bin"
GFX_MiniNecky_Attack11End:
GFX_MiniNecky_Attack12:
	db "GFX_MiniNecky_Attack12.bin"
GFX_MiniNecky_Attack12End:
GFX_KrowsEggs_Bounce1:
	db "GFX_KrowsEggs_Bounce1.bin"
GFX_KrowsEggs_Bounce1End:
GFX_KrowsEggs_Bounce2:
	db "GFX_KrowsEggs_Bounce2.bin"
GFX_KrowsEggs_Bounce2End:
GFX_KrowsEggs_Bounce3:
	db "GFX_KrowsEggs_Bounce3.bin"
GFX_KrowsEggs_Bounce3End:
GFX_KrowsEggs_Bounce4:
	db "GFX_KrowsEggs_Bounce4.bin"
GFX_KrowsEggs_Bounce4End:
GFX_KrowsEggs_Bounce5:
	db "GFX_KrowsEggs_Bounce5.bin"
GFX_KrowsEggs_Bounce5End:
GFX_KrowsEggs_Bounce6:
	db "GFX_KrowsEggs_Bounce6.bin"
GFX_KrowsEggs_Bounce6End:
GFX_KrowsEggs_Bounce7:
	db "GFX_KrowsEggs_Bounce7.bin"
GFX_KrowsEggs_Bounce7End:
GFX_KrowsEggs_Bounce8:
	db "GFX_KrowsEggs_Bounce8.bin"
GFX_KrowsEggs_Bounce8End:
GFX_KrowsEggs_Bounce9:
	db "GFX_KrowsEggs_Bounce9.bin"
GFX_KrowsEggs_Bounce9End:
GFX_KrowsEggs_Bounce10:
	db "GFX_KrowsEggs_Bounce10.bin"
GFX_KrowsEggs_Bounce10End:
GFX_KrowsEggs_Bounce11:
	db "GFX_KrowsEggs_Bounce11.bin"
GFX_KrowsEggs_Bounce11End:
GFX_KrowsEggs_Bounce12:
	db "GFX_KrowsEggs_Bounce12.bin"
GFX_KrowsEggs_Bounce12End:
GFX_KrowsEggs_Bounce13:
	db "GFX_KrowsEggs_Bounce13.bin"
GFX_KrowsEggs_Bounce13End:
GFX_KrowsEggs_Bounce14:
	db "GFX_KrowsEggs_Bounce14.bin"
GFX_KrowsEggs_Bounce14End:
GFX_KrowsEggs_Bounce15:
	db "GFX_KrowsEggs_Bounce15.bin"
GFX_KrowsEggs_Bounce15End:
GFX_KrowsEggs_Bounce16:
	db "GFX_KrowsEggs_Bounce16.bin"
GFX_KrowsEggs_Bounce16End:
GFX_Klobber_Run1:
	db "GFX_Klobber_Run1.bin"
GFX_Klobber_Run1End:
GFX_Klobber_Run2:
	db "GFX_Klobber_Run2.bin"
GFX_Klobber_Run2End:
GFX_Klobber_Run3:
	db "GFX_Klobber_Run3.bin"
GFX_Klobber_Run3End:
GFX_Klobber_Run4:
	db "GFX_Klobber_Run4.bin"
GFX_Klobber_Run4End:
GFX_Klobber_Run5:
	db "GFX_Klobber_Run5.bin"
GFX_Klobber_Run5End:
GFX_Klobber_Run6:
	db "GFX_Klobber_Run6.bin"
GFX_Klobber_Run6End:
GFX_Klobber_Run7:
	db "GFX_Klobber_Run7.bin"
GFX_Klobber_Run7End:
GFX_Klobber_Run8:
	db "GFX_Klobber_Run8.bin"
GFX_Klobber_Run8End:
GFX_Klobber_Run9:
	db "GFX_Klobber_Run9.bin"
GFX_Klobber_Run9End:
GFX_Klobber_Run10:
	db "GFX_Klobber_Run10.bin"
GFX_Klobber_Run10End:
GFX_Klobber_Run11:
	db "GFX_Klobber_Run11.bin"
GFX_Klobber_Run11End:
GFX_KlobberBarrel_Run1:
	db "GFX_KlobberBarrel_Run1.bin"
GFX_KlobberBarrel_Run1End:
GFX_KlobberBarrel_Run2:
	db "GFX_KlobberBarrel_Run2.bin"
GFX_KlobberBarrel_Run2End:
GFX_KlobberBarrel_Run3:
	db "GFX_KlobberBarrel_Run3.bin"
GFX_KlobberBarrel_Run3End:
GFX_KlobberBarrel_Run4:
	db "GFX_KlobberBarrel_Run4.bin"
GFX_KlobberBarrel_Run4End:
GFX_KlobberBarrel_Run5:
	db "GFX_KlobberBarrel_Run5.bin"
GFX_KlobberBarrel_Run5End:
GFX_KlobberBarrel_Run6:
	db "GFX_KlobberBarrel_Run6.bin"
GFX_KlobberBarrel_Run6End:
GFX_KlobberBarrel_Run7:
	db "GFX_KlobberBarrel_Run7.bin"
GFX_KlobberBarrel_Run7End:
GFX_KlobberBarrel_Run8:
	db "GFX_KlobberBarrel_Run8.bin"
GFX_KlobberBarrel_Run8End:
GFX_KlobberBarrel_Run9:
	db "GFX_KlobberBarrel_Run9.bin"
GFX_KlobberBarrel_Run9End:
GFX_KlobberBarrel_Run10:
	db "GFX_KlobberBarrel_Run10.bin"
GFX_KlobberBarrel_Run10End:
GFX_KlobberBarrel_Run11:
	db "GFX_KlobberBarrel_Run11.bin"
GFX_KlobberBarrel_Run11End:
GFX_KrowsEggs_Crack1:
	db "GFX_KrowsEggs_Crack1.bin"
GFX_KrowsEggs_Crack1End:
GFX_KrowsEggs_Crack2:
	db "GFX_KrowsEggs_Crack2.bin"
GFX_KrowsEggs_Crack2End:
GFX_KrowsEggs_Crack3:
	db "GFX_KrowsEggs_Crack3.bin"
GFX_KrowsEggs_Crack3End:
GFX_KrowsEggs_Crack4:
	db "GFX_KrowsEggs_Crack4.bin"
GFX_KrowsEggs_Crack4End:
GFX_KrowsEggs_Crack5:
	db "GFX_KrowsEggs_Crack5.bin"
GFX_KrowsEggs_Crack5End:
GFX_Dixie_TeamUpWalk1:
	db "GFX_Dixie_TeamUpWalk1.bin"
GFX_Dixie_TeamUpWalk1End:
GFX_Dixie_TeamUpWalk2:
	db "GFX_Dixie_TeamUpWalk2.bin"
GFX_Dixie_TeamUpWalk2End:
GFX_Dixie_TeamUpWalk3:
	db "GFX_Dixie_TeamUpWalk3.bin"
GFX_Dixie_TeamUpWalk3End:
GFX_Dixie_TeamUpWalk4:
	db "GFX_Dixie_TeamUpWalk4.bin"
GFX_Dixie_TeamUpWalk4End:
GFX_Dixie_TeamUpWalk5:
	db "GFX_Dixie_TeamUpWalk5.bin"
GFX_Dixie_TeamUpWalk5End:
GFX_Dixie_TeamUpWalk6:
	db "GFX_Dixie_TeamUpWalk6.bin"
GFX_Dixie_TeamUpWalk6End:
GFX_Dixie_TeamUpWalk7:
	db "GFX_Dixie_TeamUpWalk7.bin"
GFX_Dixie_TeamUpWalk7End:
GFX_Dixie_TeamUpWalk8:
	db "GFX_Dixie_TeamUpWalk8.bin"
GFX_Dixie_TeamUpWalk8End:
GFX_Dixie_TeamUpWalk9:
	db "GFX_Dixie_TeamUpWalk9.bin"
GFX_Dixie_TeamUpWalk9End:
GFX_Dixie_TeamUpWalk10:
	db "GFX_Dixie_TeamUpWalk10.bin"
GFX_Dixie_TeamUpWalk10End:
GFX_Dixie_TeamUpWalk11:
	db "GFX_Dixie_TeamUpWalk11.bin"
GFX_Dixie_TeamUpWalk11End:
GFX_Diddy_Carried1:
	db "GFX_Diddy_Carried1.bin"
GFX_Diddy_Carried1End:
GFX_Diddy_Carried2:
	db "GFX_Diddy_Carried2.bin"
GFX_Diddy_Carried2End:
GFX_Diddy_Carried3:
	db "GFX_Diddy_Carried3.bin"
GFX_Diddy_Carried3End:
GFX_Diddy_Carried4:
	db "GFX_Diddy_Carried4.bin"
GFX_Diddy_Carried4End:
GFX_Diddy_Carried5:
	db "GFX_Diddy_Carried5.bin"
GFX_Diddy_Carried5End:
GFX_Diddy_Carried6:
	db "GFX_Diddy_Carried6.bin"
GFX_Diddy_Carried6End:
GFX_Diddy_Carried7:
	db "GFX_Diddy_Carried7.bin"
GFX_Diddy_Carried7End:
GFX_Diddy_Carried8:
	db "GFX_Diddy_Carried8.bin"
GFX_Diddy_Carried8End:
GFX_Diddy_Carried9:
	db "GFX_Diddy_Carried9.bin"
GFX_Diddy_Carried9End:
GFX_Diddy_Carried10:
	db "GFX_Diddy_Carried10.bin"
GFX_Diddy_Carried10End:
GFX_Diddy_Carried11:
	db "GFX_Diddy_Carried11.bin"
GFX_Diddy_Carried11End:
GFX_Diddy_Carried12:
	db "GFX_Diddy_Carried12.bin"
GFX_Diddy_Carried12End:
GFX_KrowBody_Idle1:
	db "GFX_KrowBody_Idle1.bin"
GFX_KrowBody_Idle1End:
GFX_KrowBody_Idle2:
	db "GFX_KrowBody_Idle2.bin"
GFX_KrowBody_Idle2End:
GFX_KrowBody_Idle3:
	db "GFX_KrowBody_Idle3.bin"
GFX_KrowBody_Idle3End:
GFX_KrowBody_Idle4:
	db "GFX_KrowBody_Idle4.bin"
GFX_KrowBody_Idle4End:
GFX_KrowBody_Idle5:
	db "GFX_KrowBody_Idle5.bin"
GFX_KrowBody_Idle5End:
GFX_KrowBody_Idle6:
	db "GFX_KrowBody_Idle6.bin"
GFX_KrowBody_Idle6End:
GFX_KrowBody_Idle7:
	db "GFX_KrowBody_Idle7.bin"
GFX_KrowBody_Idle7End:
GFX_KrowBody_Idle8:
	db "GFX_KrowBody_Idle8.bin"
GFX_KrowBody_Idle8End:
GFX_KrowBody_Idle9:
	db "GFX_KrowBody_Idle9.bin"
GFX_KrowBody_Idle9End:
GFX_KrowBody_Idle10:
	db "GFX_KrowBody_Idle10.bin"
GFX_KrowBody_Idle10End:
GFX_KrowBody_Turn1:
	db "GFX_KrowBody_Turn1.bin"
GFX_KrowBody_Turn1End:
GFX_KrowBody_Turn2:
	db "GFX_KrowBody_Turn2.bin"
GFX_KrowBody_Turn2End:
GFX_KrowHead_Dazed1:
	db "GFX_KrowHead_Dazed1.bin"
GFX_KrowHead_Dazed1End:
GFX_KrowHead_Dazed2:
	db "GFX_KrowHead_Dazed2.bin"
GFX_KrowHead_Dazed2End:
GFX_KrowHead_Turn1:
	db "GFX_KrowHead_Turn1.bin"
GFX_KrowHead_Turn1End:
GFX_KrowHead_Turn2:
	db "GFX_KrowHead_Turn2.bin"
GFX_KrowHead_Turn2End:
GFX_KrowHead_Turn3:
	db "GFX_KrowHead_Turn3.bin"
GFX_KrowHead_Turn3End:
GFX_KrowHead_Crow1:
	db "GFX_KrowHead_Crow1.bin"
GFX_KrowHead_Crow1End:
GFX_KrowHead_Crow2:
	db "GFX_KrowHead_Crow2.bin"
GFX_KrowHead_Crow2End:
GFX_KrowHead_Crow3:
	db "GFX_KrowHead_Crow3.bin"
GFX_KrowHead_Crow3End:
GFX_Dixie_TeamUpThrow1:
	db "GFX_Dixie_TeamUpThrow1.bin"
GFX_Dixie_TeamUpThrow1End:
GFX_Dixie_TeamUpThrow2:
	db "GFX_Dixie_TeamUpThrow2.bin"
GFX_Dixie_TeamUpThrow2End:
GFX_Dixie_TeamUpThrow3:
	db "GFX_Dixie_TeamUpThrow3.bin"
GFX_Dixie_TeamUpThrow3End:
GFX_Dixie_TeamUpThrow4:
	db "GFX_Dixie_TeamUpThrow4.bin"
GFX_Dixie_TeamUpThrow4End:
GFX_Dixie_TeamUpThrow5:
	db "GFX_Dixie_TeamUpThrow5.bin"
GFX_Dixie_TeamUpThrow5End:
GFX_Dixie_TeamUpThrow6:
	db "GFX_Dixie_TeamUpThrow6.bin"
GFX_Dixie_TeamUpThrow6End:
GFX_Dixie_TeamUpThrow7:
	db "GFX_Dixie_TeamUpThrow7.bin"
GFX_Dixie_TeamUpThrow7End:
GFX_Dixie_TeamUpThrow8:
	db "GFX_Dixie_TeamUpThrow8.bin"
GFX_Dixie_TeamUpThrow8End:
GFX_Dixie_TeamUpThrow9:
	db "GFX_Dixie_TeamUpThrow9.bin"
GFX_Dixie_TeamUpThrow9End:
GFX_Dixie_TeamUpThrow10:
	db "GFX_Dixie_TeamUpThrow10.bin"
GFX_Dixie_TeamUpThrow10End:
GFX_Dixie_TeamUpThrow11:
	db "GFX_Dixie_TeamUpThrow11.bin"
GFX_Dixie_TeamUpThrow11End:
GFX_Dixie_TeamUpThrow12:
	db "GFX_Dixie_TeamUpThrow12.bin"
GFX_Dixie_TeamUpThrow12End:
GFX_Dixie_TeamUpIdle1:
	db "GFX_Dixie_TeamUpIdle1.bin"
GFX_Dixie_TeamUpIdle1End:
GFX_Dixie_TeamUpIdle2:
	db "GFX_Dixie_TeamUpIdle2.bin"
GFX_Dixie_TeamUpIdle2End:
GFX_Dixie_TeamUpIdle3:
	db "GFX_Dixie_TeamUpIdle3.bin"
GFX_Dixie_TeamUpIdle3End:
GFX_Diddy_TeamUpWalk1:
	db "GFX_Diddy_TeamUpWalk1.bin"
GFX_Diddy_TeamUpWalk1End:
GFX_Diddy_TeamUpWalk2:
	db "GFX_Diddy_TeamUpWalk2.bin"
GFX_Diddy_TeamUpWalk2End:
GFX_Diddy_TeamUpWalk3:
	db "GFX_Diddy_TeamUpWalk3.bin"
GFX_Diddy_TeamUpWalk3End:
GFX_Diddy_TeamUpWalk4:
	db "GFX_Diddy_TeamUpWalk4.bin"
GFX_Diddy_TeamUpWalk4End:
GFX_Diddy_TeamUpWalk5:
	db "GFX_Diddy_TeamUpWalk5.bin"
GFX_Diddy_TeamUpWalk5End:
GFX_Diddy_TeamUpWalk6:
	db "GFX_Diddy_TeamUpWalk6.bin"
GFX_Diddy_TeamUpWalk6End:
GFX_Diddy_TeamUpWalk7:
	db "GFX_Diddy_TeamUpWalk7.bin"
GFX_Diddy_TeamUpWalk7End:
GFX_Diddy_TeamUpWalk8:
	db "GFX_Diddy_TeamUpWalk8.bin"
GFX_Diddy_TeamUpWalk8End:
GFX_Diddy_TeamUpWalk9:
	db "GFX_Diddy_TeamUpWalk9.bin"
GFX_Diddy_TeamUpWalk9End:
GFX_Diddy_TeamUpWalk10:
	db "GFX_Diddy_TeamUpWalk10.bin"
GFX_Diddy_TeamUpWalk10End:
GFX_Diddy_TeamUpWalk11:
	db "GFX_Diddy_TeamUpWalk11.bin"
GFX_Diddy_TeamUpWalk11End:
GFX_Diddy_CarriedWalk1:
	db "GFX_Diddy_CarriedWalk1.bin"
GFX_Diddy_CarriedWalk1End:
GFX_Diddy_CarriedWalk2:
	db "GFX_Diddy_CarriedWalk2.bin"
GFX_Diddy_CarriedWalk2End:
GFX_Diddy_CarriedWalk3:
	db "GFX_Diddy_CarriedWalk3.bin"
GFX_Diddy_CarriedWalk3End:
GFX_Diddy_CarriedWalk4:
	db "GFX_Diddy_CarriedWalk4.bin"
GFX_Diddy_CarriedWalk4End:
GFX_Diddy_CarriedWalk5:
	db "GFX_Diddy_CarriedWalk5.bin"
GFX_Diddy_CarriedWalk5End:
GFX_Diddy_CarriedWalk6:
	db "GFX_Diddy_CarriedWalk6.bin"
GFX_Diddy_CarriedWalk6End:
GFX_Diddy_CarriedWalk7:
	db "GFX_Diddy_CarriedWalk7.bin"
GFX_Diddy_CarriedWalk7End:
GFX_Diddy_CarriedWalk8:
	db "GFX_Diddy_CarriedWalk8.bin"
GFX_Diddy_CarriedWalk8End:
GFX_Diddy_CarriedWalk9:
	db "GFX_Diddy_CarriedWalk9.bin"
GFX_Diddy_CarriedWalk9End:
GFX_Diddy_CarriedWalk10:
	db "GFX_Diddy_CarriedWalk10.bin"
GFX_Diddy_CarriedWalk10End:
GFX_Diddy_CarriedWalk11:
	db "GFX_Diddy_CarriedWalk11.bin"
GFX_Diddy_CarriedWalk11End:
GFX_Diddy_RideSkullKart1:
	db "GFX_Diddy_RideSkullKart1.bin"
GFX_Diddy_RideSkullKart1End:
GFX_Diddy_RideSkullKart2:
	db "GFX_Diddy_RideSkullKart2.bin"
GFX_Diddy_RideSkullKart2End:
GFX_Diddy_RideSkullKart3:
	db "GFX_Diddy_RideSkullKart3.bin"
GFX_Diddy_RideSkullKart3End:
GFX_Diddy_RideSkullKart4:
	db "GFX_Diddy_RideSkullKart4.bin"
GFX_Diddy_RideSkullKart4End:
GFX_Diddy_RideSkullKart5:
	db "GFX_Diddy_RideSkullKart5.bin"
GFX_Diddy_RideSkullKart5End:
GFX_Diddy_RideSkullKart6:
	db "GFX_Diddy_RideSkullKart6.bin"
GFX_Diddy_RideSkullKart6End:
GFX_Diddy_RideSkullKart7:
	db "GFX_Diddy_RideSkullKart7.bin"
GFX_Diddy_RideSkullKart7End:
GFX_Diddy_RideSkullKart8:
	db "GFX_Diddy_RideSkullKart8.bin"
GFX_Diddy_RideSkullKart8End:
GFX_Diddy_RideSkullKart9:
	db "GFX_Diddy_RideSkullKart9.bin"
GFX_Diddy_RideSkullKart9End:
GFX_Diddy_RideSkullKart10:
	db "GFX_Diddy_RideSkullKart10.bin"
GFX_Diddy_RideSkullKart10End:
GFX_Diddy_RideSkullKart11:
	db "GFX_Diddy_RideSkullKart11.bin"
GFX_Diddy_RideSkullKart11End:
GFX_Diddy_RideSkullKart12:
	db "GFX_Diddy_RideSkullKart12.bin"
GFX_Diddy_RideSkullKart12End:
GFX_Diddy_RideSkullKart13:
	db "GFX_Diddy_RideSkullKart13.bin"
GFX_Diddy_RideSkullKart13End:
GFX_Diddy_RideSkullKart14:
	db "GFX_Diddy_RideSkullKart14.bin"
GFX_Diddy_RideSkullKart14End:
GFX_Diddy_RideSkullKart15:
	db "GFX_Diddy_RideSkullKart15.bin"
GFX_Diddy_RideSkullKart15End:
GFX_Diddy_RideSkullKart16:
	db "GFX_Diddy_RideSkullKart16.bin"
GFX_Diddy_RideSkullKart16End:
GFX_Diddy_RideSkullKart17:
	db "GFX_Diddy_RideSkullKart17.bin"
GFX_Diddy_RideSkullKart17End:
GFX_Diddy_RideSkullKart18:
	db "GFX_Diddy_RideSkullKart18.bin"
GFX_Diddy_RideSkullKart18End:
GFX_Diddy_RideSkullKart19:
	db "GFX_Diddy_RideSkullKart19.bin"
GFX_Diddy_RideSkullKart19End:
GFX_SkullKart_Moving1:
	db "GFX_SkullKart_Moving1.bin"
GFX_SkullKart_Moving1End:
GFX_SkullKart_Moving2:
	db "GFX_SkullKart_Moving2.bin"
GFX_SkullKart_Moving2End:
GFX_SkullKart_Moving3:
	db "GFX_SkullKart_Moving3.bin"
GFX_SkullKart_Moving3End:
GFX_SkullKart_Moving4:
	db "GFX_SkullKart_Moving4.bin"
GFX_SkullKart_Moving4End:
GFX_SkullKart_Moving5:
	db "GFX_SkullKart_Moving5.bin"
GFX_SkullKart_Moving5End:
GFX_SkullKart_Moving6:
	db "GFX_SkullKart_Moving6.bin"
GFX_SkullKart_Moving6End:
GFX_SkullKart_Moving7:
	db "GFX_SkullKart_Moving7.bin"
GFX_SkullKart_Moving7End:
GFX_SkullKart_Moving8:
	db "GFX_SkullKart_Moving8.bin"
GFX_SkullKart_Moving8End:
GFX_SkullKart_Moving9:
	db "GFX_SkullKart_Moving9.bin"
GFX_SkullKart_Moving9End:
GFX_SkullKart_Moving10:
	db "GFX_SkullKart_Moving10.bin"
GFX_SkullKart_Moving10End:
GFX_SkullKart_Moving11:
	db "GFX_SkullKart_Moving11.bin"
GFX_SkullKart_Moving11End:
GFX_SkullKart_Moving12:
	db "GFX_SkullKart_Moving12.bin"
GFX_SkullKart_Moving12End:
GFX_SkullKart_Moving13:
	db "GFX_SkullKart_Moving13.bin"
GFX_SkullKart_Moving13End:
GFX_SkullKart_Moving14:
	db "GFX_SkullKart_Moving14.bin"
GFX_SkullKart_Moving14End:
GFX_SkullKart_Moving15:
	db "GFX_SkullKart_Moving15.bin"
GFX_SkullKart_Moving15End:
GFX_SkullKart_Moving16:
	db "GFX_SkullKart_Moving16.bin"
GFX_SkullKart_Moving16End:
GFX_SkullKart_Moving17:
	db "GFX_SkullKart_Moving17.bin"
GFX_SkullKart_Moving17End:
GFX_SkullKart_Moving18:
	db "GFX_SkullKart_Moving18.bin"
GFX_SkullKart_Moving18End:
GFX_SkullKart_Moving19:
	db "GFX_SkullKart_Moving19.bin"
GFX_SkullKart_Moving19End:
GFX_Dixie_RideSkullKart1:
	db "GFX_Dixie_RideSkullKart1.bin"
GFX_Dixie_RideSkullKart1End:
GFX_Dixie_RideSkullKart2:
	db "GFX_Dixie_RideSkullKart2.bin"
GFX_Dixie_RideSkullKart2End:
GFX_Dixie_RideSkullKart3:
	db "GFX_Dixie_RideSkullKart3.bin"
GFX_Dixie_RideSkullKart3End:
GFX_Dixie_RideSkullKart4:
	db "GFX_Dixie_RideSkullKart4.bin"
GFX_Dixie_RideSkullKart4End:
GFX_Dixie_RideSkullKart5:
	db "GFX_Dixie_RideSkullKart5.bin"
GFX_Dixie_RideSkullKart5End:
GFX_Dixie_RideSkullKart6:
	db "GFX_Dixie_RideSkullKart6.bin"
GFX_Dixie_RideSkullKart6End:
GFX_Dixie_RideSkullKart7:
	db "GFX_Dixie_RideSkullKart7.bin"
GFX_Dixie_RideSkullKart7End:
GFX_Dixie_RideSkullKart8:
	db "GFX_Dixie_RideSkullKart8.bin"
GFX_Dixie_RideSkullKart8End:
GFX_Dixie_RideSkullKart9:
	db "GFX_Dixie_RideSkullKart9.bin"
GFX_Dixie_RideSkullKart9End:
GFX_Dixie_RideSkullKart10:
	db "GFX_Dixie_RideSkullKart10.bin"
GFX_Dixie_RideSkullKart10End:
GFX_Dixie_RideSkullKart11:
	db "GFX_Dixie_RideSkullKart11.bin"
GFX_Dixie_RideSkullKart11End:
GFX_Dixie_RideSkullKart12:
	db "GFX_Dixie_RideSkullKart12.bin"
GFX_Dixie_RideSkullKart12End:
GFX_Dixie_RideSkullKart13:
	db "GFX_Dixie_RideSkullKart13.bin"
GFX_Dixie_RideSkullKart13End:
GFX_Dixie_RideSkullKart14:
	db "GFX_Dixie_RideSkullKart14.bin"
GFX_Dixie_RideSkullKart14End:
GFX_Dixie_RideSkullKart15:
	db "GFX_Dixie_RideSkullKart15.bin"
GFX_Dixie_RideSkullKart15End:
GFX_Dixie_RideSkullKart16:
	db "GFX_Dixie_RideSkullKart16.bin"
GFX_Dixie_RideSkullKart16End:
GFX_Dixie_RideSkullKart17:
	db "GFX_Dixie_RideSkullKart17.bin"
GFX_Dixie_RideSkullKart17End:
GFX_Dixie_RideSkullKart18:
	db "GFX_Dixie_RideSkullKart18.bin"
GFX_Dixie_RideSkullKart18End:
GFX_Dixie_RideSkullKart19:
	db "GFX_Dixie_RideSkullKart19.bin"
GFX_Dixie_RideSkullKart19End:
GFX_Klobber_Turn1:
	db "GFX_Klobber_Turn1.bin"
GFX_Klobber_Turn1End:
GFX_Klobber_Turn2:
	db "GFX_Klobber_Turn2.bin"
GFX_Klobber_Turn2End:
GFX_KlobberBarrel_Turn1:
	db "GFX_KlobberBarrel_Turn1.bin"
GFX_KlobberBarrel_Turn1End:
GFX_KlobberBarrel_Turn2:
	db "GFX_KlobberBarrel_Turn2.bin"
GFX_KlobberBarrel_Turn2End:
GFX_Klobber_Hit:
	db "GFX_Klobber_Hit.bin"
GFX_Klobber_HitEnd:
GFX_Diddy_TeamUpLookBehind1:
	db "GFX_Diddy_TeamUpLookBehind1.bin"
GFX_Diddy_TeamUpLookBehind1End:
GFX_Diddy_TeamUpLookBehind2:
	db "GFX_Diddy_TeamUpLookBehind2.bin"
GFX_Diddy_TeamUpLookBehind2End:
GFX_Diddy_TeamUpLookBehind3:
	db "GFX_Diddy_TeamUpLookBehind3.bin"
GFX_Diddy_TeamUpLookBehind3End:
GFX_Diddy_TeamUpLookBehind4:
	db "GFX_Diddy_TeamUpLookBehind4.bin"
GFX_Diddy_TeamUpLookBehind4End:
GFX_Diddy_TeamUpLookBehind5:
	db "GFX_Diddy_TeamUpLookBehind5.bin"
GFX_Diddy_TeamUpLookBehind5End:
GFX_Diddy_TeamUpLookBehind6:
	db "GFX_Diddy_TeamUpLookBehind6.bin"
GFX_Diddy_TeamUpLookBehind6End:
GFX_Diddy_TeamUpLookBehind7:
	db "GFX_Diddy_TeamUpLookBehind7.bin"
GFX_Diddy_TeamUpLookBehind7End:
GFX_Diddy_TeamUpLookBehind8:
	db "GFX_Diddy_TeamUpLookBehind8.bin"
GFX_Diddy_TeamUpLookBehind8End:
GFX_Diddy_TeamUpIdle1:
	db "GFX_Diddy_TeamUpIdle1.bin"
GFX_Diddy_TeamUpIdle1End:
GFX_Diddy_TeamUpIdle2:
	db "GFX_Diddy_TeamUpIdle2.bin"
GFX_Diddy_TeamUpIdle2End:
GFX_Diddy_TeamUpIdle3:
	db "GFX_Diddy_TeamUpIdle3.bin"
GFX_Diddy_TeamUpIdle3End:
GFX_Dixie_TeamUpLookBehindIdle1:
	db "GFX_Dixie_TeamUpLookBehindIdle1.bin"
GFX_Dixie_TeamUpLookBehindIdle1End:
GFX_Dixie_TeamUpLookBehindIdle2:
	db "GFX_Dixie_TeamUpLookBehindIdle2.bin"
GFX_Dixie_TeamUpLookBehindIdle2End:
GFX_Dixie_TeamUpLookBehindIdle3:
	db "GFX_Dixie_TeamUpLookBehindIdle3.bin"
GFX_Dixie_TeamUpLookBehindIdle3End:
GFX_Dixie_TeamUpLookBehindIdle4:
	db "GFX_Dixie_TeamUpLookBehindIdle4.bin"
GFX_Dixie_TeamUpLookBehindIdle4End:
GFX_Dixie_TeamUpLookBehindIdle5:
	db "GFX_Dixie_TeamUpLookBehindIdle5.bin"
GFX_Dixie_TeamUpLookBehindIdle5End:
GFX_Dixie_TeamUpLookBehindIdle6:
	db "GFX_Dixie_TeamUpLookBehindIdle6.bin"
GFX_Dixie_TeamUpLookBehindIdle6End:
GFX_Dixie_TeamUpLookBehindIdle7:
	db "GFX_Dixie_TeamUpLookBehindIdle7.bin"
GFX_Dixie_TeamUpLookBehindIdle7End:
GFX_Dixie_TeamUpLookBehindIdle8:
	db "GFX_Dixie_TeamUpLookBehindIdle8.bin"
GFX_Dixie_TeamUpLookBehindIdle8End:
GFX_Dixie_TeamUpLookBehindIdle9:
	db "GFX_Dixie_TeamUpLookBehindIdle9.bin"
GFX_Dixie_TeamUpLookBehindIdle9End:
GFX_Dixie_TeamUpLookBehindIdle10:
	db "GFX_Dixie_TeamUpLookBehindIdle10.bin"
GFX_Dixie_TeamUpLookBehindIdle10End:
GFX_Dixie_TeamUpLookBehindIdle11:
	db "GFX_Dixie_TeamUpLookBehindIdle11.bin"
GFX_Dixie_TeamUpLookBehindIdle11End:
GFX_Dixie_TeamUpLookBehindIdle12:
	db "GFX_Dixie_TeamUpLookBehindIdle12.bin"
GFX_Dixie_TeamUpLookBehindIdle12End:
GFX_Dixie_TeamUpLookBehindIdle13:
	db "GFX_Dixie_TeamUpLookBehindIdle13.bin"
GFX_Dixie_TeamUpLookBehindIdle13End:
GFX_Dixie_TeamUpLookBehindIdle14:
	db "GFX_Dixie_TeamUpLookBehindIdle14.bin"
GFX_Dixie_TeamUpLookBehindIdle14End:
GFX_Dixie_TeamUpLookBehindIdle15:
	db "GFX_Dixie_TeamUpLookBehindIdle15.bin"
GFX_Dixie_TeamUpLookBehindIdle15End:
GFX_Dixie_TeamUpLookBehindIdle16:
	db "GFX_Dixie_TeamUpLookBehindIdle16.bin"
GFX_Dixie_TeamUpLookBehindIdle16End:
GFX_Diddy_ClimbHorizontalRope1:
	db "GFX_Diddy_ClimbHorizontalRope1.bin"
GFX_Diddy_ClimbHorizontalRope1End:
GFX_Diddy_ClimbHorizontalRope2:
	db "GFX_Diddy_ClimbHorizontalRope2.bin"
GFX_Diddy_ClimbHorizontalRope2End:
GFX_Diddy_ClimbHorizontalRope3:
	db "GFX_Diddy_ClimbHorizontalRope3.bin"
GFX_Diddy_ClimbHorizontalRope3End:
GFX_Diddy_ClimbHorizontalRope4:
	db "GFX_Diddy_ClimbHorizontalRope4.bin"
GFX_Diddy_ClimbHorizontalRope4End:
GFX_Diddy_ClimbHorizontalRope5:
	db "GFX_Diddy_ClimbHorizontalRope5.bin"
GFX_Diddy_ClimbHorizontalRope5End:
GFX_Diddy_ClimbHorizontalRope6:
	db "GFX_Diddy_ClimbHorizontalRope6.bin"
GFX_Diddy_ClimbHorizontalRope6End:
GFX_Diddy_ClimbHorizontalRope7:
	db "GFX_Diddy_ClimbHorizontalRope7.bin"
GFX_Diddy_ClimbHorizontalRope7End:
GFX_Diddy_ClimbHorizontalRope8:
	db "GFX_Diddy_ClimbHorizontalRope8.bin"
GFX_Diddy_ClimbHorizontalRope8End:
GFX_Diddy_ClimbHorizontalRope9:
	db "GFX_Diddy_ClimbHorizontalRope9.bin"
GFX_Diddy_ClimbHorizontalRope9End:
GFX_Diddy_ClimbHorizontalRope10:
	db "GFX_Diddy_ClimbHorizontalRope10.bin"
GFX_Diddy_ClimbHorizontalRope10End:
GFX_Diddy_ClimbHorizontalRope11:
	db "GFX_Diddy_ClimbHorizontalRope11.bin"
GFX_Diddy_ClimbHorizontalRope11End:
GFX_Diddy_ClimbHorizontalRope12:
	db "GFX_Diddy_ClimbHorizontalRope12.bin"
GFX_Diddy_ClimbHorizontalRope12End:
GFX_Diddy_ClimbHorizontalRope13:
	db "GFX_Diddy_ClimbHorizontalRope13.bin"
GFX_Diddy_ClimbHorizontalRope13End:
GFX_Diddy_ClimbHorizontalRope14:
	db "GFX_Diddy_ClimbHorizontalRope14.bin"
GFX_Diddy_ClimbHorizontalRope14End:
GFX_Diddy_ClimbHorizontalRope15:
	db "GFX_Diddy_ClimbHorizontalRope15.bin"
GFX_Diddy_ClimbHorizontalRope15End:
GFX_Diddy_ClimbHorizontalRope16:
	db "GFX_Diddy_ClimbHorizontalRope16.bin"
GFX_Diddy_ClimbHorizontalRope16End:
GFX_Diddy_ClimbHorizontalRope17:
	db "GFX_Diddy_ClimbHorizontalRope17.bin"
GFX_Diddy_ClimbHorizontalRope17End:
GFX_Diddy_ClimbHorizontalRope18:
	db "GFX_Diddy_ClimbHorizontalRope18.bin"
GFX_Diddy_ClimbHorizontalRope18End:
GFX_ClickClack_Turn1:
	db "GFX_ClickClack_Turn1.bin"
GFX_ClickClack_Turn1End:
GFX_ClickClack_Turn2:
	db "GFX_ClickClack_Turn2.bin"
GFX_ClickClack_Turn2End:
GFX_Kannon_Dead1:
	db "GFX_Kannon_Dead1.bin"
GFX_Kannon_Dead1End:
GFX_Kannon_Dead2:
	db "GFX_Kannon_Dead2.bin"
GFX_Kannon_Dead2End:
GFX_Kannon_Dead3:
	db "GFX_Kannon_Dead3.bin"
GFX_Kannon_Dead3End:
GFX_Kannon_Dead4:
	db "GFX_Kannon_Dead4.bin"
GFX_Kannon_Dead4End:
GFX_Kannon_ShootSideways1:
	db "GFX_Kannon_ShootSideways1.bin"
GFX_Kannon_ShootSideways1End:
GFX_Kannon_ShootSideways2:
	db "GFX_Kannon_ShootSideways2.bin"
GFX_Kannon_ShootSideways2End:
GFX_Kannon_ShootSideways3:
	db "GFX_Kannon_ShootSideways3.bin"
GFX_Kannon_ShootSideways3End:
GFX_Kannon_ShootSideways4:
	db "GFX_Kannon_ShootSideways4.bin"
GFX_Kannon_ShootSideways4End:
GFX_Kannon_ShootSideways5:
	db "GFX_Kannon_ShootSideways5.bin"
GFX_Kannon_ShootSideways5End:
GFX_Kannon_ShootSideways6:
	db "GFX_Kannon_ShootSideways6.bin"
GFX_Kannon_ShootSideways6End:
GFX_Kannon_ShootSideways7:
	db "GFX_Kannon_ShootSideways7.bin"
GFX_Kannon_ShootSideways7End:
GFX_Kruncha_Turn1:
	db "GFX_Kruncha_Turn1.bin"
GFX_Kruncha_Turn1End:
GFX_Kruncha_Turn2:
	db "GFX_Kruncha_Turn2.bin"
GFX_Kruncha_Turn2End:
GFX_Kruncha_Dead1:
	db "GFX_Kruncha_Dead1.bin"
GFX_Kruncha_Dead1End:
GFX_Kruncha_Dead2:
	db "GFX_Kruncha_Dead2.bin"
GFX_Kruncha_Dead2End:
GFX_Kruncha_Dead3:
	db "GFX_Kruncha_Dead3.bin"
GFX_Kruncha_Dead3End:
GFX_Kruncha_Dead4:
	db "GFX_Kruncha_Dead4.bin"
GFX_Kruncha_Dead4End:
GFX_Kruncha_Dead5:
	db "GFX_Kruncha_Dead5.bin"
GFX_Kruncha_Dead5End:
GFX_Kruncha_Dead6:
	db "GFX_Kruncha_Dead6.bin"
GFX_Kruncha_Dead6End:
GFX_Kruncha_Enrage1:
	db "GFX_Kruncha_Enrage1.bin"
GFX_Kruncha_Enrage1End:
GFX_Kruncha_Enrage2:
	db "GFX_Kruncha_Enrage2.bin"
GFX_Kruncha_Enrage2End:
GFX_Kruncha_Enrage3:
	db "GFX_Kruncha_Enrage3.bin"
GFX_Kruncha_Enrage3End:
GFX_Kruncha_Enrage4:
	db "GFX_Kruncha_Enrage4.bin"
GFX_Kruncha_Enrage4End:
GFX_Kruncha_Enrage5:
	db "GFX_Kruncha_Enrage5.bin"
GFX_Kruncha_Enrage5End:
GFX_Kruncha_Enrage6:
	db "GFX_Kruncha_Enrage6.bin"
GFX_Kruncha_Enrage6End:
GFX_Kruncha_Enrage7:
	db "GFX_Kruncha_Enrage7.bin"
GFX_Kruncha_Enrage7End:
GFX_Kruncha_Enrage8:
	db "GFX_Kruncha_Enrage8.bin"
GFX_Kruncha_Enrage8End:
GFX_Kruncha_Enrage9:
	db "GFX_Kruncha_Enrage9.bin"
GFX_Kruncha_Enrage9End:
GFX_Kruncha_Enrage10:
	db "GFX_Kruncha_Enrage10.bin"
GFX_Kruncha_Enrage10End:
GFX_Kannon_ShootDown1:
	db "GFX_Kannon_ShootDown1.bin"
GFX_Kannon_ShootDown1End:
GFX_Kannon_ShootDown2:
	db "GFX_Kannon_ShootDown2.bin"
GFX_Kannon_ShootDown2End:
GFX_Kannon_ShootDown3:
	db "GFX_Kannon_ShootDown3.bin"
GFX_Kannon_ShootDown3End:
GFX_Kannon_ShootDown4:
	db "GFX_Kannon_ShootDown4.bin"
GFX_Kannon_ShootDown4End:
GFX_Kannon_ShootDown5:
	db "GFX_Kannon_ShootDown5.bin"
GFX_Kannon_ShootDown5End:
GFX_Kannon_ShootDown6:
	db "GFX_Kannon_ShootDown6.bin"
GFX_Kannon_ShootDown6End:
GFX_TNTKlobberBarrel_Run1:
	db "GFX_TNTKlobberBarrel_Run1.bin"
GFX_TNTKlobberBarrel_Run1End:
GFX_TNTKlobberBarrel_Run2:
	db "GFX_TNTKlobberBarrel_Run2.bin"
GFX_TNTKlobberBarrel_Run2End:
GFX_TNTKlobberBarrel_Run3:
	db "GFX_TNTKlobberBarrel_Run3.bin"
GFX_TNTKlobberBarrel_Run3End:
GFX_TNTKlobberBarrel_Run4:
	db "GFX_TNTKlobberBarrel_Run4.bin"
GFX_TNTKlobberBarrel_Run4End:
GFX_TNTKlobberBarrel_Run5:
	db "GFX_TNTKlobberBarrel_Run5.bin"
GFX_TNTKlobberBarrel_Run5End:
GFX_TNTKlobberBarrel_Run6:
	db "GFX_TNTKlobberBarrel_Run6.bin"
GFX_TNTKlobberBarrel_Run6End:
GFX_TNTKlobberBarrel_Run7:
	db "GFX_TNTKlobberBarrel_Run7.bin"
GFX_TNTKlobberBarrel_Run7End:
GFX_TNTKlobberBarrel_Run8:
	db "GFX_TNTKlobberBarrel_Run8.bin"
GFX_TNTKlobberBarrel_Run8End:
GFX_TNTKlobberBarrel_Run9:
	db "GFX_TNTKlobberBarrel_Run9.bin"
GFX_TNTKlobberBarrel_Run9End:
GFX_TNTKlobberBarrel_Run10:
	db "GFX_TNTKlobberBarrel_Run10.bin"
GFX_TNTKlobberBarrel_Run10End:
GFX_TNTKlobberBarrel_Run11:
	db "GFX_TNTKlobberBarrel_Run11.bin"
GFX_TNTKlobberBarrel_Run11End:
GFX_TNTKlobberBarrel_Run12:
	db "GFX_TNTKlobberBarrel_Run12.bin"
GFX_TNTKlobberBarrel_Run12End:
GFX_Kutlass_Turn1:
	db "GFX_Kutlass_Turn1.bin"
GFX_Kutlass_Turn1End:
GFX_Kutlass_Turn2:
	db "GFX_Kutlass_Turn2.bin"
GFX_Kutlass_Turn2End:
GFX_Kutlass_Dead1:
	db "GFX_Kutlass_Dead1.bin"
GFX_Kutlass_Dead1End:
GFX_Kutlass_Dead2:
	db "GFX_Kutlass_Dead2.bin"
GFX_Kutlass_Dead2End:
GFX_Kutlass_Dead3:
	db "GFX_Kutlass_Dead3.bin"
GFX_Kutlass_Dead3End:
GFX_Kutlass_Dead4:
	db "GFX_Kutlass_Dead4.bin"
GFX_Kutlass_Dead4End:
GFX_Explosion_Idle1:
	db "GFX_Explosion_Idle1.bin"
GFX_Explosion_Idle1End:
GFX_Explosion_Idle2:
	db "GFX_Explosion_Idle2.bin"
GFX_Explosion_Idle2End:
GFX_Explosion_Idle3:
	db "GFX_Explosion_Idle3.bin"
GFX_Explosion_Idle3End:
GFX_Explosion_Idle4:
	db "GFX_Explosion_Idle4.bin"
GFX_Explosion_Idle4End:
GFX_Explosion_Idle5:
	db "GFX_Explosion_Idle5.bin"
GFX_Explosion_Idle5End:
GFX_Explosion_Idle6:
	db "GFX_Explosion_Idle6.bin"
GFX_Explosion_Idle6End:
GFX_Explosion_Idle7:
	db "GFX_Explosion_Idle7.bin"
GFX_Explosion_Idle7End:
GFX_Explosion_Idle8:
	db "GFX_Explosion_Idle8.bin"
GFX_Explosion_Idle8End:
GFX_Explosion_Idle9:
	db "GFX_Explosion_Idle9.bin"
GFX_Explosion_Idle9End:
GFX_Explosion_Idle10:
	db "GFX_Explosion_Idle10.bin"
GFX_Explosion_Idle10End:
GFX_Explosion_Idle11:
	db "GFX_Explosion_Idle11.bin"
GFX_Explosion_Idle11End:
GFX_Explosion_Idle12:
	db "GFX_Explosion_Idle12.bin"
GFX_Explosion_Idle12End:
GFX_Explosion_Idle13:
	db "GFX_Explosion_Idle13.bin"
GFX_Explosion_Idle13End:
GFX_Explosion_Idle14:
	db "GFX_Explosion_Idle14.bin"
GFX_Explosion_Idle14End:
GFX_Explosion_Idle15:
	db "GFX_Explosion_Idle15.bin"
GFX_Explosion_Idle15End:
GFX_TNTBarrel_PickUp1:
	db "GFX_TNTBarrel_PickUp1.bin"
GFX_TNTBarrel_PickUp1End:
GFX_TNTBarrel_PickUp2:
	db "GFX_TNTBarrel_PickUp2.bin"
GFX_TNTBarrel_PickUp2End:
GFX_TNTBarrel_PickUp3:
	db "GFX_TNTBarrel_PickUp3.bin"
GFX_TNTBarrel_PickUp3End:
GFX_TNTBarrel_PickUp4:
	db "GFX_TNTBarrel_PickUp4.bin"
GFX_TNTBarrel_PickUp4End:
GFX_Fireworks_CircleExplosion1:
	db "GFX_Fireworks_CircleExplosion1.bin"
GFX_Fireworks_CircleExplosion1End:
GFX_Fireworks_CircleExplosion2:
	db "GFX_Fireworks_CircleExplosion2.bin"
GFX_Fireworks_CircleExplosion2End:
GFX_Fireworks_CircleExplosion3:
	db "GFX_Fireworks_CircleExplosion3.bin"
GFX_Fireworks_CircleExplosion3End:
GFX_Fireworks_CircleExplosion4:
	db "GFX_Fireworks_CircleExplosion4.bin"
GFX_Fireworks_CircleExplosion4End:
GFX_Fireworks_CircleExplosion5:
	db "GFX_Fireworks_CircleExplosion5.bin"
GFX_Fireworks_CircleExplosion5End:
GFX_Fireworks_CircleExplosion6:
	db "GFX_Fireworks_CircleExplosion6.bin"
GFX_Fireworks_CircleExplosion6End:
GFX_Fireworks_CircleExplosion7:
	db "GFX_Fireworks_CircleExplosion7.bin"
GFX_Fireworks_CircleExplosion7End:
GFX_Fireworks_CircleExplosion8:
	db "GFX_Fireworks_CircleExplosion8.bin"
GFX_Fireworks_CircleExplosion8End:
GFX_Fireworks_CircleExplosion9:
	db "GFX_Fireworks_CircleExplosion9.bin"
GFX_Fireworks_CircleExplosion9End:
GFX_Fireworks_CircleExplosion10:
	db "GFX_Fireworks_CircleExplosion10.bin"
GFX_Fireworks_CircleExplosion10End:
GFX_Fireworks_OvalExplosion1:
	db "GFX_Fireworks_OvalExplosion1.bin"
GFX_Fireworks_OvalExplosion1End:
GFX_Fireworks_OvalExplosion2:
	db "GFX_Fireworks_OvalExplosion2.bin"
GFX_Fireworks_OvalExplosion2End:
GFX_Fireworks_OvalExplosion3:
	db "GFX_Fireworks_OvalExplosion3.bin"
GFX_Fireworks_OvalExplosion3End:
GFX_Fireworks_OvalExplosion4:
	db "GFX_Fireworks_OvalExplosion4.bin"
GFX_Fireworks_OvalExplosion4End:
GFX_Fireworks_OvalExplosion5:
	db "GFX_Fireworks_OvalExplosion5.bin"
GFX_Fireworks_OvalExplosion5End:
GFX_Fireworks_OvalExplosion6:
	db "GFX_Fireworks_OvalExplosion6.bin"
GFX_Fireworks_OvalExplosion6End:
GFX_Fireworks_OvalExplosion7:
	db "GFX_Fireworks_OvalExplosion7.bin"
GFX_Fireworks_OvalExplosion7End:
GFX_KRoolsNote_Float:
	db "GFX_KRoolsNote_Float.bin"
GFX_KRoolsNote_FloatEnd:
GFX_Diddy_TeamUpThrow1:
	db "GFX_Diddy_TeamUpThrow1.bin"
GFX_Diddy_TeamUpThrow1End:
GFX_Diddy_TeamUpThrow2:
	db "GFX_Diddy_TeamUpThrow2.bin"
GFX_Diddy_TeamUpThrow2End:
GFX_Diddy_TeamUpThrow3:
	db "GFX_Diddy_TeamUpThrow3.bin"
GFX_Diddy_TeamUpThrow3End:
GFX_Diddy_TeamUpThrow4:
	db "GFX_Diddy_TeamUpThrow4.bin"
GFX_Diddy_TeamUpThrow4End:
GFX_Diddy_TeamUpThrow5:
	db "GFX_Diddy_TeamUpThrow5.bin"
GFX_Diddy_TeamUpThrow5End:
GFX_Diddy_TeamUpThrow6:
	db "GFX_Diddy_TeamUpThrow6.bin"
GFX_Diddy_TeamUpThrow6End:
GFX_Diddy_TeamUpThrow7:
	db "GFX_Diddy_TeamUpThrow7.bin"
GFX_Diddy_TeamUpThrow7End:
GFX_Dixie_BeingThrown1:
	db "GFX_Dixie_BeingThrown1.bin"
GFX_Dixie_BeingThrown1End:
GFX_Dixie_BeingThrown2:
	db "GFX_Dixie_BeingThrown2.bin"
GFX_Dixie_BeingThrown2End:
GFX_Dixie_BeingThrown3:
	db "GFX_Dixie_BeingThrown3.bin"
GFX_Dixie_BeingThrown3End:
GFX_Dixie_BeingThrown4:
	db "GFX_Dixie_BeingThrown4.bin"
GFX_Dixie_BeingThrown4End:
GFX_Dixie_BeingThrown5:
	db "GFX_Dixie_BeingThrown5.bin"
GFX_Dixie_BeingThrown5End:
GFX_Dixie_BeingThrown6:
	db "GFX_Dixie_BeingThrown6.bin"
GFX_Dixie_BeingThrown6End:
GFX_Dixie_BeingThrown7:
	db "GFX_Dixie_BeingThrown7.bin"
GFX_Dixie_BeingThrown7End:
GFX_Dixie_Carried1:
	db "GFX_Dixie_Carried1.bin"
GFX_Dixie_Carried1End:
GFX_Dixie_Carried2:
	db "GFX_Dixie_Carried2.bin"
GFX_Dixie_Carried2End:
GFX_Dixie_Carried3:
	db "GFX_Dixie_Carried3.bin"
GFX_Dixie_Carried3End:
GFX_Dixie_ClimbHorizontalRope1:
	db "GFX_Dixie_ClimbHorizontalRope1.bin"
GFX_Dixie_ClimbHorizontalRope1End:
GFX_Dixie_ClimbHorizontalRope2:
	db "GFX_Dixie_ClimbHorizontalRope2.bin"
GFX_Dixie_ClimbHorizontalRope2End:
GFX_Dixie_ClimbHorizontalRope3:
	db "GFX_Dixie_ClimbHorizontalRope3.bin"
GFX_Dixie_ClimbHorizontalRope3End:
GFX_Dixie_ClimbHorizontalRope4:
	db "GFX_Dixie_ClimbHorizontalRope4.bin"
GFX_Dixie_ClimbHorizontalRope4End:
GFX_Dixie_ClimbHorizontalRope5:
	db "GFX_Dixie_ClimbHorizontalRope5.bin"
GFX_Dixie_ClimbHorizontalRope5End:
GFX_Dixie_ClimbHorizontalRope6:
	db "GFX_Dixie_ClimbHorizontalRope6.bin"
GFX_Dixie_ClimbHorizontalRope6End:
GFX_Dixie_ClimbHorizontalRope7:
	db "GFX_Dixie_ClimbHorizontalRope7.bin"
GFX_Dixie_ClimbHorizontalRope7End:
GFX_Dixie_ClimbHorizontalRope8:
	db "GFX_Dixie_ClimbHorizontalRope8.bin"
GFX_Dixie_ClimbHorizontalRope8End:
GFX_Dixie_ClimbHorizontalRope9:
	db "GFX_Dixie_ClimbHorizontalRope9.bin"
GFX_Dixie_ClimbHorizontalRope9End:
GFX_Dixie_ClimbHorizontalRope10:
	db "GFX_Dixie_ClimbHorizontalRope10.bin"
GFX_Dixie_ClimbHorizontalRope10End:
GFX_Dixie_ClimbHorizontalRope11:
	db "GFX_Dixie_ClimbHorizontalRope11.bin"
GFX_Dixie_ClimbHorizontalRope11End:
GFX_Dixie_ClimbHorizontalRope12:
	db "GFX_Dixie_ClimbHorizontalRope12.bin"
GFX_Dixie_ClimbHorizontalRope12End:
GFX_Dixie_ClimbHorizontalRope13:
	db "GFX_Dixie_ClimbHorizontalRope13.bin"
GFX_Dixie_ClimbHorizontalRope13End:
GFX_Dixie_ClimbHorizontalRope14:
	db "GFX_Dixie_ClimbHorizontalRope14.bin"
GFX_Dixie_ClimbHorizontalRope14End:
GFX_Dixie_ClimbHorizontalRope15:
	db "GFX_Dixie_ClimbHorizontalRope15.bin"
GFX_Dixie_ClimbHorizontalRope15End:
GFX_Dixie_ClimbHorizontalRope16:
	db "GFX_Dixie_ClimbHorizontalRope16.bin"
GFX_Dixie_ClimbHorizontalRope16End:
GFX_Dixie_ClimbUpSingleVerticalRope1:
	db "GFX_Dixie_ClimbUpSingleVerticalRope1.bin"
GFX_Dixie_ClimbUpSingleVerticalRope1End:
GFX_Dixie_ClimbUpSingleVerticalRope2:
	db "GFX_Dixie_ClimbUpSingleVerticalRope2.bin"
GFX_Dixie_ClimbUpSingleVerticalRope2End:
GFX_Dixie_ClimbUpSingleVerticalRope3:
	db "GFX_Dixie_ClimbUpSingleVerticalRope3.bin"
GFX_Dixie_ClimbUpSingleVerticalRope3End:
GFX_Dixie_ClimbUpSingleVerticalRope4:
	db "GFX_Dixie_ClimbUpSingleVerticalRope4.bin"
GFX_Dixie_ClimbUpSingleVerticalRope4End:
GFX_Dixie_ClimbUpSingleVerticalRope5:
	db "GFX_Dixie_ClimbUpSingleVerticalRope5.bin"
GFX_Dixie_ClimbUpSingleVerticalRope5End:
GFX_Dixie_ClimbUpSingleVerticalRope6:
	db "GFX_Dixie_ClimbUpSingleVerticalRope6.bin"
GFX_Dixie_ClimbUpSingleVerticalRope6End:
GFX_Dixie_ClimbUpSingleVerticalRope7:
	db "GFX_Dixie_ClimbUpSingleVerticalRope7.bin"
GFX_Dixie_ClimbUpSingleVerticalRope7End:
GFX_Dixie_ClimbUpSingleVerticalRope8:
	db "GFX_Dixie_ClimbUpSingleVerticalRope8.bin"
GFX_Dixie_ClimbUpSingleVerticalRope8End:
GFX_Dixie_ClimbUpSingleVerticalRope9:
	db "GFX_Dixie_ClimbUpSingleVerticalRope9.bin"
GFX_Dixie_ClimbUpSingleVerticalRope9End:
GFX_Dixie_ClimbUpSingleVerticalRope10:
	db "GFX_Dixie_ClimbUpSingleVerticalRope10.bin"
GFX_Dixie_ClimbUpSingleVerticalRope10End:
GFX_Dixie_ClimbUpSingleVerticalRope11:
	db "GFX_Dixie_ClimbUpSingleVerticalRope11.bin"
GFX_Dixie_ClimbUpSingleVerticalRope11End:
GFX_Dixie_ClimbUpSingleVerticalRope12:
	db "GFX_Dixie_ClimbUpSingleVerticalRope12.bin"
GFX_Dixie_ClimbUpSingleVerticalRope12End:
GFX_RollercoasterGate_Idle:
	db "GFX_RollercoasterGate_Idle.bin"
GFX_RollercoasterGate_IdleEnd:
GFX_GhostRope_Appear1:
	db "GFX_GhostRope_Appear1.bin"
GFX_GhostRope_Appear1End:
GFX_GhostRope_Appear2:
	db "GFX_GhostRope_Appear2.bin"
GFX_GhostRope_Appear2End:
GFX_GhostRope_Appear3:
	db "GFX_GhostRope_Appear3.bin"
GFX_GhostRope_Appear3End:
GFX_GhostRope_Appear4:
	db "GFX_GhostRope_Appear4.bin"
GFX_GhostRope_Appear4End:
GFX_GhostRope_Appear5:
	db "GFX_GhostRope_Appear5.bin"
GFX_GhostRope_Appear5End:
GFX_GhostRope_Appear6:
	db "GFX_GhostRope_Appear6.bin"
GFX_GhostRope_Appear6End:
GFX_GhostRope_Appear7:
	db "GFX_GhostRope_Appear7.bin"
GFX_GhostRope_Appear7End:
GFX_GhostRope_Disappear1:
	db "GFX_GhostRope_Disappear1.bin"
GFX_GhostRope_Disappear1End:
GFX_GhostRope_Disappear2:
	db "GFX_GhostRope_Disappear2.bin"
GFX_GhostRope_Disappear2End:
GFX_GhostRope_Disappear3:
	db "GFX_GhostRope_Disappear3.bin"
GFX_GhostRope_Disappear3End:
GFX_GhostRope_Disappear4:
	db "GFX_GhostRope_Disappear4.bin"
GFX_GhostRope_Disappear4End:
GFX_GhostRope_Disappear5:
	db "GFX_GhostRope_Disappear5.bin"
GFX_GhostRope_Disappear5End:
GFX_GhostRope_Disappear6:
	db "GFX_GhostRope_Disappear6.bin"
GFX_GhostRope_Disappear6End:
GFX_GhostRope_Disappear7:
	db "GFX_GhostRope_Disappear7.bin"
GFX_GhostRope_Disappear7End:
GFX_GhostRope_Disappear8:
	db "GFX_GhostRope_Disappear8.bin"
GFX_GhostRope_Disappear8End:
GFX_GhostRope_AboutToDisappear:
	db "GFX_GhostRope_AboutToDisappear.bin"
GFX_GhostRope_AboutToDisappearEnd:
GFX_GhostRope_Idle:
	db "GFX_GhostRope_Idle.bin"
GFX_GhostRope_IdleEnd:
GFX_GhostRope_Unknown1:
	db "GFX_GhostRope_Unknown1.bin"
GFX_GhostRope_Unknown1End:
GFX_GhostRope_Unknown2:
	db "GFX_GhostRope_Unknown2.bin"
GFX_GhostRope_Unknown2End:
GFX_Kaboing_Jumping1:
	db "GFX_Kaboing_Jumping1.bin"
GFX_Kaboing_Jumping1End:
GFX_Kaboing_Jumping2:
	db "GFX_Kaboing_Jumping2.bin"
GFX_Kaboing_Jumping2End:
GFX_Kaboing_Jumping3:
	db "GFX_Kaboing_Jumping3.bin"
GFX_Kaboing_Jumping3End:
GFX_Kaboing_Jumping4:
	db "GFX_Kaboing_Jumping4.bin"
GFX_Kaboing_Jumping4End:
GFX_Kaboing_Jumping5:
	db "GFX_Kaboing_Jumping5.bin"
GFX_Kaboing_Jumping5End:
GFX_Kaboing_Jumping6:
	db "GFX_Kaboing_Jumping6.bin"
GFX_Kaboing_Jumping6End:
GFX_Kaboing_Jumping7:
	db "GFX_Kaboing_Jumping7.bin"
GFX_Kaboing_Jumping7End:
GFX_Kaboing_Jumping8:
	db "GFX_Kaboing_Jumping8.bin"
GFX_Kaboing_Jumping8End:
GFX_Kaboing_Jumping9:
	db "GFX_Kaboing_Jumping9.bin"
GFX_Kaboing_Jumping9End:
GFX_Kaboing_Jumping10:
	db "GFX_Kaboing_Jumping10.bin"
GFX_Kaboing_Jumping10End:
GFX_Kaboing_Jumping11:
	db "GFX_Kaboing_Jumping11.bin"
GFX_Kaboing_Jumping11End:
GFX_Kaboing_Jumping12:
	db "GFX_Kaboing_Jumping12.bin"
GFX_Kaboing_Jumping12End:
GFX_Kaboing_Jumping13:
	db "GFX_Kaboing_Jumping13.bin"
GFX_Kaboing_Jumping13End:
GFX_Zinger_Fly1:
	db "GFX_Zinger_Fly1.bin"
GFX_Zinger_Fly1End:
GFX_Zinger_Fly2:
	db "GFX_Zinger_Fly2.bin"
GFX_Zinger_Fly2End:
GFX_Zinger_Fly3:
	db "GFX_Zinger_Fly3.bin"
GFX_Zinger_Fly3End:
GFX_Zinger_Fly4:
	db "GFX_Zinger_Fly4.bin"
GFX_Zinger_Fly4End:
GFX_Zinger_Fly5:
	db "GFX_Zinger_Fly5.bin"
GFX_Zinger_Fly5End:
GFX_Zinger_Fly6:
	db "GFX_Zinger_Fly6.bin"
GFX_Zinger_Fly6End:
GFX_Zinger_Fly7:
	db "GFX_Zinger_Fly7.bin"
GFX_Zinger_Fly7End:
GFX_Zinger_Fly8:
	db "GFX_Zinger_Fly8.bin"
GFX_Zinger_Fly8End:
GFX_Zinger_Turn1:
	db "GFX_Zinger_Turn1.bin"
GFX_Zinger_Turn1End:
GFX_Zinger_Turn2:
	db "GFX_Zinger_Turn2.bin"
GFX_Zinger_Turn2End:
GFX_Puftup_Dead1:
	db "GFX_Puftup_Dead1.bin"
GFX_Puftup_Dead1End:
GFX_Puftup_Dead2:
	db "GFX_Puftup_Dead2.bin"
GFX_Puftup_Dead2End:
GFX_Puftup_Dead3:
	db "GFX_Puftup_Dead3.bin"
GFX_Puftup_Dead3End:
GFX_Puftup_Dead4:
	db "GFX_Puftup_Dead4.bin"
GFX_Puftup_Dead4End:
GFX_Puftup_Swim1:
	db "GFX_Puftup_Swim1.bin"
GFX_Puftup_Swim1End:
GFX_Puftup_Swim2:
	db "GFX_Puftup_Swim2.bin"
GFX_Puftup_Swim2End:
GFX_Puftup_Swim3:
	db "GFX_Puftup_Swim3.bin"
GFX_Puftup_Swim3End:
GFX_Puftup_Swim4:
	db "GFX_Puftup_Swim4.bin"
GFX_Puftup_Swim4End:
GFX_Puftup_Swim5:
	db "GFX_Puftup_Swim5.bin"
GFX_Puftup_Swim5End:
GFX_Puftup_Swim6:
	db "GFX_Puftup_Swim6.bin"
GFX_Puftup_Swim6End:
GFX_Puftup_Swim7:
	db "GFX_Puftup_Swim7.bin"
GFX_Puftup_Swim7End:
GFX_Puftup_Swim8:
	db "GFX_Puftup_Swim8.bin"
GFX_Puftup_Swim8End:
GFX_Puftup_Swim9:
	db "GFX_Puftup_Swim9.bin"
GFX_Puftup_Swim9End:
GFX_Puftup_Swim10:
	db "GFX_Puftup_Swim10.bin"
GFX_Puftup_Swim10End:
GFX_Puftup_Swim11:
	db "GFX_Puftup_Swim11.bin"
GFX_Puftup_Swim11End:
GFX_Puftup_Swim12:
	db "GFX_Puftup_Swim12.bin"
GFX_Puftup_Swim12End:
GFX_Puftup_Swim13:
	db "GFX_Puftup_Swim13.bin"
GFX_Puftup_Swim13End:
GFX_Puftup_PuffUp1:
	db "GFX_Puftup_PuffUp1.bin"
GFX_Puftup_PuffUp1End:
GFX_Puftup_PuffUp2:
	db "GFX_Puftup_PuffUp2.bin"
GFX_Puftup_PuffUp2End:
GFX_Puftup_PuffUp3:
	db "GFX_Puftup_PuffUp3.bin"
GFX_Puftup_PuffUp3End:
GFX_Puftup_PuffUp4:
	db "GFX_Puftup_PuffUp4.bin"
GFX_Puftup_PuffUp4End:
GFX_Puftup_PuffUp5:
	db "GFX_Puftup_PuffUp5.bin"
GFX_Puftup_PuffUp5End:
GFX_Puftup_PuffUp6:
	db "GFX_Puftup_PuffUp6.bin"
GFX_Puftup_PuffUp6End:
GFX_Puftup_PuffUp7:
	db "GFX_Puftup_PuffUp7.bin"
GFX_Puftup_PuffUp7End:
GFX_Puftup_PuffUp8:
	db "GFX_Puftup_PuffUp8.bin"
GFX_Puftup_PuffUp8End:
GFX_Puftup_PuffUp9:
	db "GFX_Puftup_PuffUp9.bin"
GFX_Puftup_PuffUp9End:
GFX_Puftup_PuffUp10:
	db "GFX_Puftup_PuffUp10.bin"
GFX_Puftup_PuffUp10End:
GFX_Puftup_PuffUp11:
	db "GFX_Puftup_PuffUp11.bin"
GFX_Puftup_PuffUp11End:
GFX_Puftup_PuffUp12:
	db "GFX_Puftup_PuffUp12.bin"
GFX_Puftup_PuffUp12End:
GFX_BananaBunch_Idle1:
	db "GFX_BananaBunch_Idle1.bin"
GFX_BananaBunch_Idle1End:
GFX_BananaBunch_Idle2:
	db "GFX_BananaBunch_Idle2.bin"
GFX_BananaBunch_Idle2End:
GFX_BananaBunch_Idle3:
	db "GFX_BananaBunch_Idle3.bin"
GFX_BananaBunch_Idle3End:
GFX_BananaBunch_Idle4:
	db "GFX_BananaBunch_Idle4.bin"
GFX_BananaBunch_Idle4End:
GFX_BananaBunch_Idle5:
	db "GFX_BananaBunch_Idle5.bin"
GFX_BananaBunch_Idle5End:
GFX_BananaBunch_Idle6:
	db "GFX_BananaBunch_Idle6.bin"
GFX_BananaBunch_Idle6End:
GFX_LevelEndTarget_Idle:
	db "GFX_LevelEndTarget_Idle.bin"
GFX_LevelEndTarget_IdleEnd:
GFX_LevelEndTarget_Hit1:
	db "GFX_LevelEndTarget_Hit1.bin"
GFX_LevelEndTarget_Hit1End:
GFX_LevelEndTarget_Hit2:
	db "GFX_LevelEndTarget_Hit2.bin"
GFX_LevelEndTarget_Hit2End:
GFX_Klinger_Climbing1:
	db "GFX_Klinger_Climbing1.bin"
GFX_Klinger_Climbing1End:
GFX_Klinger_Climbing2:
	db "GFX_Klinger_Climbing2.bin"
GFX_Klinger_Climbing2End:
GFX_Klinger_Climbing3:
	db "GFX_Klinger_Climbing3.bin"
GFX_Klinger_Climbing3End:
GFX_Klinger_Climbing4:
	db "GFX_Klinger_Climbing4.bin"
GFX_Klinger_Climbing4End:
GFX_Klinger_Climbing5:
	db "GFX_Klinger_Climbing5.bin"
GFX_Klinger_Climbing5End:
GFX_Klinger_Climbing6:
	db "GFX_Klinger_Climbing6.bin"
GFX_Klinger_Climbing6End:
GFX_Klinger_Climbing7:
	db "GFX_Klinger_Climbing7.bin"
GFX_Klinger_Climbing7End:
GFX_Klinger_Climbing8:
	db "GFX_Klinger_Climbing8.bin"
GFX_Klinger_Climbing8End:
GFX_Klinger_Climbing9:
	db "GFX_Klinger_Climbing9.bin"
GFX_Klinger_Climbing9End:
GFX_Klinger_Climbing10:
	db "GFX_Klinger_Climbing10.bin"
GFX_Klinger_Climbing10End:
GFX_Klinger_Climbing11:
	db "GFX_Klinger_Climbing11.bin"
GFX_Klinger_Climbing11End:
GFX_Klinger_Climbing12:
	db "GFX_Klinger_Climbing12.bin"
GFX_Klinger_Climbing12End:
GFX_Klinger_Climbing13:
	db "GFX_Klinger_Climbing13.bin"
GFX_Klinger_Climbing13End:
GFX_Klinger_Climbing14:
	db "GFX_Klinger_Climbing14.bin"
GFX_Klinger_Climbing14End:
GFX_Klinger_Climbing15:
	db "GFX_Klinger_Climbing15.bin"
GFX_Klinger_Climbing15End:
GFX_Klinger_Climbing16:
	db "GFX_Klinger_Climbing16.bin"
GFX_Klinger_Climbing16End:
GFX_Flitter_Fly1:
	db "GFX_Flitter_Fly1.bin"
GFX_Flitter_Fly1End:
GFX_Flitter_Fly2:
	db "GFX_Flitter_Fly2.bin"
GFX_Flitter_Fly2End:
GFX_Flitter_Fly3:
	db "GFX_Flitter_Fly3.bin"
GFX_Flitter_Fly3End:
GFX_Flitter_Fly4:
	db "GFX_Flitter_Fly4.bin"
GFX_Flitter_Fly4End:
GFX_Flitter_Fly5:
	db "GFX_Flitter_Fly5.bin"
GFX_Flitter_Fly5End:
GFX_Flitter_Fly6:
	db "GFX_Flitter_Fly6.bin"
GFX_Flitter_Fly6End:
GFX_Flitter_Fly7:
	db "GFX_Flitter_Fly7.bin"
GFX_Flitter_Fly7End:
GFX_Flitter_Fly8:
	db "GFX_Flitter_Fly8.bin"
GFX_Flitter_Fly8End:
GFX_Flitter_Turn1:
	db "GFX_Flitter_Turn1.bin"
GFX_Flitter_Turn1End:
GFX_Flitter_Turn2:
	db "GFX_Flitter_Turn2.bin"
GFX_Flitter_Turn2End:
GFX_Flitter_Turn3:
	db "GFX_Flitter_Turn3.bin"
GFX_Flitter_Turn3End:
GFX_Flitter_Turn4:
	db "GFX_Flitter_Turn4.bin"
GFX_Flitter_Turn4End:
GFX_Flitter_Turn5:
	db "GFX_Flitter_Turn5.bin"
GFX_Flitter_Turn5End:
GFX_Flitter_Turn6:
	db "GFX_Flitter_Turn6.bin"
GFX_Flitter_Turn6End:
GFX_Flitter_Turn7:
	db "GFX_Flitter_Turn7.bin"
GFX_Flitter_Turn7End:
GFX_Flitter_Turn8:
	db "GFX_Flitter_Turn8.bin"
GFX_Flitter_Turn8End:
GFX_Klinger_SlideDown1:
	db "GFX_Klinger_SlideDown1.bin"
GFX_Klinger_SlideDown1End:
GFX_Klinger_SlideDown2:
	db "GFX_Klinger_SlideDown2.bin"
GFX_Klinger_SlideDown2End:
GFX_Klinger_SlideDown3:
	db "GFX_Klinger_SlideDown3.bin"
GFX_Klinger_SlideDown3End:
GFX_Klinger_SlideDown4:
	db "GFX_Klinger_SlideDown4.bin"
GFX_Klinger_SlideDown4End:
GFX_Klinger_SlideDown5:
	db "GFX_Klinger_SlideDown5.bin"
GFX_Klinger_SlideDown5End:
GFX_Klinger_SlideDown6:
	db "GFX_Klinger_SlideDown6.bin"
GFX_Klinger_SlideDown6End:
GFX_Klinger_SlideDown7:
	db "GFX_Klinger_SlideDown7.bin"
GFX_Klinger_SlideDown7End:
GFX_Klinger_SlideDown8:
	db "GFX_Klinger_SlideDown8.bin"
GFX_Klinger_SlideDown8End:
GFX_Flitter_Dead1:
	db "GFX_Flitter_Dead1.bin"
GFX_Flitter_Dead1End:
GFX_Flitter_Dead2:
	db "GFX_Flitter_Dead2.bin"
GFX_Flitter_Dead2End:
GFX_Flitter_Dead3:
	db "GFX_Flitter_Dead3.bin"
GFX_Flitter_Dead3End:
GFX_Flitter_Dead4:
	db "GFX_Flitter_Dead4.bin"
GFX_Flitter_Dead4End:
GFX_Flitter_Dead5:
	db "GFX_Flitter_Dead5.bin"
GFX_Flitter_Dead5End:
GFX_Flitter_Dead6:
	db "GFX_Flitter_Dead6.bin"
GFX_Flitter_Dead6End:
GFX_Flitter_Dead7:
	db "GFX_Flitter_Dead7.bin"
GFX_Flitter_Dead7End:
GFX_Klinger_Dead1:
	db "GFX_Klinger_Dead1.bin"
GFX_Klinger_Dead1End:
GFX_Klinger_Dead2:
	db "GFX_Klinger_Dead2.bin"
GFX_Klinger_Dead2End:
GFX_Klinger_Dead3:
	db "GFX_Klinger_Dead3.bin"
GFX_Klinger_Dead3End:
GFX_Klinger_Dead4:
	db "GFX_Klinger_Dead4.bin"
GFX_Klinger_Dead4End:
GFX_UnknownEffect3_Idle:
	db "GFX_UnknownEffect3_Idle.bin"
GFX_UnknownEffect3_IdleEnd:
GFX_Flotsam_Swim1:
	db "GFX_Flotsam_Swim1.bin"
GFX_Flotsam_Swim1End:
GFX_Flotsam_Swim2:
	db "GFX_Flotsam_Swim2.bin"
GFX_Flotsam_Swim2End:
GFX_Flotsam_Swim3:
	db "GFX_Flotsam_Swim3.bin"
GFX_Flotsam_Swim3End:
GFX_Flotsam_Swim4:
	db "GFX_Flotsam_Swim4.bin"
GFX_Flotsam_Swim4End:
GFX_Flotsam_Swim5:
	db "GFX_Flotsam_Swim5.bin"
GFX_Flotsam_Swim5End:
GFX_Flotsam_Swim6:
	db "GFX_Flotsam_Swim6.bin"
GFX_Flotsam_Swim6End:
GFX_Flotsam_Swim7:
	db "GFX_Flotsam_Swim7.bin"
GFX_Flotsam_Swim7End:
GFX_Flotsam_Swim8:
	db "GFX_Flotsam_Swim8.bin"
GFX_Flotsam_Swim8End:
GFX_Flotsam_Swim9:
	db "GFX_Flotsam_Swim9.bin"
GFX_Flotsam_Swim9End:
GFX_Flotsam_Swim10:
	db "GFX_Flotsam_Swim10.bin"
GFX_Flotsam_Swim10End:
GFX_Flotsam_Swim11:
	db "GFX_Flotsam_Swim11.bin"
GFX_Flotsam_Swim11End:
GFX_Flotsam_Swim12:
	db "GFX_Flotsam_Swim12.bin"
GFX_Flotsam_Swim12End:
GFX_KrowsBody_Dying1:
	db "GFX_KrowsBody_Dying1.bin"
GFX_KrowsBody_Dying1End:
GFX_KrowsBody_Dying2:
	db "GFX_KrowsBody_Dying2.bin"
GFX_KrowsBody_Dying2End:
GFX_KrowsBody_Dying3:
	db "GFX_KrowsBody_Dying3.bin"
GFX_KrowsBody_Dying3End:
GFX_KrowsBody_Dying4:
	db "GFX_KrowsBody_Dying4.bin"
GFX_KrowsBody_Dying4End:
GFX_KrowsBody_Dying5:
	db "GFX_KrowsBody_Dying5.bin"
GFX_KrowsBody_Dying5End:
GFX_KrowsBody_Dying6:
	db "GFX_KrowsBody_Dying6.bin"
GFX_KrowsBody_Dying6End:
GFX_KrowsHead_Dying1:
	db "GFX_KrowsHead_Dying1.bin"
GFX_KrowsHead_Dying1End:
GFX_KrowsHead_Dying2:
	db "GFX_KrowsHead_Dying2.bin"
GFX_KrowsHead_Dying2End:
GFX_KrowsHead_Dying3:
	db "GFX_KrowsHead_Dying3.bin"
GFX_KrowsHead_Dying3End:
GFX_KrowsHead_Dying4:
	db "GFX_KrowsHead_Dying4.bin"
GFX_KrowsHead_Dying4End:
GFX_KrowsHead_Dying5:
	db "GFX_KrowsHead_Dying5.bin"
GFX_KrowsHead_Dying5End:
GFX_KrowsHead_Dying6:
	db "GFX_KrowsHead_Dying6.bin"
GFX_KrowsHead_Dying6End:
GFX_AnimalBuddyIcon_Squitter:
	db "GFX_AnimalBuddyIcon_Squitter.bin"
GFX_AnimalBuddyIcon_SquitterEnd:
GFX_AnimalBuddyIcon_Rattly:
	db "GFX_AnimalBuddyIcon_Rattly.bin"
GFX_AnimalBuddyIcon_RattlyEnd:
GFX_AnimalBuddyIcon_Squawks:
	db "GFX_AnimalBuddyIcon_Squawks.bin"
GFX_AnimalBuddyIcon_SquawksEnd:
GFX_AnimalBuddyIcon_Rambi:
	db "GFX_AnimalBuddyIcon_Rambi.bin"
GFX_AnimalBuddyIcon_RambiEnd:
GFX_AnimalBuddyIcon_Enguarde:
	db "GFX_AnimalBuddyIcon_Enguarde.bin"
GFX_AnimalBuddyIcon_EnguardeEnd:
GFX_Zinger_Dead1:
	db "GFX_Zinger_Dead1.bin"
GFX_Zinger_Dead1End:
GFX_Zinger_Dead2:
	db "GFX_Zinger_Dead2.bin"
GFX_Zinger_Dead2End:
GFX_Zinger_Dead3:
	db "GFX_Zinger_Dead3.bin"
GFX_Zinger_Dead3End:
GFX_Zinger_Dead4:
	db "GFX_Zinger_Dead4.bin"
GFX_Zinger_Dead4End:
GFX_Zinger_Dead5:
	db "GFX_Zinger_Dead5.bin"
GFX_Zinger_Dead5End:
GFX_Dixie_ClimbUpTwoVerticalRopes1:
	db "GFX_Dixie_ClimbUpTwoVerticalRopes1.bin"
GFX_Dixie_ClimbUpTwoVerticalRopes1End:
GFX_Dixie_ClimbUpTwoVerticalRopes2:
	db "GFX_Dixie_ClimbUpTwoVerticalRopes2.bin"
GFX_Dixie_ClimbUpTwoVerticalRopes2End:
GFX_Dixie_ClimbUpTwoVerticalRopes3:
	db "GFX_Dixie_ClimbUpTwoVerticalRopes3.bin"
GFX_Dixie_ClimbUpTwoVerticalRopes3End:
GFX_Dixie_ClimbUpTwoVerticalRopes4:
	db "GFX_Dixie_ClimbUpTwoVerticalRopes4.bin"
GFX_Dixie_ClimbUpTwoVerticalRopes4End:
GFX_Dixie_ClimbUpTwoVerticalRopes5:
	db "GFX_Dixie_ClimbUpTwoVerticalRopes5.bin"
GFX_Dixie_ClimbUpTwoVerticalRopes5End:
GFX_Dixie_ClimbUpTwoVerticalRopes6:
	db "GFX_Dixie_ClimbUpTwoVerticalRopes6.bin"
GFX_Dixie_ClimbUpTwoVerticalRopes6End:
GFX_Dixie_ClimbUpTwoVerticalRopes7:
	db "GFX_Dixie_ClimbUpTwoVerticalRopes7.bin"
GFX_Dixie_ClimbUpTwoVerticalRopes7End:
GFX_Dixie_ClimbUpTwoVerticalRopes8:
	db "GFX_Dixie_ClimbUpTwoVerticalRopes8.bin"
GFX_Dixie_ClimbUpTwoVerticalRopes8End:
GFX_Dixie_ClimbDownTwoVerticalRopes1:
	db "GFX_Dixie_ClimbDownTwoVerticalRopes1.bin"
GFX_Dixie_ClimbDownTwoVerticalRopes1End:
GFX_Dixie_ClimbDownTwoVerticalRopes2:
	db "GFX_Dixie_ClimbDownTwoVerticalRopes2.bin"
GFX_Dixie_ClimbDownTwoVerticalRopes2End:
GFX_Dixie_ClimbDownTwoVerticalRopes3:
	db "GFX_Dixie_ClimbDownTwoVerticalRopes3.bin"
GFX_Dixie_ClimbDownTwoVerticalRopes3End:
GFX_Dixie_ClimbDownTwoVerticalRopes4:
	db "GFX_Dixie_ClimbDownTwoVerticalRopes4.bin"
GFX_Dixie_ClimbDownTwoVerticalRopes4End:
GFX_Dixie_ClimbDownTwoVerticalRopes5:
	db "GFX_Dixie_ClimbDownTwoVerticalRopes5.bin"
GFX_Dixie_ClimbDownTwoVerticalRopes5End:
GFX_Dixie_ClimbDownTwoVerticalRopes6:
	db "GFX_Dixie_ClimbDownTwoVerticalRopes6.bin"
GFX_Dixie_ClimbDownTwoVerticalRopes6End:
GFX_Dixie_ClimbDownTwoVerticalRopes7:
	db "GFX_Dixie_ClimbDownTwoVerticalRopes7.bin"
GFX_Dixie_ClimbDownTwoVerticalRopes7End:
GFX_Dixie_ClimbDownTwoVerticalRopes8:
	db "GFX_Dixie_ClimbDownTwoVerticalRopes8.bin"
GFX_Dixie_ClimbDownTwoVerticalRopes8End:
GFX_Diddy_ClimbUpSingleRope1:
	db "GFX_Diddy_ClimbUpSingleRope1.bin"
GFX_Diddy_ClimbUpSingleRope1End:
GFX_Diddy_ClimbUpSingleRope2:
	db "GFX_Diddy_ClimbUpSingleRope2.bin"
GFX_Diddy_ClimbUpSingleRope2End:
GFX_Diddy_ClimbUpSingleRope3:
	db "GFX_Diddy_ClimbUpSingleRope3.bin"
GFX_Diddy_ClimbUpSingleRope3End:
GFX_Diddy_ClimbUpSingleRope4:
	db "GFX_Diddy_ClimbUpSingleRope4.bin"
GFX_Diddy_ClimbUpSingleRope4End:
GFX_Diddy_ClimbUpSingleRope5:
	db "GFX_Diddy_ClimbUpSingleRope5.bin"
GFX_Diddy_ClimbUpSingleRope5End:
GFX_Diddy_ClimbUpSingleRope6:
	db "GFX_Diddy_ClimbUpSingleRope6.bin"
GFX_Diddy_ClimbUpSingleRope6End:
GFX_Diddy_ClimbUpSingleRope7:
	db "GFX_Diddy_ClimbUpSingleRope7.bin"
GFX_Diddy_ClimbUpSingleRope7End:
GFX_Diddy_ClimbUpSingleRope8:
	db "GFX_Diddy_ClimbUpSingleRope8.bin"
GFX_Diddy_ClimbUpSingleRope8End:
GFX_Diddy_ClimbUpSingleRope9:
	db "GFX_Diddy_ClimbUpSingleRope9.bin"
GFX_Diddy_ClimbUpSingleRope9End:
GFX_Diddy_ClimbUpSingleRope10:
	db "GFX_Diddy_ClimbUpSingleRope10.bin"
GFX_Diddy_ClimbUpSingleRope10End:
GFX_Diddy_ClimbUpSingleRope11:
	db "GFX_Diddy_ClimbUpSingleRope11.bin"
GFX_Diddy_ClimbUpSingleRope11End:
GFX_Diddy_ClimbUpSingleRope12:
	db "GFX_Diddy_ClimbUpSingleRope12.bin"
GFX_Diddy_ClimbUpSingleRope12End:
GFX_Diddy_HangOnVerticalRope:
	db "GFX_Diddy_HangOnVerticalRope.bin"
GFX_Diddy_HangOnVerticalRopeEnd:
GFX_Diddy_TurnOnVerticalRope1:
	db "GFX_Diddy_TurnOnVerticalRope1.bin"
GFX_Diddy_TurnOnVerticalRope1End:
GFX_Diddy_TurnOnVerticalRope2:
	db "GFX_Diddy_TurnOnVerticalRope2.bin"
GFX_Diddy_TurnOnVerticalRope2End:
GFX_Diddy_GrabAdjacentVerticalRope1:
	db "GFX_Diddy_GrabAdjacentVerticalRope1.bin"
GFX_Diddy_GrabAdjacentVerticalRope1End:
GFX_Diddy_GrabAdjacentVerticalRope2:
	db "GFX_Diddy_GrabAdjacentVerticalRope2.bin"
GFX_Diddy_GrabAdjacentVerticalRope2End:
GFX_Diddy_GrabAdjacentVerticalRope3:
	db "GFX_Diddy_GrabAdjacentVerticalRope3.bin"
GFX_Diddy_GrabAdjacentVerticalRope3End:
GFX_Diddy_GrabAdjacentVerticalRope4:
	db "GFX_Diddy_GrabAdjacentVerticalRope4.bin"
GFX_Diddy_GrabAdjacentVerticalRope4End:
GFX_Diddy_GrabAdjacentVerticalRope5:
	db "GFX_Diddy_GrabAdjacentVerticalRope5.bin"
GFX_Diddy_GrabAdjacentVerticalRope5End:
GFX_Diddy_GrabAdjacentVerticalRope6:
	db "GFX_Diddy_GrabAdjacentVerticalRope6.bin"
GFX_Diddy_GrabAdjacentVerticalRope6End:
GFX_Diddy_GrabAdjacentVerticalRope7:
	db "GFX_Diddy_GrabAdjacentVerticalRope7.bin"
GFX_Diddy_GrabAdjacentVerticalRope7End:
GFX_Diddy_GrabAdjacentVerticalRope8:
	db "GFX_Diddy_GrabAdjacentVerticalRope8.bin"
GFX_Diddy_GrabAdjacentVerticalRope8End:
GFX_Diddy_GrabAdjacentVerticalRope9:
	db "GFX_Diddy_GrabAdjacentVerticalRope9.bin"
GFX_Diddy_GrabAdjacentVerticalRope9End:
GFX_Diddy_HangOnTwoVerticalRopes:
	db "GFX_Diddy_HangOnTwoVerticalRopes.bin"
GFX_Diddy_HangOnTwoVerticalRopesEnd:
GFX_Kaboing_Turn1:
	db "GFX_Kaboing_Turn1.bin"
GFX_Kaboing_Turn1End:
GFX_Kaboing_Turn2:
	db "GFX_Kaboing_Turn2.bin"
GFX_Kaboing_Turn2End:
GFX_Kaboing_Dead1:
	db "GFX_Kaboing_Dead1.bin"
GFX_Kaboing_Dead1End:
GFX_Kaboing_Dead2:
	db "GFX_Kaboing_Dead2.bin"
GFX_Kaboing_Dead2End:
GFX_Kaboing_Dead3:
	db "GFX_Kaboing_Dead3.bin"
GFX_Kaboing_Dead3End:
GFX_Kaboing_Dead4:
	db "GFX_Kaboing_Dead4.bin"
GFX_Kaboing_Dead4End:
GFX_Kaboing_Dead5:
	db "GFX_Kaboing_Dead5.bin"
GFX_Kaboing_Dead5End:
GFX_Flotsam_Dead1:
	db "GFX_Flotsam_Dead1.bin"
GFX_Flotsam_Dead1End:
GFX_Flotsam_Dead2:
	db "GFX_Flotsam_Dead2.bin"
GFX_Flotsam_Dead2End:
GFX_Flotsam_Dead3:
	db "GFX_Flotsam_Dead3.bin"
GFX_Flotsam_Dead3End:
GFX_Flotsam_Dead4:
	db "GFX_Flotsam_Dead4.bin"
GFX_Flotsam_Dead4End:
GFX_Flotsam_Turn1:
	db "GFX_Flotsam_Turn1.bin"
GFX_Flotsam_Turn1End:
GFX_Flotsam_Turn2:
	db "GFX_Flotsam_Turn2.bin"
GFX_Flotsam_Turn2End:
GFX_Flotsam_Turn3:
	db "GFX_Flotsam_Turn3.bin"
GFX_Flotsam_Turn3End:
GFX_Flotsam_Turn4:
	db "GFX_Flotsam_Turn4.bin"
GFX_Flotsam_Turn4End:
GFX_Flotsam_Turn5:
	db "GFX_Flotsam_Turn5.bin"
GFX_Flotsam_Turn5End:
GFX_Flotsam_Turn6:
	db "GFX_Flotsam_Turn6.bin"
GFX_Flotsam_Turn6End:
GFX_Flotsam_Turn7:
	db "GFX_Flotsam_Turn7.bin"
GFX_Flotsam_Turn7End:
GFX_Diddy_ClimbUpTwoVerticalRopes1:
	db "GFX_Diddy_ClimbUpTwoVerticalRopes1.bin"
GFX_Diddy_ClimbUpTwoVerticalRopes1End:
GFX_Diddy_ClimbUpTwoVerticalRopes2:
	db "GFX_Diddy_ClimbUpTwoVerticalRopes2.bin"
GFX_Diddy_ClimbUpTwoVerticalRopes2End:
GFX_Diddy_ClimbUpTwoVerticalRopes3:
	db "GFX_Diddy_ClimbUpTwoVerticalRopes3.bin"
GFX_Diddy_ClimbUpTwoVerticalRopes3End:
GFX_Diddy_ClimbUpTwoVerticalRopes4:
	db "GFX_Diddy_ClimbUpTwoVerticalRopes4.bin"
GFX_Diddy_ClimbUpTwoVerticalRopes4End:
GFX_Diddy_ClimbUpTwoVerticalRopes5:
	db "GFX_Diddy_ClimbUpTwoVerticalRopes5.bin"
GFX_Diddy_ClimbUpTwoVerticalRopes5End:
GFX_Diddy_ClimbUpTwoVerticalRopes6:
	db "GFX_Diddy_ClimbUpTwoVerticalRopes6.bin"
GFX_Diddy_ClimbUpTwoVerticalRopes6End:
GFX_Diddy_ClimbUpTwoVerticalRopes7:
	db "GFX_Diddy_ClimbUpTwoVerticalRopes7.bin"
GFX_Diddy_ClimbUpTwoVerticalRopes7End:
GFX_Diddy_ClimbUpTwoVerticalRopes8:
	db "GFX_Diddy_ClimbUpTwoVerticalRopes8.bin"
GFX_Diddy_ClimbUpTwoVerticalRopes8End:
GFX_Glimmer_Swim1:
	db "GFX_Glimmer_Swim1.bin"
GFX_Glimmer_Swim1End:
GFX_Glimmer_Swim2:
	db "GFX_Glimmer_Swim2.bin"
GFX_Glimmer_Swim2End:
GFX_Glimmer_Swim3:
	db "GFX_Glimmer_Swim3.bin"
GFX_Glimmer_Swim3End:
GFX_Glimmer_Swim4:
	db "GFX_Glimmer_Swim4.bin"
GFX_Glimmer_Swim4End:
GFX_Glimmer_Swim5:
	db "GFX_Glimmer_Swim5.bin"
GFX_Glimmer_Swim5End:
GFX_Glimmer_Swim6:
	db "GFX_Glimmer_Swim6.bin"
GFX_Glimmer_Swim6End:
GFX_Glimmer_Swim7:
	db "GFX_Glimmer_Swim7.bin"
GFX_Glimmer_Swim7End:
GFX_Glimmer_Swim8:
	db "GFX_Glimmer_Swim8.bin"
GFX_Glimmer_Swim8End:
GFX_Glimmer_Swim9:
	db "GFX_Glimmer_Swim9.bin"
GFX_Glimmer_Swim9End:
GFX_Glimmer_Swim10:
	db "GFX_Glimmer_Swim10.bin"
GFX_Glimmer_Swim10End:
GFX_Glimmer_Swim11:
	db "GFX_Glimmer_Swim11.bin"
GFX_Glimmer_Swim11End:
GFX_Glimmer_Swim12:
	db "GFX_Glimmer_Swim12.bin"
GFX_Glimmer_Swim12End:
GFX_Glimmer_Swim13:
	db "GFX_Glimmer_Swim13.bin"
GFX_Glimmer_Swim13End:
GFX_Glimmer_Swim14:
	db "GFX_Glimmer_Swim14.bin"
GFX_Glimmer_Swim14End:
GFX_Glimmer_Swim15:
	db "GFX_Glimmer_Swim15.bin"
GFX_Glimmer_Swim15End:
GFX_Glimmer_Swim16:
	db "GFX_Glimmer_Swim16.bin"
GFX_Glimmer_Swim16End:
GFX_Glimmer_Turn1:
	db "GFX_Glimmer_Turn1.bin"
GFX_Glimmer_Turn1End:
GFX_Glimmer_Turn2:
	db "GFX_Glimmer_Turn2.bin"
GFX_Glimmer_Turn2End:
GFX_Glimmer_Turn3:
	db "GFX_Glimmer_Turn3.bin"
GFX_Glimmer_Turn3End:
GFX_Glimmer_Turn4:
	db "GFX_Glimmer_Turn4.bin"
GFX_Glimmer_Turn4End:
GFX_Glimmer_Turn5:
	db "GFX_Glimmer_Turn5.bin"
GFX_Glimmer_Turn5End:
GFX_Glimmer_Turn6:
	db "GFX_Glimmer_Turn6.bin"
GFX_Glimmer_Turn6End:
GFX_Glimmer_Turn7:
	db "GFX_Glimmer_Turn7.bin"
GFX_Glimmer_Turn7End:
GFX_Glimmer_Turn8:
	db "GFX_Glimmer_Turn8.bin"
GFX_Glimmer_Turn8End:
GFX_Diddy_ClimbDownTwoVerticalRopes1:
	db "GFX_Diddy_ClimbDownTwoVerticalRopes1.bin"
GFX_Diddy_ClimbDownTwoVerticalRopes1End:
GFX_Diddy_ClimbDownTwoVerticalRopes2:
	db "GFX_Diddy_ClimbDownTwoVerticalRopes2.bin"
GFX_Diddy_ClimbDownTwoVerticalRopes2End:
GFX_Diddy_ClimbDownTwoVerticalRopes3:
	db "GFX_Diddy_ClimbDownTwoVerticalRopes3.bin"
GFX_Diddy_ClimbDownTwoVerticalRopes3End:
GFX_Diddy_ClimbDownTwoVerticalRopes4:
	db "GFX_Diddy_ClimbDownTwoVerticalRopes4.bin"
GFX_Diddy_ClimbDownTwoVerticalRopes4End:
GFX_Diddy_ClimbDownTwoVerticalRopes5:
	db "GFX_Diddy_ClimbDownTwoVerticalRopes5.bin"
GFX_Diddy_ClimbDownTwoVerticalRopes5End:
GFX_Diddy_ClimbDownTwoVerticalRopes6:
	db "GFX_Diddy_ClimbDownTwoVerticalRopes6.bin"
GFX_Diddy_ClimbDownTwoVerticalRopes6End:
GFX_Diddy_ClimbDownTwoVerticalRopes7:
	db "GFX_Diddy_ClimbDownTwoVerticalRopes7.bin"
GFX_Diddy_ClimbDownTwoVerticalRopes7End:
GFX_Diddy_ClimbDownTwoVerticalRopes8:
	db "GFX_Diddy_ClimbDownTwoVerticalRopes8.bin"
GFX_Diddy_ClimbDownTwoVerticalRopes8End:
GFX_Diddy_Juggling1:
	db "GFX_Diddy_Juggling1.bin"
GFX_Diddy_Juggling1End:
GFX_Diddy_Juggling2:
	db "GFX_Diddy_Juggling2.bin"
GFX_Diddy_Juggling2End:
GFX_Diddy_Juggling3:
	db "GFX_Diddy_Juggling3.bin"
GFX_Diddy_Juggling3End:
GFX_Diddy_Juggling4:
	db "GFX_Diddy_Juggling4.bin"
GFX_Diddy_Juggling4End:
GFX_Diddy_Juggling5:
	db "GFX_Diddy_Juggling5.bin"
GFX_Diddy_Juggling5End:
GFX_Diddy_Juggling6:
	db "GFX_Diddy_Juggling6.bin"
GFX_Diddy_Juggling6End:
GFX_Diddy_Juggling7:
	db "GFX_Diddy_Juggling7.bin"
GFX_Diddy_Juggling7End:
GFX_Diddy_Juggling8:
	db "GFX_Diddy_Juggling8.bin"
GFX_Diddy_Juggling8End:
GFX_Diddy_Juggling9:
	db "GFX_Diddy_Juggling9.bin"
GFX_Diddy_Juggling9End:
GFX_Diddy_Juggling10:
	db "GFX_Diddy_Juggling10.bin"
GFX_Diddy_Juggling10End:
GFX_Diddy_Juggling11:
	db "GFX_Diddy_Juggling11.bin"
GFX_Diddy_Juggling11End:
GFX_Diddy_Juggling12:
	db "GFX_Diddy_Juggling12.bin"
GFX_Diddy_Juggling12End:
GFX_Diddy_Juggling13:
	db "GFX_Diddy_Juggling13.bin"
GFX_Diddy_Juggling13End:
GFX_Diddy_Juggling14:
	db "GFX_Diddy_Juggling14.bin"
GFX_Diddy_Juggling14End:
GFX_Diddy_Juggling15:
	db "GFX_Diddy_Juggling15.bin"
GFX_Diddy_Juggling15End:
GFX_Diddy_Juggling16:
	db "GFX_Diddy_Juggling16.bin"
GFX_Diddy_Juggling16End:
GFX_Diddy_Juggling17:
	db "GFX_Diddy_Juggling17.bin"
GFX_Diddy_Juggling17End:
GFX_Diddy_Juggling18:
	db "GFX_Diddy_Juggling18.bin"
GFX_Diddy_Juggling18End:
GFX_Diddy_Juggling19:
	db "GFX_Diddy_Juggling19.bin"
GFX_Diddy_Juggling19End:
GFX_Diddy_Juggling20:
	db "GFX_Diddy_Juggling20.bin"
GFX_Diddy_Juggling20End:
GFX_Diddy_Juggling21:
	db "GFX_Diddy_Juggling21.bin"
GFX_Diddy_Juggling21End:
GFX_Diddy_Juggling22:
	db "GFX_Diddy_Juggling22.bin"
GFX_Diddy_Juggling22End:
GFX_Diddy_Juggling23:
	db "GFX_Diddy_Juggling23.bin"
GFX_Diddy_Juggling23End:
GFX_Diddy_Juggling24:
	db "GFX_Diddy_Juggling24.bin"
GFX_Diddy_Juggling24End:
GFX_Diddy_Juggling25:
	db "GFX_Diddy_Juggling25.bin"
GFX_Diddy_Juggling25End:
GFX_Diddy_Juggling26:
	db "GFX_Diddy_Juggling26.bin"
GFX_Diddy_Juggling26End:
GFX_Diddy_Juggling27:
	db "GFX_Diddy_Juggling27.bin"
GFX_Diddy_Juggling27End:
GFX_Diddy_Juggling28:
	db "GFX_Diddy_Juggling28.bin"
GFX_Diddy_Juggling28End:
GFX_Diddy_Juggling29:
	db "GFX_Diddy_Juggling29.bin"
GFX_Diddy_Juggling29End:
GFX_Diddy_Juggling30:
	db "GFX_Diddy_Juggling30.bin"
GFX_Diddy_Juggling30End:
GFX_Diddy_Juggling31:
	db "GFX_Diddy_Juggling31.bin"
GFX_Diddy_Juggling31End:
GFX_KrowsBody_Dead1:
	db "GFX_KrowsBody_Dead1.bin"
GFX_KrowsBody_Dead1End:
GFX_KrowsBody_Dead2:
	db "GFX_KrowsBody_Dead2.bin"
GFX_KrowsBody_Dead2End:
GFX_Dixie_TasteHoney1:
	db "GFX_Dixie_TasteHoney1.bin"
GFX_Dixie_TasteHoney1End:
GFX_Dixie_TasteHoney2:
	db "GFX_Dixie_TasteHoney2.bin"
GFX_Dixie_TasteHoney2End:
GFX_Dixie_TasteHoney3:
	db "GFX_Dixie_TasteHoney3.bin"
GFX_Dixie_TasteHoney3End:
GFX_Dixie_TasteHoney4:
	db "GFX_Dixie_TasteHoney4.bin"
GFX_Dixie_TasteHoney4End:
GFX_Dixie_TasteHoney5:
	db "GFX_Dixie_TasteHoney5.bin"
GFX_Dixie_TasteHoney5End:
GFX_Dixie_TasteHoney6:
	db "GFX_Dixie_TasteHoney6.bin"
GFX_Dixie_TasteHoney6End:
GFX_Dixie_TasteHoney7:
	db "GFX_Dixie_TasteHoney7.bin"
GFX_Dixie_TasteHoney7End:
GFX_Dixie_TasteHoney8:
	db "GFX_Dixie_TasteHoney8.bin"
GFX_Dixie_TasteHoney8End:
GFX_Dixie_TasteHoney9:
	db "GFX_Dixie_TasteHoney9.bin"
GFX_Dixie_TasteHoney9End:
GFX_Dixie_TasteHoney10:
	db "GFX_Dixie_TasteHoney10.bin"
GFX_Dixie_TasteHoney10End:
GFX_Dixie_TasteHoney11:
	db "GFX_Dixie_TasteHoney11.bin"
GFX_Dixie_TasteHoney11End:
GFX_Dixie_TasteHoney12:
	db "GFX_Dixie_TasteHoney12.bin"
GFX_Dixie_TasteHoney12End:
GFX_Rambi_PrepareCharge1:
	db "GFX_Rambi_PrepareCharge1.bin"
GFX_Rambi_PrepareCharge1End:
GFX_Rambi_PrepareCharge2:
	db "GFX_Rambi_PrepareCharge2.bin"
GFX_Rambi_PrepareCharge2End:
GFX_Rambi_PrepareCharge3:
	db "GFX_Rambi_PrepareCharge3.bin"
GFX_Rambi_PrepareCharge3End:
GFX_Rambi_PrepareCharge4:
	db "GFX_Rambi_PrepareCharge4.bin"
GFX_Rambi_PrepareCharge4End:
GFX_Rambi_PrepareCharge5:
	db "GFX_Rambi_PrepareCharge5.bin"
GFX_Rambi_PrepareCharge5End:
GFX_Rambi_PrepareCharge6:
	db "GFX_Rambi_PrepareCharge6.bin"
GFX_Rambi_PrepareCharge6End:
GFX_Rambi_Stab1:
	db "GFX_Rambi_Stab1.bin"
GFX_Rambi_Stab1End:
GFX_Rambi_Stab2:
	db "GFX_Rambi_Stab2.bin"
GFX_Rambi_Stab2End:
GFX_Rambi_Stab3:
	db "GFX_Rambi_Stab3.bin"
GFX_Rambi_Stab3End:
GFX_Rambi_Stab4:
	db "GFX_Rambi_Stab4.bin"
GFX_Rambi_Stab4End:
GFX_Rambi_Stab5:
	db "GFX_Rambi_Stab5.bin"
GFX_Rambi_Stab5End:
GFX_Rambi_Stab6:
	db "GFX_Rambi_Stab6.bin"
GFX_Rambi_Stab6End:
GFX_Rambi_Stab7:
	db "GFX_Rambi_Stab7.bin"
GFX_Rambi_Stab7End:
GFX_Rambi_Stab8:
	db "GFX_Rambi_Stab8.bin"
GFX_Rambi_Stab8End:
GFX_Rambi_Walk1:
	db "GFX_Rambi_Walk1.bin"
GFX_Rambi_Walk1End:
GFX_Rambi_Walk2:
	db "GFX_Rambi_Walk2.bin"
GFX_Rambi_Walk2End:
GFX_Rambi_Walk3:
	db "GFX_Rambi_Walk3.bin"
GFX_Rambi_Walk3End:
GFX_Rambi_Walk4:
	db "GFX_Rambi_Walk4.bin"
GFX_Rambi_Walk4End:
GFX_Rambi_Walk5:
	db "GFX_Rambi_Walk5.bin"
GFX_Rambi_Walk5End:
GFX_Rambi_Walk6:
	db "GFX_Rambi_Walk6.bin"
GFX_Rambi_Walk6End:
GFX_Rambi_Walk7:
	db "GFX_Rambi_Walk7.bin"
GFX_Rambi_Walk7End:
GFX_Rambi_Walk8:
	db "GFX_Rambi_Walk8.bin"
GFX_Rambi_Walk8End:
GFX_Rambi_Walk9:
	db "GFX_Rambi_Walk9.bin"
GFX_Rambi_Walk9End:
GFX_Rambi_Walk10:
	db "GFX_Rambi_Walk10.bin"
GFX_Rambi_Walk10End:
GFX_Rambi_Walk11:
	db "GFX_Rambi_Walk11.bin"
GFX_Rambi_Walk11End:
GFX_Rambi_Walk12:
	db "GFX_Rambi_Walk12.bin"
GFX_Rambi_Walk12End:
GFX_Rambi_Walk13:
	db "GFX_Rambi_Walk13.bin"
GFX_Rambi_Walk13End:
GFX_Rambi_Walk14:
	db "GFX_Rambi_Walk14.bin"
GFX_Rambi_Walk14End:
GFX_Rambi_Walk15:
	db "GFX_Rambi_Walk15.bin"
GFX_Rambi_Walk15End:
GFX_Rambi_Idle1:
	db "GFX_Rambi_Idle1.bin"
GFX_Rambi_Idle1End:
GFX_Rambi_Idle2:
	db "GFX_Rambi_Idle2.bin"
GFX_Rambi_Idle2End:
GFX_Rambi_Idle3:
	db "GFX_Rambi_Idle3.bin"
GFX_Rambi_Idle3End:
GFX_Rambi_Idle4:
	db "GFX_Rambi_Idle4.bin"
GFX_Rambi_Idle4End:
GFX_Rambi_Idle5:
	db "GFX_Rambi_Idle5.bin"
GFX_Rambi_Idle5End:
GFX_Rambi_Idle6:
	db "GFX_Rambi_Idle6.bin"
GFX_Rambi_Idle6End:
GFX_Rambi_Panting1:
	db "GFX_Rambi_Panting1.bin"
GFX_Rambi_Panting1End:
GFX_Rambi_Panting2:
	db "GFX_Rambi_Panting2.bin"
GFX_Rambi_Panting2End:
GFX_Rambi_Panting3:
	db "GFX_Rambi_Panting3.bin"
GFX_Rambi_Panting3End:
GFX_Rambi_Panting4:
	db "GFX_Rambi_Panting4.bin"
GFX_Rambi_Panting4End:
GFX_Rambi_Panting5:
	db "GFX_Rambi_Panting5.bin"
GFX_Rambi_Panting5End:
GFX_Rambi_Panting6:
	db "GFX_Rambi_Panting6.bin"
GFX_Rambi_Panting6End:
GFX_Rambi_Panting7:
	db "GFX_Rambi_Panting7.bin"
GFX_Rambi_Panting7End:
GFX_Rambi_Panting8:
	db "GFX_Rambi_Panting8.bin"
GFX_Rambi_Panting8End:
GFX_Rambi_Panting9:
	db "GFX_Rambi_Panting9.bin"
GFX_Rambi_Panting9End:
GFX_Rambi_Panting10:
	db "GFX_Rambi_Panting10.bin"
GFX_Rambi_Panting10End:
GFX_Rambi_Panting11:
	db "GFX_Rambi_Panting11.bin"
GFX_Rambi_Panting11End:
GFX_Rambi_Panting12:
	db "GFX_Rambi_Panting12.bin"
GFX_Rambi_Panting12End:
GFX_Rambi_Panting13:
	db "GFX_Rambi_Panting13.bin"
GFX_Rambi_Panting13End:
GFX_Rambi_Panting14:
	db "GFX_Rambi_Panting14.bin"
GFX_Rambi_Panting14End:
GFX_Rambi_Panting15:
	db "GFX_Rambi_Panting15.bin"
GFX_Rambi_Panting15End:
GFX_Rambi_Panting16:
	db "GFX_Rambi_Panting16.bin"
GFX_Rambi_Panting16End:
GFX_Rambi_Turn1:
	db "GFX_Rambi_Turn1.bin"
GFX_Rambi_Turn1End:
GFX_Rambi_Turn2:
	db "GFX_Rambi_Turn2.bin"
GFX_Rambi_Turn2End:
GFX_Rambi_Jump1:
	db "GFX_Rambi_Jump1.bin"
GFX_Rambi_Jump1End:
GFX_Rambi_Jump2:
	db "GFX_Rambi_Jump2.bin"
GFX_Rambi_Jump2End:
GFX_Rambi_Jump3:
	db "GFX_Rambi_Jump3.bin"
GFX_Rambi_Jump3End:
GFX_Rambi_Jump4:
	db "GFX_Rambi_Jump4.bin"
GFX_Rambi_Jump4End:
GFX_Rambi_Jump5:
	db "GFX_Rambi_Jump5.bin"
GFX_Rambi_Jump5End:
GFX_Rambi_Jump6:
	db "GFX_Rambi_Jump6.bin"
GFX_Rambi_Jump6End:
GFX_Rambi_Jump7:
	db "GFX_Rambi_Jump7.bin"
GFX_Rambi_Jump7End:
GFX_Diddy_StuckToHoneyWall1:
	db "GFX_Diddy_StuckToHoneyWall1.bin"
GFX_Diddy_StuckToHoneyWall1End:
GFX_Diddy_StuckToHoneyWall2:
	db "GFX_Diddy_StuckToHoneyWall2.bin"
GFX_Diddy_StuckToHoneyWall2End:
GFX_Diddy_StuckToHoneyWall3:
	db "GFX_Diddy_StuckToHoneyWall3.bin"
GFX_Diddy_StuckToHoneyWall3End:
GFX_Diddy_StuckToHoneyWall4:
	db "GFX_Diddy_StuckToHoneyWall4.bin"
GFX_Diddy_StuckToHoneyWall4End:
GFX_Diddy_StuckToHoneyWall5:
	db "GFX_Diddy_StuckToHoneyWall5.bin"
GFX_Diddy_StuckToHoneyWall5End:
GFX_Diddy_StuckToHoneyWall6:
	db "GFX_Diddy_StuckToHoneyWall6.bin"
GFX_Diddy_StuckToHoneyWall6End:
GFX_Diddy_HangFromSquawks1:
	db "GFX_Diddy_HangFromSquawks1.bin"
GFX_Diddy_HangFromSquawks1End:
GFX_Diddy_HangFromSquawks2:
	db "GFX_Diddy_HangFromSquawks2.bin"
GFX_Diddy_HangFromSquawks2End:
GFX_Diddy_HangFromSquawks3:
	db "GFX_Diddy_HangFromSquawks3.bin"
GFX_Diddy_HangFromSquawks3End:
GFX_Diddy_HangFromSquawks4:
	db "GFX_Diddy_HangFromSquawks4.bin"
GFX_Diddy_HangFromSquawks4End:
GFX_Diddy_HangFromSquawks5:
	db "GFX_Diddy_HangFromSquawks5.bin"
GFX_Diddy_HangFromSquawks5End:
GFX_Diddy_HangFromSquawks6:
	db "GFX_Diddy_HangFromSquawks6.bin"
GFX_Diddy_HangFromSquawks6End:
GFX_KrowHead_Dead1:
	db "GFX_KrowHead_Dead1.bin"
GFX_KrowHead_Dead1End:
GFX_KrowHead_Dead2:
	db "GFX_KrowHead_Dead2.bin"
GFX_KrowHead_Dead2End:
GFX_Dixie_HangFromHook1:
	db "GFX_Dixie_HangFromHook1.bin"
GFX_Dixie_HangFromHook1End:
GFX_Dixie_HangFromHook2:
	db "GFX_Dixie_HangFromHook2.bin"
GFX_Dixie_HangFromHook2End:
GFX_Dixie_HangFromHook3:
	db "GFX_Dixie_HangFromHook3.bin"
GFX_Dixie_HangFromHook3End:
GFX_Dixie_HangFromHook4:
	db "GFX_Dixie_HangFromHook4.bin"
GFX_Dixie_HangFromHook4End:
GFX_Dixie_HangFromHook5:
	db "GFX_Dixie_HangFromHook5.bin"
GFX_Dixie_HangFromHook5End:
GFX_Dixie_HangFromHook6:
	db "GFX_Dixie_HangFromHook6.bin"
GFX_Dixie_HangFromHook6End:
GFX_Rattly_Hurt:
	db "GFX_Rattly_Hurt.bin"
GFX_Rattly_HurtEnd:
GFX_Squitter_Hurt:
	db "GFX_Squitter_Hurt.bin"
GFX_Squitter_HurtEnd:
GFX_Squawks_Hurt:
	db "GFX_Squawks_Hurt.bin"
GFX_Squawks_HurtEnd:
GFX_Diddy_HangFromHook1:
	db "GFX_Diddy_HangFromHook1.bin"
GFX_Diddy_HangFromHook1End:
GFX_Diddy_HangFromHook2:
	db "GFX_Diddy_HangFromHook2.bin"
GFX_Diddy_HangFromHook2End:
GFX_Diddy_HangFromHook3:
	db "GFX_Diddy_HangFromHook3.bin"
GFX_Diddy_HangFromHook3End:
GFX_Diddy_HangFromHook4:
	db "GFX_Diddy_HangFromHook4.bin"
GFX_Diddy_HangFromHook4End:
GFX_Diddy_HangFromHook5:
	db "GFX_Diddy_HangFromHook5.bin"
GFX_Diddy_HangFromHook5End:
GFX_Diddy_HangFromHook6:
	db "GFX_Diddy_HangFromHook6.bin"
GFX_Diddy_HangFromHook6End:
GFX_Diddy_HangFromHorizontalRope:
	db "GFX_Diddy_CopyOfHangFromHorizontalRope.bin"
GFX_Diddy_CopyOfHangFromHorizontalRopeEnd:
GFX_Kaboing_Idle1:
	db "GFX_Kaboing_Idle1.bin"
GFX_Kaboing_Idle1End:
GFX_Kaboing_Idle2:
	db "GFX_Kaboing_Idle2.bin"
GFX_Kaboing_Idle2End:
GFX_Kaboing_Idle3:
	db "GFX_Kaboing_Idle3.bin"
GFX_Kaboing_Idle3End:
GFX_Dixie_HangFromHorizontalRope1:
	db "GFX_Dixie_HangFromHorizontalRope1.bin"
GFX_Dixie_HangFromHorizontalRope1End:
GFX_Dixie_HangFromHorizontalRope2:
	db "GFX_Dixie_HangFromHorizontalRope2.bin"
GFX_Dixie_HangFromHorizontalRope2End:
GFX_Dixie_HangFromHorizontalRope3:
	db "GFX_Dixie_HangFromHorizontalRope3.bin"
GFX_Dixie_HangFromHorizontalRope3End:
GFX_Dixie_HangFromHorizontalRope4:
	db "GFX_Dixie_HangFromHorizontalRope4.bin"
GFX_Dixie_HangFromHorizontalRope4End:
GFX_Dixie_HangFromHorizontalRope5:
	db "GFX_Dixie_HangFromHorizontalRope5.bin"
GFX_Dixie_HangFromHorizontalRope5End:
GFX_BigSmokeCloud_Idle1:
	db "GFX_BigSmokeCloud_Idle1.bin"
GFX_BigSmokeCloud_Idle1End:
GFX_BigSmokeCloud_Idle2:
	db "GFX_BigSmokeCloud_Idle2.bin"
GFX_BigSmokeCloud_Idle2End:
GFX_BigSmokeCloud_Idle3:
	db "GFX_BigSmokeCloud_Idle3.bin"
GFX_BigSmokeCloud_Idle3End:
GFX_BigSmokeCloud_Idle4:
	db "GFX_BigSmokeCloud_Idle4.bin"
GFX_BigSmokeCloud_Idle4End:
GFX_BigSmokeCloud_Idle5:
	db "GFX_BigSmokeCloud_Idle5.bin"
GFX_BigSmokeCloud_Idle5End:
GFX_BigSmokeCloud_Idle6:
	db "GFX_BigSmokeCloud_Idle6.bin"
GFX_BigSmokeCloud_Idle6End:
GFX_BigSmokeCloud_Idle7:
	db "GFX_BigSmokeCloud_Idle7.bin"
GFX_BigSmokeCloud_Idle7End:
GFX_BigSmokeCloud_Idle8:
	db "GFX_BigSmokeCloud_Idle8.bin"
GFX_BigSmokeCloud_Idle8End:
GFX_BigSmokeCloud_Idle9:
	db "GFX_BigSmokeCloud_Idle9.bin"
GFX_BigSmokeCloud_Idle9End:
GFX_BigSmokeCloud_Idle10:
	db "GFX_BigSmokeCloud_Idle10.bin"
GFX_BigSmokeCloud_Idle10End:
GFX_BigSmokeCloud_Idle11:
	db "GFX_BigSmokeCloud_Idle11.bin"
GFX_BigSmokeCloud_Idle11End:
GFX_BigSmokeCloud_Idle12:
	db "GFX_BigSmokeCloud_Idle12.bin"
GFX_BigSmokeCloud_Idle12End:
GFX_BigSmokeCloud_Idle13:
	db "GFX_BigSmokeCloud_Idle13.bin"
GFX_BigSmokeCloud_Idle13End:
GFX_Diddy_Swimming1:
	db "GFX_Diddy_Swimming1.bin"
GFX_Diddy_Swimming1End:
GFX_Diddy_Swimming2:
	db "GFX_Diddy_Swimming2.bin"
GFX_Diddy_Swimming2End:
GFX_Diddy_Swimming3:
	db "GFX_Diddy_Swimming3.bin"
GFX_Diddy_Swimming3End:
GFX_Diddy_Swimming4:
	db "GFX_Diddy_Swimming4.bin"
GFX_Diddy_Swimming4End:
GFX_Diddy_Swimming5:
	db "GFX_Diddy_Swimming5.bin"
GFX_Diddy_Swimming5End:
GFX_Diddy_Swimming6:
	db "GFX_Diddy_Swimming6.bin"
GFX_Diddy_Swimming6End:
GFX_Diddy_Swimming7:
	db "GFX_Diddy_Swimming7.bin"
GFX_Diddy_Swimming7End:
GFX_Diddy_Swimming8:
	db "GFX_Diddy_Swimming8.bin"
GFX_Diddy_Swimming8End:
GFX_Diddy_Swimming9:
	db "GFX_Diddy_Swimming9.bin"
GFX_Diddy_Swimming9End:
GFX_Diddy_Swimming10:
	db "GFX_Diddy_Swimming10.bin"
GFX_Diddy_Swimming10End:
GFX_Diddy_Swimming11:
	db "GFX_Diddy_Swimming11.bin"
GFX_Diddy_Swimming11End:
GFX_Diddy_Swimming12:
	db "GFX_Diddy_Swimming12.bin"
GFX_Diddy_Swimming12End:
GFX_Diddy_Swimming13:
	db "GFX_Diddy_Swimming13.bin"
GFX_Diddy_Swimming13End:
GFX_Diddy_Swimming14:
	db "GFX_Diddy_Swimming14.bin"
GFX_Diddy_Swimming14End:
GFX_Diddy_Swimming15:
	db "GFX_Diddy_Swimming15.bin"
GFX_Diddy_Swimming15End:
GFX_Diddy_TurnWhileSwimming1:
	db "GFX_Diddy_TurnWhileSwimming1.bin"
GFX_Diddy_TurnWhileSwimming1End:
GFX_Diddy_TurnWhileSwimming2:
	db "GFX_Diddy_TurnWhileSwimming2.bin"
GFX_Diddy_TurnWhileSwimming2End:
GFX_Dixie_TurnWhileSwimming1:
	db "GFX_Dixie_TurnWhileSwimming1.bin"
GFX_Dixie_TurnWhileSwimming1End:
GFX_Dixie_TurnWhileSwimming2:
	db "GFX_Dixie_TurnWhileSwimming2.bin"
GFX_Dixie_TurnWhileSwimming2End:
GFX_Diddy_RideRattly1:
	db "GFX_Diddy_RideRattly1.bin"
GFX_Diddy_RideRattly1End:
GFX_Diddy_RideRattly2:
	db "GFX_Diddy_RideRattly2.bin"
GFX_Diddy_RideRattly2End:
GFX_Diddy_RideRattly3:
	db "GFX_Diddy_RideRattly3.bin"
GFX_Diddy_RideRattly3End:
GFX_Diddy_RideRattly4:
	db "GFX_Diddy_RideRattly4.bin"
GFX_Diddy_RideRattly4End:
GFX_Diddy_RideRattly5:
	db "GFX_Diddy_RideRattly5.bin"
GFX_Diddy_RideRattly5End:
GFX_Spiny_Walk1:
	db "GFX_Spiny_Walk1.bin"
GFX_Spiny_Walk1End:
GFX_Spiny_Walk2:
	db "GFX_Spiny_Walk2.bin"
GFX_Spiny_Walk2End:
GFX_Spiny_Walk3:
	db "GFX_Spiny_Walk3.bin"
GFX_Spiny_Walk3End:
GFX_Spiny_Walk4:
	db "GFX_Spiny_Walk4.bin"
GFX_Spiny_Walk4End:
GFX_Spiny_Walk5:
	db "GFX_Spiny_Walk5.bin"
GFX_Spiny_Walk5End:
GFX_Spiny_Walk6:
	db "GFX_Spiny_Walk6.bin"
GFX_Spiny_Walk6End:
GFX_Spiny_Walk7:
	db "GFX_Spiny_Walk7.bin"
GFX_Spiny_Walk7End:
GFX_Spiny_Walk8:
	db "GFX_Spiny_Walk8.bin"
GFX_Spiny_Walk8End:
GFX_Kleever_Swing1:
	db "GFX_Kleever_Swing1.bin"
GFX_Kleever_Swing1End:
GFX_Kleever_Swing2:
	db "GFX_Kleever_Swing2.bin"
GFX_Kleever_Swing2End:
GFX_Kleever_Swing3:
	db "GFX_Kleever_Swing3.bin"
GFX_Kleever_Swing3End:
GFX_Kleever_Swing4:
	db "GFX_Kleever_Swing4.bin"
GFX_Kleever_Swing4End:
GFX_Kleever_Swing5:
	db "GFX_Kleever_Swing5.bin"
GFX_Kleever_Swing5End:
GFX_Kleever_Swing6:
	db "GFX_Kleever_Swing6.bin"
GFX_Kleever_Swing6End:
GFX_Kleever_Swing7:
	db "GFX_Kleever_Swing7.bin"
GFX_Kleever_Swing7End:
GFX_Kleever_Swing8:
	db "GFX_Kleever_Swing8.bin"
GFX_Kleever_Swing8End:
GFX_Kleever_Swing9:
	db "GFX_Kleever_Swing9.bin"
GFX_Kleever_Swing9End:
GFX_Kleever_Swing10:
	db "GFX_Kleever_Swing10.bin"
GFX_Kleever_Swing10End:
GFX_Kleever_Swing11:
	db "GFX_Kleever_Swing11.bin"
GFX_Kleever_Swing11End:
GFX_Kleever_Swing12:
	db "GFX_Kleever_Swing12.bin"
GFX_Kleever_Swing12End:
GFX_Kleever_Swing13:
	db "GFX_Kleever_Swing13.bin"
GFX_Kleever_Swing13End:
GFX_Kleever_Swing14:
	db "GFX_Kleever_Swing14.bin"
GFX_Kleever_Swing14End:
GFX_Kleever_Swing15:
	db "GFX_Kleever_Swing15.bin"
GFX_Kleever_Swing15End:
GFX_Kleever_Swing16:
	db "GFX_Kleever_Swing16.bin"
GFX_Kleever_Swing16End:
GFX_KleeverHand_Idle1:
	db "GFX_KleeverHand_Idle1.bin"
GFX_KleeverHand_Idle1End:
GFX_KleeverHand_Idle2:
	db "GFX_KleeverHand_Idle2.bin"
GFX_KleeverHand_Idle2End:
GFX_KleeverHand_Idle3:
	db "GFX_KleeverHand_Idle3.bin"
GFX_KleeverHand_Idle3End:
GFX_KleeverHand_Idle4:
	db "GFX_KleeverHand_Idle4.bin"
GFX_KleeverHand_Idle4End:
GFX_KleeverHand_Idle5:
	db "GFX_KleeverHand_Idle5.bin"
GFX_KleeverHand_Idle5End:
GFX_KleeverHand_Idle6:
	db "GFX_KleeverHand_Idle6.bin"
GFX_KleeverHand_Idle6End:
GFX_KleeverHand_Idle7:
	db "GFX_KleeverHand_Idle7.bin"
GFX_KleeverHand_Idle7End:
GFX_KleeverHand_Idle8:
	db "GFX_KleeverHand_Idle8.bin"
GFX_KleeverHand_Idle8End:
GFX_Kleever_Turn1:
	db "GFX_Kleever_Turn1.bin"
GFX_Kleever_Turn1End:
GFX_Kleever_Turn2:
	db "GFX_Kleever_Turn2.bin"
GFX_Kleever_Turn2End:
GFX_Kleever_Turn3:
	db "GFX_Kleever_Turn3.bin"
GFX_Kleever_Turn3End:
GFX_KleeverHand_Turn1:
	db "GFX_KleeverHand_Turn1.bin"
GFX_KleeverHand_Turn1End:
GFX_KleeverHand_Turn2:
	db "GFX_KleeverHand_Turn2.bin"
GFX_KleeverHand_Turn2End:
GFX_KleeverHand_Turn3:
	db "GFX_KleeverHand_Turn3.bin"
GFX_KleeverHand_Turn3End:
GFX_Kleever_SwingFireTrail1:
	db "GFX_Kleever_SwingFireTrail1.bin"
GFX_Kleever_SwingFireTrail1End:
GFX_Kleever_SwingFireTrail2:
	db "GFX_Kleever_SwingFireTrail2.bin"
GFX_Kleever_SwingFireTrail2End:
GFX_Kleever_SwingFireTrail3:
	db "GFX_Kleever_SwingFireTrail3.bin"
GFX_Kleever_SwingFireTrail3End:
GFX_Kleever_SwingFireTrail4:
	db "GFX_Kleever_SwingFireTrail4.bin"
GFX_Kleever_SwingFireTrail4End:
GFX_Kleever_SwingFireTrail5:
	db "GFX_Kleever_SwingFireTrail5.bin"
GFX_Kleever_SwingFireTrail5End:
GFX_Kleever_SwingFireTrail6:
	db "GFX_Kleever_SwingFireTrail6.bin"
GFX_Kleever_SwingFireTrail6End:
GFX_Kleever_SwingFireTrail7:
	db "GFX_Kleever_SwingFireTrail7.bin"
GFX_Kleever_SwingFireTrail7End:
GFX_Kleever_SwingFireTrail8:
	db "GFX_Kleever_SwingFireTrail8.bin"
GFX_Kleever_SwingFireTrail8End:
GFX_Kleever_SwingFireTrail9:
	db "GFX_Kleever_SwingFireTrail9.bin"
GFX_Kleever_SwingFireTrail9End:
GFX_Kleever_SwingFireTrail10:
	db "GFX_Kleever_SwingFireTrail10.bin"
GFX_Kleever_SwingFireTrail10End:
GFX_Kleever_SwingFireTrail11:
	db "GFX_Kleever_SwingFireTrail11.bin"
GFX_Kleever_SwingFireTrail11End:
GFX_Kleever_SwingFireTrail12:
	db "GFX_Kleever_SwingFireTrail12.bin"
GFX_Kleever_SwingFireTrail12End:
GFX_Kleever_SwingFireTrail13:
	db "GFX_Kleever_SwingFireTrail13.bin"
GFX_Kleever_SwingFireTrail13End:
GFX_Kleever_SwingFireTrail14:
	db "GFX_Kleever_SwingFireTrail14.bin"
GFX_Kleever_SwingFireTrail14End:
GFX_Kleever_SwingFireTrail15:
	db "GFX_Kleever_SwingFireTrail15.bin"
GFX_Kleever_SwingFireTrail15End:
GFX_Kleever_SwingFireTrail16:
	db "GFX_Kleever_SwingFireTrail16.bin"
GFX_Kleever_SwingFireTrail16End:
GFX_KleeverFireball_Burn1:
	db "GFX_KleeverFireball_Burn1.bin"
GFX_KleeverFireball_Burn1End:
GFX_KleeverFireball_Burn2:
	db "GFX_KleeverFireball_Burn2.bin"
GFX_KleeverFireball_Burn2End:
GFX_KleeverFireball_Burn3:
	db "GFX_KleeverFireball_Burn3.bin"
GFX_KleeverFireball_Burn3End:
GFX_KleeverFireball_Burn4:
	db "GFX_KleeverFireball_Burn4.bin"
GFX_KleeverFireball_Burn4End:
GFX_KleeverFireball_Burn5:
	db "GFX_KleeverFireball_Burn5.bin"
GFX_KleeverFireball_Burn5End:
GFX_KleeverFireball_Burn6:
	db "GFX_KleeverFireball_Burn6.bin"
GFX_KleeverFireball_Burn6End:
GFX_KleeverFireball_Burn7:
	db "GFX_KleeverFireball_Burn7.bin"
GFX_KleeverFireball_Burn7End:
GFX_KleeverFireball_Burn8:
	db "GFX_KleeverFireball_Burn8.bin"
GFX_KleeverFireball_Burn8End:
GFX_Spiny_Turn1:
	db "GFX_Spiny_Turn1.bin"
GFX_Spiny_Turn1End:
GFX_Spiny_Turn2:
	db "GFX_Spiny_Turn2.bin"
GFX_Spiny_Turn2End:
GFX_Spiny_Dead1:
	db "GFX_Spiny_Dead1.bin"
GFX_Spiny_Dead1End:
GFX_Spiny_Dead2:
	db "GFX_Spiny_Dead2.bin"
GFX_Spiny_Dead2End:
GFX_Spiny_Dead3:
	db "GFX_Spiny_Dead3.bin"
GFX_Spiny_Dead3End:
GFX_Spiny_Dead4:
	db "GFX_Spiny_Dead4.bin"
GFX_Spiny_Dead4End:
GFX_Spiny_Dead5:
	db "GFX_Spiny_Dead5.bin"
GFX_Spiny_Dead5End:
GFX_UnknownEffect4_Idle1:
	db "GFX_UnknownEffect4_Idle1.bin"
GFX_UnknownEffect4_Idle1End:
GFX_UnknownEffect4_Idle2:
	db "GFX_UnknownEffect4_Idle2.bin"
GFX_UnknownEffect4_Idle2End:
GFX_UnknownEffect4_Idle3:
	db "GFX_UnknownEffect4_Idle3.bin"
GFX_UnknownEffect4_Idle3End:
GFX_UnknownEffect4_Idle4:
	db "GFX_UnknownEffect4_Idle4.bin"
GFX_UnknownEffect4_Idle4End:
GFX_Dixie_StuckToHoneyWall1:
	db "GFX_Dixie_StuckToHoneyWall1.bin"
GFX_Dixie_StuckToHoneyWall1End:
GFX_Dixie_StuckToHoneyWall2:
	db "GFX_Dixie_StuckToHoneyWall2.bin"
GFX_Dixie_StuckToHoneyWall2End:
GFX_Dixie_StuckToHoneyWall3:
	db "GFX_Dixie_StuckToHoneyWall3.bin"
GFX_Dixie_StuckToHoneyWall3End:
GFX_Diddy_AttachToHook1:
	db "GFX_Diddy_AttachToHook1.bin"
GFX_Diddy_AttachToHook1End:
GFX_Diddy_AttachToHook2:
	db "GFX_Diddy_AttachToHook2.bin"
GFX_Diddy_AttachToHook2End:
GFX_Diddy_AttachToHook3:
	db "GFX_Diddy_AttachToHook3.bin"
GFX_Diddy_AttachToHook3End:
GFX_Diddy_AttachToHook4:
	db "GFX_Diddy_AttachToHook4.bin"
GFX_Diddy_AttachToHook4End:
GFX_Diddy_AttachToHook5:
	db "GFX_Diddy_AttachToHook5.bin"
GFX_Diddy_AttachToHook5End:
GFX_LavaSmoke_Pose1:
	db "GFX_LavaSmoke_Pose1.bin"
GFX_LavaSmoke_Pose1End:
GFX_LavaSmoke_Pose2:
	db "GFX_LavaSmoke_Pose2.bin"
GFX_LavaSmoke_Pose2End:
GFX_LavaSmoke_Pose3:
	db "GFX_LavaSmoke_Pose3.bin"
GFX_LavaSmoke_Pose3End:
GFX_LavaSmoke_Pose4:
	db "GFX_LavaSmoke_Pose4.bin"
GFX_LavaSmoke_Pose4End:
GFX_LavaSmoke_Pose5:
	db "GFX_LavaSmoke_Pose5.bin"
GFX_LavaSmoke_Pose5End:
GFX_LavaSmoke_Pose6:
	db "GFX_LavaSmoke_Pose6.bin"
GFX_LavaSmoke_Pose6End:
GFX_LavaSmoke_Pose7:
	db "GFX_LavaSmoke_Pose7.bin"
GFX_LavaSmoke_Pose7End:
GFX_LavaSmoke_Pose8:
	db "GFX_LavaSmoke_Pose8.bin"
GFX_LavaSmoke_Pose8End:
GFX_LavaSmoke_Pose9:
	db "GFX_LavaSmoke_Pose9.bin"
GFX_LavaSmoke_Pose9End:
GFX_LavaSmoke_Pose10:
	db "GFX_LavaSmoke_Pose10.bin"
GFX_LavaSmoke_Pose10End:
GFX_LavaSmoke_Pose11:
	db "GFX_LavaSmoke_Pose11.bin"
GFX_LavaSmoke_Pose11End:
GFX_LavaSmoke_Pose12:
	db "GFX_LavaSmoke_Pose12.bin"
GFX_LavaSmoke_Pose12End:
GFX_Diddy_Turn1:
	db "GFX_Diddy_Turn1.bin"
GFX_Diddy_Turn1End:
GFX_Diddy_Turn2:
	db "GFX_Diddy_Turn2.bin"
GFX_Diddy_Turn2End:
GFX_Dixie_AttachToHook1:
	db "GFX_Dixie_AttachToHook1.bin"
GFX_Dixie_AttachToHook1End:
GFX_Dixie_AttachToHook2:
	db "GFX_Dixie_AttachToHook2.bin"
GFX_Dixie_AttachToHook2End:
GFX_Dixie_AttachToHook3:
	db "GFX_Dixie_AttachToHook3.bin"
GFX_Dixie_AttachToHook3End:
GFX_Dixie_AttachToHook4:
	db "GFX_Dixie_AttachToHook4.bin"
GFX_Dixie_AttachToHook4End:
GFX_Diddy_LifeIcon:
	db "GFX_Diddy_LifeIcon.bin"
GFX_Diddy_LifeIconEnd:
GFX_UnknownEffect6_Idle1:
	db "GFX_UnknownEffect6_Idle1.bin"
GFX_UnknownEffect6_Idle1End:
GFX_UnknownEffect6_Idle2:
	db "GFX_UnknownEffect6_Idle2.bin"
GFX_UnknownEffect6_Idle2End:
GFX_UnknownEffect6_Idle3:
	db "GFX_UnknownEffect6_Idle3.bin"
GFX_UnknownEffect6_Idle3End:
GFX_UnknownEffect6_Idle4:
	db "GFX_UnknownEffect6_Idle4.bin"
GFX_UnknownEffect6_Idle4End:
GFX_UnknownEffect6_Idle5:
	db "GFX_UnknownEffect6_Idle5.bin"
GFX_UnknownEffect6_Idle5End:
GFX_Klampon_Walk1:
	db "GFX_Klampon_Walk1.bin"
GFX_Klampon_Walk1End:
GFX_Klampon_Walk2:
	db "GFX_Klampon_Walk2.bin"
GFX_Klampon_Walk2End:
GFX_Klampon_Walk3:
	db "GFX_Klampon_Walk3.bin"
GFX_Klampon_Walk3End:
GFX_Klampon_Walk4:
	db "GFX_Klampon_Walk4.bin"
GFX_Klampon_Walk4End:
GFX_Klampon_Walk5:
	db "GFX_Klampon_Walk5.bin"
GFX_Klampon_Walk5End:
GFX_Klampon_Walk6:
	db "GFX_Klampon_Walk6.bin"
GFX_Klampon_Walk6End:
GFX_Klampon_Walk7:
	db "GFX_Klampon_Walk7.bin"
GFX_Klampon_Walk7End:
GFX_Klampon_Walk8:
	db "GFX_Klampon_Walk8.bin"
GFX_Klampon_Walk8End:
GFX_Klampon_Walk9:
	db "GFX_Klampon_Walk9.bin"
GFX_Klampon_Walk9End:
GFX_Klampon_Walk10:
	db "GFX_Klampon_Walk10.bin"
GFX_Klampon_Walk10End:
GFX_Klampon_Walk11:
	db "GFX_Klampon_Walk11.bin"
GFX_Klampon_Walk11End:
GFX_Klampon_Turn1:
	db "GFX_Klampon_Turn1.bin"
GFX_Klampon_Turn1End:
GFX_Klampon_Turn2:
	db "GFX_Klampon_Turn2.bin"
GFX_Klampon_Turn2End:
GFX_Klampon_Dead1:
	db "GFX_Klampon_Dead1.bin"
GFX_Klampon_Dead1End:
GFX_Klampon_Dead2:
	db "GFX_Klampon_Dead2.bin"
GFX_Klampon_Dead2End:
GFX_Klampon_Dead3:
	db "GFX_Klampon_Dead3.bin"
GFX_Klampon_Dead3End:
GFX_Klampon_Dead4:
	db "GFX_Klampon_Dead4.bin"
GFX_Klampon_Dead4End:
GFX_Klampon_Dead5:
	db "GFX_Klampon_Dead5.bin"
GFX_Klampon_Dead5End:
GFX_Diddy_HangOntoStabbingEnguarde1:
	db "GFX_Diddy_HangOntoStabbingEnguarde1.bin"
GFX_Diddy_HangOntoStabbingEnguarde1End:
GFX_Diddy_HangOntoStabbingEnguarde2:
	db "GFX_Diddy_HangOntoStabbingEnguarde2.bin"
GFX_Diddy_HangOntoStabbingEnguarde2End:
GFX_Diddy_HangOntoStabbingEnguarde3:
	db "GFX_Diddy_HangOntoStabbingEnguarde3.bin"
GFX_Diddy_HangOntoStabbingEnguarde3End:
GFX_Diddy_HangOntoStabbingEnguarde4:
	db "GFX_Diddy_HangOntoStabbingEnguarde4.bin"
GFX_Diddy_HangOntoStabbingEnguarde4End:
GFX_Diddy_HangOntoStabbingEnguarde5:
	db "GFX_Diddy_HangOntoStabbingEnguarde5.bin"
GFX_Diddy_HangOntoStabbingEnguarde5End:
GFX_Diddy_RideAnimalBuddy1:
	db "GFX_Diddy_RideAnimalBuddy1.bin"
GFX_Diddy_RideAnimalBuddy1End:
GFX_Diddy_RideAnimalBuddy2:
	db "GFX_Diddy_RideAnimalBuddy2.bin"
GFX_Diddy_RideAnimalBuddy2End:
GFX_Diddy_RideAnimalBuddy3:
	db "GFX_Diddy_RideAnimalBuddy3.bin"
GFX_Diddy_RideAnimalBuddy3End:
GFX_Diddy_RideAnimalBuddy4:
	db "GFX_Diddy_RideAnimalBuddy4.bin"
GFX_Diddy_RideAnimalBuddy4End:
GFX_Diddy_RideAnimalBuddy5:
	db "GFX_Diddy_RideAnimalBuddy5.bin"
GFX_Diddy_RideAnimalBuddy5End:
GFX_KleeversHand_Swing1:
	db "GFX_KleeversHand_Swing1.bin"
GFX_KleeversHand_Swing1End:
GFX_KleeversHand_Swing2:
	db "GFX_KleeversHand_Swing2.bin"
GFX_KleeversHand_Swing2End:
GFX_KleeversHand_Swing3:
	db "GFX_KleeversHand_Swing3.bin"
GFX_KleeversHand_Swing3End:
GFX_KleeversHand_Swing4:
	db "GFX_KleeversHand_Swing4.bin"
GFX_KleeversHand_Swing4End:
GFX_KleeversHand_Swing5:
	db "GFX_KleeversHand_Swing5.bin"
GFX_KleeversHand_Swing5End:
GFX_KleeversHand_Swing6:
	db "GFX_KleeversHand_Swing6.bin"
GFX_KleeversHand_Swing6End:
GFX_KleeversHand_Swing7:
	db "GFX_KleeversHand_Swing7.bin"
GFX_KleeversHand_Swing7End:
GFX_KleeversHand_Swing8:
	db "GFX_KleeversHand_Swing8.bin"
GFX_KleeversHand_Swing8End:
GFX_KleeversHand_Swing9:
	db "GFX_KleeversHand_Swing9.bin"
GFX_KleeversHand_Swing9End:
GFX_KleeversHand_Swing10:
	db "GFX_KleeversHand_Swing10.bin"
GFX_KleeversHand_Swing10End:
GFX_KleeversHand_Swing11:
	db "GFX_KleeversHand_Swing11.bin"
GFX_KleeversHand_Swing11End:
GFX_KleeversHand_Swing12:
	db "GFX_KleeversHand_Swing12.bin"
GFX_KleeversHand_Swing12End:
GFX_KleeversHand_Swing13:
	db "GFX_KleeversHand_Swing13.bin"
GFX_KleeversHand_Swing13End:
GFX_KleeversHand_Swing14:
	db "GFX_KleeversHand_Swing14.bin"
GFX_KleeversHand_Swing14End:
GFX_KleeversHand_Swing15:
	db "GFX_KleeversHand_Swing15.bin"
GFX_KleeversHand_Swing15End:
GFX_KleeversHand_Swing16:
	db "GFX_KleeversHand_Swing16.bin"
GFX_KleeversHand_Swing16End:
GFX_KleeversHand_Swing17:
	db "GFX_KleeversHand_Swing17.bin"
GFX_KleeversHand_Swing17End:
GFX_KleeversHand_Swing18:
	db "GFX_KleeversHand_Swing18.bin"
GFX_KleeversHand_Swing18End:
GFX_Krook_Walk1:
	db "GFX_Krook_Walk1.bin"
GFX_Krook_Walk1End:
GFX_Krook_Walk2:
	db "GFX_Krook_Walk2.bin"
GFX_Krook_Walk2End:
GFX_Krook_Walk3:
	db "GFX_Krook_Walk3.bin"
GFX_Krook_Walk3End:
GFX_Krook_Walk4:
	db "GFX_Krook_Walk4.bin"
GFX_Krook_Walk4End:
GFX_Krook_Walk5:
	db "GFX_Krook_Walk5.bin"
GFX_Krook_Walk5End:
GFX_Krook_Walk6:
	db "GFX_Krook_Walk6.bin"
GFX_Krook_Walk6End:
GFX_Krook_Walk7:
	db "GFX_Krook_Walk7.bin"
GFX_Krook_Walk7End:
GFX_Krook_Walk8:
	db "GFX_Krook_Walk8.bin"
GFX_Krook_Walk8End:
GFX_Krook_Walk9:
	db "GFX_Krook_Walk9.bin"
GFX_Krook_Walk9End:
GFX_Krook_Walk10:
	db "GFX_Krook_Walk10.bin"
GFX_Krook_Walk10End:
GFX_Krook_Walk11:
	db "GFX_Krook_Walk11.bin"
GFX_Krook_Walk11End:
GFX_Krook_ThrowHook1:
	db "GFX_Krook_ThrowHook1.bin"
GFX_Krook_ThrowHook1End:
GFX_Krook_ThrowHook2:
	db "GFX_Krook_ThrowHook2.bin"
GFX_Krook_ThrowHook2End:
GFX_Krook_ThrowHook3:
	db "GFX_Krook_ThrowHook3.bin"
GFX_Krook_ThrowHook3End:
GFX_Krook_ThrowHook4:
	db "GFX_Krook_ThrowHook4.bin"
GFX_Krook_ThrowHook4End:
GFX_Krook_ThrowHook5:
	db "GFX_Krook_ThrowHook5.bin"
GFX_Krook_ThrowHook5End:
GFX_Krook_ThrowHook6:
	db "GFX_Krook_ThrowHook6.bin"
GFX_Krook_ThrowHook6End:
GFX_Krook_ThrowHook7:
	db "GFX_Krook_ThrowHook7.bin"
GFX_Krook_ThrowHook7End:
GFX_Krook_ThrowHook8:
	db "GFX_Krook_ThrowHook8.bin"
GFX_Krook_ThrowHook8End:
GFX_Krook_ThrowHook9:
	db "GFX_Krook_ThrowHook9.bin"
GFX_Krook_ThrowHook9End:
GFX_Krook_ThrowHook10:
	db "GFX_Krook_ThrowHook10.bin"
GFX_Krook_ThrowHook10End:
GFX_Krook_ThrowHook11:
	db "GFX_Krook_ThrowHook11.bin"
GFX_Krook_ThrowHook11End:
GFX_Krook_ThrowHook12:
	db "GFX_Krook_ThrowHook12.bin"
GFX_Krook_ThrowHook12End:
GFX_Krook_ThrowHook13:
	db "GFX_Krook_ThrowHook13.bin"
GFX_Krook_ThrowHook13End:
GFX_Krook_ThrowHook14:
	db "GFX_Krook_ThrowHook14.bin"
GFX_Krook_ThrowHook14End:
GFX_Krook_ThrowHook15:
	db "GFX_Krook_ThrowHook15.bin"
GFX_Krook_ThrowHook15End:
GFX_Krook_ThrowHook16:
	db "GFX_Krook_ThrowHook16.bin"
GFX_Krook_ThrowHook16End:
GFX_Krook_CatchHook1:
	db "GFX_Krook_CatchHook1.bin"
GFX_Krook_CatchHook1End:
GFX_Krook_CatchHook2:
	db "GFX_Krook_CatchHook2.bin"
GFX_Krook_CatchHook2End:
GFX_Krook_CatchHook3:
	db "GFX_Krook_CatchHook3.bin"
GFX_Krook_CatchHook3End:
GFX_Krook_Dead1:
	db "GFX_Krook_Dead1.bin"
GFX_Krook_Dead1End:
GFX_Krook_Dead2:
	db "GFX_Krook_Dead2.bin"
GFX_Krook_Dead2End:
GFX_Krook_Dead3:
	db "GFX_Krook_Dead3.bin"
GFX_Krook_Dead3End:
GFX_Krook_Dead4:
	db "GFX_Krook_Dead4.bin"
GFX_Krook_Dead4End:
GFX_Krook_Dead5:
	db "GFX_Krook_Dead5.bin"
GFX_Krook_Dead5End:
GFX_Krook_Turn1:
	db "GFX_Krook_Turn1.bin"
GFX_Krook_Turn1End:
GFX_Krook_Turn2:
	db "GFX_Krook_Turn2.bin"
GFX_Krook_Turn2End:
GFX_Dixie_FreakOut1:
	db "GFX_Dixie_FreakOut1.bin"
GFX_Dixie_FreakOut1End:
GFX_Dixie_FreakOut2:
	db "GFX_Dixie_FreakOut2.bin"
GFX_Dixie_FreakOut2End:
GFX_Dixie_FreakOut3:
	db "GFX_Dixie_FreakOut3.bin"
GFX_Dixie_FreakOut3End:
GFX_Dixie_FreakOut4:
	db "GFX_Dixie_FreakOut4.bin"
GFX_Dixie_FreakOut4End:
GFX_Dixie_FreakOut5:
	db "GFX_Dixie_FreakOut5.bin"
GFX_Dixie_FreakOut5End:
GFX_Dixie_FreakOut6:
	db "GFX_Dixie_FreakOut6.bin"
GFX_Dixie_FreakOut6End:
GFX_Dixie_FreakOut7:
	db "GFX_Dixie_FreakOut7.bin"
GFX_Dixie_FreakOut7End:
GFX_Dixie_FreakOut8:
	db "GFX_Dixie_FreakOut8.bin"
GFX_Dixie_FreakOut8End:
GFX_Dixie_FreakOut9:
	db "GFX_Dixie_FreakOut9.bin"
GFX_Dixie_FreakOut9End:
GFX_Dixie_FreakOut10:
	db "GFX_Dixie_FreakOut10.bin"
GFX_Dixie_FreakOut10End:
GFX_Diddy_FreakOut1:
	db "GFX_Diddy_FreakOut1.bin"
GFX_Diddy_FreakOut1End:
GFX_Diddy_FreakOut2:
	db "GFX_Diddy_FreakOut2.bin"
GFX_Diddy_FreakOut2End:
GFX_Diddy_FreakOut3:
	db "GFX_Diddy_FreakOut3.bin"
GFX_Diddy_FreakOut3End:
GFX_Diddy_FreakOut4:
	db "GFX_Diddy_FreakOut4.bin"
GFX_Diddy_FreakOut4End:
GFX_Diddy_FreakOut5:
	db "GFX_Diddy_FreakOut5.bin"
GFX_Diddy_FreakOut5End:
GFX_Diddy_FreakOut6:
	db "GFX_Diddy_FreakOut6.bin"
GFX_Diddy_FreakOut6End:
GFX_Diddy_FreakOut7:
	db "GFX_Diddy_FreakOut7.bin"
GFX_Diddy_FreakOut7End:
GFX_Diddy_FreakOut8:
	db "GFX_Diddy_FreakOut8.bin"
GFX_Diddy_FreakOut8End:
GFX_Diddy_FreakOut9:
	db "GFX_Diddy_FreakOut9.bin"
GFX_Diddy_FreakOut9End:
GFX_Diddy_FreakOut10:
	db "GFX_Diddy_FreakOut10.bin"
GFX_Diddy_FreakOut10End:
GFX_Diddy_FreakOut11:
	db "GFX_Diddy_FreakOut11.bin"
GFX_Diddy_FreakOut11End:
GFX_WebShot_Attack1:
	db "GFX_WebShot_Attack1.bin"
GFX_WebShot_Attack1End:
GFX_WebShot_Attack2:
	db "GFX_WebShot_Attack2.bin"
GFX_WebShot_Attack2End:
GFX_WebShot_Attack3:
	db "GFX_WebShot_Attack3.bin"
GFX_WebShot_Attack3End:
GFX_WebShot_Attack4:
	db "GFX_WebShot_Attack4.bin"
GFX_WebShot_Attack4End:
GFX_WebShot_Attack5:
	db "GFX_WebShot_Attack5.bin"
GFX_WebShot_Attack5End:
GFX_WebShot_Attack6:
	db "GFX_WebShot_Attack6.bin"
GFX_WebShot_Attack6End:
GFX_WebShot_Attack7:
	db "GFX_WebShot_Attack7.bin"
GFX_WebShot_Attack7End:
GFX_WebShot_Attack8:
	db "GFX_WebShot_Attack8.bin"
GFX_WebShot_Attack8End:
GFX_WebShot_Attack9:
	db "GFX_WebShot_Attack9.bin"
GFX_WebShot_Attack9End:
GFX_WebShot_Attack10:
	db "GFX_WebShot_Attack10.bin"
GFX_WebShot_Attack10End:
GFX_WebShot_Attack11:
	db "GFX_WebShot_Attack11.bin"
GFX_WebShot_Attack11End:
GFX_WebShot_Attack12:
	db "GFX_WebShot_Attack12.bin"
GFX_WebShot_Attack12End:
GFX_WebShot_Blob1:
	db "GFX_WebShot_Blob1.bin"
GFX_WebShot_Blob1End:
GFX_WebPlatform_Deploy1:
	db "GFX_WebPlatform_Deploy1.bin"
GFX_WebPlatform_Deploy1End:
GFX_WebPlatform_Deploy2:
	db "GFX_WebPlatform_Deploy2.bin"
GFX_WebPlatform_Deploy2End:
GFX_WebPlatform_Deploy3:
	db "GFX_WebPlatform_Deploy3.bin"
GFX_WebPlatform_Deploy3End:
GFX_WebPlatform_Deploy4:
	db "GFX_WebPlatform_Deploy4.bin"
GFX_WebPlatform_Deploy4End:
GFX_WebPlatform_Deploy5:
	db "GFX_WebPlatform_Deploy5.bin"
GFX_WebPlatform_Deploy5End:
GFX_WebPlatform_Deploy6:
	db "GFX_WebPlatform_Deploy6.bin"
GFX_WebPlatform_Deploy6End:
GFX_WebPlatform_Deploy7:
	db "GFX_WebPlatform_Deploy7.bin"
GFX_WebPlatform_Deploy7End:
GFX_WebPlatform_Deploy8:
	db "GFX_WebPlatform_Deploy8.bin"
GFX_WebPlatform_Deploy8End:
GFX_WebPlatform_Deploy9:
	db "GFX_WebPlatform_Deploy9.bin"
GFX_WebPlatform_Deploy9End:
GFX_WebPlatform_Deploy10:
	db "GFX_WebPlatform_Deploy10.bin"
GFX_WebPlatform_Deploy10End:
GFX_WebPlatform_Deploy11:
	db "GFX_WebPlatform_Deploy11.bin"
GFX_WebPlatform_Deploy11End:
GFX_Krochead_Rise1:
	db "GFX_Krochead_Rise1.bin"
GFX_Krochead_Rise1End:
GFX_Krochead_Rise2:
	db "GFX_Krochead_Rise2.bin"
GFX_Krochead_Rise2End:
GFX_Krochead_Rise3:
	db "GFX_Krochead_Rise3.bin"
GFX_Krochead_Rise3End:
GFX_Krochead_Rise4:
	db "GFX_Krochead_Rise4.bin"
GFX_Krochead_Rise4End:
GFX_Krochead_Rise5:
	db "GFX_Krochead_Rise5.bin"
GFX_Krochead_Rise5End:
GFX_Krochead_Rise6:
	db "GFX_Krochead_Rise6.bin"
GFX_Krochead_Rise6End:
GFX_Krochead_Rise7:
	db "GFX_Krochead_Rise7.bin"
GFX_Krochead_Rise7End:
GFX_Krochead_Rise8:
	db "GFX_Krochead_Rise8.bin"
GFX_Krochead_Rise8End:
GFX_Krochead_OpenMouth1:
	db "GFX_Krochead_OpenMouth1.bin"
GFX_Krochead_OpenMouth1End:
GFX_Krochead_OpenMouth2:
	db "GFX_Krochead_OpenMouth2.bin"
GFX_Krochead_OpenMouth2End:
GFX_Krochead_OpenMouth3:
	db "GFX_Krochead_OpenMouth3.bin"
GFX_Krochead_OpenMouth3End:
GFX_Krochead_OpenMouth4:
	db "GFX_Krochead_OpenMouth4.bin"
GFX_Krochead_OpenMouth4End:
GFX_Krochead_OpenMouth5:
	db "GFX_Krochead_OpenMouth5.bin"
GFX_Krochead_OpenMouth5End:
GFX_Krochead_OpenMouth6:
	db "GFX_Krochead_OpenMouth6.bin"
GFX_Krochead_OpenMouth6End:
GFX_Krochead_OpenMouth7:
	db "GFX_Krochead_OpenMouth7.bin"
GFX_Krochead_OpenMouth7End:
GFX_Krochead_OpenMouth8:
	db "GFX_Krochead_OpenMouth8.bin"
GFX_Krochead_OpenMouth8End:
GFX_Krochead_Blink1:
	db "GFX_Krochead_Blink1.bin"
GFX_Krochead_Blink1End:
GFX_Krochead_Blink2:
	db "GFX_Krochead_Blink2.bin"
GFX_Krochead_Blink2End:
GFX_UnknownEffect7_Idle1:
	db "GFX_UnknownEffect7_Idle1.bin"
GFX_UnknownEffect7_Idle1End:
GFX_UnknownEffect7_Idle2:
	db "GFX_UnknownEffect7_Idle2.bin"
GFX_UnknownEffect7_Idle2End:
GFX_UnknownEffect7_Idle3:
	db "GFX_UnknownEffect7_Idle3.bin"
GFX_UnknownEffect7_Idle3End:
GFX_UnknownEffect7_Idle4:
	db "GFX_UnknownEffect7_Idle4.bin"
GFX_UnknownEffect7_Idle4End:
GFX_UnknownEffect7_Idle5:
	db "GFX_UnknownEffect7_Idle5.bin"
GFX_UnknownEffect7_Idle5End:
GFX_UnknownEffect7_Idle6:
	db "GFX_UnknownEffect7_Idle6.bin"
GFX_UnknownEffect7_Idle6End:
GFX_Kleever_BrokenHilt1:
	db "GFX_Kleever_BrokenHilt1.bin"
GFX_Kleever_BrokenHilt1End:
GFX_Kleever_BrokenHilt2:
	db "GFX_Kleever_BrokenHilt2.bin"
GFX_Kleever_BrokenHilt2End:
GFX_Kleever_BrokenHilt3:
	db "GFX_Kleever_BrokenHilt3.bin"
GFX_Kleever_BrokenHilt3End:
GFX_Kleever_BrokenHilt4:
	db "GFX_Kleever_BrokenHilt4.bin"
GFX_Kleever_BrokenHilt4End:
GFX_Kleever_BrokenHilt5:
	db "GFX_Kleever_BrokenHilt5.bin"
GFX_Kleever_BrokenHilt5End:
GFX_Kleever_BrokenHilt6:
	db "GFX_Kleever_BrokenHilt6.bin"
GFX_Kleever_BrokenHilt6End:
GFX_Kleever_BrokenHilt7:
	db "GFX_Kleever_BrokenHilt7.bin"
GFX_Kleever_BrokenHilt7End:
GFX_Kleever_BrokenHilt8:
	db "GFX_Kleever_BrokenHilt8.bin"
GFX_Kleever_BrokenHilt8End:
GFX_Kleever_HiltFire1:
	db "GFX_Kleever_HiltFire1.bin"
GFX_Kleever_HiltFire1End:
GFX_Kleever_HiltFire2:
	db "GFX_Kleever_HiltFire2.bin"
GFX_Kleever_HiltFire2End:
GFX_Kleever_HiltFire3:
	db "GFX_Kleever_HiltFire3.bin"
GFX_Kleever_HiltFire3End:
GFX_Kleever_HiltFire4:
	db "GFX_Kleever_HiltFire4.bin"
GFX_Kleever_HiltFire4End:
GFX_Kleever_HiltFire5:
	db "GFX_Kleever_HiltFire5.bin"
GFX_Kleever_HiltFire5End:
GFX_Kleever_HiltFire6:
	db "GFX_Kleever_HiltFire6.bin"
GFX_Kleever_HiltFire6End:
GFX_Kleever_HiltFire7:
	db "GFX_Kleever_HiltFire7.bin"
GFX_Kleever_HiltFire7End:
GFX_Kleever_HiltFire8:
	db "GFX_Kleever_HiltFire8.bin"
GFX_Kleever_HiltFire8End:
GFX_KrooksHook_Spin1:
	db "GFX_KrooksHook_Spin1.bin"
GFX_KrooksHook_Spin1End:
GFX_KrooksHook_Spin2:
	db "GFX_KrooksHook_Spin2.bin"
GFX_KrooksHook_Spin2End:
GFX_KrooksHook_Spin3:
	db "GFX_KrooksHook_Spin3.bin"
GFX_KrooksHook_Spin3End:
GFX_KrooksHook_Spin4:
	db "GFX_KrooksHook_Spin4.bin"
GFX_KrooksHook_Spin4End:
GFX_KrooksHook_Spin5:
	db "GFX_KrooksHook_Spin5.bin"
GFX_KrooksHook_Spin5End:
GFX_KrooksHook_Spin6:
	db "GFX_KrooksHook_Spin6.bin"
GFX_KrooksHook_Spin6End:
GFX_KrooksHook_Spin7:
	db "GFX_KrooksHook_Spin7.bin"
GFX_KrooksHook_Spin7End:
GFX_KrooksHook_Spin8:
	db "GFX_KrooksHook_Spin8.bin"
GFX_KrooksHook_Spin8End:
GFX_KrooksHook_Spin9:
	db "GFX_KrooksHook_Spin9.bin"
GFX_KrooksHook_Spin9End:
GFX_KrooksHook_Spin10:
	db "GFX_KrooksHook_Spin10.bin"
GFX_KrooksHook_Spin10End:
GFX_Krook_Idle1:
	db "GFX_Krook_Idle1.bin"
GFX_Krook_Idle1End:
GFX_Krook_Idle2:
	db "GFX_Krook_Idle2.bin"
GFX_Krook_Idle2End:
GFX_Horsetail_Sway1:
	db "GFX_Horsetail_Sway1.bin"
GFX_Horsetail_Sway1End:
GFX_Horsetail_Sway2:
	db "GFX_Horsetail_Sway2.bin"
GFX_Horsetail_Sway2End:
GFX_Horsetail_Sway3:
	db "GFX_Horsetail_Sway3.bin"
GFX_Horsetail_Sway3End:
GFX_Horsetail_Sway4:
	db "GFX_Horsetail_Sway4.bin"
GFX_Horsetail_Sway4End:
GFX_Horsetail_Sway5:
	db "GFX_Horsetail_Sway5.bin"
GFX_Horsetail_Sway5End:
GFX_Horsetail_Sway6:
	db "GFX_Horsetail_Sway6.bin"
GFX_Horsetail_Sway6End:
GFX_Horsetail_Sway7:
	db "GFX_Horsetail_Sway7.bin"
GFX_Horsetail_Sway7End:
GFX_Horsetail_Grabbed:
	db "GFX_Horsetail_Grabbed.bin"
GFX_Horsetail_GrabbedEnd:
GFX_K_Rotate1:
	db "GFX_K_Rotate1.bin"
GFX_K_Rotate1End:
GFX_K_Rotate2:
	db "GFX_K_Rotate2.bin"
GFX_K_Rotate2End:
GFX_K_Rotate3:
	db "GFX_K_Rotate3.bin"
GFX_K_Rotate3End:
GFX_K_Rotate4:
	db "GFX_K_Rotate4.bin"
GFX_K_Rotate4End:
GFX_K_Rotate5:
	db "GFX_K_Rotate5.bin"
GFX_K_Rotate5End:
GFX_K_Rotate6:
	db "GFX_K_Rotate6.bin"
GFX_K_Rotate6End:
GFX_K_Rotate7:
	db "GFX_K_Rotate7.bin"
GFX_K_Rotate7End:
GFX_K_Rotate8:
	db "GFX_K_Rotate8.bin"
GFX_K_Rotate8End:
GFX_O_Rotate1:
	db "GFX_O_Rotate1.bin"
GFX_O_Rotate1End:
GFX_O_Rotate2:
	db "GFX_O_Rotate2.bin"
GFX_O_Rotate2End:
GFX_O_Rotate3:
	db "GFX_O_Rotate3.bin"
GFX_O_Rotate3End:
GFX_O_Rotate4:
	db "GFX_O_Rotate4.bin"
GFX_O_Rotate4End:
GFX_O_Rotate5:
	db "GFX_O_Rotate5.bin"
GFX_O_Rotate5End:
GFX_O_Rotate6:
	db "GFX_O_Rotate6.bin"
GFX_O_Rotate6End:
GFX_O_Rotate7:
	db "GFX_O_Rotate7.bin"
GFX_O_Rotate7End:
GFX_O_Rotate8:
	db "GFX_O_Rotate8.bin"
GFX_O_Rotate8End:
GFX_N_Rotate1:
	db "GFX_N_Rotate1.bin"
GFX_N_Rotate1End:
GFX_N_Rotate2:
	db "GFX_N_Rotate2.bin"
GFX_N_Rotate2End:
GFX_N_Rotate3:
	db "GFX_N_Rotate3.bin"
GFX_N_Rotate3End:
GFX_N_Rotate4:
	db "GFX_N_Rotate4.bin"
GFX_N_Rotate4End:
GFX_N_Rotate5:
	db "GFX_N_Rotate5.bin"
GFX_N_Rotate5End:
GFX_N_Rotate6:
	db "GFX_N_Rotate6.bin"
GFX_N_Rotate6End:
GFX_N_Rotate7:
	db "GFX_N_Rotate7.bin"
GFX_N_Rotate7End:
GFX_N_Rotate8:
	db "GFX_N_Rotate8.bin"
GFX_N_Rotate8End:
GFX_G_Rotate1:
	db "GFX_G_Rotate1.bin"
GFX_G_Rotate1End:
GFX_G_Rotate2:
	db "GFX_G_Rotate2.bin"
GFX_G_Rotate2End:
GFX_G_Rotate3:
	db "GFX_G_Rotate3.bin"
GFX_G_Rotate3End:
GFX_G_Rotate4:
	db "GFX_G_Rotate4.bin"
GFX_G_Rotate4End:
GFX_G_Rotate5:
	db "GFX_G_Rotate5.bin"
GFX_G_Rotate5End:
GFX_G_Rotate6:
	db "GFX_G_Rotate6.bin"
GFX_G_Rotate6End:
GFX_G_Rotate7:
	db "GFX_G_Rotate7.bin"
GFX_G_Rotate7End:
GFX_G_Rotate8:
	db "GFX_G_Rotate8.bin"
GFX_G_Rotate8End:
GFX_MiniNecky_Dead1:
	db "GFX_MiniNecky_Dead1.bin"
GFX_MiniNecky_Dead1End:
GFX_MiniNecky_Dead2:
	db "GFX_MiniNecky_Dead2.bin"
GFX_MiniNecky_Dead2End:
GFX_MiniNecky_Dead3:
	db "GFX_MiniNecky_Dead3.bin"
GFX_MiniNecky_Dead3End:
GFX_MiniNecky_Dead4:
	db "GFX_MiniNecky_Dead4.bin"
GFX_MiniNecky_Dead4End:
GFX_MiniNecky_Dead5:
	db "GFX_MiniNecky_Dead5.bin"
GFX_MiniNecky_Dead5End:
GFX_UnknownEffect8_Idle1:
	db "GFX_UnknownEffect8_Idle1.bin"
GFX_UnknownEffect8_Idle1End:
GFX_UnknownEffect8_Idle2:
	db "GFX_UnknownEffect8_Idle2.bin"
GFX_UnknownEffect8_Idle2End:
GFX_UnknownEffect8_Idle3:
	db "GFX_UnknownEffect8_Idle3.bin"
GFX_UnknownEffect8_Idle3End:
GFX_UnknownEffect8_Idle4:
	db "GFX_UnknownEffect8_Idle4.bin"
GFX_UnknownEffect8_Idle4End:
GFX_UnknownEffect8_Idle5:
	db "GFX_UnknownEffect8_Idle5.bin"
GFX_UnknownEffect8_Idle5End:
GFX_UnknownEffect8_Idle6:
	db "GFX_UnknownEffect8_Idle6.bin"
GFX_UnknownEffect8_Idle6End:
GFX_UnknownEffect8_Idle7:
	db "GFX_UnknownEffect8_Idle7.bin"
GFX_UnknownEffect8_Idle7End:
GFX_UnknownEffect8_Idle8:
	db "GFX_UnknownEffect8_Idle8.bin"
GFX_UnknownEffect8_Idle8End:
GFX_UnknownEffect9_Idle1:
	db "GFX_UnknownEffect9_Idle1.bin"
GFX_UnknownEffect9_Idle1End:
GFX_UnknownEffect9_Idle2:
	db "GFX_UnknownEffect9_Idle2.bin"
GFX_UnknownEffect9_Idle2End:
GFX_UnknownEffect9_Idle3:
	db "GFX_UnknownEffect9_Idle3.bin"
GFX_UnknownEffect9_Idle3End:
GFX_UnknownEffect9_Idle4:
	db "GFX_UnknownEffect9_Idle4.bin"
GFX_UnknownEffect9_Idle4End:
GFX_UnknownEffect9_Idle5:
	db "GFX_UnknownEffect9_Idle5.bin"
GFX_UnknownEffect9_Idle5End:
GFX_UnknownEffect9_Idle6:
	db "GFX_UnknownEffect9_Idle6.bin"
GFX_UnknownEffect9_Idle6End:
GFX_UnknownEffect9_Idle7:
	db "GFX_UnknownEffect9_Idle7.bin"
GFX_UnknownEffect9_Idle7End:
GFX_UnknownEffect9_Idle8:
	db "GFX_UnknownEffect9_Idle8.bin"
GFX_UnknownEffect9_Idle8End:
GFX_UnknownEffect10_Idle1:
	db "GFX_UnknownEffect10_Idle1.bin"
GFX_UnknownEffect10_Idle1End:
GFX_UnknownEffect10_Idle2:
	db "GFX_UnknownEffect10_Idle2.bin"
GFX_UnknownEffect10_Idle2End:
GFX_UnknownEffect10_Idle3:
	db "GFX_UnknownEffect10_Idle3.bin"
GFX_UnknownEffect10_Idle3End:
GFX_UnknownEffect10_Idle4:
	db "GFX_UnknownEffect10_Idle4.bin"
GFX_UnknownEffect10_Idle4End:
GFX_UnknownEffect10_Idle5:
	db "GFX_UnknownEffect10_Idle5.bin"
GFX_UnknownEffect10_Idle5End:
GFX_UnknownEffect10_Idle6:
	db "GFX_UnknownEffect10_Idle6.bin"
GFX_UnknownEffect10_Idle6End:
GFX_UnknownEffect10_Idle7:
	db "GFX_UnknownEffect10_Idle7.bin"
GFX_UnknownEffect10_Idle7End:
GFX_UnknownEffect10_Idle8:
	db "GFX_UnknownEffect10_Idle8.bin"
GFX_UnknownEffect10_Idle8End:
GFX_RideableBalloon_Float1:
	db "GFX_RideableBalloon_Float1.bin"
GFX_RideableBalloon_Float1End:
GFX_RideableBalloon_Float2:
	db "GFX_RideableBalloon_Float2.bin"
GFX_RideableBalloon_Float2End:
GFX_RideableBalloon_Float3:
	db "GFX_RideableBalloon_Float3.bin"
GFX_RideableBalloon_Float3End:
GFX_RideableBalloon_Float4:
	db "GFX_RideableBalloon_Float4.bin"
GFX_RideableBalloon_Float4End:
GFX_RideableBalloon_Float5:
	db "GFX_RideableBalloon_Float5.bin"
GFX_RideableBalloon_Float5End:
GFX_RideableBalloon_Float6:
	db "GFX_RideableBalloon_Float6.bin"
GFX_RideableBalloon_Float6End:
GFX_RideableBalloon_Float7:
	db "GFX_RideableBalloon_Float7.bin"
GFX_RideableBalloon_Float7End:
GFX_RideableBalloon_Float8:
	db "GFX_RideableBalloon_Float8.bin"
GFX_RideableBalloon_Float8End:
GFX_CatO9Tails_Spin1:
	db "GFX_CatO9Tails_Spin1.bin"
GFX_CatO9Tails_Spin1End:
GFX_CatO9Tails_Spin2:
	db "GFX_CatO9Tails_Spin2.bin"
GFX_CatO9Tails_Spin2End:
GFX_CatO9Tails_Spin3:
	db "GFX_CatO9Tails_Spin3.bin"
GFX_CatO9Tails_Spin3End:
GFX_CatO9Tails_Spin4:
	db "GFX_CatO9Tails_Spin4.bin"
GFX_CatO9Tails_Spin4End:
GFX_CatO9Tails_Spin5:
	db "GFX_CatO9Tails_Spin5.bin"
GFX_CatO9Tails_Spin5End:
GFX_CatO9Tails_Spin6:
	db "GFX_CatO9Tails_Spin6.bin"
GFX_CatO9Tails_Spin6End:
GFX_CatO9Tails_Spin7:
	db "GFX_CatO9Tails_Spin7.bin"
GFX_CatO9Tails_Spin7End:
GFX_CatO9Tails_Spin8:
	db "GFX_CatO9Tails_Spin8.bin"
GFX_CatO9Tails_Spin8End:
GFX_CatO9Tails_Idle1:
	db "GFX_CatO9Tails_Idle1.bin"
GFX_CatO9Tails_Idle1End:
GFX_CatO9Tails_Idle2:
	db "GFX_CatO9Tails_Idle2.bin"
GFX_CatO9Tails_Idle2End:
GFX_CatO9Tails_Idle3:
	db "GFX_CatO9Tails_Idle3.bin"
GFX_CatO9Tails_Idle3End:
GFX_CatO9Tails_Idle4:
	db "GFX_CatO9Tails_Idle4.bin"
GFX_CatO9Tails_Idle4End:
GFX_CatO9Tails_Idle5:
	db "GFX_CatO9Tails_Idle5.bin"
GFX_CatO9Tails_Idle5End:
GFX_CatO9Tails_Idle6:
	db "GFX_CatO9Tails_Idle6.bin"
GFX_CatO9Tails_Idle6End:
GFX_CatO9Tails_Idle7:
	db "GFX_CatO9Tails_Idle7.bin"
GFX_CatO9Tails_Idle7End:
GFX_CatO9Tails_Idle8:
	db "GFX_CatO9Tails_Idle8.bin"
GFX_CatO9Tails_Idle8End:
GFX_CatO9Tails_Idle9:
	db "GFX_CatO9Tails_Idle9.bin"
GFX_CatO9Tails_Idle9End:
GFX_CatO9Tails_Idle10:
	db "GFX_CatO9Tails_Idle10.bin"
GFX_CatO9Tails_Idle10End:
GFX_CatO9Tails_Idle11:
	db "GFX_CatO9Tails_Idle11.bin"
GFX_CatO9Tails_Idle11End:
GFX_CatO9Tails_Idle12:
	db "GFX_CatO9Tails_Idle12.bin"
GFX_CatO9Tails_Idle12End:
GFX_CatO9Tails_Idle13:
	db "GFX_CatO9Tails_Idle13.bin"
GFX_CatO9Tails_Idle13End:
GFX_CatO9Tails_Idle14:
	db "GFX_CatO9Tails_Idle14.bin"
GFX_CatO9Tails_Idle14End:
GFX_CatO9Tails_Idle15:
	db "GFX_CatO9Tails_Idle15.bin"
GFX_CatO9Tails_Idle15End:
GFX_CatO9Tails_Idle16:
	db "GFX_CatO9Tails_Idle16.bin"
GFX_CatO9Tails_Idle16End:
GFX_CatO9Tails_Idle17:
	db "GFX_CatO9Tails_Idle17.bin"
GFX_CatO9Tails_Idle17End:
GFX_CatO9Tails_Idle18:
	db "GFX_CatO9Tails_Idle18.bin"
GFX_CatO9Tails_Idle18End:
GFX_CatO9Tails_Idle19:
	db "GFX_CatO9Tails_Idle19.bin"
GFX_CatO9Tails_Idle19End:
GFX_CatO9Tails_Idle20:
	db "GFX_CatO9Tails_Idle20.bin"
GFX_CatO9Tails_Idle20End:
GFX_CatO9Tails_Idle21:
	db "GFX_CatO9Tails_Idle21.bin"
GFX_CatO9Tails_Idle21End:
GFX_CatO9Tails_Dead1:
	db "GFX_CatO9Tails_Dead1.bin"
GFX_CatO9Tails_Dead1End:
GFX_CatO9Tails_Dead2:
	db "GFX_CatO9Tails_Dead2.bin"
GFX_CatO9Tails_Dead2End:
GFX_CatO9Tails_Dead3:
	db "GFX_CatO9Tails_Dead3.bin"
GFX_CatO9Tails_Dead3End:
GFX_CatO9Tails_Dead4:
	db "GFX_CatO9Tails_Dead4.bin"
GFX_CatO9Tails_Dead4End:
GFX_Kloak_Float1:
	db "GFX_Kloak_Float1.bin"
GFX_Kloak_Float1End:
GFX_Kloak_Float2:
	db "GFX_Kloak_Float2.bin"
GFX_Kloak_Float2End:
GFX_Kloak_Float3:
	db "GFX_Kloak_Float3.bin"
GFX_Kloak_Float3End:
GFX_Kloak_Float4:
	db "GFX_Kloak_Float4.bin"
GFX_Kloak_Float4End:
GFX_Kloak_Float5:
	db "GFX_Kloak_Float5.bin"
GFX_Kloak_Float5End:
GFX_Kloak_Float6:
	db "GFX_Kloak_Float6.bin"
GFX_Kloak_Float6End:
GFX_Kloak_Float7:
	db "GFX_Kloak_Float7.bin"
GFX_Kloak_Float7End:
GFX_Kloak_Float8:
	db "GFX_Kloak_Float8.bin"
GFX_Kloak_Float8End:
GFX_Kloak_Float9:
	db "GFX_Kloak_Float9.bin"
GFX_Kloak_Float9End:
GFX_Kloak_Float10:
	db "GFX_Kloak_Float10.bin"
GFX_Kloak_Float10End:
GFX_Kloak_Float11:
	db "GFX_Kloak_Float11.bin"
GFX_Kloak_Float11End:
GFX_Kloak_Float12:
	db "GFX_Kloak_Float12.bin"
GFX_Kloak_Float12End:
GFX_Kloak_Throw1:
	db "GFX_Kloak_Throw1.bin"
GFX_Kloak_Throw1End:
GFX_Kloak_Throw2:
	db "GFX_Kloak_Throw2.bin"
GFX_Kloak_Throw2End:
GFX_Kloak_Throw3:
	db "GFX_Kloak_Throw3.bin"
GFX_Kloak_Throw3End:
GFX_Kloak_Throw4:
	db "GFX_Kloak_Throw4.bin"
GFX_Kloak_Throw4End:
GFX_Kloak_Throw5:
	db "GFX_Kloak_Throw5.bin"
GFX_Kloak_Throw5End:
GFX_Kloak_Throw6:
	db "GFX_Kloak_Throw6.bin"
GFX_Kloak_Throw6End:
GFX_Kloak_Throw7:
	db "GFX_Kloak_Throw7.bin"
GFX_Kloak_Throw7End:
GFX_Kloak_Throw8:
	db "GFX_Kloak_Throw8.bin"
GFX_Kloak_Throw8End:
GFX_Kloak_Throw9:
	db "GFX_Kloak_Throw9.bin"
GFX_Kloak_Throw9End:
GFX_Kloak_Throw10:
	db "GFX_Kloak_Throw10.bin"
GFX_Kloak_Throw10End:
GFX_Kloak_Throw11:
	db "GFX_Kloak_Throw11.bin"
GFX_Kloak_Throw11End:
GFX_Kloak_Throw12:
	db "GFX_Kloak_Throw12.bin"
GFX_Kloak_Throw12End:
GFX_Kloak_Throw13:
	db "GFX_Kloak_Throw13.bin"
GFX_Kloak_Throw13End:
GFX_Kloak_Throw14:
	db "GFX_Kloak_Throw14.bin"
GFX_Kloak_Throw14End:
GFX_Kloak_Throw15:
	db "GFX_Kloak_Throw15.bin"
GFX_Kloak_Throw15End:
GFX_Kloak_Throw16:
	db "GFX_Kloak_Throw16.bin"
GFX_Kloak_Throw16End:
GFX_Kloak_Throw17:
	db "GFX_Kloak_Throw17.bin"
GFX_Kloak_Throw17End:
GFX_Kloak_Turn1:
	db "GFX_Kloak_Turn1.bin"
GFX_Kloak_Turn1End:
GFX_Kloak_Turn2:
	db "GFX_Kloak_Turn2.bin"
GFX_Kloak_Turn2End:
GFX_Kloak_Dead1:
	db "GFX_Kloak_Dead1.bin"
GFX_Kloak_Dead1End:
GFX_Kloak_Dead2:
	db "GFX_Kloak_Dead2.bin"
GFX_Kloak_Dead2End:
GFX_Kloak_Dead3:
	db "GFX_Kloak_Dead3.bin"
GFX_Kloak_Dead3End:
GFX_Kloak_Dead4:
	db "GFX_Kloak_Dead4.bin"
GFX_Kloak_Dead4End:
GFX_Kloak_Dead5:
	db "GFX_Kloak_Dead5.bin"
GFX_Kloak_Dead5End:
GFX_HelicopterBarrel_Wings:
	db "GFX_HelicopterBarrel_Wings.bin"
GFX_HelicopterBarrel_WingsEnd:
GFX_HelicopterBarrel_Propeller1:
	db "GFX_HelicopterBarrel_Propeller1.bin"
GFX_HelicopterBarrel_Propeller1End:
GFX_HelicopterBarrel_Propeller2:
	db "GFX_HelicopterBarrel_Propeller2.bin"
GFX_HelicopterBarrel_Propeller2End:
GFX_HelicopterBarrel_Propeller3:
	db "GFX_HelicopterBarrel_Propeller3.bin"
GFX_HelicopterBarrel_Propeller3End:
GFX_HelicopterBarrel_Propeller4:
	db "GFX_HelicopterBarrel_Propeller4.bin"
GFX_HelicopterBarrel_Propeller4End:
GFX_HelicopterBarrel_Propeller5:
	db "GFX_HelicopterBarrel_Propeller5.bin"
GFX_HelicopterBarrel_Propeller5End:
GFX_Diddy_SwitchPlacesWithDixie1:
	db "GFX_Diddy_SwitchPlacesWithDixie1.bin"
GFX_Diddy_SwitchPlacesWithDixie1End:
GFX_Diddy_SwitchPlacesWithDixie2:
	db "GFX_Diddy_SwitchPlacesWithDixie2.bin"
GFX_Diddy_SwitchPlacesWithDixie2End:
GFX_Diddy_SwitchPlacesWithDixie3:
	db "GFX_Diddy_SwitchPlacesWithDixie3.bin"
GFX_Diddy_SwitchPlacesWithDixie3End:
GFX_Diddy_SwitchPlacesWithDixie4:
	db "GFX_Diddy_SwitchPlacesWithDixie4.bin"
GFX_Diddy_SwitchPlacesWithDixie4End:
GFX_Diddy_SwitchPlacesWithDixie5:
	db "GFX_Diddy_SwitchPlacesWithDixie5.bin"
GFX_Diddy_SwitchPlacesWithDixie5End:
GFX_Diddy_SwitchPlacesWithDixie6:
	db "GFX_Diddy_SwitchPlacesWithDixie6.bin"
GFX_Diddy_SwitchPlacesWithDixie6End:
GFX_Diddy_SwitchPlacesWithDixie7:
	db "GFX_Diddy_SwitchPlacesWithDixie7.bin"
GFX_Diddy_SwitchPlacesWithDixie7End:
GFX_Diddy_SwitchPlacesWithDixie8:
	db "GFX_Diddy_SwitchPlacesWithDixie8.bin"
GFX_Diddy_SwitchPlacesWithDixie8End:
GFX_Diddy_SwitchPlacesWithDixie9:
	db "GFX_Diddy_SwitchPlacesWithDixie9.bin"
GFX_Diddy_SwitchPlacesWithDixie9End:
GFX_Diddy_SwitchPlacesWithDixie10:
	db "GFX_Diddy_SwitchPlacesWithDixie10.bin"
GFX_Diddy_SwitchPlacesWithDixie10End:
GFX_Diddy_SwitchPlacesWithDixie11:
	db "GFX_Diddy_SwitchPlacesWithDixie11.bin"
GFX_Diddy_SwitchPlacesWithDixie11End:
GFX_Diddy_SwitchPlacesWithDixie12:
	db "GFX_Diddy_SwitchPlacesWithDixie12.bin"
GFX_Diddy_SwitchPlacesWithDixie12End:
GFX_Diddy_SwitchPlacesWithDixie13:
	db "GFX_Diddy_SwitchPlacesWithDixie13.bin"
GFX_Diddy_SwitchPlacesWithDixie13End:
GFX_Dixie_SwitchPlacesWithDiddy1:
	db "GFX_Dixie_SwitchPlacesWithDiddy1.bin"
GFX_Dixie_SwitchPlacesWithDiddy1End:
GFX_Dixie_SwitchPlacesWithDiddy2:
	db "GFX_Dixie_SwitchPlacesWithDiddy2.bin"
GFX_Dixie_SwitchPlacesWithDiddy2End:
GFX_Dixie_SwitchPlacesWithDiddy3:
	db "GFX_Dixie_SwitchPlacesWithDiddy3.bin"
GFX_Dixie_SwitchPlacesWithDiddy3End:
GFX_Dixie_SwitchPlacesWithDiddy4:
	db "GFX_Dixie_SwitchPlacesWithDiddy4.bin"
GFX_Dixie_SwitchPlacesWithDiddy4End:
GFX_Dixie_SwitchPlacesWithDiddy5:
	db "GFX_Dixie_SwitchPlacesWithDiddy5.bin"
GFX_Dixie_SwitchPlacesWithDiddy5End:
GFX_Dixie_SwitchPlacesWithDiddy6:
	db "GFX_Dixie_SwitchPlacesWithDiddy6.bin"
GFX_Dixie_SwitchPlacesWithDiddy6End:
GFX_Dixie_SwitchPlacesWithDiddy7:
	db "GFX_Dixie_SwitchPlacesWithDiddy7.bin"
GFX_Dixie_SwitchPlacesWithDiddy7End:
GFX_Dixie_SwitchPlacesWithDiddy8:
	db "GFX_Dixie_SwitchPlacesWithDiddy8.bin"
GFX_Dixie_SwitchPlacesWithDiddy8End:
GFX_Dixie_SwitchPlacesWithDiddy9:
	db "GFX_Dixie_SwitchPlacesWithDiddy9.bin"
GFX_Dixie_SwitchPlacesWithDiddy9End:
GFX_Dixie_SwitchPlacesWithDiddy10:
	db "GFX_Dixie_SwitchPlacesWithDiddy10.bin"
GFX_Dixie_SwitchPlacesWithDiddy10End:
GFX_Dixie_SwitchPlacesWithDiddy11:
	db "GFX_Dixie_SwitchPlacesWithDiddy11.bin"
GFX_Dixie_SwitchPlacesWithDiddy11End:
GFX_Dixie_SwitchPlacesWithDiddy12:
	db "GFX_Dixie_SwitchPlacesWithDiddy12.bin"
GFX_Dixie_SwitchPlacesWithDiddy12End:
GFX_Dixie_SwitchPlacesWithDiddy13:
	db "GFX_Dixie_SwitchPlacesWithDiddy13.bin"
GFX_Dixie_SwitchPlacesWithDiddy13End:
GFX_Dixie_SwitchPlacesWithDiddy14:
	db "GFX_Dixie_SwitchPlacesWithDiddy14.bin"
GFX_Dixie_SwitchPlacesWithDiddy14End:
GFX_Dixie_HairPullFlipToBack1:
	db "GFX_Dixie_HairPullFlipToBack1.bin"
GFX_Dixie_HairPullFlipToBack1End:
GFX_Dixie_HairPullFlipToBack2:
	db "GFX_Dixie_HairPullFlipToBack2.bin"
GFX_Dixie_HairPullFlipToBack2End:
GFX_Dixie_HairPullFlipToBack3:
	db "GFX_Dixie_HairPullFlipToBack3.bin"
GFX_Dixie_HairPullFlipToBack3End:
GFX_Dixie_HairPullFlipToBack4:
	db "GFX_Dixie_HairPullFlipToBack4.bin"
GFX_Dixie_HairPullFlipToBack4End:
GFX_Dixie_HairPullFlipToBack5:
	db "GFX_Dixie_HairPullFlipToBack5.bin"
GFX_Dixie_HairPullFlipToBack5End:
GFX_Dixie_HairPullFlipToBack6:
	db "GFX_Dixie_HairPullFlipToBack6.bin"
GFX_Dixie_HairPullFlipToBack6End:
GFX_Dixie_HairPullFlipToBack7:
	db "GFX_Dixie_HairPullFlipToBack7.bin"
GFX_Dixie_HairPullFlipToBack7End:
GFX_Dixie_HairPullFlipToBack8:
	db "GFX_Dixie_HairPullFlipToBack8.bin"
GFX_Dixie_HairPullFlipToBack8End:
GFX_Dixie_HairPullFlipToBack9:
	db "GFX_Dixie_HairPullFlipToBack9.bin"
GFX_Dixie_HairPullFlipToBack9End:
GFX_Dixie_HairPullFlipToBack10:
	db "GFX_Dixie_HairPullFlipToBack10.bin"
GFX_Dixie_HairPullFlipToBack10End:
GFX_Kudgel_Idle1:
	db "GFX_Kudgel_Idle1.bin"
GFX_Kudgel_Idle1End:
GFX_Kudgel_Idle2:
	db "GFX_Kudgel_Idle2.bin"
GFX_Kudgel_Idle2End:
GFX_Kudgel_Idle3:
	db "GFX_Kudgel_Idle3.bin"
GFX_Kudgel_Idle3End:
GFX_KudgelClub_Idle1:
	db "GFX_KudgelClub_Idle1.bin"
GFX_KudgelClub_Idle1End:
GFX_KudgelClub_Idle2:
	db "GFX_KudgelClub_Idle2.bin"
GFX_KudgelClub_Idle2End:
GFX_KudgelClub_Idle3:
	db "GFX_KudgelClub_Idle3.bin"
GFX_KudgelClub_Idle3End:
GFX_Enguarde_Swim1:
	db "GFX_Enguarde_Swim1.bin"
GFX_Enguarde_Swim1End:
GFX_Enguarde_Swim2:
	db "GFX_Enguarde_Swim2.bin"
GFX_Enguarde_Swim2End:
GFX_Enguarde_Swim3:
	db "GFX_Enguarde_Swim3.bin"
GFX_Enguarde_Swim3End:
GFX_Enguarde_Swim4:
	db "GFX_Enguarde_Swim4.bin"
GFX_Enguarde_Swim4End:
GFX_Enguarde_Swim5:
	db "GFX_Enguarde_Swim5.bin"
GFX_Enguarde_Swim5End:
GFX_Enguarde_Swim6:
	db "GFX_Enguarde_Swim6.bin"
GFX_Enguarde_Swim6End:
GFX_Enguarde_Swim7:
	db "GFX_Enguarde_Swim7.bin"
GFX_Enguarde_Swim7End:
GFX_Enguarde_Swim8:
	db "GFX_Enguarde_Swim8.bin"
GFX_Enguarde_Swim8End:
GFX_Enguarde_Stab1:
	db "GFX_Enguarde_Stab1.bin"
GFX_Enguarde_Stab1End:
GFX_Enguarde_Stab2:
	db "GFX_Enguarde_Stab2.bin"
GFX_Enguarde_Stab2End:
GFX_Enguarde_Stab3:
	db "GFX_Enguarde_Stab3.bin"
GFX_Enguarde_Stab3End:
GFX_Enguarde_Stab4:
	db "GFX_Enguarde_Stab4.bin"
GFX_Enguarde_Stab4End:
GFX_Enguarde_Stab5:
	db "GFX_Enguarde_Stab5.bin"
GFX_Enguarde_Stab5End:
GFX_Enguarde_Stab6:
	db "GFX_Enguarde_Stab6.bin"
GFX_Enguarde_Stab6End:
GFX_Enguarde_Stab7:
	db "GFX_Enguarde_Stab7.bin"
GFX_Enguarde_Stab7End:
GFX_Enguarde_Turn1:
	db "GFX_Enguarde_Turn1.bin"
GFX_Enguarde_Turn1End:
GFX_Enguarde_Turn2:
	db "GFX_Enguarde_Turn2.bin"
GFX_Enguarde_Turn2End:
GFX_Enguarde_Turn3:
	db "GFX_Enguarde_Turn3.bin"
GFX_Enguarde_Turn3End:
GFX_Enguarde_Turn4:
	db "GFX_Enguarde_Turn4.bin"
GFX_Enguarde_Turn4End:
GFX_Enguarde_Hurt:
	db "GFX_Enguarde_Hurt.bin"
GFX_Enguarde_HurtEnd:
GFX_Rambi_Hurt:
	db "GFX_Rambi_Hurt.bin"
GFX_Rambi_HurtEnd:
GFX_KingZingSting_Fly1:
	db "GFX_KingZingSting_Fly1.bin"
GFX_KingZingSting_Fly1End:
GFX_KingZingSting_Fly2:
	db "GFX_KingZingSting_Fly2.bin"
GFX_KingZingSting_Fly2End:
GFX_KingZingSting_Fly3:
	db "GFX_KingZingSting_Fly3.bin"
GFX_KingZingSting_Fly3End:
GFX_KingZingSting_Fly4:
	db "GFX_KingZingSting_Fly4.bin"
GFX_KingZingSting_Fly4End:
GFX_KingZingSting_Fly5:
	db "GFX_KingZingSting_Fly5.bin"
GFX_KingZingSting_Fly5End:
GFX_KingZingSting_Fly6:
	db "GFX_KingZingSting_Fly6.bin"
GFX_KingZingSting_Fly6End:
GFX_KingZingSting_Fly7:
	db "GFX_KingZingSting_Fly7.bin"
GFX_KingZingSting_Fly7End:
GFX_KingZingSting_Fly8:
	db "GFX_KingZingSting_Fly8.bin"
GFX_KingZingSting_Fly8End:
GFX_KingZingStingStinger_Fly1:
	db "GFX_KingZingStingStinger_Fly1.bin"
GFX_KingZingStingStinger_Fly1End:
GFX_KingZingStingStinger_Fly2:
	db "GFX_KingZingStingStinger_Fly2.bin"
GFX_KingZingStingStinger_Fly2End:
GFX_KingZingStingStinger_Fly3:
	db "GFX_KingZingStingStinger_Fly3.bin"
GFX_KingZingStingStinger_Fly3End:
GFX_KingZingStingStinger_Fly4:
	db "GFX_KingZingStingStinger_Fly4.bin"
GFX_KingZingStingStinger_Fly4End:
GFX_KingZingStingStinger_Fly5:
	db "GFX_KingZingStingStinger_Fly5.bin"
GFX_KingZingStingStinger_Fly5End:
GFX_KingZingStingStinger_Fly6:
	db "GFX_KingZingStingStinger_Fly6.bin"
GFX_KingZingStingStinger_Fly6End:
GFX_KingZingStingStinger_Fly7:
	db "GFX_KingZingStingStinger_Fly7.bin"
GFX_KingZingStingStinger_Fly7End:
GFX_KingZingStingStinger_Fly8:
	db "GFX_KingZingStingStinger_Fly8.bin"
GFX_KingZingStingStinger_Fly8End:
GFX_KingZingSting_Turn1:
	db "GFX_KingZingSting_Turn1.bin"
GFX_KingZingSting_Turn1End:
GFX_KingZingSting_Turn2:
	db "GFX_KingZingSting_Turn2.bin"
GFX_KingZingSting_Turn2End:
GFX_KingZingStingStinger_Turn1:
	db "GFX_KingZingStingStinger_Turn1.bin"
GFX_KingZingStingStinger_Turn1End:
GFX_KingZingStingStinger_Turn2:
	db "GFX_KingZingStingStinger_Turn2.bin"
GFX_KingZingStingStinger_Turn2End:
GFX_KingZingSting_Hurt1:
	db "GFX_KingZingSting_Hurt1.bin"
GFX_KingZingSting_Hurt1End:
GFX_KingZingSting_Hurt2:
	db "GFX_KingZingSting_Hurt2.bin"
GFX_KingZingSting_Hurt2End:
GFX_KingZingSting_Hurt3:
	db "GFX_KingZingSting_Hurt3.bin"
GFX_KingZingSting_Hurt3End:
GFX_KingZingSting_Hurt4:
	db "GFX_KingZingSting_Hurt4.bin"
GFX_KingZingSting_Hurt4End:
GFX_KingZingStingStinger_Hurt1:
	db "GFX_KingZingStingStinger_Hurt1.bin"
GFX_KingZingStingStinger_Hurt1End:
GFX_KingZingStingStinger_Hurt2:
	db "GFX_KingZingStingStinger_Hurt2.bin"
GFX_KingZingStingStinger_Hurt2End:
GFX_KingZingStingStinger_Hurt3:
	db "GFX_KingZingStingStinger_Hurt3.bin"
GFX_KingZingStingStinger_Hurt3End:
GFX_KingZingStingStinger_Hurt4:
	db "GFX_KingZingStingStinger_Hurt4.bin"
GFX_KingZingStingStinger_Hurt4End:
GFX_KRool_ShootGun1:
	db "GFX_KRool_ShootGun1.bin"
GFX_KRool_ShootGun1End:
GFX_KRool_ShootGun2:
	db "GFX_KRool_ShootGun2.bin"
GFX_KRool_ShootGun2End:
GFX_KRool_ShootGun3:
	db "GFX_KRool_ShootGun3.bin"
GFX_KRool_ShootGun3End:
GFX_KRoolGun_ShootGun1:
	db "GFX_KRoolGun_ShootGun1.bin"
GFX_KRoolGun_ShootGun1End:
GFX_KRoolGun_ShootGun2:
	db "GFX_KRoolGun_ShootGun2.bin"
GFX_KRoolGun_ShootGun2End:
GFX_KRoolGun_ShootGun3:
	db "GFX_KRoolGun_ShootGun3.bin"
GFX_KRoolGun_ShootGun3End:
GFX_KRool_GunSwipe1:
	db "GFX_KRool_GunSwipe1.bin"
GFX_KRool_GunSwipe1End:
GFX_KRool_GunSwipe2:
	db "GFX_KRool_GunSwipe2.bin"
GFX_KRool_GunSwipe2End:
GFX_KRool_GunSwipe3:
	db "GFX_KRool_GunSwipe3.bin"
GFX_KRool_GunSwipe3End:
GFX_KRool_GunSwipe4:
	db "GFX_KRool_GunSwipe4.bin"
GFX_KRool_GunSwipe4End:
GFX_KRool_BeginGunSwipe:
	db "GFX_KRool_BeginGunSwipe.bin"
GFX_KRool_BeginGunSwipeEnd:
GFX_KRoolGun_GunSwipe1:
	db "GFX_KRoolGun_GunSwipe1.bin"
GFX_KRoolGun_GunSwipe1End:
GFX_KRoolGun_GunSwipe2:
	db "GFX_KRoolGun_GunSwipe2.bin"
GFX_KRoolGun_GunSwipe2End:
GFX_KRoolGun_GunSwipe3:
	db "GFX_KRoolGun_GunSwipe3.bin"
GFX_KRoolGun_GunSwipe3End:
GFX_KRoolGun_GunSwipe4:
	db "GFX_KRoolGun_GunSwipe4.bin"
GFX_KRoolGun_GunSwipe4End:
GFX_KRoolGun_BeginGunSwipe:
	db "GFX_KRoolGun_BeginGunSwipe.bin"
GFX_KRooGunl_BeginGunSwipeEnd:
GFX_KRool_CoveredInSoot:
	db "GFX_KRool_CoveredInSoot.bin"
GFX_KRool_CoveredInSootEnd:
GFX_KRoolEyes_Open:
	db "GFX_KRoolEyes_Open.bin"
GFX_KRoolEyes_OpenEnd:
GFX_KRoolEyes_HalfClosed:
	db "GFX_KRoolEyes_HalfClosed.bin"
GFX_KRoolEyes_HalfClosedEnd:
GFX_KRool_TurnToSlide1:
	db "GFX_KRool_TurnToSlide1.bin"
GFX_KRool_TurnToSlide1End:
GFX_KRool_TurnToSlide2:
	db "GFX_KRool_TurnToSlide2.bin"
GFX_KRool_TurnToSlide2End:
GFX_KRool_TurnToSlide3:
	db "GFX_KRool_TurnToSlide3.bin"
GFX_KRool_TurnToSlide3End:
GFX_KRool_TurnToSlide4:
	db "GFX_KRool_TurnToSlide4.bin"
GFX_KRool_TurnToSlide4End:
GFX_KRool_TurnToSlide5:
	db "GFX_KRool_TurnToSlide5.bin"
GFX_KRool_TurnToSlide5End:
GFX_KRoolGun_TurnToSlide1:
	db "GFX_KRoolGun_TurnToSlide1.bin"
GFX_KRoolGun_TurnToSlide1End:
GFX_KRoolGun_TurnToSlide2:
	db "GFX_KRoolGun_TurnToSlide2.bin"
GFX_KRoolGun_TurnToSlide2End:
GFX_KRoolGun_TurnToSlide3:
	db "GFX_KRoolGun_TurnToSlide3.bin"
GFX_KRoolGun_TurnToSlide3End:
GFX_KRoolGun_TurnToSlide4:
	db "GFX_KRoolGun_TurnToSlide4.bin"
GFX_KRoolGun_TurnToSlide4End:
GFX_KRoolGun_TurnToSlide5:
	db "GFX_KRoolGun_TurnToSlide5.bin"
GFX_KRoolGun_TurnToSlide5End:
GFX_KRoolGun_FallOver1:
	db "GFX_KRoolGun_FallOver1.bin"
GFX_KRoolGun_FallOver1End:
GFX_KRoolGun_FallOver2:
	db "GFX_KRoolGun_FallOver2.bin"
GFX_KRoolGun_FallOver2End:
GFX_KRoolGun_FallOver3:
	db "GFX_KRoolGun_FallOver3.bin"
GFX_KRoolGun_FallOver3End:
GFX_KRoolGun_FallOver4:
	db "GFX_KRoolGun_FallOver4.bin"
GFX_KRoolGun_FallOver4End:
GFX_KRoolGun_FallOver5:
	db "GFX_KRoolGun_FallOver5.bin"
GFX_KRoolGun_FallOver5End:
GFX_KRoolGun_FallOver6:
	db "GFX_KRoolGun_FallOver6.bin"
GFX_KRoolGun_FallOver6End:
GFX_KRoolGun_FallOver7:
	db "GFX_KRoolGun_FallOver7.bin"
GFX_KRoolGun_FallOver7End:
GFX_KRoolGun_FallOver8:
	db "GFX_KRoolGun_FallOver8.bin"
GFX_KRoolGun_FallOver8End:
GFX_KRoolGun_FallOver9:
	db "GFX_KRoolGun_FallOver9.bin"
GFX_KRoolGun_FallOver9End:
GFX_KrocheadIcon_Idle1:
	db "GFX_KrocheadIcon_Idle1.bin"
GFX_KrocheadIcon_Idle1End:
GFX_KrocheadIcon_Idle2:
	db "GFX_KrocheadIcon_Idle2.bin"
GFX_KrocheadIcon_Idle2End:
GFX_KrocheadIcon_Idle3:
	db "GFX_KrocheadIcon_Idle3.bin"
GFX_KrocheadIcon_Idle3End:
GFX_KrocheadIcon_Idle4:
	db "GFX_KrocheadIcon_Idle4.bin"
GFX_KrocheadIcon_Idle4End:
GFX_KRool_FallOver1:
	db "GFX_KRool_FallOver1.bin"
GFX_KRool_FallOver1End:
GFX_KRool_FallOver2:
	db "GFX_KRool_FallOver2.bin"
GFX_KRool_FallOver2End:
GFX_KRool_FallOver3:
	db "GFX_KRool_FallOver3.bin"
GFX_KRool_FallOver3End:
GFX_KRool_FallOver4:
	db "GFX_KRool_FallOver4.bin"
GFX_KRool_FallOver4End:
GFX_KRool_FallOver5:
	db "GFX_KRool_FallOver5.bin"
GFX_KRool_FallOver5End:
GFX_KRool_FallOver6:
	db "GFX_KRool_FallOver6.bin"
GFX_KRool_FallOver6End:
GFX_KRool_FallOver7:
	db "GFX_KRool_FallOver7.bin"
GFX_KRool_FallOver7End:
GFX_KRool_FallOver8:
	db "GFX_KRool_FallOver8.bin"
GFX_KRool_FallOver8End:
GFX_KRool_FallOver9:
	db "GFX_KRool_FallOver9.bin"
GFX_KRool_FallOver9End:
GFX_Dixie_Victory1:
	db "GFX_Dixie_Victory1.bin"
GFX_Dixie_Victory1End:
GFX_Dixie_Victory2:
	db "GFX_Dixie_Victory2.bin"
GFX_Dixie_Victory2End:
GFX_Dixie_Victory3:
	db "GFX_Dixie_Victory3.bin"
GFX_Dixie_Victory3End:
GFX_Dixie_Victory4:
	db "GFX_Dixie_Victory4.bin"
GFX_Dixie_Victory4End:
GFX_Dixie_Victory5:
	db "GFX_Dixie_Victory5.bin"
GFX_Dixie_Victory5End:
GFX_Dixie_Victory6:
	db "GFX_Dixie_Victory6.bin"
GFX_Dixie_Victory6End:
GFX_Dixie_Victory7:
	db "GFX_Dixie_Victory7.bin"
GFX_Dixie_Victory7End:
GFX_Dixie_Victory8:
	db "GFX_Dixie_Victory8.bin"
GFX_Dixie_Victory8End:
GFX_Dixie_Victory9:
	db "GFX_Dixie_Victory9.bin"
GFX_Dixie_Victory9End:
GFX_Dixie_Victory10:
	db "GFX_Dixie_Victory10.bin"
GFX_Dixie_Victory10End:
GFX_Dixie_Victory11:
	db "GFX_Dixie_Victory11.bin"
GFX_Dixie_Victory11End:
GFX_Dixie_Victory12:
	db "GFX_Dixie_Victory12.bin"
GFX_Dixie_Victory12End:
GFX_Dixie_Victory13:
	db "GFX_Dixie_Victory13.bin"
GFX_Dixie_Victory13End:
GFX_Dixie_Victory14:
	db "GFX_Dixie_Victory14.bin"
GFX_Dixie_Victory14End:
GFX_Dixie_Victory15:
	db "GFX_Dixie_Victory15.bin"
GFX_Dixie_Victory15End:
GFX_Dixie_Victory16:
	db "GFX_Dixie_Victory16.bin"
GFX_Dixie_Victory16End:
GFX_Dixie_Victory17:
	db "GFX_Dixie_Victory17.bin"
GFX_Dixie_Victory17End:
GFX_Dixie_Victory18:
	db "GFX_Dixie_Victory18.bin"
GFX_Dixie_Victory18End:
GFX_Dixie_Victory19:
	db "GFX_Dixie_Victory19.bin"
GFX_Dixie_Victory19End:
GFX_Dixie_Victory20:
	db "GFX_Dixie_Victory20.bin"
GFX_Dixie_Victory20End:
GFX_Dixie_Victory21:
	db "GFX_Dixie_Victory21.bin"
GFX_Dixie_Victory21End:
GFX_Dixie_Victory22:
	db "GFX_Dixie_Victory22.bin"
GFX_Dixie_Victory22End:
GFX_Dixie_Victory23:
	db "GFX_Dixie_Victory23.bin"
GFX_Dixie_Victory23End:
GFX_Dixie_Victory24:
	db "GFX_Dixie_Victory24.bin"
GFX_Dixie_Victory24End:
GFX_Dixie_Victory25:
	db "GFX_Dixie_Victory25.bin"
GFX_Dixie_Victory25End:
GFX_Dixie_Victory26:
	db "GFX_Dixie_Victory26.bin"
GFX_Dixie_Victory26End:
GFX_Dixie_Victory27:
	db "GFX_Dixie_Victory27.bin"
GFX_Dixie_Victory27End:
GFX_Dixie_Victory28:
	db "GFX_Dixie_Victory28.bin"
GFX_Dixie_Victory28End:
GFX_Dixie_Victory29:
	db "GFX_Dixie_Victory29.bin"
GFX_Dixie_Victory29End:
GFX_Dixie_Victory30:
	db "GFX_Dixie_Victory30.bin"
GFX_Dixie_Victory30End:
GFX_Dixie_Victory31:
	db "GFX_Dixie_Victory31.bin"
GFX_Dixie_Victory31End:
GFX_Dixie_Victory32:
	db "GFX_Dixie_Victory32.bin"
GFX_Dixie_Victory32End:
GFX_Dixie_Victory33:
	db "GFX_Dixie_Victory33.bin"
GFX_Dixie_Victory33End:
GFX_Dixie_Victory34:
	db "GFX_Dixie_Victory34.bin"
GFX_Dixie_Victory34End:
GFX_Dixie_Victory35:
	db "GFX_Dixie_Victory35.bin"
GFX_Dixie_Victory35End:
GFX_Dixie_Victory36:
	db "GFX_Dixie_Victory36.bin"
GFX_Dixie_Victory36End:
GFX_Guitar_BePlayed1:
	db "GFX_Guitar_BePlayed1.bin"
GFX_Guitar_BePlayed1End:
GFX_Guitar_BePlayed2:
	db "GFX_Guitar_BePlayed2.bin"
GFX_Guitar_BePlayed2End:
GFX_Guitar_BePlayed3:
	db "GFX_Guitar_BePlayed3.bin"
GFX_Guitar_BePlayed3End:
GFX_Guitar_BePlayed4:
	db "GFX_Guitar_BePlayed4.bin"
GFX_Guitar_BePlayed4End:
GFX_Guitar_BePlayed5:
	db "GFX_Guitar_BePlayed5.bin"
GFX_Guitar_BePlayed5End:
GFX_Guitar_BePlayed6:
	db "GFX_Guitar_BePlayed6.bin"
GFX_Guitar_BePlayed6End:
GFX_Guitar_BePlayed7:
	db "GFX_Guitar_BePlayed7.bin"
GFX_Guitar_BePlayed7End:
GFX_Guitar_BePlayed8:
	db "GFX_Guitar_BePlayed8.bin"
GFX_Guitar_BePlayed8End:
GFX_Guitar_BePlayed9:
	db "GFX_Guitar_BePlayed9.bin"
GFX_Guitar_BePlayed9End:
GFX_Guitar_BePlayed10:
	db "GFX_Guitar_BePlayed10.bin"
GFX_Guitar_BePlayed10End:
GFX_Guitar_BePlayed11:
	db "GFX_Guitar_BePlayed11.bin"
GFX_Guitar_BePlayed11End:
GFX_Guitar_BePlayed12:
	db "GFX_Guitar_BePlayed12.bin"
GFX_Guitar_BePlayed12End:
GFX_Guitar_BePlayed13:
	db "GFX_Guitar_BePlayed13.bin"
GFX_Guitar_BePlayed13End:
GFX_Guitar_BePlayed14:
	db "GFX_Guitar_BePlayed14.bin"
GFX_Guitar_BePlayed14End:
GFX_Guitar_BePlayed15:
	db "GFX_Guitar_BePlayed15.bin"
GFX_Guitar_BePlayed15End:
GFX_Guitar_BePlayed16:
	db "GFX_Guitar_BePlayed16.bin"
GFX_Guitar_BePlayed16End:
GFX_Guitar_BePlayed17:
	db "GFX_Guitar_BePlayed17.bin"
GFX_Guitar_BePlayed17End:
GFX_Guitar_BePlayed18:
	db "GFX_Guitar_BePlayed18.bin"
GFX_Guitar_BePlayed18End:
GFX_Guitar_BePlayed19:
	db "GFX_Guitar_BePlayed19.bin"
GFX_Guitar_BePlayed19End:
GFX_Guitar_BePlayed20:
	db "GFX_Guitar_BePlayed20.bin"
GFX_Guitar_BePlayed20End:
GFX_Guitar_BePlayed21:
	db "GFX_Guitar_BePlayed21.bin"
GFX_Guitar_BePlayed21End:
GFX_Guitar_BePlayed22:
	db "GFX_Guitar_BePlayed22.bin"
GFX_Guitar_BePlayed22End:
GFX_Guitar_BePlayed23:
	db "GFX_Guitar_BePlayed23.bin"
GFX_Guitar_BePlayed23End:
GFX_Guitar_BePlayed24:
	db "GFX_Guitar_BePlayed24.bin"
GFX_Guitar_BePlayed24End:
GFX_Guitar_BePlayed25:
	db "GFX_Guitar_BePlayed25.bin"
GFX_Guitar_BePlayed25End:
GFX_Guitar_BePlayed26:
	db "GFX_Guitar_BePlayed26.bin"
GFX_Guitar_BePlayed26End:
GFX_Guitar_BePlayed27:
	db "GFX_Guitar_BePlayed27.bin"
GFX_Guitar_BePlayed27End:
GFX_Guitar_BePlayed28:
	db "GFX_Guitar_BePlayed28.bin"
GFX_Guitar_BePlayed28End:
GFX_Guitar_BePlayed29:
	db "GFX_Guitar_BePlayed29.bin"
GFX_Guitar_BePlayed29End:
GFX_Guitar_BePlayed30:
	db "GFX_Guitar_BePlayed30.bin"
GFX_Guitar_BePlayed30End:
GFX_Guitar_BePlayed31:
	db "GFX_Guitar_BePlayed31.bin"
GFX_Guitar_BePlayed31End:
GFX_Guitar_BePlayed32:
	db "GFX_Guitar_BePlayed32.bin"
GFX_Guitar_BePlayed32End:
GFX_Guitar_BePlayed33:
	db "GFX_Guitar_BePlayed33.bin"
GFX_Guitar_BePlayed33End:
GFX_Dixie_UnusedSadWalk1:
	db "GFX_Dixie_UnusedSadWalk1.bin"
GFX_Dixie_UnusedSadWalk1End:
GFX_Dixie_UnusedSadWalk2:
	db "GFX_Dixie_UnusedSadWalk2.bin"
GFX_Dixie_UnusedSadWalk2End:
GFX_Dixie_UnusedSadWalk3:
	db "GFX_Dixie_UnusedSadWalk3.bin"
GFX_Dixie_UnusedSadWalk3End:
GFX_Dixie_UnusedSadWalk4:
	db "GFX_Dixie_UnusedSadWalk4.bin"
GFX_Dixie_UnusedSadWalk4End:
GFX_Dixie_UnusedSadWalk5:
	db "GFX_Dixie_UnusedSadWalk5.bin"
GFX_Dixie_UnusedSadWalk5End:
GFX_Dixie_UnusedSadWalk6:
	db "GFX_Dixie_UnusedSadWalk6.bin"
GFX_Dixie_UnusedSadWalk6End:
GFX_Dixie_UnusedSadWalk7:
	db "GFX_Dixie_UnusedSadWalk7.bin"
GFX_Dixie_UnusedSadWalk7End:
GFX_Dixie_UnusedSadWalk8:
	db "GFX_Dixie_UnusedSadWalk8.bin"
GFX_Dixie_UnusedSadWalk8End:
GFX_Dixie_UnusedSadWalk9:
	db "GFX_Dixie_UnusedSadWalk9.bin"
GFX_Dixie_UnusedSadWalk9End:
GFX_Dixie_UnusedSadWalk10:
	db "GFX_Dixie_UnusedSadWalk10.bin"
GFX_Dixie_UnusedSadWalk10End:
GFX_Dixie_UnusedSadWalk11:
	db "GFX_Dixie_UnusedSadWalk11.bin"
GFX_Dixie_UnusedSadWalk11End:
GFX_Dixie_UnusedSadWalk12:
	db "GFX_Dixie_UnusedSadWalk12.bin"
GFX_Dixie_UnusedSadWalk12End:
GFX_Dixie_UnusedSadWalk13:
	db "GFX_Dixie_UnusedSadWalk13.bin"
GFX_Dixie_UnusedSadWalk13End:
GFX_Dixie_UnusedSadWalk14:
	db "GFX_Dixie_UnusedSadWalk14.bin"
GFX_Dixie_UnusedSadWalk14End:
GFX_Dixie_UnusedSadWalk15:
	db "GFX_Dixie_UnusedSadWalk15.bin"
GFX_Dixie_UnusedSadWalk15End:
GFX_Cannonball_ExtendSpikes1:
	db "GFX_Cannonball_ExtendSpikes1.bin"
GFX_Cannonball_ExtendSpikes1End:
GFX_Cannonball_ExtendSpikes2:
	db "GFX_Cannonball_ExtendSpikes2.bin"
GFX_Cannonball_ExtendSpikes2End:
GFX_Cannonball_ExtendSpikes3:
	db "GFX_Cannonball_ExtendSpikes3.bin"
GFX_Cannonball_ExtendSpikes3End:
GFX_Cannonball_ExtendSpikes4:
	db "GFX_Cannonball_ExtendSpikes4.bin"
GFX_Cannonball_ExtendSpikes4End:
GFX_Cannonball_ExtendSpikes5:
	db "GFX_Cannonball_ExtendSpikes5.bin"
GFX_Cannonball_ExtendSpikes5End:
GFX_Cannonball_ExtendSpikes6:
	db "GFX_Cannonball_ExtendSpikes6.bin"
GFX_Cannonball_ExtendSpikes6End:
GFX_Diddy_Victory1:
	db "GFX_Diddy_Victory1.bin"
GFX_Diddy_Victory1End:
GFX_Diddy_Victory2:
	db "GFX_Diddy_Victory2.bin"
GFX_Diddy_Victory2End:
GFX_Diddy_Victory3:
	db "GFX_Diddy_Victory3.bin"
GFX_Diddy_Victory3End:
GFX_Diddy_Victory4:
	db "GFX_Diddy_Victory4.bin"
GFX_Diddy_Victory4End:
GFX_Diddy_Victory5:
	db "GFX_Diddy_Victory5.bin"
GFX_Diddy_Victory5End:
GFX_Diddy_Victory6:
	db "GFX_Diddy_Victory6.bin"
GFX_Diddy_Victory6End:
GFX_Diddy_Victory7:
	db "GFX_Diddy_Victory7.bin"
GFX_Diddy_Victory7End:
GFX_Diddy_Victory8:
	db "GFX_Diddy_Victory8.bin"
GFX_Diddy_Victory8End:
GFX_Diddy_Victory9:
	db "GFX_Diddy_Victory9.bin"
GFX_Diddy_Victory9End:
GFX_Diddy_Victory10:
	db "GFX_Diddy_Victory10.bin"
GFX_Diddy_Victory10End:
GFX_Diddy_Victory11:
	db "GFX_Diddy_Victory11.bin"
GFX_Diddy_Victory11End:
GFX_Diddy_Victory12:
	db "GFX_Diddy_Victory12.bin"
GFX_Diddy_Victory12End:
GFX_Diddy_Victory13:
	db "GFX_Diddy_Victory13.bin"
GFX_Diddy_Victory13End:
GFX_Diddy_Victory14:
	db "GFX_Diddy_Victory14.bin"
GFX_Diddy_Victory14End:
GFX_Diddy_Victory15:
	db "GFX_Diddy_Victory15.bin"
GFX_Diddy_Victory15End:
GFX_Diddy_Victory16:
	db "GFX_Diddy_Victory16.bin"
GFX_Diddy_Victory16End:
GFX_Diddy_Victory17:
	db "GFX_Diddy_Victory17.bin"
GFX_Diddy_Victory17End:
GFX_Diddy_Victory18:
	db "GFX_Diddy_Victory18.bin"
GFX_Diddy_Victory18End:
GFX_Diddy_Victory19:
	db "GFX_Diddy_Victory19.bin"
GFX_Diddy_Victory19End:
GFX_Diddy_Victory20:
	db "GFX_Diddy_Victory20.bin"
GFX_Diddy_Victory20End:
GFX_Diddy_Victory21:
	db "GFX_Diddy_Victory21.bin"
GFX_Diddy_Victory21End:
GFX_BoomboxAndSunglasses_BePlayed1:
	db "GFX_BoomboxAndSunglasses_BePlayed1.bin"
GFX_BoomboxAndSunglasses_BePlayed1End:
GFX_BoomboxAndSunglasses_BePlayed2:
	db "GFX_BoomboxAndSunglasses_BePlayed2.bin"
GFX_BoomboxAndSunglasses_BePlayed2End:
GFX_BoomboxAndSunglasses_BePlayed3:
	db "GFX_BoomboxAndSunglasses_BePlayed3.bin"
GFX_BoomboxAndSunglasses_BePlayed3End:
GFX_BoomboxAndSunglasses_BePlayed4:
	db "GFX_BoomboxAndSunglasses_BePlayed4.bin"
GFX_BoomboxAndSunglasses_BePlayed4End:
GFX_BoomboxAndSunglasses_BePlayed5:
	db "GFX_BoomboxAndSunglasses_BePlayed5.bin"
GFX_BoomboxAndSunglasses_BePlayed5End:
GFX_BoomboxAndSunglasses_BePlayed6:
	db "GFX_BoomboxAndSunglasses_BePlayed6.bin"
GFX_BoomboxAndSunglasses_BePlayed6End:
GFX_BoomboxAndSunglasses_BePlayed7:
	db "GFX_BoomboxAndSunglasses_BePlayed7.bin"
GFX_BoomboxAndSunglasses_BePlayed7End:
GFX_BoomboxAndSunglasses_BePlayed8:
	db "GFX_BoomboxAndSunglasses_BePlayed8.bin"
GFX_BoomboxAndSunglasses_BePlayed8End:
GFX_BoomboxAndSunglasses_BePlayed9:
	db "GFX_BoomboxAndSunglasses_BePlayed9.bin"
GFX_BoomboxAndSunglasses_BePlayed9End:
GFX_BoomboxAndSunglasses_BePlayed10:
	db "GFX_BoomboxAndSunglasses_BePlayed10.bin"
GFX_BoomboxAndSunglasses_BePlayed10End:
GFX_BoomboxAndSunglasses_BePlayed11:
	db "GFX_BoomboxAndSunglasses_BePlayed11.bin"
GFX_BoomboxAndSunglasses_BePlayed11End:
GFX_BoomboxAndSunglasses_BePlayed12:
	db "GFX_BoomboxAndSunglasses_BePlayed12.bin"
GFX_BoomboxAndSunglasses_BePlayed12End:
GFX_BoomboxAndSunglasses_BePlayed13:
	db "GFX_BoomboxAndSunglasses_BePlayed13.bin"
GFX_BoomboxAndSunglasses_BePlayed13End:
GFX_KRool_Turn1:
	db "GFX_KRool_Turn1.bin"
GFX_KRool_Turn1End:
GFX_KRool_Turn2:
	db "GFX_KRool_Turn2.bin"
GFX_KRool_Turn2End:
GFX_KRoolGun_Turn1:
	db "GFX_KRoolGun_Turn1.bin"
GFX_KRoolGun_Turn1End:
GFX_Diddy_UnusedSadWalk1:
	db "GFX_Diddy_UnusedSadWalk1.bin"
GFX_Diddy_UnusedSadWalk1End:
GFX_Diddy_UnusedSadWalk2:
	db "GFX_Diddy_UnusedSadWalk2.bin"
GFX_Diddy_UnusedSadWalk2End:
GFX_Diddy_UnusedSadWalk3:
	db "GFX_Diddy_UnusedSadWalk3.bin"
GFX_Diddy_UnusedSadWalk3End:
GFX_Diddy_UnusedSadWalk4:
	db "GFX_Diddy_UnusedSadWalk4.bin"
GFX_Diddy_UnusedSadWalk4End:
GFX_Diddy_UnusedSadWalk5:
	db "GFX_Diddy_UnusedSadWalk5.bin"
GFX_Diddy_UnusedSadWalk5End:
GFX_Diddy_UnusedSadWalk6:
	db "GFX_Diddy_UnusedSadWalk6.bin"
GFX_Diddy_UnusedSadWalk6End:
GFX_Diddy_UnusedSadWalk7:
	db "GFX_Diddy_UnusedSadWalk7.bin"
GFX_Diddy_UnusedSadWalk7End:
GFX_Diddy_UnusedSadWalk8:
	db "GFX_Diddy_UnusedSadWalk8.bin"
GFX_Diddy_UnusedSadWalk8End:
GFX_Diddy_UnusedSadWalk9:
	db "GFX_Diddy_UnusedSadWalk9.bin"
GFX_Diddy_UnusedSadWalk9End:
GFX_Diddy_UnusedSadWalk10:
	db "GFX_Diddy_UnusedSadWalk10.bin"
GFX_Diddy_UnusedSadWalk10End:
GFX_Diddy_UnusedSadWalk11:
	db "GFX_Diddy_UnusedSadWalk11.bin"
GFX_Diddy_UnusedSadWalk11End:
GFX_Diddy_UnusedSadWalk12:
	db "GFX_Diddy_UnusedSadWalk12.bin"
GFX_Diddy_UnusedSadWalk12End:
GFX_Diddy_UnusedSadWalk13:
	db "GFX_Diddy_UnusedSadWalk13.bin"
GFX_Diddy_UnusedSadWalk13End:
GFX_Diddy_UnusedSadWalk14:
	db "GFX_Diddy_UnusedSadWalk14.bin"
GFX_Diddy_UnusedSadWalk14End:
GFX_Diddy_UnusedSadWalk15:
	db "GFX_Diddy_UnusedSadWalk15.bin"
GFX_Diddy_UnusedSadWalk15End:
GFX_Diddy_UnusedSadWalk16:
	db "GFX_Diddy_UnusedSadWalk16.bin"
GFX_Diddy_UnusedSadWalk16End:
GFX_Diddy_UnusedSadWalk17:
	db "GFX_Diddy_UnusedSadWalk17.bin"
GFX_Diddy_UnusedSadWalk17End:
GFX_Diddy_UnusedSadWalk18:
	db "GFX_Diddy_UnusedSadWalk18.bin"
GFX_Diddy_UnusedSadWalk18End:
GFX_Diddy_UnusedSadWalk19:
	db "GFX_Diddy_UnusedSadWalk19.bin"
GFX_Diddy_UnusedSadWalk19End:
GFX_Raincloud_Form1:
	db "GFX_Raincloud_Form1.bin"
GFX_Raincloud_Form1End:
GFX_Raincloud_Form2:
	db "GFX_Raincloud_Form2.bin"
GFX_Raincloud_Form2End:
GFX_Raincloud_Form3:
	db "GFX_Raincloud_Form3.bin"
GFX_Raincloud_Form3End:
GFX_Raincloud_Form4:
	db "GFX_Raincloud_Form4.bin"
GFX_Raincloud_Form4End:
GFX_Raincloud_Form5:
	db "GFX_Raincloud_Form5.bin"
GFX_Raincloud_Form5End:
GFX_Raincloud_Form6:
	db "GFX_Raincloud_Form6.bin"
GFX_Raincloud_Form6End:
GFX_RaincloudRain_Fall1:
	db "GFX_RaincloudRain_Fall1.bin"
GFX_RaincloudRain_Fall1End:
GFX_RaincloudRain_Fall2:
	db "GFX_RaincloudRain_Fall2.bin"
GFX_RaincloudRain_Fall2End:
GFX_RaincloudRain_Fall3:
	db "GFX_RaincloudRain_Fall3.bin"
GFX_RaincloudRain_Fall3End:
GFX_RaincloudRain_Fall4:
	db "GFX_RaincloudRain_Fall4.bin"
GFX_RaincloudRain_Fall4End:
GFX_RaincloudRain_Fall5:
	db "GFX_RaincloudRain_Fall5.bin"
GFX_RaincloudRain_Fall5End:
GFX_Diddy_LookToSideOnSkullCart1:
	db "GFX_Diddy_LookToSideOnSkullCart1.bin"
GFX_Diddy_LookToSideOnSkullCart1End:
GFX_Diddy_LookToSideOnSkullCart2:
	db "GFX_Diddy_LookToSideOnSkullCart2.bin"
GFX_Diddy_LookToSideOnSkullCart2End:
GFX_Diddy_LookToSideOnSkullCart3:
	db "GFX_Diddy_LookToSideOnSkullCart3.bin"
GFX_Diddy_LookToSideOnSkullCart3End:
GFX_Diddy_LookToSideOnSkullCart4:
	db "GFX_Diddy_LookToSideOnSkullCart4.bin"
GFX_Diddy_LookToSideOnSkullCart4End:
GFX_Diddy_DuckUnderRollercoasterGate1:
	db "GFX_Diddy_DuckUnderRollercoasterGate1.bin"
GFX_Diddy_DuckUnderRollercoasterGate1End:
GFX_Diddy_DuckUnderRollercoasterGate2:
	db "GFX_Diddy_DuckUnderRollercoasterGate2.bin"
GFX_Diddy_DuckUnderRollercoasterGate2End:
GFX_Diddy_DuckUnderRollercoasterGate3:
	db "GFX_Diddy_DuckUnderRollercoasterGate3.bin"
GFX_Diddy_DuckUnderRollercoasterGate3End:
GFX_Diddy_DuckUnderRollercoasterGate4:
	db "GFX_Diddy_DuckUnderRollercoasterGate4.bin"
GFX_Diddy_DuckUnderRollercoasterGate4End:
GFX_Diddy_BigDropOnSkullCart1:
	db "GFX_Diddy_BigDropOnSkullCart1.bin"
GFX_Diddy_BigDropOnSkullCart1End:
GFX_Diddy_BigDropOnSkullCart2:
	db "GFX_Diddy_BigDropOnSkullCart2.bin"
GFX_Diddy_BigDropOnSkullCart2End:
GFX_Diddy_BigDropOnSkullCart3:
	db "GFX_Diddy_BigDropOnSkullCart3.bin"
GFX_Diddy_BigDropOnSkullCart3End:
GFX_Diddy_BigDropOnSkullCart4:
	db "GFX_Diddy_BigDropOnSkullCart4.bin"
GFX_Diddy_BigDropOnSkullCart4End:
GFX_Dixie_LookToSideOnSkullCart1:
	db "GFX_Dixie_LookToSideOnSkullCart1.bin"
GFX_Dixie_LookToSideOnSkullCart1End:
GFX_Dixie_LookToSideOnSkullCart2:
	db "GFX_Dixie_LookToSideOnSkullCart2.bin"
GFX_Dixie_LookToSideOnSkullCart2End:
GFX_Dixie_LookToSideOnSkullCart3:
	db "GFX_Dixie_LookToSideOnSkullCart3.bin"
GFX_Dixie_LookToSideOnSkullCart3End:
GFX_Dixie_LookToSideOnSkullCart4:
	db "GFX_Dixie_LookToSideOnSkullCart4.bin"
GFX_Dixie_LookToSideOnSkullCart4End:
GFX_Dixie_DuckUnderRollercoasterGate1:
	db "GFX_Dixie_DuckUnderRollercoasterGate1.bin"
GFX_Dixie_DuckUnderRollercoasterGate1End:
GFX_Dixie_DuckUnderRollercoasterGate2:
	db "GFX_Dixie_DuckUnderRollercoasterGate2.bin"
GFX_Dixie_DuckUnderRollercoasterGate2End:
GFX_Dixie_DuckUnderRollercoasterGate3:
	db "GFX_Dixie_DuckUnderRollercoasterGate3.bin"
GFX_Dixie_DuckUnderRollercoasterGate3End:
GFX_Dixie_DuckUnderRollercoasterGate4:
	db "GFX_Dixie_DuckUnderRollercoasterGate4.bin"
GFX_Dixie_DuckUnderRollercoasterGate4End:
GFX_Dixie_BigDropOnSkullCart1:
	db "GFX_Dixie_BigDropOnSkullCart1.bin"
GFX_Dixie_BigDropOnSkullCart1End:
GFX_Dixie_BigDropOnSkullCart2:
	db "GFX_Dixie_BigDropOnSkullCart2.bin"
GFX_Dixie_BigDropOnSkullCart2End:
GFX_Dixie_BigDropOnSkullCart3:
	db "GFX_Dixie_BigDropOnSkullCart3.bin"
GFX_Dixie_BigDropOnSkullCart3End:
GFX_Dixie_BigDropOnSkullCart4:
	db "GFX_Dixie_BigDropOnSkullCart4.bin"
GFX_Dixie_BigDropOnSkullCart4End:
GFX_Dixie_BigDropOnSkullCart5:
	db "GFX_Dixie_BigDropOnSkullCart5.bin"
GFX_Dixie_BigDropOnSkullCart5End:
GFX_Dixie_BigDropOnSkullCart6:
	db "GFX_Dixie_BigDropOnSkullCart6.bin"
GFX_Dixie_BigDropOnSkullCart6End:
GFX_Klank_BigDropOnSkullCart1:
	db "GFX_Klank_BigDropOnSkullCart1.bin"
GFX_Klank_BigDropOnSkullCart1End:
GFX_Klank_BigDropOnSkullCart2:
	db "GFX_Klank_BigDropOnSkullCart2.bin"
GFX_Klank_BigDropOnSkullCart2End:
GFX_Klank_BigDropOnSkullCart3:
	db "GFX_Klank_BigDropOnSkullCart3.bin"
GFX_Klank_BigDropOnSkullCart3End:
GFX_Klank_BigDropOnSkullCart4:
	db "GFX_Klank_BigDropOnSkullCart4.bin"
GFX_Klank_BigDropOnSkullCart4End:
GFX_Klank_BigDropOnSkullCart5:
	db "GFX_Klank_BigDropOnSkullCart5.bin"
GFX_Klank_BigDropOnSkullCart5End:
GFX_Klank_BigDropOnSkullCart6:
	db "GFX_Klank_BigDropOnSkullCart6.bin"
GFX_Klank_BigDropOnSkullCart6End:
GFX_Klank_BigDropOnSkullCart7:
	db "GFX_Klank_BigDropOnSkullCart7.bin"
GFX_Klank_BigDropOnSkullCart7End:
GFX_Klank_BigDropOnSkullCart8:
	db "GFX_Klank_BigDropOnSkullCart8.bin"
GFX_Klank_BigDropOnSkullCart8End:
GFX_Klank_BigDropOnSkullCart9:
	db "GFX_Klank_BigDropOnSkullCart9.bin"
GFX_Klank_BigDropOnSkullCart9End:
GFX_Klank_RideSkullCart1:
	db "GFX_Klank_RideSkullCart1.bin"
GFX_Klank_RideSkullCart1End:
GFX_Klank_RideSkullCart2:
	db "GFX_Klank_RideSkullCart2.bin"
GFX_Klank_RideSkullCart2End:
GFX_Klank_RideSkullCart3:
	db "GFX_Klank_RideSkullCart3.bin"
GFX_Klank_RideSkullCart3End:
GFX_Klank_RideSkullCart4:
	db "GFX_Klank_RideSkullCart4.bin"
GFX_Klank_RideSkullCart4End:
GFX_Klank_RideSkullCart5:
	db "GFX_Klank_RideSkullCart5.bin"
GFX_Klank_RideSkullCart5End:
GFX_Klank_RideSkullCart6:
	db "GFX_Klank_RideSkullCart6.bin"
GFX_Klank_RideSkullCart6End:
GFX_Klank_RideSkullCart7:
	db "GFX_Klank_RideSkullCart7.bin"
GFX_Klank_RideSkullCart7End:
GFX_Klank_RideSkullCart8:
	db "GFX_Klank_RideSkullCart8.bin"
GFX_Klank_RideSkullCart8End:
GFX_Klank_RideSkullCart9:
	db "GFX_Klank_RideSkullCart9.bin"
GFX_Klank_RideSkullCart9End:
GFX_Klank_RideSkullCart10:
	db "GFX_Klank_RideSkullCart10.bin"
GFX_Klank_RideSkullCart10End:
GFX_Klank_LookBehind1:
	db "GFX_Klank_LookBehind1.bin"
GFX_Klank_LookBehind1End:
GFX_Klank_LookBehind2:
	db "GFX_Klank_LookBehind2.bin"
GFX_Klank_LookBehind2End:
GFX_Klank_LookBehind3:
	db "GFX_Klank_LookBehind3.bin"
GFX_Klank_LookBehind3End:
GFX_Klank_LookBehind4:
	db "GFX_Klank_LookBehind4.bin"
GFX_Klank_LookBehind4End:
GFX_Klank_LookBehind5:
	db "GFX_Klank_LookBehind5.bin"
GFX_Klank_LookBehind5End:
GFX_Klank_ThrowBarrel1:
	db "GFX_Klank_ThrowBarrel1.bin"
GFX_Klank_ThrowBarrel1End:
GFX_Klank_ThrowBarrel2:
	db "GFX_Klank_ThrowBarrel2.bin"
GFX_Klank_ThrowBarrel2End:
GFX_Klank_ThrowBarrel3:
	db "GFX_Klank_ThrowBarrel3.bin"
GFX_Klank_ThrowBarrel3End:
GFX_Klank_ThrowBarrel4:
	db "GFX_Klank_ThrowBarrel4.bin"
GFX_Klank_ThrowBarrel4End:
GFX_Klank_ThrowBarrel5:
	db "GFX_Klank_ThrowBarrel5.bin"
GFX_Klank_ThrowBarrel5End:
GFX_Klank_ThrowBarrel6:
	db "GFX_Klank_ThrowBarrel6.bin"
GFX_Klank_ThrowBarrel6End:
GFX_Klank_ThrowBarrel7:
	db "GFX_Klank_ThrowBarrel7.bin"
GFX_Klank_ThrowBarrel7End:
GFX_Klank_ThrowBarrel8:
	db "GFX_Klank_ThrowBarrel8.bin"
GFX_Klank_ThrowBarrel8End:
GFX_Klank_Dead1:
	db "GFX_Klank_Dead1.bin"
GFX_Klank_Dead1End:
GFX_Klank_Dead2:
	db "GFX_Klank_Dead2.bin"
GFX_Klank_Dead2End:
GFX_Klank_Dead3:
	db "GFX_Klank_Dead3.bin"
GFX_Klank_Dead3End:
GFX_Klank_Dead4:
	db "GFX_Klank_Dead4.bin"
GFX_Klank_Dead4End:
GFX_KongWaterSplash_Pose1:
	db "GFX_KongWaterSplash_Pose1.bin"
GFX_KongWaterSplash_Pose1End:
GFX_KongWaterSplash_Pose2:
	db "GFX_KongWaterSplash_Pose2.bin"
GFX_KongWaterSplash_Pose2End:
GFX_KongWaterSplash_Pose3:
	db "GFX_KongWaterSplash_Pose3.bin"
GFX_KongWaterSplash_Pose3End:
GFX_KongWaterSplash_Pose4:
	db "GFX_KongWaterSplash_Pose4.bin"
GFX_KongWaterSplash_Pose4End:
GFX_KongWaterSplash_Pose5:
	db "GFX_KongWaterSplash_Pose5.bin"
GFX_KongWaterSplash_Pose5End:
GFX_KongWaterSplash_Pose6:
	db "GFX_KongWaterSplash_Pose6.bin"
GFX_KongWaterSplash_Pose6End:
GFX_Clapper_Clapping1:
	db "GFX_Clapper_Clapping1.bin"
GFX_Clapper_Clapping1End:
GFX_Clapper_Clapping2:
	db "GFX_Clapper_Clapping2.bin"
GFX_Clapper_Clapping2End:
GFX_Clapper_Clapping3:
	db "GFX_Clapper_Clapping3.bin"
GFX_Clapper_Clapping3End:
GFX_Clapper_Clapping4:
	db "GFX_Clapper_Clapping4.bin"
GFX_Clapper_Clapping4End:
GFX_Clapper_Clapping5:
	db "GFX_Clapper_Clapping5.bin"
GFX_Clapper_Clapping5End:
GFX_Clapper_Clapping6:
	db "GFX_Clapper_Clapping6.bin"
GFX_Clapper_Clapping6End:
GFX_Clapper_Clapping7:
	db "GFX_Clapper_Clapping7.bin"
GFX_Clapper_Clapping7End:
GFX_Clapper_Clapping8:
	db "GFX_Clapper_Clapping8.bin"
GFX_Clapper_Clapping8End:
GFX_Clapper_Calling1:
	db "GFX_Clapper_Calling1.bin"
GFX_Clapper_Calling1End:
GFX_Clapper_Calling2:
	db "GFX_Clapper_Calling2.bin"
GFX_Clapper_Calling2End:
GFX_Clapper_Calling3:
	db "GFX_Clapper_Calling3.bin"
GFX_Clapper_Calling3End:
GFX_Clapper_Calling4:
	db "GFX_Clapper_Calling4.bin"
GFX_Clapper_Calling4End:
GFX_Clapper_Calling5:
	db "GFX_Clapper_Calling5.bin"
GFX_Clapper_Calling5End:
GFX_Clapper_Calling6:
	db "GFX_Clapper_Calling6.bin"
GFX_Clapper_Calling6End:
GFX_Clapper_Calling7:
	db "GFX_Clapper_Calling7.bin"
GFX_Clapper_Calling7End:
GFX_Clapper_Calling8:
	db "GFX_Clapper_Calling8.bin"
GFX_Clapper_Calling8End:
GFX_Clapper_Calling9:
	db "GFX_Clapper_Calling9.bin"
GFX_Clapper_Calling9End:
GFX_KRool_Vacuum1:
	db "GFX_KRool_Vacuum1.bin"
GFX_KRool_Vacuum1End:
GFX_KRool_Vacuum2:
	db "GFX_KRool_Vacuum2.bin"
GFX_KRool_Vacuum2End:
GFX_KRoolGun_Vacuum1:
	db "GFX_KRoolGun_Vacuum1.bin"
GFX_KRoolGun_Vacuum1End:
GFX_KRoolGun_Vacuum2:
	db "GFX_KRoolGun_Vacuum2.bin"
GFX_KRoolGun_Vacuum2End:
GFX_KRoolGunFire_Pose1:
	db "GFX_KRoolGunFire_Pose1.bin"
GFX_KRoolGunFire_Pose1End:
GFX_KRoolGunFire_Pose2:
	db "GFX_KRoolGunFire_Pose2.bin"
GFX_KRoolGunFire_Pose2End:
GFX_KRoolGunFire_Pose3:
	db "GFX_KRoolGunFire_Pose3.bin"
GFX_KRoolGunFire_Pose3End:
GFX_KRoolGunFire_Pose4:
	db "GFX_KRoolGunFire_Pose4.bin"
GFX_KRoolGunFire_Pose4End:
GFX_KRoolGunFire_Pose5:
	db "GFX_KRoolGunFire_Pose5.bin"
GFX_KRoolGunFire_Pose5End:
GFX_KRoolGunFire_Pose6:
	db "GFX_KRoolGunFire_Pose6.bin"
GFX_KRoolGunFire_Pose6End:
GFX_KRoolGunFire_Pose7:
	db "GFX_KRoolGunFire_Pose7.bin"
GFX_KRoolGunFire_Pose7End:
GFX_KRoolGunFire_Pose8:
	db "GFX_KRoolGunFire_Pose8.bin"
GFX_KRoolGunFire_Pose8End:
GFX_KRool_Idle1:
	db "GFX_KRool_Idle1.bin"
GFX_KRool_Idle1End:
GFX_KRool_Idle2:
	db "GFX_KRool_Idle2.bin"
GFX_KRool_Idle2End:
GFX_KRool_LookTowardsCamera:
	db "GFX_KRool_LookTowardsCamera.bin"
GFX_KRool_LookTowardsCameraEnd:
GFX_KRoolGun_Idle1:
	db "GFX_KRoolGun_Idle1.bin"
GFX_KRoolGun_Idle1End:
GFX_KRoolGun_Idle2:
	db "GFX_KRoolGun_Idle2.bin"
GFX_KRoolGun_Idle2End:
GFX_KRoolGun_LookTowardsCamera:
	db "GFX_KRoolGun_LookTowardsCamera.bin"
GFX_KRoolGun_LookTowardsCameraEnd:
GFX_Clapper_Hit1:
	db "GFX_Clapper_Hit1.bin"
GFX_Clapper_Hit1End:
GFX_Clapper_Hit2:
	db "GFX_Clapper_Hit2.bin"
GFX_Clapper_Hit2End:
GFX_Clapper_Hit3:
	db "GFX_Clapper_Hit3.bin"
GFX_Clapper_Hit3End:
GFX_Clapper_Hit4:
	db "GFX_Clapper_Hit4.bin"
GFX_Clapper_Hit4End:
GFX_Clapper_Hit5:
	db "GFX_Clapper_Hit5.bin"
GFX_Clapper_Hit5End:
GFX_Clapper_Hit6:
	db "GFX_Clapper_Hit6.bin"
GFX_Clapper_Hit6End:
GFX_Clapper_Hit7:
	db "GFX_Clapper_Hit7.bin"
GFX_Clapper_Hit7End:
GFX_Clapper_Hit8:
	db "GFX_Clapper_Hit8.bin"
GFX_Clapper_Hit8End:
GFX_Clapper_Hit9:
	db "GFX_Clapper_Hit9.bin"
GFX_Clapper_Hit9End:
GFX_Clapper_Hit10:
	db "GFX_Clapper_Hit10.bin"
GFX_Clapper_Hit10End:
GFX_Clapper_Hit11:
	db "GFX_Clapper_Hit11.bin"
GFX_Clapper_Hit11End:
GFX_Clapper_Hit12:
	db "GFX_Clapper_Hit12.bin"
GFX_Clapper_Hit12End:
GFX_Clapper_Hit13:
	db "GFX_Clapper_Hit13.bin"
GFX_Clapper_Hit13End:
GFX_Clapper_Hit14:
	db "GFX_Clapper_Hit14.bin"
GFX_Clapper_Hit14End:
GFX_Clapper_Hit15:
	db "GFX_Clapper_Hit15.bin"
GFX_Clapper_Hit15End:
GFX_Snapjaw_HugeBite1:
	db "GFX_Snapjaw_HugeBite1.bin"
GFX_Snapjaw_HugeBite1End:
GFX_Snapjaw_HugeBite2:
	db "GFX_Snapjaw_HugeBite2.bin"
GFX_Snapjaw_HugeBite2End:
GFX_Snapjaw_HugeBite3:
	db "GFX_Snapjaw_HugeBite3.bin"
GFX_Snapjaw_HugeBite3End:
GFX_Snapjaw_HugeBite4:
	db "GFX_Snapjaw_HugeBite4.bin"
GFX_Snapjaw_HugeBite4End:
GFX_Snapjaw_HugeBite5:
	db "GFX_Snapjaw_HugeBite5.bin"
GFX_Snapjaw_HugeBite5End:
GFX_KRoolGunVacuumEffect_Pose1:
	db "GFX_KRoolGunVacuumEffect_Pose1.bin"
GFX_KRoolGunVacuumEffect_Pose1End:
GFX_KRoolGunVacuumEffect_Pose2:
	db "GFX_KRoolGunVacuumEffect_Pose2.bin"
GFX_KRoolGunVacuumEffect_Pose2End:
GFX_KRoolGunVacuumEffect_Pose3:
	db "GFX_KRoolGunVacuumEffect_Pose3.bin"
GFX_KRoolGunVacuumEffect_Pose3End:
GFX_KRoolGunVacuumEffect_Pose4:
	db "GFX_KRoolGunVacuumEffect_Pose4.bin"
GFX_KRoolGunVacuumEffect_Pose4End:
GFX_KRoolGunVacuumEffect_Pose5:
	db "GFX_KRoolGunVacuumEffect_Pose5.bin"
GFX_KRoolGunVacuumEffect_Pose5End:
GFX_KRoolGunVacuumEffect_Pose6:
	db "GFX_KRoolGunVacuumEffect_Pose6.bin"
GFX_KRoolGunVacuumEffect_Pose6End:
GFX_KRoolGunVacuumEffect_Pose7:
	db "GFX_KRoolGunVacuumEffect_Pose7.bin"
GFX_KRoolGunVacuumEffect_Pose7End:
GFX_KRoolGunVacuumEffect_Pose8:
	db "GFX_KRoolGunVacuumEffect_Pose8.bin"
GFX_KRoolGunVacuumEffect_Pose8End:
GFX_GiantTire_Pose1:
	db "GFX_GiantTire_Pose1.bin"
GFX_GiantTire_Pose1End:
GFX_GiantTire_Pose2:
	db "GFX_GiantTire_Pose2.bin"
GFX_GiantTire_Pose2End:
GFX_GiantTire_Pose3:
	db "GFX_GiantTire_Pose3.bin"
GFX_GiantTire_Pose3End:
GFX_SkullCartSparks_Pose1:
	db "GFX_SkullCartSparks_Pose1.bin"
GFX_SkullCartSparks_Pose1End:
GFX_SkullCartSparks_Pose2:
	db "GFX_SkullCartSparks_Pose2.bin"
GFX_SkullCartSparks_Pose2End:
GFX_SkullCartSparks_Pose3:
	db "GFX_SkullCartSparks_Pose3.bin"
GFX_SkullCartSparks_Pose3End:
GFX_SkullCartSparks_Pose4:
	db "GFX_SkullCartSparks_Pose4.bin"
GFX_SkullCartSparks_Pose4End:
GFX_SkullCartSparks_Pose5:
	db "GFX_SkullCartSparks_Pose5.bin"
GFX_SkullCartSparks_Pose5End:
GFX_SkullCartSparks_Pose6:
	db "GFX_SkullCartSparks_Pose6.bin"
GFX_SkullCartSparks_Pose6End:
GFX_SkullCartSparks_Pose7:
	db "GFX_SkullCartSparks_Pose7.bin"
GFX_SkullCartSparks_Pose7End:
GFX_SkullCartSparks_Pose8:
	db "GFX_SkullCartSparks_Pose8.bin"
GFX_SkullCartSparks_Pose8End:
GFX_SkullCartSparks_Pose9:
	db "GFX_SkullCartSparks_Pose9.bin"
GFX_SkullCartSparks_Pose9End:
GFX_SkullCartSparks_Pose10:
	db "GFX_SkullCartSparks_Pose10.bin"
GFX_SkullCartSparks_Pose10End:
GFX_SkullCartSparks_Pose11:
	db "GFX_SkullCartSparks_Pose11.bin"
GFX_SkullCartSparks_Pose11End:
GFX_HauntedHallDoors_Pose1:
	db "GFX_HauntedHallDoors_Pose1.bin"
GFX_HauntedHallDoors_Pose1End:
GFX_HauntedHallDoors_Pose2:
	db "GFX_HauntedHallDoors_Pose2.bin"
GFX_HauntedHallDoors_Pose2End:
GFX_HauntedHallDoors_Pose3:
	db "GFX_HauntedHallDoors_Pose3.bin"
GFX_HauntedHallDoors_Pose3End:
GFX_HauntedHallDoors_Pose4:
	db "GFX_HauntedHallDoors_Pose4.bin"
GFX_HauntedHallDoors_Pose4End:
GFX_HauntedHallDoors_Pose5:
	db "GFX_HauntedHallDoors_Pose5.bin"
GFX_HauntedHallDoors_Pose5End:
GFX_HauntedHallDoors_Pose6:
	db "GFX_HauntedHallDoors_Pose6.bin"
GFX_HauntedHallDoors_Pose6End:
GFX_HauntedHallDoors_Pose7:
	db "GFX_HauntedHallDoors_Pose7.bin"
GFX_HauntedHallDoors_Pose7End:
GFX_HauntedHallDoors_Pose8:
	db "GFX_HauntedHallDoors_Pose8.bin"
GFX_HauntedHallDoors_Pose8End:
GFX_HauntedHallDoors_Pose9:
	db "GFX_HauntedHallDoors_Pose9.bin"
GFX_HauntedHallDoors_Pose9End:
GFX_HauntedHallDoors_Pose10:
	db "GFX_HauntedHallDoors_Pose10.bin"
GFX_HauntedHallDoors_Pose10End:
GFX_HauntedHallDoors_Pose11:
	db "GFX_HauntedHallDoors_Pose11.bin"
GFX_HauntedHallDoors_Pose11End:
GFX_HauntedHallDoors_Pose12:
	db "GFX_HauntedHallDoors_Pose12.bin"
GFX_HauntedHallDoors_Pose12End:
GFX_HauntedHallDoors_Pose13:
	db "GFX_HauntedHallDoors_Pose13.bin"
GFX_HauntedHallDoors_Pose13End:
GFX_PlusBarrel_Pose1:
	db "GFX_PlusBarrel_Pose1.bin"
GFX_PlusBarrel_Pose1End:
GFX_MinusBarrel_Pose1:
	db "GFX_MinusBarrel_Pose1.bin"
GFX_MinusBarrel_Pose1End:
GFX_ArrowBarrelCannon_Pose1:
	db "GFX_ArrowBarrelCannon_Pose1.bin"
GFX_ArrowBarrelCannon_Pose1End:
GFX_ArrowBarrelCannon_Pose2:
	db "GFX_ArrowBarrelCannon_Pose2.bin"
GFX_ArrowBarrelCannon_Pose2End:
GFX_ArrowBarrelCannon_Pose3:
	db "GFX_ArrowBarrelCannon_Pose3.bin"
GFX_ArrowBarrelCannon_Pose3End:
GFX_ArrowBarrelCannon_Pose4:
	db "GFX_ArrowBarrelCannon_Pose4.bin"
GFX_ArrowBarrelCannon_Pose4End:
GFX_ArrowBarrelCannon_Pose5:
	db "GFX_ArrowBarrelCannon_Pose5.bin"
GFX_ArrowBarrelCannon_Pose5End:
GFX_MapHelicopterBarrel_Pose1:
	db "GFX_MapHelicopterBarrel_Pose1.bin"
GFX_MapHelicopterBarrel_Pose1End:
GFX_MapHelicopterBarrel_Pose2:
	db "GFX_MapHelicopterBarrel_Pose2.bin"
GFX_MapHelicopterBarrel_Pose2End:
GFX_MapHelicopterBarrel_Pose3:
	db "GFX_MapHelicopterBarrel_Pose3.bin"
GFX_MapHelicopterBarrel_Pose3End:
GFX_Timer_Zero:
	db "GFX_Timer_Zero.bin"
GFX_Timer_ZeroEnd:
GFX_Timer_One:
	db "GFX_Timer_One.bin"
GFX_Timer_OneEnd:
GFX_Timer_Two:
	db "GFX_Timer_Two.bin"
GFX_Timer_TwoEnd:
GFX_Timer_Three:
	db "GFX_Timer_Three.bin"
GFX_Timer_ThreeEnd:
GFX_Timer_Four:
	db "GFX_Timer_Four.bin"
GFX_Timer_FourEnd:
GFX_Timer_Five:
	db "GFX_Timer_Five.bin"
GFX_Timer_FiveEnd:
GFX_Timer_Six:
	db "GFX_Timer_Six.bin"
GFX_Timer_SixEnd:
GFX_Timer_Seven:
	db "GFX_Timer_Seven.bin"
GFX_Timer_SevenEnd:
GFX_Timer_Eight:
	db "GFX_Timer_Eight.bin"
GFX_Timer_EightEnd:
GFX_Timer_Nine:
	db "GFX_Timer_Nine.bin"
GFX_Timer_NineEnd:
GFX_KRoolGunSparks_Pose1:
	db "GFX_KRoolGunSparks_Pose1.bin"
GFX_KRoolGunSparks_Pose1End:
GFX_KRoolGunSparks_Pose2:
	db "GFX_KRoolGunSparks_Pose2.bin"
GFX_KRoolGunSparks_Pose2End:
GFX_KRoolGunSparks_Pose3:
	db "GFX_KRoolGunSparks_Pose3.bin"
GFX_KRoolGunSparks_Pose3End:
GFX_KRoolGunSparks_Pose4:
	db "GFX_KRoolGunSparks_Pose4.bin"
GFX_KRoolGunSparks_Pose4End:
GFX_KRoolGunSparks_Pose5:
	db "GFX_KRoolGunSparks_Pose5.bin"
GFX_KRoolGunSparks_Pose5End:
GFX_KRoolGunSparks_Pose6:
	db "GFX_KRoolGunSparks_Pose6.bin"
GFX_KRoolGunSparks_Pose6End:
GFX_KRoolGunSparks_Pose7:
	db "GFX_KRoolGunSparks_Pose7.bin"
GFX_KRoolGunSparks_Pose7End:
GFX_KRoolGunSparks_Pose8:
	db "GFX_KRoolGunSparks_Pose8.bin"
GFX_KRoolGunSparks_Pose8End:
GFX_KRoolGunSparks_Pose9:
	db "GFX_KRoolGunSparks_Pose9.bin"
GFX_KRoolGunSparks_Pose9End:
GFX_KRoolGunSparks_Pose10:
	db "GFX_KRoolGunSparks_Pose10.bin"
GFX_KRoolGunSparks_Pose10End:
GFX_KRoolGunSparks_Pose11:
	db "GFX_KRoolGunSparks_Pose11.bin"
GFX_KRoolGunSparks_Pose11End:
GFX_KRoolGunSparks_Pose12:
	db "GFX_KRoolGunSparks_Pose12.bin"
GFX_KRoolGunSparks_Pose12End:
GFX_KRoolGunSparks_Pose13:
	db "GFX_KRoolGunSparks_Pose13.bin"
GFX_KRoolGunSparks_Pose13End:
GFX_KRoolGunSparks_Pose14:
	db "GFX_KRoolGunSparks_Pose14.bin"
GFX_KRoolGunSparks_Pose14End:
GFX_KRoolGunSparks_Pose15:
	db "GFX_KRoolGunSparks_Pose15.bin"
GFX_KRoolGunSparks_Pose15End:
GFX_KRoolMagicShots_Pose1:
	db "GFX_KRoolMagicShots_Pose1.bin"
GFX_KRoolMagicShots_Pose1End:
GFX_KRoolMagicShots_Pose2:
	db "GFX_KRoolMagicShots_Pose2.bin"
GFX_KRoolMagicShots_Pose2End:
GFX_KRoolMagicShots_Pose3:
	db "GFX_KRoolMagicShots_Pose3.bin"
GFX_KRoolMagicShots_Pose3End:
GFX_KRoolMagicShots_Pose4:
	db "GFX_KRoolMagicShots_Pose4.bin"
GFX_KRoolMagicShots_Pose4End:
GFX_KRoolMagicShots_Pose5:
	db "GFX_KRoolMagicShots_Pose5.bin"
GFX_KRoolMagicShots_Pose5End:
GFX_KRoolMagicShots_Pose6:
	db "GFX_KRoolMagicShots_Pose6.bin"
GFX_KRoolMagicShots_Pose6End:
GFX_KRoolMagicShots_Pose7:
	db "GFX_KRoolMagicShots_Pose7.bin"
GFX_KRoolMagicShots_Pose7End:
GFX_KRoolMagicShots_Pose8:
	db "GFX_KRoolMagicShots_Pose8.bin"
GFX_KRoolMagicShots_Pose8End:
GFX_Yoshi_Pose1:
	db "GFX_Yoshi_Pose1.bin"
GFX_Yoshi_Pose1End:
GFX_Yoshi_Pose2:
	db "GFX_Yoshi_Pose2.bin"
GFX_Yoshi_Pose2End:
GFX_Yoshi_Pose3:
	db "GFX_Yoshi_Pose3.bin"
GFX_Yoshi_Pose3End:
GFX_Yoshi_Pose4:
	db "GFX_Yoshi_Pose4.bin"
GFX_Yoshi_Pose4End:
GFX_Yoshi_Pose5:
	db "GFX_Yoshi_Pose5.bin"
GFX_Yoshi_Pose5End:
GFX_Yoshi_Pose6:
	db "GFX_Yoshi_Pose6.bin"
GFX_Yoshi_Pose6End:
GFX_Yoshi_Pose7:
	db "GFX_Yoshi_Pose7.bin"
GFX_Yoshi_Pose7End:
GFX_Yoshi_Pose8:
	db "GFX_Yoshi_Pose8.bin"
GFX_Yoshi_Pose8End:
GFX_Yoshi_Pose9:
	db "GFX_Yoshi_Pose9.bin"
GFX_Yoshi_Pose9End:
GFX_Yoshi_Pose10:
	db "GFX_Yoshi_Pose10.bin"
GFX_Yoshi_Pose10End:
GFX_Yoshi_Pose11:
	db "GFX_Yoshi_Pose11.bin"
GFX_Yoshi_Pose11End:
GFX_Yoshi_Pose12:
	db "GFX_Yoshi_Pose12.bin"
GFX_Yoshi_Pose12End:
GFX_Mario_Pose1:
	db "GFX_Mario_Pose1.bin"
GFX_Mario_Pose1End:
GFX_Mario_Pose2:
	db "GFX_Mario_Pose2.bin"
GFX_Mario_Pose2End:
GFX_Mario_Pose3:
	db "GFX_Mario_Pose3.bin"
GFX_Mario_Pose3End:
GFX_Mario_Pose4:
	db "GFX_Mario_Pose4.bin"
GFX_Mario_Pose4End:
GFX_Mario_Pose5:
	db "GFX_Mario_Pose5.bin"
GFX_Mario_Pose5End:
GFX_Mario_Pose6:
	db "GFX_Mario_Pose6.bin"
GFX_Mario_Pose6End:
GFX_FunkyKong_Idle1:
	db "GFX_FunkyKong_Idle1.bin"
GFX_FunkyKong_Idle1End:
GFX_FunkyKong_Idle2:
	db "GFX_FunkyKong_Idle2.bin"
GFX_FunkyKong_Idle2End:
GFX_FunkyKong_Idle3:
	db "GFX_FunkyKong_Idle3.bin"
GFX_FunkyKong_Idle3End:
GFX_FunkyKong_Surf1:
	db "GFX_FunkyKong_Surf1.bin"
GFX_FunkyKong_Surf1End:
GFX_FunkyKong_Surf2:
	db "GFX_FunkyKong_Surf2.bin"
GFX_FunkyKong_Surf2End:
GFX_FunkyKong_Surf3:
	db "GFX_FunkyKong_Surf3.bin"
GFX_FunkyKong_Surf3End:
GFX_FunkyKong_Surf4:
	db "GFX_FunkyKong_Surf4.bin"
GFX_FunkyKong_Surf4End:
GFX_FunkyKong_Surf5:
	db "GFX_FunkyKong_Surf5.bin"
GFX_FunkyKong_Surf5End:
GFX_FunkyKong_Surf6:
	db "GFX_FunkyKong_Surf6.bin"
GFX_FunkyKong_Surf6End:
GFX_FunkyKong_Surf7:
	db "GFX_FunkyKong_Surf7.bin"
GFX_FunkyKong_Surf7End:
GFX_FunkyKong_Surf8:
	db "GFX_FunkyKong_Surf8.bin"
GFX_FunkyKong_Surf8End:
GFX_FunkyKong_Surf9:
	db "GFX_FunkyKong_Surf9.bin"
GFX_FunkyKong_Surf9End:
GFX_FunkyKong_Surf10:
	db "GFX_FunkyKong_Surf10.bin"
GFX_FunkyKong_Surf10End:
GFX_FunkyKong_Surf11:
	db "GFX_FunkyKong_Surf11.bin"
GFX_FunkyKong_Surf11End:
GFX_FunkyKong_Surf12:
	db "GFX_FunkyKong_Surf12.bin"
GFX_FunkyKong_Surf12End:
GFX_FunkyKong_Surf13:
	db "GFX_FunkyKong_Surf13.bin"
GFX_FunkyKong_Surf13End:
GFX_FunkyKong_Surf14:
	db "GFX_FunkyKong_Surf14.bin"
GFX_FunkyKong_Surf14End:
GFX_FunkyKong_Surf15:
	db "GFX_FunkyKong_Surf15.bin"
GFX_FunkyKong_Surf15End:
GFX_FunkyKong_Surf16:
	db "GFX_FunkyKong_Surf16.bin"
GFX_FunkyKong_Surf16End:
GFX_Surfboard_Idle1:
	db "GFX_Surfboard_Idle1.bin"
GFX_Surfboard_Idle1End:
GFX_Surfboard_Idle2:
	db "GFX_Surfboard_Idle2.bin"
GFX_Surfboard_Idle2End:
GFX_Surfboard_Idle3:
	db "GFX_Surfboard_Idle3.bin"
GFX_Surfboard_Idle3End:
GFX_Surfboard_Surf1:
	db "GFX_Surfboard_Surf1.bin"
GFX_Surfboard_Surf1End:
GFX_Surfboard_Surf2:
	db "GFX_Surfboard_Surf2.bin"
GFX_Surfboard_Surf2End:
GFX_Surfboard_Surf3:
	db "GFX_Surfboard_Surf3.bin"
GFX_Surfboard_Surf3End:
GFX_Surfboard_Surf4:
	db "GFX_Surfboard_Surf4.bin"
GFX_Surfboard_Surf4End:
GFX_Surfboard_Surf5:
	db "GFX_Surfboard_Surf5.bin"
GFX_Surfboard_Surf5End:
GFX_Surfboard_Surf6:
	db "GFX_Surfboard_Surf6.bin"
GFX_Surfboard_Surf6End:
GFX_Surfboard_Surf7:
	db "GFX_Surfboard_Surf7.bin"
GFX_Surfboard_Surf7End:
GFX_Surfboard_Surf8:
	db "GFX_Surfboard_Surf8.bin"
GFX_Surfboard_Surf8End:
GFX_Surfboard_Surf9:
	db "GFX_Surfboard_Surf9.bin"
GFX_Surfboard_Surf9End:
GFX_Surfboard_Surf10:
	db "GFX_Surfboard_Surf10.bin"
GFX_Surfboard_Surf10End:
GFX_Surfboard_Surf11:
	db "GFX_Surfboard_Surf11.bin"
GFX_Surfboard_Surf11End:
GFX_Surfboard_Surf12:
	db "GFX_Surfboard_Surf12.bin"
GFX_Surfboard_Surf12End:
GFX_Surfboard_Surf13:
	db "GFX_Surfboard_Surf13.bin"
GFX_Surfboard_Surf13End:
GFX_Surfboard_Surf14:
	db "GFX_Surfboard_Surf14.bin"
GFX_Surfboard_Surf14End:
GFX_Surfboard_Surf15:
	db "GFX_Surfboard_Surf15.bin"
GFX_Surfboard_Surf15End:
GFX_Surfboard_Surf16:
	db "GFX_Surfboard_Surf16.bin"
GFX_Surfboard_Surf16End:
GFX_CrankyKong_Idle1:
	db "GFX_CrankyKong_Idle1.bin"
GFX_CrankyKong_Idle1End:
GFX_CrankyKong_Idle2:
	db "GFX_CrankyKong_Idle2.bin"
GFX_CrankyKong_Idle2End:
GFX_CrankyKong_Idle3:
	db "GFX_CrankyKong_Idle3.bin"
GFX_CrankyKong_Idle3End:
GFX_CrankyKong_LeanForward1:
	db "GFX_CrankyKong_LeanForward1.bin"
GFX_CrankyKong_LeanForward1End:
GFX_CrankyKong_LeanForward2:
	db "GFX_CrankyKong_LeanForward2.bin"
GFX_CrankyKong_LeanForward2End:
GFX_CrankyKong_LeanForward3:
	db "GFX_CrankyKong_LeanForward3.bin"
GFX_CrankyKong_LeanForward3End:
GFX_CrankyKong_LeanForward4:
	db "GFX_CrankyKong_LeanForward4.bin"
GFX_CrankyKong_LeanForward4End:
GFX_CrankyKong_LeanForward5:
	db "GFX_CrankyKong_LeanForward5.bin"
GFX_CrankyKong_LeanForward5End:
GFX_CrankyKong_ShakeCane1:
	db "GFX_CrankyKong_ShakeCane1.bin"
GFX_CrankyKong_ShakeCane1End:
GFX_CrankyKong_ShakeCane2:
	db "GFX_CrankyKong_ShakeCane2.bin"
GFX_CrankyKong_ShakeCane2End:
GFX_CrankyKong_ShakeCane3:
	db "GFX_CrankyKong_ShakeCane3.bin"
GFX_CrankyKong_ShakeCane3End:
GFX_CrankyKong_ShakeCane4:
	db "GFX_CrankyKong_ShakeCane4.bin"
GFX_CrankyKong_ShakeCane4End:
GFX_CrankyKong_ShakeCane5:
	db "GFX_CrankyKong_ShakeCane5.bin"
GFX_CrankyKong_ShakeCane5End:
GFX_CrankyKong_ShakeCane6:
	db "GFX_CrankyKong_ShakeCane6.bin"
GFX_CrankyKong_ShakeCane6End:
GFX_CrankyKong_ShakeCane7:
	db "GFX_CrankyKong_ShakeCane7.bin"
GFX_CrankyKong_ShakeCane7End:
GFX_CrankyKong_ShakeCane8:
	db "GFX_CrankyKong_ShakeCane8.bin"
GFX_CrankyKong_ShakeCane8End:
GFX_Kudgel_Land:
	db "GFX_Kudgel_Land.bin"
GFX_Kudgel_LandEnd:
GFX_KudgelsClub_Land:
	db "GFX_KudgelsClub_Land.bin"
GFX_KudgelsClub_LandEnd:
GFX_Kudgel_Jump:
	db "GFX_Kudgel_Jump.bin"
GFX_Kudgel_JumpEnd:
GFX_KudgelsClub_Jump:
	db "GFX_KudgelsClub_Jump.bin"
GFX_KudgelsClub_JumpEnd:
GFX_Kudgel_Hurt1:
	db "GFX_Kudgel_Hurt1.bin"
GFX_Kudgel_Hurt1End:
GFX_KudgelsClub_Hurt1:
	db "GFX_KudgelsClub_Hurt1.bin"
GFX_KudgelsClub_Hurt1End:
GFX_Kudgel_Hurt2:
	db "GFX_Kudgel_Hurt2.bin"
GFX_Kudgel_Hurt2End:
GFX_KudgelsClub_Hurt2:
	db "GFX_KudgelsClub_Hurt2.bin"
GFX_KudgelsClub_Hurt2End:
GFX_Screech_Fly1:
	db "GFX_Screech_Fly1.bin"
GFX_Screech_Fly1End:
GFX_Screech_Fly2:
	db "GFX_Screech_Fly2.bin"
GFX_Screech_Fly2End:
GFX_Screech_Fly3:
	db "GFX_Screech_Fly3.bin"
GFX_Screech_Fly3End:
GFX_Screech_Fly4:
	db "GFX_Screech_Fly4.bin"
GFX_Screech_Fly4End:
GFX_Screech_Fly5:
	db "GFX_Screech_Fly5.bin"
GFX_Screech_Fly5End:
GFX_Screech_Fly6:
	db "GFX_Screech_Fly6.bin"
GFX_Screech_Fly6End:
GFX_Screech_Fly7:
	db "GFX_Screech_Fly7.bin"
GFX_Screech_Fly7End:
GFX_Screech_Fly8:
	db "GFX_Screech_Fly8.bin"
GFX_Screech_Fly8End:
GFX_Screech_Fly9:
	db "GFX_Screech_Fly9.bin"
GFX_Screech_Fly9End:
GFX_Screech_Fly10:
	db "GFX_Screech_Fly10.bin"
GFX_Screech_Fly10End:
GFX_Screech_Fly11:
	db "GFX_Screech_Fly11.bin"
GFX_Screech_Fly11End:
GFX_Screech_Fly12:
	db "GFX_Screech_Fly12.bin"
GFX_Screech_Fly12End:
GFX_Screech_Turn1:
	db "GFX_Screech_Turn1.bin"
GFX_Screech_Turn1End:
GFX_Screech_Turn2:
	db "GFX_Screech_Turn2.bin"
GFX_Screech_Turn2End:
GFX_Kudgel_SwingClub1:
	db "GFX_Kudgel_SwingClub1.bin"
GFX_Kudgel_SwingClub1End:
GFX_Kudgel_SwingClub2:
	db "GFX_Kudgel_SwingClub2.bin"
GFX_Kudgel_SwingClub2End:
GFX_Kudgel_SwingClub3:
	db "GFX_Kudgel_SwingClub3.bin"
GFX_Kudgel_SwingClub3End:
GFX_Kudgel_SwingClub4:
	db "GFX_Kudgel_SwingClub4.bin"
GFX_Kudgel_SwingClub4End:
GFX_Kudgel_SwingClub5:
	db "GFX_Kudgel_SwingClub5.bin"
GFX_Kudgel_SwingClub5End:
GFX_Kudgel_SwingClub6:
	db "GFX_Kudgel_SwingClub6.bin"
GFX_Kudgel_SwingClub6End:
GFX_Kudgel_SwingClub7:
	db "GFX_Kudgel_SwingClub7.bin"
GFX_Kudgel_SwingClub7End:
GFX_Kudgel_SwingClub8:
	db "GFX_Kudgel_SwingClub8.bin"
GFX_Kudgel_SwingClub8End:
GFX_Kudgel_SwingClub9:
	db "GFX_Kudgel_SwingClub9.bin"
GFX_Kudgel_SwingClub9End:
GFX_Kudgel_SwingClub10:
	db "GFX_Kudgel_SwingClub10.bin"
GFX_Kudgel_SwingClub10End:
GFX_Kudgel_SwingClub11:
	db "GFX_Kudgel_SwingClub11.bin"
GFX_Kudgel_SwingClub11End:
GFX_KudgelsClub_SwingClub1:
	db "GFX_KudgelsClub_SwingClub1.bin"
GFX_KudgelsClub_SwingClub1End:
GFX_KudgelsClub_SwingClub2:
	db "GFX_KudgelsClub_SwingClub2.bin"
GFX_KudgelsClub_SwingClub2End:
GFX_KudgelsClub_SwingClub3:
	db "GFX_KudgelsClub_SwingClub3.bin"
GFX_KudgelsClub_SwingClub3End:
GFX_KudgelsClub_SwingClub4:
	db "GFX_KudgelsClub_SwingClub4.bin"
GFX_KudgelsClub_SwingClub4End:
GFX_KudgelsClub_SwingClub5:
	db "GFX_KudgelsClub_SwingClub5.bin"
GFX_KudgelsClub_SwingClub5End:
GFX_KudgelsClub_SwingClub6:
	db "GFX_KudgelsClub_SwingClub6.bin"
GFX_KudgelsClub_SwingClub6End:
GFX_KudgelsClub_SwingClub7:
	db "GFX_KudgelsClub_SwingClub7.bin"
GFX_KudgelsClub_SwingClub7End:
GFX_KudgelsClub_SwingClub8:
	db "GFX_KudgelsClub_SwingClub8.bin"
GFX_KudgelsClub_SwingClub8End:
GFX_KudgelsClub_SwingClub9:
	db "GFX_KudgelsClub_SwingClub9.bin"
GFX_KudgelsClub_SwingClub9End:
GFX_KudgelsClub_SwingClub10:
	db "GFX_KudgelsClub_SwingClub10.bin"
GFX_KudgelsClub_SwingClub10End:
GFX_KudgelsClub_SwingClub11:
	db "GFX_KudgelsClub_SwingClub11.bin"
GFX_KudgelsClub_SwingClub11End:
GFX_Kudgel_Dead1:
	db "GFX_Kudgel_Dead1.bin"
GFX_Kudgel_Dead1End:
GFX_Kudgel_Dead2:
	db "GFX_Kudgel_Dead2.bin"
GFX_Kudgel_Dead2End:
GFX_KudgelsClub_Dead1:
	db "GFX_KudgelsClub_Dead1.bin"
GFX_KudgelsClub_Dead1End:
GFX_Puftup_Turn1:
	db "GFX_Puftup_Turn1.bin"
GFX_Puftup_Turn1End:
GFX_Puftup_Turn2:
	db "GFX_Puftup_Turn2.bin"
GFX_Puftup_Turn2End:
GFX_Puftup_Turn3:
	db "GFX_Puftup_Turn3.bin"
GFX_Puftup_Turn3End:
GFX_Puftup_Turn4:
	db "GFX_Puftup_Turn4.bin"
GFX_Puftup_Turn4End:
GFX_Puftup_Turn5:
	db "GFX_Puftup_Turn5.bin"
GFX_Puftup_Turn5End:
GFX_Puftup_Turn6:
	db "GFX_Puftup_Turn6.bin"
GFX_Puftup_Turn6End:
GFX_Puftup_Turn7:
	db "GFX_Puftup_Turn7.bin"
GFX_Puftup_Turn7End:
GFX_KudgelDeathSmokePuffs_Pose1:
	db "GFX_KudgelDeathSmokePuffs_Pose1.bin"
GFX_KudgelDeathSmokePuffs_Pose1End:
GFX_KudgelDeathSmokePuffs_Pose2:
	db "GFX_KudgelDeathSmokePuffs_Pose2.bin"
GFX_KudgelDeathSmokePuffs_Pose2End:
GFX_KudgelDeathSmokePuffs_Pose3:
	db "GFX_KudgelDeathSmokePuffs_Pose3.bin"
GFX_KudgelDeathSmokePuffs_Pose3End:
GFX_KudgelDeathSmokePuffs_Pose4:
	db "GFX_KudgelDeathSmokePuffs_Pose4.bin"
GFX_KudgelDeathSmokePuffs_Pose4End:
GFX_KudgelDeathSmokePuffs_Pose5:
	db "GFX_KudgelDeathSmokePuffs_Pose5.bin"
GFX_KudgelDeathSmokePuffs_Pose5End:
GFX_KudgelDeathSmokePuffs_Pose6:
	db "GFX_KudgelDeathSmokePuffs_Pose6.bin"
GFX_KudgelDeathSmokePuffs_Pose6End:
GFX_KudgelDeathSmokePuffs_Pose7:
	db "GFX_KudgelDeathSmokePuffs_Pose7.bin"
GFX_KudgelDeathSmokePuffs_Pose7End:
GFX_BreakableWall_ShipDeck:
	db "GFX_BreakableWall_ShipDeck.bin"
GFX_BreakableWall_ShipDeckEnd:
GFX_BreakableWall_BeeHive:
	db "GFX_BreakableWall_BeeHive.bin"
GFX_BreakableWall_BeeHiveEnd:
GFX_BreakableWall_ForestLeftWall:
	db "GFX_BreakableWall_ForestLeftWall.bin"
GFX_BreakableWall_ForestLeftWallEnd:
GFX_BreakableWall_Unknown1:
	db "GFX_BreakableWall_Unknown1.bin"
GFX_BreakableWall_Unknown1End:
GFX_BreakableWall_ForestRightWall:
	db "GFX_BreakableWall_ForestRightWall.bin"
GFX_BreakableWall_ForestRightWallEnd:
GFX_BreakableWall_Castle:
	db "GFX_BreakableWall_Castle.bin"
GFX_BreakableWall_CastleEnd:
GFX_BreakableWall_Unknown2:
	db "GFX_BreakableWall_Unknown2.bin"
GFX_BreakableWall_Unknown2End:
GFX_BreakableWall_LavaCave:
	db "GFX_BreakableWall_LavaCave.bin"
GFX_BreakableWall_LavaCaveEnd:
GFX_BreakableWall_IceCave:
	db "GFX_BreakableWall_IceCave.bin"
GFX_BreakableWall_IceCaveEnd:
GFX_BreakableWall_ShipHoldTallBox:
	db "GFX_BreakableWall_ShipHoldTallBox.bin"
GFX_BreakableWall_ShipHoldTallBoxEnd:
GFX_BreakableWall_ShipHoldShortBox:
	db "GFX_BreakableWall_ShipHoldShortBox.bin"
GFX_BreakableWall_ShipHoldShortBoxEnd:
GFX_WebShot_Blob2:
	db "GFX_WebShot_Blob2.bin"
GFX_WebShot_Blob2End:
GFX_WebShot_Blob3:
	db "GFX_WebShot_Blob3.bin"
GFX_WebShot_Blob3End:
GFX_WebShot_Blob4:
	db "GFX_WebShot_Blob4.bin"
GFX_WebShot_Blob4End:
GFX_SwankyKong_StandStill:
	db "GFX_SwankyKong_StandStill.bin"
GFX_SwankyKong_StandStillEnd:
GFX_SwankyKong_Presents1:
	db "GFX_SwankyKong_Presents1.bin"
GFX_SwankyKong_Presents1End:
GFX_SwankyKong_Presents2:
	db "GFX_SwankyKong_Presents2.bin"
GFX_SwankyKong_Presents2End:
GFX_SwankyKong_Presents3:
	db "GFX_SwankyKong_Presents3.bin"
GFX_SwankyKong_Presents3End:
GFX_SwankyKong_Presents4:
	db "GFX_SwankyKong_Presents4.bin"
GFX_SwankyKong_Presents4End:
GFX_SwankyKong_Presents5:
	db "GFX_SwankyKong_Presents5.bin"
GFX_SwankyKong_Presents5End:
GFX_SwankyKong_Presents6:
	db "GFX_SwankyKong_Presents6.bin"
GFX_SwankyKong_Presents6End:
GFX_SwankyKong_Presents7:
	db "GFX_SwankyKong_Presents7.bin"
GFX_SwankyKong_Presents7End:
GFX_SwankyKong_Presents8:
	db "GFX_SwankyKong_Presents8.bin"
GFX_SwankyKong_Presents8End:
GFX_SwankyKong_Presents9:
	db "GFX_SwankyKong_Presents9.bin"
GFX_SwankyKong_Presents9End:
GFX_SwankyKong_Presents10:
	db "GFX_SwankyKong_Presents10.bin"
GFX_SwankyKong_Presents10End:
GFX_SwankyKong_Presents11:
	db "GFX_SwankyKong_Presents11.bin"
GFX_SwankyKong_Presents11End:
GFX_SwankyKong_Presents12:
	db "GFX_SwankyKong_Presents12.bin"
GFX_SwankyKong_Presents12End:
GFX_SwankyKong_Smile1:
	db "GFX_SwankyKong_Smile1.bin"
GFX_SwankyKong_Smile1End:
GFX_SwankyKong_Smile2:
	db "GFX_SwankyKong_Smile2.bin"
GFX_SwankyKong_Smile2End:
GFX_SwankyKong_Smile3:
	db "GFX_SwankyKong_Smile3.bin"
GFX_SwankyKong_Smile3End:
GFX_TeethShine_Pose1:
	db "GFX_TeethShine_Pose1.bin"
GFX_TeethShine_Pose1End:
GFX_TeethShine_Pose2:
	db "GFX_TeethShine_Pose2.bin"
GFX_TeethShine_Pose2End:
GFX_TeethShine_Pose3:
	db "GFX_TeethShine_Pose3.bin"
GFX_TeethShine_Pose3End:
GFX_SwankyKong_PushBackHair1:
	db "GFX_SwankyKong_PushBackHair1.bin"
GFX_SwankyKong_PushBackHair1End:
GFX_SwankyKong_PushBackHair2:
	db "GFX_SwankyKong_PushBackHair2.bin"
GFX_SwankyKong_PushBackHair2End:
GFX_SwankyKong_PushBackHair3:
	db "GFX_SwankyKong_PushBackHair3.bin"
GFX_SwankyKong_PushBackHair3End:
GFX_SwankyKong_PushBackHair4:
	db "GFX_SwankyKong_PushBackHair4.bin"
GFX_SwankyKong_PushBackHair4End:
GFX_SwankyKong_PushBackHair5:
	db "GFX_SwankyKong_PushBackHair5.bin"
GFX_SwankyKong_PushBackHair5End:
GFX_SwankyKong_PushBackHair6:
	db "GFX_SwankyKong_PushBackHair6.bin"
GFX_SwankyKong_PushBackHair6End:
GFX_SwankyKong_PushBackHair7:
	db "GFX_SwankyKong_PushBackHair7.bin"
GFX_SwankyKong_PushBackHair7End:
GFX_SwankyKong_PushBackHair8:
	db "GFX_SwankyKong_PushBackHair8.bin"
GFX_SwankyKong_PushBackHair8End:
GFX_SwankyKong_PushBackHair9:
	db "GFX_SwankyKong_PushBackHair9.bin"
GFX_SwankyKong_PushBackHair9End:
GFX_SwankyKong_PushBackHair10:
	db "GFX_SwankyKong_PushBackHair10.bin"
GFX_SwankyKong_PushBackHair10End:
GFX_Diddy_BlownUpwards1:
	db "GFX_Diddy_BlownUpwards1.bin"
GFX_Diddy_BlownUpwards1End:
GFX_Diddy_BlownUpwards2:
	db "GFX_Diddy_BlownUpwards2.bin"
GFX_Diddy_BlownUpwards2End:
GFX_Diddy_BlownUpwards3:
	db "GFX_Diddy_BlownUpwards3.bin"
GFX_Diddy_BlownUpwards3End:
GFX_Diddy_BlownUpwards4:
	db "GFX_Diddy_BlownUpwards4.bin"
GFX_Diddy_BlownUpwards4End:
GFX_Diddy_BlownUpwards5:
	db "GFX_Diddy_BlownUpwards5.bin"
GFX_Diddy_BlownUpwards5End:
GFX_Diddy_BlownUpwards6:
	db "GFX_Diddy_BlownUpwards6.bin"
GFX_Diddy_BlownUpwards6End:
GFX_Diddy_BlownUpwards7:
	db "GFX_Diddy_BlownUpwards7.bin"
GFX_Diddy_BlownUpwards7End:
GFX_Diddy_BlownUpwards8:
	db "GFX_Diddy_BlownUpwards8.bin"
GFX_Diddy_BlownUpwards8End:
GFX_Diddy_BlownUpwards9:
	db "GFX_Diddy_BlownUpwards9.bin"
GFX_Diddy_BlownUpwards9End:
GFX_Diddy_BlownUpwards10:
	db "GFX_Diddy_BlownUpwards10.bin"
GFX_Diddy_BlownUpwards10End:
GFX_Diddy_BlownUpwards11:
	db "GFX_Diddy_BlownUpwards11.bin"
GFX_Diddy_BlownUpwards11End:
GFX_Diddy_BlownUpwards12:
	db "GFX_Diddy_BlownUpwards12.bin"
GFX_Diddy_BlownUpwards12End:
GFX_Dixie_Fall1:
	db "GFX_Dixie_Fall1.bin"
GFX_Dixie_Fall1End:
GFX_Dixie_Fall2:
	db "GFX_Dixie_Fall2.bin"
GFX_Dixie_Fall2End:
GFX_Dixie_Fall3:
	db "GFX_Dixie_Fall3.bin"
GFX_Dixie_Fall3End:
GFX_Dixie_Fall4:
	db "GFX_Dixie_Fall4.bin"
GFX_Dixie_Fall4End:
GFX_Dixie_Fall5:
	db "GFX_Dixie_Fall5.bin"
GFX_Dixie_Fall5End:
GFX_Dixie_Fall6:
	db "GFX_Dixie_Fall6.bin"
GFX_Dixie_Fall6End:
GFX_Dixie_Fall7:
	db "GFX_Dixie_Fall7.bin"
GFX_Dixie_Fall7End:
GFX_Dixie_BlownUpwards1:
	db "GFX_Dixie_BlownUpwards1.bin"
GFX_Dixie_BlownUpwards1End:
GFX_Dixie_BlownUpwards2:
	db "GFX_Dixie_BlownUpwards2.bin"
GFX_Dixie_BlownUpwards2End:
GFX_Dixie_BlownUpwards3:
	db "GFX_Dixie_BlownUpwards3.bin"
GFX_Dixie_BlownUpwards3End:
GFX_Dixie_BlownUpwards4:
	db "GFX_Dixie_BlownUpwards4.bin"
GFX_Dixie_BlownUpwards4End:
GFX_Dixie_BlownUpwards5:
	db "GFX_Dixie_BlownUpwards5.bin"
GFX_Dixie_BlownUpwards5End:
GFX_Dixie_BlownUpwards6:
	db "GFX_Dixie_BlownUpwards6.bin"
GFX_Dixie_BlownUpwards6End:
GFX_Dixie_BlownUpwards7:
	db "GFX_Dixie_BlownUpwards7.bin"
GFX_Dixie_BlownUpwards7End:
GFX_Dixie_BlownUpwards8:
	db "GFX_Dixie_BlownUpwards8.bin"
GFX_Dixie_BlownUpwards8End:
GFX_Dixie_BlownUpwards9:
	db "GFX_Dixie_BlownUpwards9.bin"
GFX_Dixie_BlownUpwards9End:
GFX_Dixie_BlownUpwards10:
	db "GFX_Dixie_BlownUpwards10.bin"
GFX_Dixie_BlownUpwards10End:
GFX_Dixie_BlownUpwards11:
	db "GFX_Dixie_BlownUpwards11.bin"
GFX_Dixie_BlownUpwards11End:
GFX_Dixie_BlownUpwards12:
	db "GFX_Dixie_BlownUpwards12.bin"
GFX_Dixie_BlownUpwards12End:
GFX_KleeversHandLavaBubbles_Pose1:
	db "GFX_KleeversHandLavaBubbles_Pose1.bin"
GFX_KleeversHandLavaBubbles_Pose1End:
GFX_KleeversHandLavaBubbles_Pose2:
	db "GFX_KleeversHandLavaBubbles_Pose2.bin"
GFX_KleeversHandLavaBubbles_Pose2End:
GFX_KleeversHandLavaBubbles_Pose3:
	db "GFX_KleeversHandLavaBubbles_Pose3.bin"
GFX_KleeversHandLavaBubbles_Pose3End:
GFX_KleeversHandLavaBubbles_Pose4:
	db "GFX_KleeversHandLavaBubbles_Pose4.bin"
GFX_KleeversHandLavaBubbles_Pose4End:
GFX_KleeversHandLavaBubbles_Pose5:
	db "GFX_KleeversHandLavaBubbles_Pose5.bin"
GFX_KleeversHandLavaBubbles_Pose5End:
GFX_KleeversHandLavaBubbles_Pose6:
	db "GFX_KleeversHandLavaBubbles_Pose6.bin"
GFX_KleeversHandLavaBubbles_Pose6End:
GFX_KleeversHandLavaBubbles_Pose7:
	db "GFX_KleeversHandLavaBubbles_Pose7.bin"
GFX_KleeversHandLavaBubbles_Pose7End:
GFX_KleeversHandLavaBubbles_Pose8:
	db "GFX_KleeversHandLavaBubbles_Pose8.bin"
GFX_KleeversHandLavaBubbles_Pose8End:
GFX_MapZinger_Turn1:
	db "GFX_MapZinger_Turn1.bin"
GFX_MapZinger_Turn1End:
GFX_MapZinger_Turn2:
	db "GFX_MapZinger_Turn2.bin"
GFX_MapZinger_Turn2End:
GFX_MapFlyingKroc_Ship:
	db "GFX_MapFlyingKroc_Ship.bin"
GFX_MapFlyingKroc_ShipEnd:
GFX_MapFlyingKroc_DeployLadder1:
	db "GFX_MapFlyingKroc_DeployLadder1.bin"
GFX_MapFlyingKroc_DeployLadder1End:
GFX_MapFlyingKroc_DeployLadder2:
	db "GFX_MapFlyingKroc_DeployLadder2.bin"
GFX_MapFlyingKroc_DeployLadder2End:
GFX_MapFlyingKroc_DeployLadder3:
	db "GFX_MapFlyingKroc_DeployLadder3.bin"
GFX_MapFlyingKroc_DeployLadder3End:
GFX_MapFlyingKroc_DeployLadder4:
	db "GFX_MapFlyingKroc_DeployLadder4.bin"
GFX_MapFlyingKroc_DeployLadder4End:
GFX_MapFlyingKroc_DeployLadder5:
	db "GFX_MapFlyingKroc_DeployLadder5.bin"
GFX_MapFlyingKroc_DeployLadder5End:
GFX_MapFlyingKroc_DeployLadder6:
	db "GFX_MapFlyingKroc_DeployLadder6.bin"
GFX_MapFlyingKroc_DeployLadder6End:
GFX_MapKRool_Falling1:
	db "GFX_MapKRool_Falling1.bin"
GFX_MapKRool_Falling1End:
GFX_MapKRool_Falling2:
	db "GFX_MapKRool_Falling2.bin"
GFX_MapKRool_Falling2End:
GFX_MapKRool_Falling3:
	db "GFX_MapKRool_Falling3.bin"
GFX_MapKRool_Falling3End:
GFX_MapKRool_Falling4:
	db "GFX_MapKRool_Falling4.bin"
GFX_MapKRool_Falling4End:
GFX_MapKRool_Climbing1:
	db "GFX_MapKRool_Climbing1.bin"
GFX_MapKRool_Climbing1End:
GFX_MapKRool_Climbing2:
	db "GFX_MapKRool_Climbing2.bin"
GFX_MapKRool_Climbing2End:
GFX_MapKRool_Climbing3:
	db "GFX_MapKRool_Climbing3.bin"
GFX_MapKRool_Climbing3End:
GFX_MapKRool_Climbing4:
	db "GFX_MapKRool_Climbing4.bin"
GFX_MapKRool_Climbing4End:
GFX_MapKRool_Climbing5:
	db "GFX_MapKRool_Climbing5.bin"
GFX_MapKRool_Climbing5End:
GFX_BarrelCannonSymbols_DPad:
	db "GFX_BarrelCannonSymbols_DPad.bin"
GFX_BarrelCannonSymbols_DPadEnd:
GFX_BarrelCannonSymbols_RotateArrow:
	db "GFX_BarrelCannonSymbols_RotateArrow.bin"
GFX_BarrelCannonSymbols_RotateArrowEnd:
GFX_BarrelCannonSymbols_Bonus:
	db "GFX_BarrelCannonSymbols_Bonus.bin"
GFX_BarrelCannonSymbols_BonusEnd:
GFX_BarrelCannonSymbols_Dixie:
	db "GFX_BarrelCannonSymbols_Dixie.bin"
GFX_BarrelCannonSymbols_DixieEnd:
GFX_BarrelCannonSymbols_Diddy:
	db "GFX_BarrelCannonSymbols_Diddy.bin"
GFX_BarrelCannonSymbols_DiddyEnd:
GFX_BananaCoin_Spin1:
	db "GFX_BananaCoin_Spin1.bin"
GFX_BananaCoin_Spin1End:
GFX_BananaCoin_Spin2:
	db "GFX_BananaCoin_Spin2.bin"
GFX_BananaCoin_Spin2End:
GFX_BananaCoin_Spin3:
	db "GFX_BananaCoin_Spin3.bin"
GFX_BananaCoin_Spin3End:
GFX_BananaCoin_Spin4:
	db "GFX_BananaCoin_Spin4.bin"
GFX_BananaCoin_Spin4End:
GFX_BananaCoin_Spin5:
	db "GFX_BananaCoin_Spin5.bin"
GFX_BananaCoin_Spin5End:
GFX_BananaCoin_Spin6:
	db "GFX_BananaCoin_Spin6.bin"
GFX_BananaCoin_Spin6End:
GFX_BananaCoin_Spin7:
	db "GFX_BananaCoin_Spin7.bin"
GFX_BananaCoin_Spin7End:
GFX_BananaCoin_Spin8:
	db "GFX_BananaCoin_Spin8.bin"
GFX_BananaCoin_Spin8End:
GFX_G_Shrink1:
	db "GFX_G_Shrink1.bin"
GFX_G_Shrink1End:
GFX_G_Shrink2:
	db "GFX_G_Shrink2.bin"
GFX_G_Shrink2End:
GFX_K_Shrink1:
	db "GFX_K_Shrink1.bin"
GFX_K_Shrink1End:
GFX_K_Shrink2:
	db "GFX_K_Shrink2.bin"
GFX_K_Shrink2End:
GFX_N_Shrink1:
	db "GFX_N_Shrink1.bin"
GFX_N_Shrink1End:
GFX_N_Shrink2:
	db "GFX_N_Shrink2.bin"
GFX_N_Shrink2End:
GFX_O_Shrink1:
	db "GFX_O_Shrink1.bin"
GFX_O_Shrink1End:
GFX_O_Shrink2:
	db "GFX_O_Shrink2.bin"
GFX_O_Shrink2End:
GFX_Kremcoin_Collected:
	db "GFX_Kremcoin_Collected.bin"
GFX_Kremcoin_CollectedEnd:
GFX_DKCoin_Collected:
	db "GFX_DKCoin_Collected.bin"
GFX_DKCoin_CollectedEnd:
GFX_Diddy_HangFromHorizontalRope1:
	db "GFX_Diddy_HangFromHorizontalRope1.bin"
GFX_Diddy_HangFromHorizontalRope1End:
GFX_Diddy_HangFromHorizontalRope2:
	db "GFX_Diddy_HangFromHorizontalRope2.bin"
GFX_Diddy_HangFromHorizontalRope2End:
GFX_Diddy_HangFromHorizontalRope3:
	db "GFX_Diddy_HangFromHorizontalRope3.bin"
GFX_Diddy_HangFromHorizontalRope3End:
GFX_Diddy_HangFromHorizontalRope4:
	db "GFX_Diddy_HangFromHorizontalRope4.bin"
GFX_Diddy_HangFromHorizontalRope4End:
GFX_Diddy_HangFromHorizontalRope5:
	db "GFX_Diddy_HangFromHorizontalRope5.bin"
GFX_Diddy_HangFromHorizontalRope5End:
GFX_Diddy_HangFromHorizontalRope6:
	db "GFX_Diddy_HangFromHorizontalRope6.bin"
GFX_Diddy_HangFromHorizontalRope6End:
GFX_Diddy_HangFromHorizontalRope7:
	db "GFX_Diddy_HangFromHorizontalRope7.bin"
GFX_Diddy_HangFromHorizontalRope7End:
GFX_Diddy_HangFromHorizontalRope8:
	db "GFX_Diddy_HangFromHorizontalRope8.bin"
GFX_Diddy_HangFromHorizontalRope8End:
GFX_GoldenBarrel_Pose:
	db "GFX_GoldenBarrel_Pose.bin"
GFX_GoldenBarrel_PoseEnd:
GFX_WrinklyKong_OpenBook1:
	db "GFX_WrinklyKong_OpenBook1.bin"
GFX_WrinklyKong_OpenBook1End:
GFX_WrinklyKong_OpenBook2:
	db "GFX_WrinklyKong_OpenBook2.bin"
GFX_WrinklyKong_OpenBook2End:
GFX_WrinklyKong_OpenBook3:
	db "GFX_WrinklyKong_OpenBook3.bin"
GFX_WrinklyKong_OpenBook3End:
GFX_WrinklyKong_OpenBook4:
	db "GFX_WrinklyKong_OpenBook4.bin"
GFX_WrinklyKong_OpenBook4End:
GFX_WrinklyKong_OpenBook5:
	db "GFX_WrinklyKong_OpenBook5.bin"
GFX_WrinklyKong_OpenBook5End:
GFX_WrinklyKong_OpenBook6:
	db "GFX_WrinklyKong_OpenBook6.bin"
GFX_WrinklyKong_OpenBook6End:
GFX_WrinklyKong_OpenBook7:
	db "GFX_WrinklyKong_OpenBook7.bin"
GFX_WrinklyKong_OpenBook7End:
GFX_WrinklyKong_OpenBook8:
	db "GFX_WrinklyKong_OpenBook8.bin"
GFX_WrinklyKong_OpenBook8End:
GFX_WrinklyKong_OpenBook9:
	db "GFX_WrinklyKong_OpenBook9.bin"
GFX_WrinklyKong_OpenBook9End:
GFX_WrinklyKong_OpenBook10:
	db "GFX_WrinklyKong_OpenBook10.bin"
GFX_WrinklyKong_OpenBook10End:
GFX_WrinklyKong_OpenBook11:
	db "GFX_WrinklyKong_OpenBook11.bin"
GFX_WrinklyKong_OpenBook11End:
GFX_WrinklyKong_OpenBook12:
	db "GFX_WrinklyKong_OpenBook12.bin"
GFX_WrinklyKong_OpenBook12End:
GFX_WrinklyKong_ReadBook1:
	db "GFX_WrinklyKong_ReadBook1.bin"
GFX_WrinklyKong_ReadBook1End:
GFX_WrinklyKong_ReadBook2:
	db "GFX_WrinklyKong_ReadBook2.bin"
GFX_WrinklyKong_ReadBook2End:
GFX_WrinklyKong_ReadBook3:
	db "GFX_WrinklyKong_ReadBook3.bin"
GFX_WrinklyKong_ReadBook3End:
GFX_WrinklyKong_ReadBook4:
	db "GFX_WrinklyKong_ReadBook4.bin"
GFX_WrinklyKong_ReadBook4End:
GFX_WrinklyKong_ReadBook5:
	db "GFX_WrinklyKong_ReadBook5.bin"
GFX_WrinklyKong_ReadBook5End:
GFX_WrinklyKong_ReadBook6:
	db "GFX_WrinklyKong_ReadBook6.bin"
GFX_WrinklyKong_ReadBook6End:
GFX_WrinklyKong_ReadBook7:
	db "GFX_WrinklyKong_ReadBook7.bin"
GFX_WrinklyKong_ReadBook7End:
GFX_WrinklyKong_ReadBook8:
	db "GFX_WrinklyKong_ReadBook8.bin"
GFX_WrinklyKong_ReadBook8End:
GFX_WrinklyKong_TurnPage1:
	db "GFX_WrinklyKong_TurnPage1.bin"
GFX_WrinklyKong_TurnPage1End:
GFX_WrinklyKong_TurnPage2:
	db "GFX_WrinklyKong_TurnPage2.bin"
GFX_WrinklyKong_TurnPage2End:
GFX_WrinklyKong_TurnPage3:
	db "GFX_WrinklyKong_TurnPage3.bin"
GFX_WrinklyKong_TurnPage3End:
GFX_WrinklyKong_TurnPage4:
	db "GFX_WrinklyKong_TurnPage4.bin"
GFX_WrinklyKong_TurnPage4End:
GFX_WrinklyKong_TurnPage5:
	db "GFX_WrinklyKong_TurnPage5.bin"
GFX_WrinklyKong_TurnPage5End:
GFX_WrinklyKong_TurnPage6:
	db "GFX_WrinklyKong_TurnPage6.bin"
GFX_WrinklyKong_TurnPage6End:
GFX_WrinklyKong_TurnPage7:
	db "GFX_WrinklyKong_TurnPage7.bin"
GFX_WrinklyKong_TurnPage7End:
GFX_WrinklyKong_TurnPage8:
	db "GFX_WrinklyKong_TurnPage8.bin"
GFX_WrinklyKong_TurnPage8End:
GFX_WrinklyKong_TurnPage9:
	db "GFX_WrinklyKong_TurnPage9.bin"
GFX_WrinklyKong_TurnPage9End:
GFX_WrinklyKongBook_OpenBook1:
	db "GFX_WrinklyKongBook_OpenBook1.bin"
GFX_WrinklyKongBook_OpenBook1End:
GFX_WrinklyKongBook_OpenBook2:
	db "GFX_WrinklyKongBook_OpenBook2.bin"
GFX_WrinklyKongBook_OpenBook2End:
GFX_WrinklyKongBook_OpenBook3:
	db "GFX_WrinklyKongBook_OpenBook3.bin"
GFX_WrinklyKongBook_OpenBook3End:
GFX_WrinklyKongBook_OpenBook4:
	db "GFX_WrinklyKongBook_OpenBook4.bin"
GFX_WrinklyKongBook_OpenBook4End:
GFX_WrinklyKongBook_OpenBook5:
	db "GFX_WrinklyKongBook_OpenBook5.bin"
GFX_WrinklyKongBook_OpenBook5End:
GFX_WrinklyKongBook_OpenBook6:
	db "GFX_WrinklyKongBook_OpenBook6.bin"
GFX_WrinklyKongBook_OpenBook6End:
GFX_WrinklyKongBook_OpenBook7:
	db "GFX_WrinklyKongBook_OpenBook7.bin"
GFX_WrinklyKongBook_OpenBook7End:
GFX_WrinklyKongBook_OpenBook8:
	db "GFX_WrinklyKongBook_OpenBook8.bin"
GFX_WrinklyKongBook_OpenBook8End:
GFX_WrinklyKongBook_OpenBook9:
	db "GFX_WrinklyKongBook_OpenBook9.bin"
GFX_WrinklyKongBook_OpenBook9End:
GFX_WrinklyKongBook_OpenBook10:
	db "GFX_WrinklyKongBook_OpenBook10.bin"
GFX_WrinklyKongBook_OpenBook10End:
GFX_WrinklyKongBook_OpenBook11:
	db "GFX_WrinklyKongBook_OpenBook11.bin"
GFX_WrinklyKongBook_OpenBook11End:
GFX_WrinklyKongBook_OpenBook12:
	db "GFX_WrinklyKongBook_OpenBook12.bin"
GFX_WrinklyKongBook_OpenBook12End:
GFX_WrinklyKongBook_ReadBook1:
	db "GFX_WrinklyKongBook_ReadBook1.bin"
GFX_WrinklyKongBook_ReadBook1End:
GFX_WrinklyKongBook_ReadBook2:
	db "GFX_WrinklyKongBook_ReadBook2.bin"
GFX_WrinklyKongBook_ReadBook2End:
GFX_WrinklyKongBook_ReadBook3:
	db "GFX_WrinklyKongBook_ReadBook3.bin"
GFX_WrinklyKongBook_ReadBook3End:
GFX_WrinklyKongBook_ReadBook4:
	db "GFX_WrinklyKongBook_ReadBook4.bin"
GFX_WrinklyKongBook_ReadBook4End:
GFX_WrinklyKongBook_ReadBook5:
	db "GFX_WrinklyKongBook_ReadBook5.bin"
GFX_WrinklyKongBook_ReadBook5End:
GFX_WrinklyKongBook_ReadBook6:
	db "GFX_WrinklyKongBook_ReadBook6.bin"
GFX_WrinklyKongBook_ReadBook6End:
GFX_WrinklyKongBook_ReadBook7:
	db "GFX_WrinklyKongBook_ReadBook7.bin"
GFX_WrinklyKongBook_ReadBook7End:
GFX_WrinklyKongBook_TurnPage1:
	db "GFX_WrinklyKongBook_TurnPage1.bin"
GFX_WrinklyKongBook_TurnPage1End:
GFX_WrinklyKongBook_TurnPage2:
	db "GFX_WrinklyKongBook_TurnPage2.bin"
GFX_WrinklyKongBook_TurnPage2End:
GFX_WrinklyKongBook_TurnPage3:
	db "GFX_WrinklyKongBook_TurnPage3.bin"
GFX_WrinklyKongBook_TurnPage3End:
GFX_WrinklyKongBook_TurnPage4:
	db "GFX_WrinklyKongBook_TurnPage4.bin"
GFX_WrinklyKongBook_TurnPage4End:
GFX_WrinklyKongBook_TurnPage5:
	db "GFX_WrinklyKongBook_TurnPage5.bin"
GFX_WrinklyKongBook_TurnPage5End:
GFX_WrinklyKongBook_TurnPage6:
	db "GFX_WrinklyKongBook_TurnPage6.bin"
GFX_WrinklyKongBook_TurnPage6End:
GFX_WrinklyKongBook_TurnPage7:
	db "GFX_WrinklyKongBook_TurnPage7.bin"
GFX_WrinklyKongBook_TurnPage7End:
GFX_WrinklyKongBook_TurnPage8:
	db "GFX_WrinklyKongBook_TurnPage8.bin"
GFX_WrinklyKongBook_TurnPage8End:
GFX_WrinklyKongBook_TurnPage9:
	db "GFX_WrinklyKongBook_TurnPage9.bin"
GFX_WrinklyKongBook_TurnPage9End:
GFX_WrinklyKongBook_TurnPage10:
	db "GFX_WrinklyKongBook_TurnPage10.bin"
GFX_WrinklyKongBook_TurnPage10End:
GFX_KrocodileKoreBridge_Pose1:
	db "GFX_KrocodileKoreBridge_Pose1.bin"
GFX_KrocodileKoreBridge_Pose1End:
GFX_KrocodileKoreBridge_Pose2:
	db "GFX_KrocodileKoreBridge_Pose2.bin"
GFX_KrocodileKoreBridge_Pose2End:
GFX_KrocodileKoreBridge_Pose3:
	db "GFX_KrocodileKoreBridge_Pose3.bin"
GFX_KrocodileKoreBridge_Pose3End:
GFX_KrocodileKoreBridge_Pose4:
	db "GFX_KrocodileKoreBridge_Pose4.bin"
GFX_KrocodileKoreBridge_Pose4End:
GFX_KrocodileKoreBridge_Pose5:
	db "GFX_KrocodileKoreBridge_Pose5.bin"
GFX_KrocodileKoreBridge_Pose5End:
GFX_Snapjaw_Shrink1:
	db "GFX_Snapjaw_Shrink1.bin"
GFX_Snapjaw_Shrink1End:
GFX_Snapjaw_Shrink2:
	db "GFX_Snapjaw_Shrink2.bin"
GFX_Snapjaw_Shrink2End:
GFX_Squawks_GrabKongs:
	db "GFX_Squawks_GrabKongs.bin"
GFX_Squawks_GrabKongsEnd:
GFX_Squawks_Turn1:
	db "GFX_Squawks_Turn1.bin"
GFX_Squawks_Turn1End:
GFX_Squawks_Turn2:
	db "GFX_Squawks_Turn2.bin"
GFX_Squawks_Turn2End:
GFX_XBarrel_Pose:
	db "GFX_XBarrel_Pose.bin"
GFX_XBarrel_PoseEnd:
GFX_CheckmarkBarrel_Pose:
	db "GFX_CheckmarkBarrel_Pose.bin"
GFX_CheckmarkBarrel_PoseEnd:
GFX_RacingFlag_Pose:
	db "GFX_RacingFlag_Pose.bin"
GFX_RacingFlag_PoseEnd:
GFX_TrafficLight_Pose:
	db "GFX_TrafficLight_Pose.bin"
GFX_TrafficLight_PoseEnd:
GFX_MovingSingleBanana_Spin1:
	db "GFX_MovingSingleBanana_Spin1.bin"
GFX_MovingSingleBanana_Spin1End:
GFX_MovingSingleBanana_Spin2:
	db "GFX_MovingSingleBanana_Spin2.bin"
GFX_MovingSingleBanana_Spin2End:
GFX_MovingSingleBanana_Spin3:
	db "GFX_MovingSingleBanana_Spin3.bin"
GFX_MovingSingleBanana_Spin3End:
GFX_MovingSingleBanana_Spin4:
	db "GFX_MovingSingleBanana_Spin4.bin"
GFX_MovingSingleBanana_Spin4End:
GFX_MovingSingleBanana_Spin5:
	db "GFX_MovingSingleBanana_Spin5.bin"
GFX_MovingSingleBanana_Spin5End:
GFX_MovingSingleBanana_Spin6:
	db "GFX_MovingSingleBanana_Spin6.bin"
GFX_MovingSingleBanana_Spin6End:
GFX_MovingSingleBanana_Spin7:
	db "GFX_MovingSingleBanana_Spin7.bin"
GFX_MovingSingleBanana_Spin7End:
GFX_MovingSingleBanana_Spin8:
	db "GFX_MovingSingleBanana_Spin8.bin"
GFX_MovingSingleBanana_Spin8End:
GFX_DonkeyKong_FreakOut1:
	db "GFX_DonkeyKong_FreakOut1.bin"
GFX_DonkeyKong_FreakOut1End:
GFX_DonkeyKong_FreakOut2:
	db "GFX_DonkeyKong_FreakOut2.bin"
GFX_DonkeyKong_FreakOut2End:
GFX_DonkeyKong_FreakOut3:
	db "GFX_DonkeyKong_FreakOut3.bin"
GFX_DonkeyKong_FreakOut3End:
GFX_DonkeyKong_FreakOut4:
	db "GFX_DonkeyKong_FreakOut4.bin"
GFX_DonkeyKong_FreakOut4End:
GFX_DonkeyKong_FreakOut5:
	db "GFX_DonkeyKong_FreakOut5.bin"
GFX_DonkeyKong_FreakOut5End:
GFX_DonkeyKong_FreakOut6:
	db "GFX_DonkeyKong_FreakOut6.bin"
GFX_DonkeyKong_FreakOut6End:
GFX_DonkeyKong_FreakOut7:
	db "GFX_DonkeyKong_FreakOut7.bin"
GFX_DonkeyKong_FreakOut7End:
GFX_DonkeyKong_FreakOut8:
	db "GFX_DonkeyKong_FreakOut8.bin"
GFX_DonkeyKong_FreakOut8End:
GFX_DonkeyKong_FreakOut9:
	db "GFX_DonkeyKong_FreakOut9.bin"
GFX_DonkeyKong_FreakOut9End:
GFX_DonkeyKong_FreakOut10:
	db "GFX_DonkeyKong_FreakOut10.bin"
GFX_DonkeyKong_FreakOut10End:
GFX_DonkeyKong_FreakOut11:
	db "GFX_DonkeyKong_FreakOut11.bin"
GFX_DonkeyKong_FreakOut11End:
GFX_DonkeyKong_FreakOut12:
	db "GFX_DonkeyKong_FreakOut12.bin"
GFX_DonkeyKong_FreakOut12End:
GFX_DonkeyKong_FreakOut13:
	db "GFX_DonkeyKong_FreakOut13.bin"
GFX_DonkeyKong_FreakOut13End:
GFX_DonkeyKong_Hurt1:
	db "GFX_DonkeyKong_Hurt1.bin"
GFX_DonkeyKong_Hurt1End:
GFX_DonkeyKong_Hurt2:
	db "GFX_DonkeyKong_Hurt2.bin"
GFX_DonkeyKong_Hurt2End:
GFX_DonkeyKong_Hurt3:
	db "GFX_DonkeyKong_Hurt3.bin"
GFX_DonkeyKong_Hurt3End:
GFX_DonkeyKong_Hurt4:
	db "GFX_DonkeyKong_Hurt4.bin"
GFX_DonkeyKong_Hurt4End:
GFX_DonkeyKong_Hurt5:
	db "GFX_DonkeyKong_Hurt5.bin"
GFX_DonkeyKong_Hurt5End:
GFX_DonkeyKong_Hurt6:
	db "GFX_DonkeyKong_Hurt6.bin"
GFX_DonkeyKong_Hurt6End:
GFX_DonkeyKong_Hurt7:
	db "GFX_DonkeyKong_Hurt7.bin"
GFX_DonkeyKong_Hurt7End:
GFX_DonkeyKong_Hurt8:
	db "GFX_DonkeyKong_Hurt8.bin"
GFX_DonkeyKong_Hurt8End:
GFX_DonkeyKong_Hurt9:
	db "GFX_DonkeyKong_Hurt9.bin"
GFX_DonkeyKong_Hurt9End:
GFX_DonkeyKong_Hurt10:
	db "GFX_DonkeyKong_Hurt10.bin"
GFX_DonkeyKong_Hurt10End:
GFX_DonkeyKong_Hurt11:
	db "GFX_DonkeyKong_Hurt11.bin"
GFX_DonkeyKong_Hurt11End:
GFX_DonkeyKong_Hurt12:
	db "GFX_DonkeyKong_Hurt12.bin"
GFX_DonkeyKong_Hurt12End:
GFX_DonkeyKong_Struggle1:
	db "GFX_DonkeyKong_Struggle1.bin"
GFX_DonkeyKong_Struggle1End:
GFX_DonkeyKong_Struggle2:
	db "GFX_DonkeyKong_Struggle2.bin"
GFX_DonkeyKong_Struggle2End:
GFX_DonkeyKong_Struggle3:
	db "GFX_DonkeyKong_Struggle3.bin"
GFX_DonkeyKong_Struggle3End:
GFX_DonkeyKong_Struggle4:
	db "GFX_DonkeyKong_Struggle4.bin"
GFX_DonkeyKong_Struggle4End:
GFX_DonkeyKong_Struggle5:
	db "GFX_DonkeyKong_Struggle5.bin"
GFX_DonkeyKong_Struggle5End:
GFX_DonkeyKong_Struggle6:
	db "GFX_DonkeyKong_Struggle6.bin"
GFX_DonkeyKong_Struggle6End:
GFX_DonkeyKongsRopes_FreakOut1:
	db "GFX_DonkeyKongsRopes_FreakOut1.bin"
GFX_DonkeyKongsRopes_FreakOut1End:
GFX_DonkeyKongsRopes_FreakOut2:
	db "GFX_DonkeyKongsRopes_FreakOut2.bin"
GFX_DonkeyKongsRopes_FreakOut2End:
GFX_DonkeyKongsRopes_FreakOut3:
	db "GFX_DonkeyKongsRopes_FreakOut3.bin"
GFX_DonkeyKongsRopes_FreakOut3End:
GFX_DonkeyKongsRopes_FreakOut4:
	db "GFX_DonkeyKongsRopes_FreakOut4.bin"
GFX_DonkeyKongsRopes_FreakOut4End:
GFX_DonkeyKongsRopes_FreakOut5:
	db "GFX_DonkeyKongsRopes_FreakOut5.bin"
GFX_DonkeyKongsRopes_FreakOut5End:
GFX_DonkeyKongsRopes_FreakOut6:
	db "GFX_DonkeyKongsRopes_FreakOut6.bin"
GFX_DonkeyKongsRopes_FreakOut6End:
GFX_DonkeyKongsRopes_FreakOut7:
	db "GFX_DonkeyKongsRopes_FreakOut7.bin"
GFX_DonkeyKongsRopes_FreakOut7End:
GFX_DonkeyKongsRopes_FreakOut8:
	db "GFX_DonkeyKongsRopes_FreakOut8.bin"
GFX_DonkeyKongsRopes_FreakOut8End:
GFX_DonkeyKongsRopes_FreakOut9:
	db "GFX_DonkeyKongsRopes_FreakOut9.bin"
GFX_DonkeyKongsRopes_FreakOut9End:
GFX_DonkeyKongsRopes_FreakOut10:
	db "GFX_DonkeyKongsRopes_FreakOut10.bin"
GFX_DonkeyKongsRopes_FreakOut10End:
GFX_DonkeyKongsRopes_FreakOut11:
	db "GFX_DonkeyKongsRopes_FreakOut11.bin"
GFX_DonkeyKongsRopes_FreakOut11End:
GFX_DonkeyKongsRopes_FreakOut12:
	db "GFX_DonkeyKongsRopes_FreakOut12.bin"
GFX_DonkeyKongsRopes_FreakOut12End:
GFX_DonkeyKongsRopes_FreakOut13:
	db "GFX_DonkeyKongsRopes_FreakOut13.bin"
GFX_DonkeyKongsRopes_FreakOut13End:
GFX_DonkeyKongsRopes_Hurt1:
	db "GFX_DonkeyKongsRopes_Hurt1.bin"
GFX_DonkeyKongsRopes_Hurt1End:
GFX_DonkeyKongsRopes_Hurt2:
	db "GFX_DonkeyKongsRopes_Hurt2.bin"
GFX_DonkeyKongsRopes_Hurt2End:
GFX_DonkeyKongsRopes_Hurt3:
	db "GFX_DonkeyKongsRopes_Hurt3.bin"
GFX_DonkeyKongsRopes_Hurt3End:
GFX_DonkeyKongsRopes_Hurt4:
	db "GFX_DonkeyKongsRopes_Hurt4.bin"
GFX_DonkeyKongsRopes_Hurt4End:
GFX_DonkeyKongsRopes_Hurt5:
	db "GFX_DonkeyKongsRopes_Hurt5.bin"
GFX_DonkeyKongsRopes_Hurt5End:
GFX_DonkeyKongsRopes_Hurt6:
	db "GFX_DonkeyKongsRopes_Hurt6.bin"
GFX_DonkeyKongsRopes_Hurt6End:
GFX_DonkeyKongsRopes_Hurt7:
	db "GFX_DonkeyKongsRopes_Hurt7.bin"
GFX_DonkeyKongsRopes_Hurt7End:
GFX_DonkeyKongsRopes_Hurt8:
	db "GFX_DonkeyKongsRopes_Hurt8.bin"
GFX_DonkeyKongsRopes_Hurt8End:
GFX_DonkeyKongsRopes_Hurt9:
	db "GFX_DonkeyKongsRopes_Hurt9.bin"
GFX_DonkeyKongsRopes_Hurt9End:
GFX_DonkeyKongsRopes_Hurt10:
	db "GFX_DonkeyKongsRopes_Hurt10.bin"
GFX_DonkeyKongsRopes_Hurt10End:
GFX_DonkeyKongsRopes_Hurt11:
	db "GFX_DonkeyKongsRopes_Hurt11.bin"
GFX_DonkeyKongsRopes_Hurt11End:
GFX_DonkeyKongsRopes_Hurt12:
	db "GFX_DonkeyKongsRopes_Hurt12.bin"
GFX_DonkeyKongsRopes_Hurt12End:
GFX_DonkeyKongsRopes_Struggle1:
	db "GFX_DonkeyKongsRopes_Struggle1.bin"
GFX_DonkeyKongsRopes_Struggle1End:
GFX_DonkeyKongsRopes_Struggle2:
	db "GFX_DonkeyKongsRopes_Struggle2.bin"
GFX_DonkeyKongsRopes_Struggle2End:
GFX_DonkeyKongsRopes_Struggle3:
	db "GFX_DonkeyKongsRopes_Struggle3.bin"
GFX_DonkeyKongsRopes_Struggle3End:
GFX_DonkeyKongsRopes_Struggle4:
	db "GFX_DonkeyKongsRopes_Struggle4.bin"
GFX_DonkeyKongsRopes_Struggle4End:
GFX_DonkeyKongsRopes_Struggle5:
	db "GFX_DonkeyKongsRopes_Struggle5.bin"
GFX_DonkeyKongsRopes_Struggle5End:
GFX_DonkeyKongsRopes_Struggle6:
	db "GFX_DonkeyKongsRopes_Struggle6.bin"
GFX_DonkeyKongsRopes_Struggle6End:
GFX_DonkeyKongsRopes_Struggle7:
	db "GFX_DonkeyKongsRopes_Struggle7.bin"
GFX_DonkeyKongsRopes_Struggle7End:
GFX_DonkeyKong_Fall1:
	db "GFX_DonkeyKong_Fall1.bin"
GFX_DonkeyKong_Fall1End:
GFX_DonkeyKong_Fall2:
	db "GFX_DonkeyKong_Fall2.bin"
GFX_DonkeyKong_Fall2End:
GFX_DonkeyKong_Fall3:
	db "GFX_DonkeyKong_Fall3.bin"
GFX_DonkeyKong_Fall3End:
GFX_DonkeyKong_Fall4:
	db "GFX_DonkeyKong_Fall4.bin"
GFX_DonkeyKong_Fall4End:
GFX_DonkeyKong_Punch1:
	db "GFX_DonkeyKong_Punch1.bin"
GFX_DonkeyKong_Punch1End:
GFX_DonkeyKong_Punch2:
	db "GFX_DonkeyKong_Punch2.bin"
GFX_DonkeyKong_Punch2End:
GFX_DonkeyKong_Punch3:
	db "GFX_DonkeyKong_Punch3.bin"
GFX_DonkeyKong_Punch3End:
GFX_DonkeyKong_Punch4:
	db "GFX_DonkeyKong_Punch4.bin"
GFX_DonkeyKong_Punch4End:
GFX_DonkeyKong_Punch5:
	db "GFX_DonkeyKong_Punch5.bin"
GFX_DonkeyKong_Punch5End:
GFX_DonkeyKong_Punch6:
	db "GFX_DonkeyKong_Punch6.bin"
GFX_DonkeyKong_Punch6End:
GFX_DonkeyKong_Punch7:
	db "GFX_DonkeyKong_Punch7.bin"
GFX_DonkeyKong_Punch7End:
GFX_DonkeyKong_Punch8:
	db "GFX_DonkeyKong_Punch8.bin"
GFX_DonkeyKong_Punch8End:
GFX_DonkeyKong_Punch9:
	db "GFX_DonkeyKong_Punch9.bin"
GFX_DonkeyKong_Punch9End:
GFX_DonkeyKong_Punch10:
	db "GFX_DonkeyKong_Punch10.bin"
GFX_DonkeyKong_Punch10End:
GFX_DonkeyKong_Punch11:
	db "GFX_DonkeyKong_Punch11.bin"
GFX_DonkeyKong_Punch11End:
GFX_DonkeyKong_Punch12:
	db "GFX_DonkeyKong_Punch12.bin"
GFX_DonkeyKong_Punch12End:
GFX_DonkeyKong_Punch13:
	db "GFX_DonkeyKong_Punch13.bin"
GFX_DonkeyKong_Punch13End:
GFX_KRool_CoveredInSeeweed1:
	db "GFX_KRool_CoveredInSeeweed1.bin"
GFX_KRool_CoveredInSeeweed1End:
GFX_KRool_CoveredInSeeweed2:
	db "GFX_KRool_CoveredInSeeweed2.bin"
GFX_KRool_CoveredInSeeweed2End:
GFX_KRool_CoveredInSeeweed3:
	db "GFX_KRool_CoveredInSeeweed3.bin"
GFX_KRool_CoveredInSeeweed3End:
GFX_KRoolGun_CoveredInSeeweed1:
	db "GFX_KRoolGun_CoveredInSeeweed1.bin"
GFX_KRoolGun_CoveredInSeeweed1End:
GFX_KRoolGun_CoveredInSeeweed2:
	db "GFX_KRoolGun_CoveredInSeeweed2.bin"
GFX_KRoolGun_CoveredInSeeweed2End:
GFX_KRoolGun_CoveredInSeeweed3:
	db "GFX_KRoolGun_CoveredInSeeweed3.bin"
GFX_KRoolGun_CoveredInSeeweed3End:
GFX_KRoolFish_Flop1:
	db "GFX_KRoolFish_Flop1.bin"
GFX_KRoolFish_Flop1End:
GFX_KRoolFish_Flop2:
	db "GFX_KRoolFish_Flop2.bin"
GFX_KRoolFish_Flop2End:
GFX_KRoolFish_Flop3:
	db "GFX_KRoolFish_Flop3.bin"
GFX_KRoolFish_Flop3End:
GFX_KRoolFish_Flop4:
	db "GFX_KRoolFish_Flop4.bin"
GFX_KRoolFish_Flop4End:
GFX_KRoolFish_Flop5:
	db "GFX_KRoolFish_Flop5.bin"
GFX_KRoolFish_Flop5End:
GFX_KRoolFish_Flop6:
	db "GFX_KRoolFish_Flop6.bin"
GFX_KRoolFish_Flop6End:
GFX_KRoolFish_Flop7:
	db "GFX_KRoolFish_Flop7.bin"
GFX_KRoolFish_Flop7End:
GFX_KRoolFish_Flop8:
	db "GFX_KRoolFish_Flop8.bin"
GFX_KRoolFish_Flop8End:
GFX_KRoolPuddle_Pose:
	db "GFX_KRoolPuddle_Pose.bin"
GFX_KRoolPuddle_PoseEnd:
GFX_KRool_FallIntoCore1:
	db "GFX_KRool_FallIntoCore1.bin"
GFX_KRool_FallIntoCore1End:
GFX_KRool_FallIntoCore2:
	db "GFX_KRool_FallIntoCore2.bin"
GFX_KRool_FallIntoCore2End:
GFX_MapKRoolSplash_Pose1:
	db "GFX_MapKRoolSplash_Pose1.bin"
GFX_MapKRoolSplash_Pose1End:
GFX_MapKRoolSplash_Pose2:
	db "GFX_MapKRoolSplash_Pose2.bin"
GFX_MapKRoolSplash_Pose2End:
GFX_MapKRoolSplash_Pose3:
	db "GFX_MapKRoolSplash_Pose3.bin"
GFX_MapKRoolSplash_Pose3End:
GFX_MapKRoolSplash_Pose4:
	db "GFX_MapKRoolSplash_Pose4.bin"
GFX_MapKRoolSplash_Pose4End:
GFX_MapKRoolSplash_Pose5:
	db "GFX_MapKRoolSplash_Pose5.bin"
GFX_MapKRoolSplash_Pose5End:
GFX_MapKRoolSplash_Pose6:
	db "GFX_MapKRoolSplash_Pose6.bin"
GFX_MapKRoolSplash_Pose6End:
GFX_MapKRoolSplash_Pose7:
	db "GFX_MapKRoolSplash_Pose7.bin"
GFX_MapKRoolSplash_Pose7End:
GFX_MapKRoolSplash_Pose8:
	db "GFX_MapKRoolSplash_Pose8.bin"
GFX_MapKRoolSplash_Pose8End:
GFX_MapKRool_ArmFlailing1:
	db "GFX_MapKRool_ArmFlailing1.bin"
GFX_MapKRool_ArmFlailing1End:
GFX_MapKRool_ArmFlailing2:
	db "GFX_MapKRool_ArmFlailing2.bin"
GFX_MapKRool_ArmFlailing2End:
GFX_MapKRool_ArmFlailing3:
	db "GFX_MapKRool_ArmFlailing3.bin"
GFX_MapKRool_ArmFlailing3End:
GFX_MapKRool_ArmFlailing4:
	db "GFX_MapKRool_ArmFlailing4.bin"
GFX_MapKRool_ArmFlailing4End:
GFX_Link_Pose1:
	db "GFX_Link_Pose1.bin"
GFX_Link_Pose1End:
GFX_Link_Pose2:
	db "GFX_Link_Pose2.bin"
GFX_Link_Pose2End:
GFX_Link_Pose3:
	db "GFX_Link_Pose3.bin"
GFX_Link_Pose3End:
GFX_Link_Pose4:
	db "GFX_Link_Pose4.bin"
GFX_Link_Pose4End:
GFX_Link_Pose5:
	db "GFX_Link_Pose5.bin"
GFX_Link_Pose5End:
GFX_Link_Pose6:
	db "GFX_Link_Pose6.bin"
GFX_Link_Pose6End:
GFX_Link_Pose7:
	db "GFX_Link_Pose7.bin"
GFX_Link_Pose7End:
GFX_Link_Pose8:
	db "GFX_Link_Pose8.bin"
GFX_Link_Pose8End:
GFX_Link_Pose9:
	db "GFX_Link_Pose9.bin"
GFX_Link_Pose9End:
GFX_Link_Pose10:
	db "GFX_Link_Pose10.bin"
GFX_Link_Pose10End:
GFX_Link_Pose11:
	db "GFX_Link_Pose11.bin"
GFX_Link_Pose11End:
GFX_Link_Pose12:
	db "GFX_Link_Pose12.bin"
GFX_Link_Pose12End:
GFX_Link_Pose13:
	db "GFX_Link_Pose13.bin"
GFX_Link_Pose13End:
GFX_Link_Pose14:
	db "GFX_Link_Pose14.bin"
GFX_Link_Pose14End:
GFX_Link_Pose15:
	db "GFX_Link_Pose15.bin"
GFX_Link_Pose15End:
GFX_Link_Pose16:
	db "GFX_Link_Pose16.bin"
GFX_Link_Pose16End:
GFX_GoodEnding_BottomHalfOfKrocodileIsland:
	db "GFX_GoodEnding_BottomHalfOfKrocodileIsland.bin"
GFX_GoodEnding_BottomHalfOfKrocodileIslandEnd:
GFX_GoodEnding_TopHalfOfKrocodileIsland:
	db "GFX_GoodEnding_TopHalfOfKrocodileIsland.bin"
GFX_GoodEnding_TopHalfOfKrocodileIslandEnd:
GFX_GoodEnding_EnergyBeam1:
	db "GFX_GoodEnding_EnergyBeam1.bin"
GFX_GoodEnding_EnergyBeam1End:
GFX_GoodEnding_EnergyBeam2:
	db "GFX_GoodEnding_EnergyBeam2.bin"
GFX_GoodEnding_EnergyBeam2End:
GFX_GoodEnding_EnergyBeam3:
	db "GFX_GoodEnding_EnergyBeam3.bin"
GFX_GoodEnding_EnergyBeam3End:
GFX_GoodEnding_EnergyBeam4:
	db "GFX_GoodEnding_EnergyBeam4.bin"
GFX_GoodEnding_EnergyBeam4End:
GFX_GoodEnding_EnergyBeam5:
	db "GFX_GoodEnding_EnergyBeam5.bin"
GFX_GoodEnding_EnergyBeam5End:
GFX_GoodEnding_DixiesHair1:
	db "GFX_GoodEnding_DixiesHair1.bin"
GFX_GoodEnding_DixiesHair1End:
GFX_GoodEnding_DixiesHair2:
	db "GFX_GoodEnding_DixiesHair2.bin"
GFX_GoodEnding_DixiesHair2End:
GFX_GoodEnding_DixiesHair3:
	db "GFX_GoodEnding_DixiesHair3.bin"
GFX_GoodEnding_DixiesHair3End:
GFX_GoodEnding_DixiesHair4:
	db "GFX_GoodEnding_DixiesHair4.bin"
GFX_GoodEnding_DixiesHair4End:
GFX_GoodEnding_DixiesHair5:
	db "GFX_GoodEnding_DixiesHair5.bin"
GFX_GoodEnding_DixiesHair5End:
GFX_GoodEnding_DixiesHair6:
	db "GFX_GoodEnding_DixiesHair6.bin"
GFX_GoodEnding_DixiesHair6End:
GFX_GoodEnding_DixiesHair7:
	db "GFX_GoodEnding_DixiesHair7.bin"
GFX_GoodEnding_DixiesHair7End:
GFX_GoodEnding_DixiesHair8:
	db "GFX_GoodEnding_DixiesHair8.bin"
GFX_GoodEnding_DixiesHair8End:
GFX_GoodEnding_KRoolsBoat1:
	db "GFX_GoodEnding_KRoolsBoat1.bin"
GFX_GoodEnding_KRoolsBoat1End:
GFX_GoodEnding_KRoolsBoat2:
	db "GFX_GoodEnding_KRoolsBoat2.bin"
GFX_GoodEnding_KRoolsBoat2End:
GFX_GoodEnding_KRoolsBoat3:
	db "GFX_GoodEnding_KRoolsBoat3.bin"
GFX_GoodEnding_KRoolsBoat3End:
GFX_GoodEnding_KRoolsBoat4:
	db "GFX_GoodEnding_KRoolsBoat4.bin"
GFX_GoodEnding_KRoolsBoat4End:
GFX_GoodEnding_KRoolsBoat5:
	db "GFX_GoodEnding_KRoolsBoat5.bin"
GFX_GoodEnding_KRoolsBoat5End:
GFX_GoodEnding_KRoolsBoat6:
	db "GFX_GoodEnding_KRoolsBoat6.bin"
GFX_GoodEnding_KRoolsBoat6End:
GFX_GoodEnding_KRoolsBoat7:
	db "GFX_GoodEnding_KRoolsBoat7.bin"
GFX_GoodEnding_KRoolsBoat7End:
GFX_GoodEnding_KRoolsBoat8:
	db "GFX_GoodEnding_KRoolsBoat8.bin"
GFX_GoodEnding_KRoolsBoat8End:
GFX_GoodEnding_KRoolsBoat9:
	db "GFX_GoodEnding_KRoolsBoat9.bin"
GFX_GoodEnding_KRoolsBoat9End:
GFX_GoodEnding_KRoolsBoat10:
	db "GFX_GoodEnding_KRoolsBoat10.bin"
GFX_GoodEnding_KRoolsBoat10End:
GFX_GoodEnding_KRoolsBoat11:
	db "GFX_GoodEnding_KRoolsBoat11.bin"
GFX_GoodEnding_KRoolsBoat11End:
GFX_GoodEnding_KRoolsBoat12:
	db "GFX_GoodEnding_KRoolsBoat12.bin"
GFX_GoodEnding_KRoolsBoat12End:
GFX_GoodEnding_KRoolsBoat13:
	db "GFX_GoodEnding_KRoolsBoat13.bin"
GFX_GoodEnding_KRoolsBoat13End:
GFX_GoodEnding_KRoolsBoat14:
	db "GFX_GoodEnding_KRoolsBoat14.bin"
GFX_GoodEnding_KRoolsBoat14End:
GFX_GoodEnding_KRoolsBoat15:
	db "GFX_GoodEnding_KRoolsBoat15.bin"
GFX_GoodEnding_KRoolsBoat15End:
GFX_GoodEnding_KRoolsBoat16:
	db "GFX_GoodEnding_KRoolsBoat16.bin"
GFX_GoodEnding_KRoolsBoat16End:
GFX_GoodEnding_KRoolsBoat17:
	db "GFX_GoodEnding_KRoolsBoat17.bin"
GFX_GoodEnding_KRoolsBoat17End:
GFX_GoodEnding_KRoolsBoat18:
	db "GFX_GoodEnding_KRoolsBoat18.bin"
GFX_GoodEnding_KRoolsBoat18End:

;--------------------------------------------------------------------

GFX_Layer1_LostWorldMap:
	db "GFX_Layer1_LostWorldMap.bin"
GFX_Layer1_LostWorldMapEnd:
GFX_Layer1_KongKollage:
	db "GFX_Layer1_KongKollage.bin"
GFX_Layer1_KongKollageEnd:
GFX_Layer3_Level_BeeHive:
	db "GFX_Layer3_Level_BeeHive.bin"
GFX_Layer3_Level_BeeHiveEnd:
GFX_Layer2_Level_Forest:
	db "GFX_Layer2_Level_Forest.bin"
GFX_Layer2_Level_ForestEnd:
GFX_Layer1_Level_ShipHold:
	db "GFX_Layer1_Level_ShipHold.bin"
GFX_Layer1_Level_ShipHoldEnd:
GFX_Layer2_Level_BeeHive:
	db "GFX_Layer2_Level_BeeHive.bin"
GFX_Layer2_Level_BeeHiveEnd:
GFX_Layer1_Level_ShipDeck:
	db "GFX_Layer1_Level_ShipDeck.bin"
GFX_Layer1_Level_ShipDeckEnd:
GFX_Layer1_Level_Rigging:
	db "GFX_Layer1_Level_Rigging.bin"
GFX_Layer1_Level_RiggingEnd:
GFX_Layer1_Level_Rollercoaster:
	db "GFX_Layer1_Level_Rollercoaster.bin"
GFX_Layer1_Level_RollercoasterEnd:
GFX_FGBG_Level_LavaCave:
	db "GFX_FGBG_Level_LavaCave.bin"
GFX_FGBG_Level_LavaCaveEnd:
GFX_Layer1_Level_Mine:
	db "GFX_Layer1_Level_Mine.bin"
GFX_Layer1_Level_MineEnd:
GFX_Layer2_Level_Bayou:
	db "GFX_Layer2_Level_Bayou.bin"
GFX_Layer2_Level_BayouEnd:
GFX_Layer1_Level_Brambles:
	db "GFX_Layer1_Level_Brambles.bin"
GFX_Layer1_Level_BramblesEnd:
GFX_Layer1_Level_KrocodileKore:
	db "GFX_Layer1_Level_KrocodileKore.bin"
GFX_Layer1_Level_KrocodileKoreEnd:
GFX_Layer1_Level_KRoolDuel:
	db "GFX_Layer1_Level_KRoolDuel.bin"
GFX_Layer1_Level_KRoolDuelEnd:
GFX_Layer1_Level_IceCave:
	db "GFX_Layer1_Level_IceCave.bin"
GFX_Layer1_Level_IceCaveEnd:
GFX_FGBG_Level_Jungle:
	db "GFX_FGBG_Level_Jungle.bin"
GFX_FGBG_Level_JungleEnd:
GFX_Layer1_GangplankGalleonMap:
	db "GFX_Layer1_GangplankGalleonMap.bin"
GFX_Layer1_GangplankGalleonMapEnd:
GFX_Layer1_CrocodileCauldronMap:
	db "GFX_Layer1_CrocodileCauldronMap.bin"
GFX_Layer1_CrocodileCauldronMapEnd:
GFX_Layer1_KremQuayMap:
	db "GFX_Layer1_KremQuayMap.bin"
GFX_Layer1_KremQuayMapEnd:
GFX_Layer1_KrazyKremlandMap1:
	db "GFX_Layer1_KrazyKremlandMap1.bin"
GFX_Layer1_KrazyKremlandMap1End:
GFX_Layer1_GloomyGlutchMap:
	db "GFX_Layer1_GloomyGlutchMap.bin"
GFX_Layer1_GloomyGlutchMapEnd:
GFX_Layer1_TheFlyingKrocMap:
	db "GFX_Layer1_TheFlyingKrocMap.bin"
GFX_Layer1_TheFlyingKrocMapEnd:
GFX_Layer1_KrazyKremlandMap2:
	db "GFX_Layer1_KrazyKremlandMap2.bin"
GFX_Layer1_KrazyKremlandMap2End:
GFX_Layer2_Level_HauntedHall:
	db "GFX_Layer2_Level_HauntedHall.bin"
GFX_Layer2_Level_HauntedHallEnd:
GFX_Layer2_Level_IceCave:
	db "GFX_Layer2_Level_IceCave.bin"
GFX_Layer2_Level_IceCaveEnd:
GFX_Layer3_Level_Jungle:
	db "GFX_Layer3_Level_Jungle.bin"
GFX_Layer3_Level_JungleEnd:
GFX_Layer3_Level_HauntedHall:
	db "GFX_Layer3_Level_HauntedHall.bin"
GFX_Layer3_Level_HauntedHallEnd:
GFX_Layer2_Level_ShipHold:
	db "GFX_Layer2_Level_ShipHold.bin"
GFX_Layer2_Level_ShipHoldEnd:
GFX_Layer3_WorldMap:
	db "GFX_Layer3_WorldMap.bin"
GFX_Layer3_WorldMapEnd:
GFX_Layer2_WorldMap:
	db "GFX_Layer2_WorldMap.bin"
GFX_Layer2_WorldMapEnd:
GFX_Layer2_Level_ShipDeck:
	db "GFX_Layer2_Level_ShipDeck.bin"
GFX_Layer2_Level_ShipDeckEnd:
GFX_Layer3_Water:
	db "GFX_Layer3_Water.bin"
GFX_Layer3_WaterEnd:
GFX_Layer2_Level_Rigging:
	db "GFX_Layer2_Level_Rigging.bin"
GFX_Layer2_Level_RiggingEnd:
GFX_Layer2_Level_Rollercoaster:
	db "GFX_Layer2_Level_Rollercoaster.bin"
GFX_Layer2_Level_RollercoasterEnd:
GFX_Layer1_Level_Bayou:
	db "GFX_Layer1_Level_Bayou.bin"
GFX_Layer1_Level_BayouEnd:
GFX_Layer3_Level_Bayou:
	db "GFX_Layer3_Level_Bayou.bin"
GFX_Layer3_Level_BayouEnd:
GFX_Layer1_Level_KaptainsKabin:
	db "GFX_Layer1_Level_KaptainsKabin.bin"
GFX_Layer1_Level_KaptainsKabinEnd:
GFX_Layer3_Level_Rigging:
	db "GFX_Layer3_Level_Rigging.bin"
GFX_Layer3_Level_RiggingEnd:
GFX_Layer1_Level_Forest:
	db "GFX_Layer1_Level_Forest.bin"
GFX_Layer1_Level_ForestEnd:
GFX_Layer3_Level_Brambles:
	db "GFX_Layer3_Level_Brambles.bin"
GFX_Layer3_Level_BramblesEnd:
GFX_Layer2_Level_Brambles:
	db "GFX_Layer2_Level_Brambles.bin"
GFX_Layer2_Level_BramblesEnd:
GFX_Layer3_Level_LavaCave:
	db "GFX_Layer3_Level_LavaCave.bin"
GFX_Layer3_Level_LavaCaveEnd:
GFX_Layer2_Level_KrocodileKore:
	db "GFX_Layer2_Level_KrocodileKore.bin"
GFX_Layer2_Level_KrocodileKoreEnd:
GFX_Layer1_WorldMap:
	db "GFX_Layer1_WorldMap.bin"
GFX_Layer1_WorldMapEnd:
GFX_Layer3_NintendoLogoShine:
	db "GFX_Layer3_NintendoLogoShine.bin"
GFX_Layer3_NintendoLogoShineEnd:
GFX_Layer1_Level_BeeHive:
	db "GFX_Layer1_Level_BeeHive.bin"
GFX_Layer1_Level_BeeHiveEnd:
GFX_Layer3_CastleCrushFloor:
	db "GFX_Layer3_CastleCrushFloor.bin"
GFX_Layer3_CastleCrushFloorEnd:
GFX_Layer3_LavaSteam:
	db "GFX_Layer3_LavaSteam.bin"
GFX_Layer3_LavaSteamEnd:
GFX_Layer1_KlubbasKiosk:
	db "GFX_Layer1_KlubbasKiosk.bin"
GFX_Layer1_KlubbasKioskEnd:
GFX_Layer1_FunkysFlightsII:
	db "GFX_Layer1_FunkysFlightsII.bin"
GFX_Layer1_FunkysFlightsIIEnd:
GFX_Layer1_MonkeyMuseum:
	db "GFX_Layer1_MonkeyMuseum.bin"
GFX_Layer1_MonkeyMuseumEnd:
GFX_Layer1_PlayerSelectMenu:
	db "GFX_Layer1_PlayerSelectMenu.bin"
GFX_Layer1_PlayerSelectMenuEnd:
GFX_Layer2_FileSelectBG:
	db "GFX_Layer2_FileSelectBG.bin"
GFX_Layer2_FileSelectBGEnd:
GFX_Layer1_TitleScreen:
	db "GFX_Layer1_TitleScreen.bin"
GFX_Layer1_TitleScreenEnd:
GFX_Layer1_FileSelectText:
	db "GFX_Layer1_FileSelectText.bin"
GFX_Layer1_FileSelectTextEnd:
GFX_Layer1_BonusRoomScreen_CollectTheStars:
	db "GFX_Layer1_BonusRoomScreen_CollectTheStars.bin"
GFX_Layer1_BonusRoomScreen_CollectTheStarsEnd:
GFX_Layer1_BonusRoomScreen_FindTheToken:
	db "GFX_Layer1_BonusRoomScreen_FindTheToken.bin"
GFX_Layer1_BonusRoomScreen_FindTheTokenEnd:
GFX_Layer1_BonusRoomScreen_DestroyThemAll:
	db "GFX_Layer1_BonusRoomScreen_DestroyThemAll.bin"
GFX_Layer1_BonusRoomScreen_DestroyThemAllEnd:
GFX_Layer1_SwankysBonusBonanza:
	db "GFX_Layer1_SwankysBonusBonanza.bin"
GFX_Layer1_SwankysBonusBonanzaEnd:
GFX_Layer1_YeScurvyKongKrew:
	db "GFX_Layer1_YeScurvyKongKrew.bin"
GFX_Layer1_YeScurvyKongKrewEnd:
GFX_Layer2_GameOverScreen:
	db "GFX_Layer2_GameOverScreen.bin"
GFX_Layer2_GameOverScreenEnd:
GFX_Layer1_NintendoLogo:
	db "GFX_Layer1_NintendoLogo.bin"
GFX_Layer1_NintendoLogoEnd:
GFX_Layer1_WireframeRareLogo:
	db "GFX_Layer1_WireframeRareLogo.bin"
GFX_Layer1_WireframeRareLogoEnd:
GFX_Layer2_Level_Mine:
	db "GFX_Layer2_Level_Mine.bin"
GFX_Layer2_Level_MineEnd:
GFX_Layer1_CrankysVideoGameHeroesScreen:
	db "GFX_Layer1_CrankysVideoGameHeroesScreen.bin"
GFX_Layer1_CrankysVideoGameHeroesScreenEnd:
GFX_Layer1_GoodEndingScreen:
	db "GFX_Layer1_GoodEndingScreen.bin"
GFX_Layer1_GoodEndingScreenEnd:
GFX_Layer2_LargeRareLogo:
	db "GFX_Layer2_LargeRareLogo.bin"
GFX_Layer2_LargeRareLogoEnd:
GFX_Layer1_KRoolsKeepMap:
	db "GFX_Layer1_KRoolsKeepMap.bin"
GFX_Layer1_KRoolsKeepMapEnd:
GFX_Layer2_GoodEndingScreen:
	db "GFX_Layer2_GoodEndingScreen.bin"
GFX_Layer2_GoodEndingScreenEnd:
GFX_Mode7_RaraLogo:
	db "GFX_Mode7_RaraLogo.bin"
GFX_Mode7_RaraLogoEnd:

;--------------------------------------------------------------------

TM_Layer1_KongKollage:
	db "Layer1_KongKollage.bin"
TM_Layer1_KongKollageEnd:
TM_Layer1_GangplankGalleonMap:
	db "Layer1_GangplankGalleonMap.bin"
TM_Layer1_GangplankGalleonMapEnd:
TM_Layer1_KrazyKremlandMap1:
	db "Layer1_KrazyKremlandMap1.bin"
TM_Layer1_KrazyKremlandMap1End:
TM_Layer1_CrocodileCauldronMap:
	db "Layer1_CrocodileCauldronMap.bin"
TM_Layer1_CrocodileCauldronMapEnd:
TM_Layer1_TheFlyingKrocMap:
	db "Layer1_TheFlyingKrocMap.bin"
TM_Layer1_TheFlyingKrocMapEnd:
TM_Layer2_LostWorldMap:
	db "Layer2_LostWorldMap.bin"
TM_Layer2_LostWorldMapEnd:
TM_Layer3_Level_LavaCave:
	db "Layer3_Level_LavaCave.bin"
TM_Layer3_Level_LavaCaveEnd:
TM_Layer3_CastleCrushFloor:
	db "Layer3_CastleCrushFloor.bin"
TM_Layer3_CastleCrushFloorEnd:
TM_UnknownTilemap1:
	db "UnknownTilemap1.bin"
TM_UnknownTilemap1End:
TM_Layer1_WebWoodsFog:
	db "Layer1_WebWoodsFog.bin"
TM_Layer1_WebWoodsFogEnd:
TM_Layer1_KlubbasKiosk:
	db "Layer1_KlubbasKiosk.bin"
TM_Layer1_KlubbasKioskEnd:
TM_Layer3_FastRain:
	db "Layer3_FastRain.bin"
TM_Layer3_FastRainEnd:
TM_Layer2_Level_KrocodileKore:
	db "Layer2_Level_KrocodileKore.bin"
TM_Layer2_Level_KrocodileKoreEnd:
TM_Layer3_ShipDeck:
	db "Layer3_ShipDeck.bin"
TM_Layer3_ShipDeckEnd:
TM_Mode7_RareLogo:
	db "Mode7_RareLogo.bin"
TM_Mode7_RareLogoEnd:
TM_Layer1_TheEnd:
	db "Layer1_TheEnd.bin"
TM_Layer1_TheEndEnd:
TM_Layer1_CopyrightScreen:
	db "Layer1_CopyrightScreen.bin"
TM_Layer1_CopyrightScreenEnd:
TM_Layer2_GameOverScreen:
	db "Layer2_GameOverScreen.bin"
TM_Layer2_GameOverScreenEnd:
TM_Layer1_GameOverScreen:
	db "Layer1_GameOverScreen.bin"
TM_Layer1_GameOverScreenEnd:

;--------------------------------------------------------------------

TM_Layer3_Level_Water:
	db "Layer3_Level_Water.bin"
TM_Layer3_Level_WaterEnd:
TM_Layer2_Level_ShipHold_3DLedgeLeftHalf:
	db "Layer2_Level_ShipHold_3DLedgeLeftHalf.bin"
TM_Layer2_Level_ShipHold_3DLedgeLeftHalfEnd:
TM_Layer1_FunkysFlightsII:
	db "Layer1_FunkysFlightsII.bin"
TM_Layer1_FunkysFlightsIIEnd:
TM_Layer1_KremQuayMapRightHalf:
	db "Layer1_KremQuayMapRightHalf.bin"
TM_Layer1_KremQuayMapRightHalfEnd:
TM_Layer1_SwankysBonusBonanza:
	db "Layer1_SwankysBonusBonanza.bin"
TM_Layer1_SwankysBonusBonanzaEnd:
TM_Layer2_Level_ShipHold_3DLedgeRightHalf:
	db "Layer2_Level_ShipHold_3DLedgeRightHalf.bin"
TM_Layer2_Level_ShipHold_3DLedgeRightHalfEnd:
TM_Layer2_Level_ShipDeck:
	db "Layer2_Level_ShipDeck.bin"
TM_Layer2_Level_ShipDeckEnd:
TM_Layer1_Level_KaptainsKabin:
	db "Layer1_Level_KaptainsKabin.bin"
TM_Layer1_Level_KaptainsKabinEnd:
TM_Layer3_Level_Bayou:
	db "Layer3_Level_Bayou.bin"
TM_Layer3_Level_BayouEnd:
TM_Layer2_Level_ShipHold_BackwallRightHalf:
	db "Layer2_Level_ShipHold_BackwallRightHalf.bin"
TM_Layer2_Level_ShipHold_BackwallRightHalfEnd:
TM_Layer2_Level_Rigging:
	db "Layer2_Level_Rigging.bin"
TM_Layer2_Level_RiggingEnd:
TM_Layer2_Level_ShipHold_BackwallLeftHalf:
	db "Layer2_Level_ShipHold_BackwallLeftHalf.bin"
TM_Layer2_Level_ShipHold_BackwallLeftHalfEnd:
TM_Layer2_Level_HauntedHall:
	db "Layer2_Level_HauntedHall.bin"
TM_Layer2_Level_HauntedHallEnd:
TM_Layer1_Level_BayouLeftHalf:
	db "Layer1_Level_BayouLeftHalf.bin"
TM_Layer1_Level_BayouLeftHalfEnd:
TM_Layer2_Level_Rollercoaster:
	db "Layer2_Level_Rollercoaster.bin"
TM_Layer2_Level_RollercoasterEnd:
TM_Layer1_Level_Forest:
	db "Layer1_Level_Forest.bin"
TM_Layer1_Level_ForestEnd:
TM_Layer3_Level_Rigging:
	db "Layer3_Level_Rigging.bin"
TM_Layer3_Level_RiggingEnd:
TM_Layer2_Level_Mine:
	db "Layer2_Level_Mine.bin"
TM_Layer2_Level_MineEnd:
TM_Layer3_Level_BeeHive:
	db "Layer3_Level_BeeHive.bin"
TM_Layer3_Level_BeeHiveEnd:
TM_Layer3_Level_Forest:
	db "Layer3_Level_Forest.bin"
TM_Layer3_Level_ForestEnd:
TM_Layer1_KremQuayMapLeftHalf:
	db "Layer1_KremQuayMapLeftHalf.bin"
TM_Layer1_KremQuayMapLeftHalfEnd:
TM_Layer1_Level_BeeHive:
	db "Layer1_Level_BeeHive.bin"
TM_Layer1_Level_BeeHiveEnd:
TM_Layer3_NintendoLogoShine:
	db "Layer3_NintendoLogoShine.bin"
TM_Layer3_NintendoLogoShineEnd:
TM_Layer1_KrazyKremlandMap2:
	db "Layer1_KrazyKremlandMap2.bin"
TM_Layer1_KrazyKremlandMap2End:
TM_Layer1_Level_BayouRightHalf:
	db "Layer1_Level_BayouRightHalf.bin"
TM_Layer1_Level_BayouRightHalfEnd:
TM_Layer3_Level_IceCave:
	db "Layer3_Level_IceCave.bin"
TM_Layer3_Level_IceCaveEnd:
TM_Layer2_Level_IceCave:
	db "Layer2_Level_IceCave.bin"
TM_Layer2_Level_IceCaveEnd:
TM_Layer1_WorldMap:
	db "Layer1_WorldMap.bin"
TM_Layer1_WorldMapEnd:
TM_Layer3_Level_Brambles:
	db "Layer3_Level_Brambles.bin"
TM_Layer3_Level_BramblesEnd:
TM_Layer1_GloomyGlutchMap:
	db "Layer1_GloomyGlutchMap.bin"
TM_Layer1_GloomyGlutchMapEnd:
TM_Layer1_KRoolsKeepMap:
	db "Layer1_KRoolsKeepMap.bin"
TM_Layer1_KRoolsKeepMapEnd:
TM_Layer1_FallingLeaves:
	db "Layer1_FallingLeaves.bin"
TM_Layer1_FallingLeavesEnd:
TM_Layer3_Level_HauntedHall:
	db "Layer3_Level_HauntedHall.bin"
TM_Layer3_Level_HauntedHallEnd:
TM_Layer1_MonkeyMuseum:
	db "Layer1_MonkeyMuseum.bin"
TM_Layer1_MonkeyMuseumEnd:
TM_Layer1_PlayerSelectMenu:
	db "Layer1_PlayerSelectMenu.bin"
TM_Layer1_PlayerSelectMenuEnd:
TM_Layer1_MusicTestOption:
	db "Layer1_MusicTestOption.bin"
TM_Layer1_MusicTestOptionEnd:
TM_Layer1_CheatModeOption:
	db "Layer1_CheatModeOption.bin"
TM_Layer1_CheatModeOptionEnd:
TM_Layer2_FileSelectBG:
	db "Layer2_FileSelectBG.bin"
TM_Layer2_FileSelectBGEnd:
TM_Layer1_CrankysVideoGameHeroesScreen:
	db "Layer1_CrankysVideoGameHeroesScreen.bin"
TM_Layer1_CrankysVideoGameHeroesScreenEnd:
TM_Layer1_TitleScreen:
	db "Layer1_TitleScreen.bin"
TM_Layer1_TitleScreenEnd:
TM_Layer3_WindyWellLeaves:
	db "Layer3_WindyWellLeaves.bin"
TM_Layer3_WindyWellLeavesEnd:
TM_Layer1_BonusRoomScreen_FindTheToken:
	db "Layer1_BonusRoomScreen_FindTheToken.bin"
TM_Layer1_BonusRoomScreen_FindTheTokenEnd:
TM_Layer1_BonusRoomScreen_DestroyThemAll:
	db "Layer1_BonusRoomScreen_DestroyThemAll.bin"
TM_Layer1_BonusRoomScreen_DestroyThemAllEnd:
TM_Layer1_BonusRoomScreen_CollectTheStars:
	db "Layer1_BonusRoomScreen_CollectTheStars.bin"
TM_Layer1_BonusRoomScreen_CollectTheStarsEnd:
TM_Layer3_IrregularityScreenText:
	db "Layer3_IrregularityScreenText.bin"
TM_Layer3_IrregularityScreenTextEnd:
TM_Layer3_CopyDetectionScreenText:
	db "Layer3_CopyDetectionScreenText.bin"
TM_Layer3_CopyDetectionScreenTextEnd:
TM_Layer3_RegionLockoutScreenText:
	db "Layer3_RegionLockoutScreenText.bin"
TM_Layer3_RegionLockoutScreenTextEnd:
TM_Layer1_YeScurvyKongKrew:
	db "Layer1_YeScurvyKongKrew.bin"
TM_Layer1_YeScurvyKongKrewEnd:
TM_Layer3_Level_Jungle:
	db "Layer3_Level_Jungle.bin"
TM_Layer3_Level_JungleEnd:
TM_Layer3_WorldMap:
	db "Layer3_WorldMap.bin"
TM_Layer3_WorldMapEnd:
TM_Layer2_WorldMap:
	db "Layer2_WorldMap.bin"
TM_Layer2_WorldMapEnd:
TM_Layer2_LargeRareLogo:
	db "Layer2_LargeRareLogo.bin"
TM_Layer2_LargeRareLogoEnd:
TM_Layer1_NintendoLogo:
	db "Layer1_NintendoLogo.bin"
TM_Layer1_NintendoLogoEnd:
TM_Layer1_WireframeRareLogo:
	db "Layer1_WireframeRareLogo.bin"
TM_Layer1_WireframeRareLogoEnd:
TM_Layer1_GoodEndingScreen:
	db "Layer1_GoodEndingScreen.bin"
TM_Layer1_GoodEndingScreenEnd:
TM_Layer2_Level_Brambles:
	db "Layer2_Level_Brambles.bin"
TM_Layer2_Level_BramblesEnd:
TM_Layer1_SmallRareLogo:
	db "Layer1_SmallRareLogo.bin"
TM_Layer1_SmallRareLogoEnd:
TM_Layer2_GoodEndingScreen:
	db "Layer2_GoodEndingScreen.bin"
TM_Layer2_GoodEndingScreenEnd:
TM_Layer1_LostWorldMap:
	db "Layer1_LostWorldMap.bin"
TM_Layer1_LostWorldMapEnd:

;--------------------------------------------------------------------

M32_Layer1_Level_Forest:
	db "Layer1_Level_Forest.bin"
M32_Layer1_Level_ForestEnd:
M32_Layer1_Level_ShipHold:
	db "Layer1_Level_ShipHold.bin"
M32_Layer1_Level_ShipHoldEnd:
M32_Layer2_Level_BeeHive:
	db "Layer2_Level_BeeHive.bin"
M32_Layer2_Level_BeeHiveEnd:
M32_Layer1_Level_ShipDeck:
	db "Layer1_Level_ShipDeck.bin"
M32_Layer1_Level_ShipDeckEnd:
M32_Layer1_Level_Rigging:
	db "Layer1_Level_Rigging.bin"
M32_Layer1_Level_RiggingEnd:
M32_Layer1_Level_Rollercoaster:
	db "Layer1_Level_Rollercoaster.bin"
M32_Layer1_Level_RollercoasterEnd:
M32_FGBG_Level_LavaCave:
	db "FGBG_Level_LavaCave.bin"
M32_FGBG_Level_LavaCaveEnd:
M32_Layer1_Level_Mine:
	db "Layer1_Level_Mine.bin"
M32_Layer1_Level_MineEnd:
M32_Layer2_Level_Bayou:
	db "Layer2_Level_Bayou.bin"
M32_Layer2_Level_BayouEnd:
M32_Layer2_Level_Brambles:
	db "Layer2_Level_Brambles.bin"
M32_Layer2_Level_BramblesEnd:
M32_Layer2_Level_Castle:
	db "Layer2_Level_Castle.bin"
M32_Layer2_Level_CastleEnd:
M32_Layer1_Level_KrocodileKore:
	db "Layer1_Level_KrocodileKore.bin"
M32_Layer1_Level_KrocodileKoreEnd:
M32_Layer1_Level_KRoolDuel:
	db "Layer1_Level_KRoolDuel.bin"
M32_Layer1_Level_KRoolDuelEnd:
M32_Layer1_Level_IceCave:
	db "Layer1_Level_IceCave.bin"
M32_Layer1_Level_IceCaveEnd:
M32_FGBG_Level_Jungle:
	db "FGBG_Level_Jungle.bin"
M32_FGBG_Level_JungleEnd:

;--------------------------------------------------------------------

ForestLevels:
	db "ForestLevels.bin"
ForestLevelsEnd:
ShipHoldLevels:
	db "ShipHoldLevels.bin"
ShipHoldLevelsEnd:
BeeHiveLevels1:
	db "BeeHiveLevels1.bin"
BeeHiveLevels1End:
BeeHiveLevels2:
	db "BeeHiveLevels2.bin"
BeeHiveLevels2End:
ShipDeckLevels:
	db "ShipDeckLevels.bin"
ShipDeckLevelsEnd:
RiggingLevels:
	db "RiggingLevels.bin"
RiggingLevelsEnd:
RollercoasterLevels:
	db "RollercoasterLevels.bin"
RollercoasterLevelsEnd:
HauntedHallLevels:
	db "HauntedHallLevels.bin"
HauntedHallLevelsEnd:
LavaCaveLevels:
	db "LavaCaveLevels.bin"
LavaCaveLevelsEnd:
MineLevels:
	db "MineLevels.bin"
MineLevelsEnd:
BayouLevels:
	db "BayouLevels.bin"
BayouLevelsEnd:
BrambleLevels:
	db "BrambleLevels.bin"
BrambleLevelsEnd:
UnknownLevels:
	db "UnknownLevels.bin"
UnknownLevelsEnd:
CastleLevels:
	db "CastleLevels.bin"
CastleLevelsEnd:
KrocodileKore:
	db "KrocodileKore.bin"
KrocodileKoreEnd:
KRoolDuel:
	db "KRoolDuel.bin"
KRoolDuelEnd:
IceCaveLevels1:
	db "IceCaveLevels1.bin"
IceCaveLevels1End:
IceCaveLevels2:
	db "IceCaveLevels2.bin"
IceCaveLevels2End:
JungleLevels:
	db "JungleLevels.bin"
JungleLevelsEnd:

;--------------------------------------------------------------------

SPR_BetaWebWoods_Main:
	db "BetaWebWoods_Main.bin"
SPR_BetaWebWoods_MainEnd:
SPR_GlimmersGalleon_Main:
	db "GlimmersGalleon_Main.bin"
SPR_GlimmersGalleon_MainEnd:
SPR_RambiRumble_Main:
	db "RambiRumble_Main.bin"
SPR_RambiRumble_MainEnd:
SPR_PiratePanic_Main:
	db "PiratePanic_Main.bin"
SPR_PiratePanic_MainEnd:
SPR_GangplankGalley_Main:
	db "GangplankGalley_Main.bin"
SPR_GangplankGalley_MainEnd:
SPR_RattleBattle_Main:
	db "RattleBattle_Main.bin"
SPR_RattleBattle_MainEnd:
SPR_GlimmersGalleon_Exit:
	db "GlimmersGalleon_Exit.bin"
SPR_GlimmersGalleon_ExitEnd:
SPR_HotHeadHop_Main:
	db "HotHeadHop_Main.bin"
SPR_HotHeadHop_MainEnd:
SPR_RedHotRide_Main:
	db "RedHotRide_Main.bin"
SPR_RedHotRide_MainEnd:
SPR_KrowsNest_Main:
	db "KrowsNest_Main.bin"
SPR_KrowsNest_MainEnd:
SPR_SlimbClimb_Main:
	db "SlimbClimb_Main.bin"
SPR_SlimbClimb_MainEnd:
SPR_TopsailTrouble_Main:
	db "TopsailTrouble_Main.bin"
SPR_TopsailTrouble_MainEnd:
SPR_MainbraceMayhem_Main:
	db "MainbraceMayhem_Main.bin"
SPR_MainbraceMayhem_MainEnd:
SPR_KreepyKrow_Main:
	db "KreepyKrow_Main.bin"
SPR_KreepyKrow_MainEnd:
SPR_TargetTerror_Main:
	db "TargetTerror_Main.bin"
SPR_TargetTerror_MainEnd:
SPR_RicketyRace_Main:
	db "RicketyRace_Main.bin"
SPR_RicketyRace_MainEnd:
SPR_HauntedHall_Main:
	db "HauntedHall_Main.bin"
SPR_HauntedHall_MainEnd:
SPR_HornetHole_Main:
	db "HornetHole_Main.bin"
SPR_HornetHole_MainEnd:
SPR_RambiRumble_RambiRoom:
	db "RambiRumble_RambiRoom.bin"
SPR_RambiRumble_RambiRoomEnd:
SPR_ParrotChutePanic_Main:
	db "ParrotChutePanic_Main.bin"
SPR_ParrotChutePanic_MainEnd:
SPR_LavaLagoon_Main:
	db "LavaLagoon_Main.bin"
SPR_LavaLagoon_MainEnd:
SPR_LockjawsLocker_Main:
	db "LockjawsLocker_Main.bin"
SPR_LockjawsLocker_MainEnd:
SPR_FieryFurnace_Main:
	db "FieryFurnace_Main.bin"
SPR_FieryFurnace_MainEnd:
SPR_WebWoods_Main:
	db "WebWoods_Main.bin"
SPR_WebWoods_MainEnd:
SPR_GustyGlade_Main:
	db "GustyGlade_Main.bin"
SPR_GustyGlade_MainEnd:
SPR_GhostlyGrove_Main:
	db "GhostlyGrove_Main.bin"
SPR_GhostlyGrove_MainEnd:
SPR_TopsailTrouble_Warp:
	db "TopsailTrouble_Warp.bin"
SPR_TopsailTrouble_WarpEnd:
SPR_PiratePanic_KaptainsKabin:
	db "PiratePanic_KaptainsKabin.bin"
SPR_PiratePanic_KaptainsKabinEnd:
SPR_HotHeadHop_Bonus2:
	db "HotHeadHop_Bonus2.bin"
SPR_HotHeadHop_Bonus2End:
SPR_PiratePanic_Warp:
	db "PiratePanic_Warp.bin"
SPR_PiratePanic_WarpEnd:
SPR_TargetTerror_Exit:
	db "TargetTerror_Exit.bin"
SPR_TargetTerror_ExitEnd:
SPR_UnusedForestBananaCache:
	db "UnusedForestBananaCache.bin"
SPR_UnusedForestBananaCacheEnd:
SPR_MainbraceMayhem_Warp:
	db "MainbraceMayhem_Warp.bin"
SPR_MainbraceMayhem_WarpEnd:
SPR_KleeversKiln_Main:
	db "KleeversKiln_Main.bin"
SPR_KleeversKiln_MainEnd:
SPR_RattleBattle_RattlyRoom:
	db "RattleBattle_RattlyRoom.bin"
SPR_RattleBattle_RattlyRoomEnd:
SPR_WindyWell_Main:
	db "WindyWell_Main.bin"
SPR_WindyWell_MainEnd:
SPR_SquawksShaft_Main:
	db "SquawksShaft_Main.bin"
SPR_SquawksShaft_MainEnd:
SPR_KannonsKlaim_Main:
	db "KannonsKlaim_Main.bin"
SPR_KannonsKlaim_MainEnd:
SPR_ParrotChutePanic_RareLogoRoom:
	db "ParrotChutePanic_RareLogoRoom.bin"
SPR_ParrotChutePanic_RareLogoRoomEnd:
SPR_KannonsKlaim_Warp:
	db "KannonsKlaim_Warp.bin"
SPR_KannonsKlaim_WarpEnd:
SPR_BarrelBayou_Main:
	db "BarrelBayou_Main.bin"
SPR_BarrelBayou_MainEnd:
SPR_KrockheadKlamber_Main:
	db "KrockheadKlamber_Main.bin"
SPR_KrockheadKlamber_MainEnd:
SPR_WebWoods_SquitterRoom:
	db "WebWoods_SquitterRoom.bin"
SPR_WebWoods_SquitterRoomEnd:
SPR_BarrelBayou_UnusedWarp:
	db "BarrelBayou_UnusedWarp.bin"
SPR_BarrelBayou_UnusedWarpEnd:
SPR_MudholeMarsh_Main:
	db "MudholeMarsh_Main.bin"
SPR_MudholeMarsh_MainEnd:
SPR_BrambleBlast_Main:
	db "BrambleBlast_Main.bin"
SPR_BrambleBlast_MainEnd:
SPR_BrambleScramble_Main:
	db "BrambleScramble_Main.bin"
SPR_BrambleScramble_MainEnd:
SPR_ScreechsSprint_Main:
	db "ScreechsSprint_Main.bin"
SPR_ScreechsSprint_MainEnd:
SPR_KingZingSting_Main:
	db "KingZingSting_Main.bin"
SPR_KingZingSting_MainEnd:
SPR_KRoolDuel_Main:
	db "KRoolDuel_Main.bin"
SPR_KRoolDuel_MainEnd:
SPR_CastleCrush_Main:
	db "CastleCrush_Main.bin"
SPR_CastleCrush_MainEnd:
SPR_KudgelsKontest:
	db "KudgelsKontest.bin"
SPR_KudgelsKontestEnd:
SPR_LockjawsLocker_Warp:
	db "LockjawsLocker_Warp.bin"
SPR_LockjawsLocker_WarpEnd:
SPR_LavaLagoon_Warp:
	db "LavaLagoon_Warp.bin"
SPR_LavaLagoon_WarpEnd:
SPR_SquawksShaft_Warp:
	db "SquawksShaft_Warp.bin"
SPR_SquawksShaft_WarpEnd:
SPR_KrocodileKore_Main:
	db "KrocodileKore_Main.bin"
SPR_KrocodileKore_MainEnd:
SPR_ArcticAbyss_Main:
	db "ArcticAbyss_Main.bin"
SPR_ArcticAbyss_MainEnd:
SPR_ChainlinkChamber_Main:
	db "ChainlinkChamber_Main.bin"
SPR_ChainlinkChamber_MainEnd:
SPR_ToxicTower_Main:
	db "ToxicTower_Main.bin"
SPR_ToxicTower_MainEnd:
SPR_PiratePanic_Bonus1:
	db "PiratePanic_Bonus1.bin"
SPR_PiratePanic_Bonus1End:
SPR_PiratePanic_Bonus2:
	db "PiratePanic_Bonus2.bin"
SPR_PiratePanic_Bonus2End:
SPR_GangplankGalley_Bonus2:
	db "GangplankGalley_Bonus2.bin"
SPR_GangplankGalley_Bonus2End:
SPR_RattleBattle_Bonus1:
	db "RattleBattle_Bonus1.bin"
SPR_RattleBattle_Bonus1End:
SPR_RattleBattle_Bonus3:
	db "RattleBattle_Bonus3.bin"
SPR_RattleBattle_Bonus3End:
SPR_HotHeadHop_Bonus3:
	db "HotHeadHop_Bonus3.bin"
SPR_HotHeadHop_Bonus3End:
SPR_HotHeadHop_Bonus1:
	db "HotHeadHop_Bonus1.bin"
SPR_HotHeadHop_Bonus1End:
SPR_RedHotRide_Bonus1:
	db "RedHotRide_Bonus1.bin"
SPR_RedHotRide_Bonus1End:
SPR_RedHotRide_Bonus2:
	db "RedHotRide_Bonus2.bin"
SPR_RedHotRide_Bonus2End:
SPR_MainbraceMayhem_Bonus1:
	db "MainbraceMayhem_Bonus1.bin"
SPR_MainbraceMayhem_Bonus1End:
SPR_MainbraceMayhem_Bonus2:
	db "MainbraceMayhem_Bonus2.bin"
SPR_MainbraceMayhem_Bonus2End:
SPR_SlimeClimb_Bonus1:
	db "SlimeClimb_Bonus1.bin"
SPR_SlimeClimb_Bonus1End:
SPR_TopsailTrouble_Bonus1:
	db "TopsailTrouble_Bonus1.bin"
SPR_TopsailTrouble_Bonus1End:
SPR_TopsailTrouble_Bonus2:
	db "TopsailTrouble_Bonus2.bin"
SPR_TopsailTrouble_Bonus2End:
SPR_MainbraceMayhem_Bonus3:
	db "MainbraceMayhem_Bonus3.bin"
SPR_MainbraceMayhem_Bonus3End:
SPR_SlimbClimb_Bonus2:
	db "SlimbClimb_Bonus2.bin"
SPR_SlimbClimb_Bonus2End:
SPR_RattleBattle_Bonus2:
	db "RattleBattle_Bonus2.bin"
SPR_RattleBattle_Bonus2End:
SPR_KlobberKarnage_Main:
	db "KlobberKarnage_Main.bin"
SPR_KlobberKarnage_MainEnd:
SPR_LockjawsLocker_Bonus1:
	db "LockjawsLocker_Bonus1.bin"
SPR_LockjawsLocker_Bonus1End:
SPR_GlimmersGalleon_Bonus2:
	db "GlimmersGalleon_Bonus2.bin"
SPR_GlimmersGalleon_Bonus2End:
SPR_LavaLagoon_Bonus1:
	db "LavaLagoon_Bonus1.bin"
SPR_LavaLagoon_Bonus1End:
SPR_GlimmersGalleon_Bonus1:
	db "GlimmersGalleon_Bonus1.bin"
SPR_GlimmersGalleon_Bonus1End:
SPR_GhostlyGrove_Bonus1:
	db "GhostlyGrove_Bonus1.bin"
SPR_GhostlyGrove_Bonus1End:
SPR_GustyGlade_Bonus1:
	db "GustyGlade_Bonus1.bin"
SPR_GustyGlade_Bonus1End:
SPR_GustyGlade_Bonus2:
	db "GustyGlade_Bonus2.bin"
SPR_GustyGlade_Bonus2End:
SPR_GhostlyGrove_Bonus2:
	db "GhostlyGrove_Bonus2.bin"
SPR_GhostlyGrove_Bonus2End:
SPR_BarrelBayou_Bonus1:
	db "BarrelBayou_Bonus1.bin"
SPR_BarrelBayou_Bonus1End:
SPR_BarrelBayou_Bonus2:
	db "BarrelBayou_Bonus2.bin"
SPR_BarrelBayou_Bonus2End:
SPR_KrockheadKlamber_Bonus1:
	db "KrockheadKlamber_Bonus1.bin"
SPR_KrockheadKlamber_Bonus1End:
SPR_MudholeMarsh_Bonus1:
	db "MudholeMarsh_Bonus1.bin"
SPR_MudholeMarsh_Bonus1End:
SPR_MudholeMarsh_Bonus2:
	db "MudholeMarsh_Bonus2.bin"
SPR_MudholeMarsh_Bonus2End:
SPR_HotHeadHop_Warp:
	db "HotHeadHop_Warp.bin"
SPR_HotHeadHop_WarpEnd:
SPR_ClappersCavern_Main:
	db "ClappersCavern_Main.bin"
SPR_ClappersCavern_MainEnd:
SPR_AnimalAntics_EngaurdSection:
	db "AnimalAntics_EngaurdSection.bin"
SPR_AnimalAntics_EngaurdSectionEnd:
SPR_ClappersCavern_Bonus1:
	db "ClappersCavern_Bonus1.bin"
SPR_ClappersCavern_Bonus1End:
SPR_ClappersCavern_Bonus2:
	db "ClappersCavern_Bonus2.bin"
SPR_ClappersCavern_Bonus2End:
SPR_ArcticAbyss_Bonus1:
	db "ArcticAbyss_Bonus1.bin"
SPR_ArcticAbyss_Bonus1End:
SPR_BlackIceBattle_Bonus1:
	db "BlackIceBattle_Bonus1.bin"
SPR_BlackIceBattle_Bonus1End:
SPR_ArcticAbyss_Bonus2:
	db "ArcticAbyss_Bonus2.bin"
SPR_ArcticAbyss_Bonus2End:
SPR_BlackIceBattle_Main:
	db "BlackIceBattle_Main.bin"
SPR_BlackIceBattle_MainEnd:
SPR_KlobberKarnage_Bonus1:
	db "KlobberKarnage_Bonus1.bin"
SPR_KlobberKarnage_Bonus1End:
SPR_JungleJinx_Bonus1:
	db "JungleJinx_Bonus1.bin"
SPR_JungleJinx_Bonus1End:
SPR_JungleJinx_Main:
	db "JungleJinx_Main.bin"
SPR_JungleJinx_MainEnd:
SPR_AnimalAntics_RambiSection:
	db "AnimalAntics_RambiSection.bin"
SPR_AnimalAntics_RambiSectionEnd:
SPR_AnimalAntics_SquitterSection:
	db "AnimalAntics_SquitterSection.bin"
SPR_AnimalAntics_SquitterSectionEnd:
SPR_AnimalAntics_RattlySection:
	db "AnimalAntics_RattlySection.bin"
SPR_AnimalAntics_RattlySectionEnd:
SPR_AnimalAntics_Bonus1:
	db "AnimalAntics_Bonus1.bin"
SPR_AnimalAntics_Bonus1End:
SPR_FieryFurnace_Bonus1:
	db "FieryFurnace_Bonus1.bin"
SPR_FieryFurnace_Bonus1End:
SPR_AnimalAntics_SquawksSection:
	db "AnimalAntics_SquawksSection.bin"
SPR_AnimalAntics_SquawksSectionEnd:
SPR_BrambleBlast_Bonus2:
	db "BrambleBlast_Bonus2.bin"
SPR_BrambleBlast_Bonus2End:
SPR_TargetTerror_Bonus1:
	db "TargetTerror_Bonus1.bin"
SPR_TargetTerror_Bonus1End:
SPR_BrambleScramble_Bonus1:
	db "BrambleScramble_Bonus1.bin"
SPR_BrambleScramble_Bonus1End:
SPR_WindyWell_Bonus2:
	db "WindyWell_Bonus2.bin"
SPR_WindyWell_Bonus2End:
SPR_WebWoods_Bonus1:
	db "WebWoods_Bonus1.bin"
SPR_WebWoods_Bonus1End:
SPR_ToxicTower_Bonus1:
	db "ToxicTower_Bonus1.bin"
SPR_ToxicTower_Bonus1End:
SPR_BrambleBlast_Bonus1:
	db "BrambleBlast_Bonus1.bin"
SPR_BrambleBlast_Bonus1End:
SPR_ScreechsSprint_Bonus1:
	db "ScreechsSprint_Bonus1.bin"
SPR_ScreechsSprint_Bonus1End:
SPR_GangplankGalley_Bonus1:
	db "GangplankGalley_Bonus1.bin"
SPR_GangplankGalley_Bonus1End:
SPR_SquawksShaft_Bonus3:
	db "SquawksShaft_Bonus3.bin"
SPR_SquawksShaft_Bonus3End:
SPR_KannonsKlaim_Bonus3:
	db "KannonsKlaim_Bonus3.bin"
SPR_KannonsKlaim_Bonus3End:
SPR_KannonsKlaim_Bonus1:
	db "KannonsKlaim_Bonus1.bin"
SPR_KannonsKlaim_Bonus1End:
SPR_SquawksShaft_Bonus1:
	db "SquawksShaft_Bonus1.bin"
SPR_SquawksShaft_Bonus1End:
SPR_KannonsKlaim_Bonus2:
	db "KannonsKlaim_Bonus2.bin"
SPR_KannonsKlaim_Bonus2End:
SPR_HornetHole_Bonus1:
	db "HornetHole_Bonus1.bin"
SPR_HornetHole_Bonus1End:
SPR_ParrotChutePanic_Bonus2:
	db "ParrotChutePanic_Bonus2.bin"
SPR_ParrotChutePanic_Bonus2End:
SPR_HornetHole_Bonus3:
	db "HornetHole_Bonus3.bin"
SPR_HornetHole_Bonus3End:
SPR_ParrotChutePanic_Bonus1:
	db "ParrotChutePanic_Bonus1.bin"
SPR_ParrotChutePanic_Bonus1End:
SPR_RambiRumble_Bonus2:
	db "RambiRumble_Bonus2.bin"
SPR_RambiRumble_Bonus2End:
SPR_HornetHole_Bonus2:
	db "HornetHole_Bonus2.bin"
SPR_HornetHole_Bonus2End:
SPR_RambiRumble_Bonus1:
	db "RambiRumble_Bonus1.bin"
SPR_RambiRumble_Bonus1End:
SPR_ChainlinkChamber_Bonus1:
	db "ChainlinkChamber_Bonus1.bin"
SPR_ChainlinkChamber_Bonus1End:
SPR_ChainlinkChamber_Bonus2:
	db "ChainlinkChamber_Bonus2.bin"
SPR_ChainlinkChamber_Bonus2End:
SPR_CastleCrush_Bonus1:
	db "CastleCrush_Bonus1.bin"
SPR_CastleCrush_Bonus1End:
SPR_CastleCrush_Bonus2:
	db "CastleCrush_Bonus2.bin"
SPR_CastleCrush_Bonus2End:
SPR_StrongholdShowdown_Main:
	db "StrongholdShowdown_Main.bin"
SPR_StrongholdShowdown_MainEnd:
SPR_SquawksShaft_Bonus2:
	db "SquawksShaft_Bonus2.bin"
SPR_SquawksShaft_Bonus2End:
SPR_WindyWell_Bonus1:
	db "WindyWell_Bonus1.bin"
SPR_WindyWell_Bonus1End:
SPR_WebWoods_Bonus2:
	db "WebWoods_Bonus2.bin"
SPR_WebWoods_Bonus2End:
SPR_HauntedHall_Bonus1:
	db "HauntedHall_Bonus1.bin"
SPR_HauntedHall_Bonus1End:
SPR_RicketyRace_Exit:
	db "RicketyRace_Exit.bin"
SPR_RicketyRace_ExitEnd:
SPR_HauntedHall_Exit:
	db "HauntedHall_Exit.bin"
SPR_HauntedHall_ExitEnd:
SPR_HauntedHall_Bonus3:
	db "HauntedHall_Bonus3.bin"
SPR_HauntedHall_Bonus3End:
SPR_TargetTerror_Bonus2:
	db "TargetTerror_Bonus2.bin"
SPR_TargetTerror_Bonus2End:
SPR_HauntedHall_Bonus2:
	db "HauntedHall_Bonus2.bin"
SPR_HauntedHall_Bonus2End:
SPR_RicketyRace_Bonus1:
	db "RicketyRace_Bonus1.bin"
SPR_RicketyRace_Bonus1End:

;--------------------------------------------------------------------

BFD_GlimmersGalleon_Main:
	db "GlimmersGalleon_Main.bin"
BFD_GlimmersGalleon_MainEnd:
BFD_RambiRumble_Main:
	db "RambiRumble_Main.bin"
BFD_RambiRumble_MainEnd:
BFD_PiratePanic_Main:
	db "PiratePanic_Main.bin"
BFD_PiratePanic_MainEnd:
BFD_GangplankGalley_Main:
	db "GangplankGalley_Main.bin"
BFD_GangplankGalley_MainEnd:
BFD_RattleBattle_Main:
	db "RattleBattle_Main.bin"
BFD_RattleBattle_MainEnd:
BFD_HotHeadHop_Main:
	db "HotHeadHop_Main.bin"
BFD_HotHeadHop_MainEnd:
BFD_RedHotRide_Main:
	db "RedHotRide_Main.bin"
BFD_RedHotRide_MainEnd:
BFD_SlimbClimb_Main:
	db "SlimbClimb_Main.bin"
BFD_SlimbClimb_MainEnd:
BFD_TopsailTrouble_Main:
	db "TopsailTrouble_Main.bin"
BFD_TopsailTrouble_MainEnd:
BFD_MainbraceMayhem_Main:
	db "MainbraceMayhem_Main.bin"
BFD_MainbraceMayhem_MainEnd:
BFD_KreepyKrow_Main:
	db "KreepyKrow_Main.bin"
BFD_KreepyKrow_MainEnd:
BFD_TargetTerror_Main:
	db "TargetTerror_Main.bin"
BFD_TargetTerror_MainEnd:
BFD_RicketyRace_Main:
	db "RicketyRace_Main.bin"
BFD_RicketyRace_MainEnd:
BFD_HauntedHall_Main:
	db "HauntedHall_Main.bin"
BFD_HauntedHall_MainEnd:
BFD_HornetHole_Main:
	db "HornetHole_Main.bin"
BFD_HornetHole_MainEnd:
BFD_RambiRumble_RambiRoom:
	db "RambiRumble_RambiRoom.bin"
BFD_RambiRumble_RambiRoomEnd:
BFD_ParrotChutePanic_Main:
	db "ParrotChutePanic_Main.bin"
BFD_ParrotChutePanic_MainEnd:
BFD_LavaLagoon_Main:
	db "LavaLagoon_Main.bin"
BFD_LavaLagoon_MainEnd:
BFD_LockjawsLocker_Main:
	db "LockjawsLocker_Main.bin"
BFD_LockjawsLocker_MainEnd:
BFD_FieryFurnace_Main:
	db "FieryFurnace_Main.bin"
BFD_FieryFurnace_MainEnd:
BFD_WebWoods_Main:
	db "WebWoods_Main.bin"
BFD_WebWoods_MainEnd:
BFD_GustyGlade_Main:
	db "GustyGlade_Main.bin"
BFD_GustyGlade_MainEnd:
BFD_GhostlyGrove_Main:
	db "GhostlyGrove_Main.bin"
BFD_GhostlyGrove_MainEnd:
BFD_TopsailTrouble_Warp:
	db "TopsailTrouble_Warp.bin"
BFD_TopsailTrouble_WarpEnd:
BFD_HotHeadHop_Bonus2:
	db "HotHeadHop_Bonus2.bin"
BFD_HotHeadHop_Bonus2End:
BFD_PiratePanic_Warp:
	db "PiratePanic_Warp.bin"
BFD_PiratePanic_WarpEnd:
BFD_TargetTerror_Exit:
	db "TargetTerror_Exit.bin"
BFD_TargetTerror_ExitEnd:
BFD_UnusedForestBananaCache:
	db "UnusedForestBananaCache.bin"
BFD_UnusedForestBananaCacheEnd:
BFD_MainbraceMayhem_Warp:
	db "MainbraceMayhem_Warp.bin"
BFD_MainbraceMayhem_WarpEnd:
BFD_RattleBattle_RattlyRoom:
	db "RattleBattle_RattlyRoom.bin"
BFD_RattleBattle_RattlyRoomEnd:
BFD_WindyWell_Main:
	db "WindyWell_Main.bin"
BFD_WindyWell_MainEnd:
BFD_SquawksShaft_Main:
	db "SquawksShaft_Main.bin"
BFD_SquawksShaft_MainEnd:
BFD_KannonsKlaim_Main:
	db "KannonsKlaim_Main.bin"
BFD_KannonsKlaim_MainEnd:
BFD_ParrotChutePanic_RareLogoRoom:
	db "ParrotChutePanic_RareLogoRoom.bin"
BFD_ParrotChutePanic_RareLogoRoomEnd:
BFD_KannonsKlaim_Warp:
	db "KannonsKlaim_Warp.bin"
BFD_KannonsKlaim_WarpEnd:
BFD_BarrelBayou_Main:
	db "BarrelBayou_Main.bin"
BFD_BarrelBayou_MainEnd:
BFD_KrockheadKlamber_Main:
	db "KrockheadKlamber_Main.bin"
BFD_KrockheadKlamber_MainEnd:
BFD_WebWoods_SquitterRoom:
	db "WebWoods_SquitterRoom.bin"
BFD_WebWoods_SquitterRoomEnd:
BFD_MudholeMarsh_Main:
	db "MudholeMarsh_Main.bin"
BFD_MudholeMarsh_MainEnd:
BFD_BrambleBlast_Main:
	db "BrambleBlast_Main.bin"
BFD_BrambleBlast_MainEnd:
BFD_BrambleScramble_Main:
	db "BrambleScramble_Main.bin"
BFD_BrambleScramble_MainEnd:
BFD_ScreechsSprint_Main:
	db "ScreechsSprint_Main.bin"
BFD_ScreechsSprint_MainEnd:
BFD_KingZingSting_Main:
	db "KingZingSting_Main.bin"
BFD_KingZingSting_MainEnd:
BFD_CastleCrush_Main:
	db "CastleCrush_Main.bin"
BFD_CastleCrush_MainEnd:
BFD_LockjawsLocker_Warp:
	db "LockjawsLocker_Warp.bin"
BFD_LockjawsLocker_WarpEnd:
BFD_LavaLagoon_Warp:
	db "LavaLagoon_Warp.bin"
BFD_LavaLagoon_WarpEnd:
BFD_SquawksShaft_Warp:
	db "SquawksShaft_Warp.bin"
BFD_SquawksShaft_WarpEnd:
BFD_ArcticAbyss_Main:
	db "ArcticAbyss_Main.bin"
BFD_ArcticAbyss_MainEnd:
BFD_ChainlinkChamber_Main:
	db "ChainlinkChamber_Main.bin"
BFD_ChainlinkChamber_MainEnd:
BFD_ToxicTower_Main:
	db "ToxicTower_Main.bin"
BFD_ToxicTower_MainEnd:
BFD_PiratePanic_Bonus1:
	db "PiratePanic_Bonus1.bin"
BFD_PiratePanic_Bonus1End:
BFD_GangplankGalley_Bonus2:
	db "GangplankGalley_Bonus2.bin"
BFD_GangplankGalley_Bonus2End:
BFD_RattleBattle_Bonus1:
	db "RattleBattle_Bonus1.bin"
BFD_RattleBattle_Bonus1End:
BFD_RattleBattle_Bonus3:
	db "RattleBattle_Bonus3.bin"
BFD_RattleBattle_Bonus3End:
BFD_HotHeadHop_Bonus3:
	db "HotHeadHop_Bonus3.bin"
BFD_HotHeadHop_Bonus3End:
BFD_HotHeadHop_Bonus1:
	db "HotHeadHop_Bonus1.bin"
BFD_HotHeadHop_Bonus1End:
BFD_RedHotRide_Bonus1:
	db "RedHotRide_Bonus1.bin"
BFD_RedHotRide_Bonus1End:
BFD_RedHotRide_Bonus2:
	db "RedHotRide_Bonus2.bin"
BFD_RedHotRide_Bonus2End:
BFD_MainbraceMayhem_Bonus1:
	db "MainbraceMayhem_Bonus1.bin"
BFD_MainbraceMayhem_Bonus1End:
BFD_SlimeClimb_Bonus1:
	db "SlimeClimb_Bonus1.bin"
BFD_SlimeClimb_Bonus1End:
BFD_TopsailTrouble_Bonus2:
	db "TopsailTrouble_Bonus2.bin"
BFD_TopsailTrouble_Bonus2End:
BFD_MainbraceMayhem_Bonus3:
	db "MainbraceMayhem_Bonus3.bin"
BFD_MainbraceMayhem_Bonus3End:
BFD_KlobberKarnage_Main:
	db "KlobberKarnage_Main.bin"
BFD_KlobberKarnage_MainEnd:
BFD_LockjawsLocker_Bonus1:
	db "LockjawsLocker_Bonus1.bin"
BFD_LockjawsLocker_Bonus1End:
BFD_GlimmersGalleon_Bonus2:
	db "GlimmersGalleon_Bonus2.bin"
BFD_GlimmersGalleon_Bonus2End:
BFD_GustyGlade_Bonus1:
	db "GustyGlade_Bonus1.bin"
BFD_GustyGlade_Bonus1End:
BFD_GustyGlade_Bonus2:
	db "GustyGlade_Bonus2.bin"
BFD_GustyGlade_Bonus2End:
BFD_GhostlyGrove_Bonus2:
	db "GhostlyGrove_Bonus2.bin"
BFD_GhostlyGrove_Bonus2End:
BFD_BarrelBayou_Bonus2:
	db "BarrelBayou_Bonus2.bin"
BFD_BarrelBayou_Bonus2End:
BFD_MudholeMarsh_Bonus1:
	db "MudholeMarsh_Bonus1.bin"
BFD_MudholeMarsh_Bonus1End:
BFD_MudholeMarsh_Bonus2:
	db "MudholeMarsh_Bonus2.bin"
BFD_MudholeMarsh_Bonus2End:
BFD_HotHeadHop_Warp:
	db "HotHeadHop_Warp.bin"
BFD_HotHeadHop_WarpEnd:
BFD_ClappersCavern_Main:
	db "ClappersCavern_Main.bin"
BFD_ClappersCavern_MainEnd:
BFD_AnimalAntics_EngaurdSection:
	db "AnimalAntics_EngaurdSection.bin"
BFD_AnimalAntics_EngaurdSectionEnd:
BFD_ClappersCavern_Bonus1:
	db "ClappersCavern_Bonus1.bin"
BFD_ClappersCavern_Bonus1End:
BFD_ClappersCavern_Bonus2:
	db "ClappersCavern_Bonus2.bin"
BFD_ClappersCavern_Bonus2End:
BFD_ArcticAbyss_Bonus1:
	db "ArcticAbyss_Bonus1.bin"
BFD_ArcticAbyss_Bonus1End:
BFD_BlackIceBattle_Bonus1:
	db "BlackIceBattle_Bonus1.bin"
BFD_BlackIceBattle_Bonus1End:
BFD_ArcticAbyss_Bonus2:
	db "ArcticAbyss_Bonus2.bin"
BFD_ArcticAbyss_Bonus2End:
BFD_BlackIceBattle_Main:
	db "BlackIceBattle_Main.bin"
BFD_BlackIceBattle_MainEnd:
BFD_JungleJinx_Main:
	db "JungleJinx_Main.bin"
BFD_JungleJinx_MainEnd:
BFD_AnimalAntics_RambiSection:
	db "AnimalAntics_RambiSection.bin"
BFD_AnimalAntics_RambiSectionEnd:
BFD_AnimalAntics_SquitterSection:
	db "AnimalAntics_SquitterSection.bin"
BFD_AnimalAntics_SquitterSectionEnd:
BFD_AnimalAntics_RattlySection:
	db "AnimalAntics_RattlySection.bin"
BFD_AnimalAntics_RattlySectionEnd:
BFD_FieryFurnace_Bonus1:
	db "FieryFurnace_Bonus1.bin"
BFD_FieryFurnace_Bonus1End:
BFD_AnimalAntics_SquawksSection:
	db "AnimalAntics_SquawksSection.bin"
BFD_AnimalAntics_SquawksSectionEnd:
BFD_BrambleBlast_Bonus2:
	db "BrambleBlast_Bonus2.bin"
BFD_BrambleBlast_Bonus2End:
BFD_BrambleScramble_Bonus1:
	db "BrambleScramble_Bonus1.bin"
BFD_BrambleScramble_Bonus1End:
BFD_WindyWell_Bonus2:
	db "WindyWell_Bonus2.bin"
BFD_WindyWell_Bonus2End:
BFD_WebWoods_Bonus1:
	db "WebWoods_Bonus1.bin"
BFD_WebWoods_Bonus1End:
BFD_ToxicTower_Bonus1:
	db "ToxicTower_Bonus1.bin"
BFD_ToxicTower_Bonus1End:
BFD_BrambleBlast_Bonus1:
	db "BrambleBlast_Bonus1.bin"
BFD_BrambleBlast_Bonus1End:
BFD_ScreechsSprint_Bonus1:
	db "ScreechsSprint_Bonus1.bin"
BFD_ScreechsSprint_Bonus1End:
BFD_KannonsKlaim_Bonus1:
	db "KannonsKlaim_Bonus1.bin"
BFD_KannonsKlaim_Bonus1End:
BFD_KannonsKlaim_Bonus2:
	db "KannonsKlaim_Bonus2.bin"
BFD_KannonsKlaim_Bonus2End:
BFD_ParrotChutePanic_Bonus2:
	db "ParrotChutePanic_Bonus2.bin"
BFD_ParrotChutePanic_Bonus2End:
BFD_HornetHole_Bonus3:
	db "HornetHole_Bonus3.bin"
BFD_HornetHole_Bonus3End:
BFD_ParrotChutePanic_Bonus1:
	db "ParrotChutePanic_Bonus1.bin"
BFD_ParrotChutePanic_Bonus1End:
BFD_RambiRumble_Bonus2:
	db "RambiRumble_Bonus2.bin"
BFD_RambiRumble_Bonus2End:
BFD_HornetHole_Bonus2:
	db "HornetHole_Bonus2.bin"
BFD_HornetHole_Bonus2End:
BFD_RambiRumble_Bonus1:
	db "RambiRumble_Bonus1.bin"
BFD_RambiRumble_Bonus1End:
BFD_ChainlinkChamber_Bonus1:
	db "ChainlinkChamber_Bonus1.bin"
BFD_ChainlinkChamber_Bonus1End:
BFD_ChainlinkChamber_Bonus2:
	db "ChainlinkChamber_Bonus2.bin"
BFD_ChainlinkChamber_Bonus2End:
BFD_CastleCrush_Bonus2:
	db "CastleCrush_Bonus2.bin"
BFD_CastleCrush_Bonus2End:
BFD_SquawksShaft_Bonus2:
	db "SquawksShaft_Bonus2.bin"
BFD_SquawksShaft_Bonus2End:
BFD_WindyWell_Bonus1:
	db "WindyWell_Bonus1.bin"
BFD_WindyWell_Bonus1End:
BFD_WebWoods_Bonus2:
	db "WebWoods_Bonus2.bin"
BFD_WebWoods_Bonus2End:
BFD_HauntedHall_Bonus1:
	db "HauntedHall_Bonus1.bin"
BFD_HauntedHall_Bonus1End:
BFD_RicketyRace_Exit:
	db "RicketyRace_Exit.bin"
BFD_RicketyRace_ExitEnd:
BFD_HauntedHall_Bonus3:
	db "HauntedHall_Bonus3.bin"
BFD_HauntedHall_Bonus3End:
BFD_TargetTerror_Bonus2:
	db "TargetTerror_Bonus2.bin"
BFD_TargetTerror_Bonus2End:
BFD_HauntedHall_Bonus2:
	db "HauntedHall_Bonus2.bin"
BFD_HauntedHall_Bonus2End:

;--------------------------------------------------------------------

PAL_Layer3_ErorrMessageScreenText:
	db "Layer3_ErorrMessageScreenText.bin"
PAL_Layer3_ErorrMessageScreenTextEnd:
PAL_UnknownPalette1:
	db "UnknownPalette1.bin"
PAL_UnknownPalette1End:
PAL_FGBG_Level_GustyGlade:
	db "FGBG_Level_GustyGlade.bin"
PAL_FGBG_Level_GustyGladeEnd:
PAL_FGBG_Level_GhostlyGrove:
	db "FGBG_Level_GhostlyGrove.bin"
PAL_FGBG_Level_GhostlyGroveEnd:
PAL_FGBG_Level_LavaLagoon:
	db "FGBG_Level_LavaLagoon.bin"
PAL_FGBG_Level_LavaLagoonEnd:
PAL_Layer3_LavaLagoonChilledWater:
	db "Layer3_LavaLagoonChilledWater.bin"
PAL_Layer3_LavaLagoonChilledWaterEnd:
PAL_FGBG_Level_LockjawsSaga:
	db "FGBG_Level_LockjawsSaga.bin"
PAL_FGBG_Level_LockjawsSagaEnd:
PAL_FGBG_Level_HornetHole:
	db "FGBG_Level_HornetHole.bin"
PAL_FGBG_Level_HornetHoleEnd:
PAL_FGBG_WorldMap:
	db "FGBG_WorldMap.bin"
PAL_FGBG_WorldMapEnd:
PAL_FGBG_Level_PiratePanic:
	db "FGBG_Level_PiratePanic.bin"
PAL_FGBG_Level_PiratePanicEnd:
PAL_Layer3_Level_RedHotRide:
	db "Layer3_Level_RedHotRide.bin"
PAL_Layer3_Level_RedHotRideEnd:
PAL_FGBG_Level_HotHeadHop:
	db "FGBG_Level_HotHeadHop.bin"
PAL_FGBG_Level_HotHeadHopEnd:
PAL_FGBG_Level_FieryFurnace:
	db "FGBG_Level_FieryFurnace.bin"
PAL_FGBG_Level_FieryFurnaceEnd:
PAL_FGBG_MonkeyMuseum:
	db "FGBG_MonkeyMuseum.bin"
PAL_FGBG_MonkeyMuseumEnd:
PAL_FGBG_FunkysFlightsII:
	db "FGBG_FunkysFlightsII.bin"
PAL_FGBG_FunkysFlightsIIEnd:
PAL_FGBG_KongKollage:
	db "FGBG_KongKollage.bin"
PAL_FGBG_KongKollageEnd:
PAL_FGBG_SwankysBonusBonanza:
	db "FGBG_SwankysBonusBonanza.bin"
PAL_FGBG_SwankysBonusBonanzaEnd:
PAL_FGBG_KlubbasKiosk:
	db "FGBG_KlubbasKiosk.bin"
PAL_FGBG_KlubbasKioskEnd:
PAL_FGBG_Level_TopsailTrouble:
	db "FGBG_Level_TopsailTrouble.bin"
PAL_FGBG_Level_TopsailTroubleEnd:
PAL_Layer2_TopsailTroubleBackground:
	db "Layer2_TopsailTroubleBackground.bin"
PAL_Layer2_TopsailTroubleBackgroundEnd:
PAL_FGBG_Level_MainbraceMayhem:
	db "FGBG_Level_MainbraceMayhem.bin"
PAL_FGBG_Level_MainbraceMayhemEnd:
PAL_FGBG_Level_TargetTerror:
	db "FGBG_Level_TargetTerror.bin"
PAL_FGBG_Level_TargetTerrorEnd:
PAL_FGBG_GangplankGalleonMap:
	db "FGBG_GangplankGalleonMap.bin"
PAL_FGBG_GangplankGalleonMapEnd:
PAL_FGBG_CrocodileCauldronMap:
	db "FGBG_CrocodileCauldronMap.bin"
PAL_FGBG_CrocodileCauldronMapEnd:
PAL_FGBG_KremQuayMap:
	db "FGBG_KremQuayMap.bin"
PAL_FGBG_KremQuayMapEnd:
PAL_FGBG_KrazyKremlandMap1:
	db "FGBG_KrazyKremlandMap1.bin"
PAL_FGBG_KrazyKremlandMap1End:
PAL_FGBG_GloomyGultchMap:
	db "FGBG_GloomyGultchMap.bin"
PAL_FGBG_GloomyGultchMapEnd:
PAL_FGBG_KRoolsKeepMap:
	db "FGBG_KRoolsKeepMap.bin"
PAL_FGBG_KRoolsKeepMapEnd:
PAL_FGBG_TheFlyingKrocMap:
	db "FGBG_TheFlyingKrocMap.bin"
PAL_FGBG_TheFlyingKrocMapEnd:
PAL_FGBG_LostWorldMap:
	db "FGBG_LostWorldMap.bin"
PAL_FGBG_LostWorldMapEnd:
PAL_FGBG_KrazyKremlandMap2:
	db "FGBG_KrazyKremlandMap2.bin"
PAL_FGBG_KrazyKremlandMap2End:
PAL_FGBG_Level_KaptainsKabin:
	db "FGBG_Level_KaptainsKabin.bin"
PAL_FGBG_Level_KaptainsKabinEnd:
PAL_Layer3_Shine:
	db "Layer3_Shine.bin"
PAL_Layer3_ShineEnd:
PAL_FGBG_Level_KannonsKlaim:
	db "FGBG_Level_KannonsKlaim.bin"
PAL_FGBG_Level_KannonsKlaimEnd:
PAL_FGBG_Level_SquawksShaft:
	db "FGBG_Level_SquawksShaft.bin"
PAL_FGBG_Level_SquawksShaftEnd:
PAL_FGBG_Level_WindyWell:
	db "FGBG_Level_WindyWell.bin"
PAL_FGBG_Level_WindyWellEnd:
PAL_FGBG_GameOverScreen:
	db "FGBG_GameOverScreen.bin"
PAL_FGBG_GameOverScreenEnd:
PAL_Layer1_FallingLeaves:
	db "Layer1_FallingLeaves.bin"
PAL_Layer1_FallingLeavesEnd:
PAL_Layer1_TitleScreen:
	db "Layer1_TitleScreen.bin"
PAL_Layer1_TitleScreenEnd:
PAL_Layer1_CopyrightScreen:
	db "Layer1_CopyrightScreen.bin"
PAL_Layer1_CopyrightScreenEnd:
PAL_FGBG_Level_BayouBoogie:
	db "FGBG_Level_BayouBoogie.bin"
PAL_FGBG_Level_BayouBoogieEnd:
PAL_FGBG_Level_BrambleBlast:
	db "FGBG_Level_BrambleBlast.bin"
PAL_FGBG_Level_BrambleBlastEnd:
PAL_FGBG_Level_ScreechsSprint:
	db "FGBG_Level_ScreechsSprint.bin"
PAL_FGBG_Level_ScreechsSprintEnd:
PAL_FGBG_Level_BrambleScramble:
	db "FGBG_Level_BrambleScramble.bin"
PAL_FGBG_Level_BrambleScrambleEnd:
PAL_FGBG_Level_GlimmersGalleon:
	db "FGBG_Level_GlimmersGalleon.bin"
PAL_FGBG_Level_GlimmersGalleonEnd:
PAL_FGBG_Level_KrocodileKore:
	db "FGBG_Level_KrocodileKore.bin"
PAL_FGBG_Level_KrocodileKoreEnd:
PAL_Layer3_Level_ToxicTower:
	db "Layer3_Level_ToxicTower.bin"
PAL_Layer3_Level_ToxicTowerEnd:
PAL_FGBG_Level_CastleCrush:
	db "FGBG_Level_CastleCrush.bin"
PAL_FGBG_Level_CastleCrushEnd:
PAL_FGBG_Level_HauntedHall:
	db "FGBG_Level_HauntedHall.bin"
PAL_FGBG_Level_HauntedHallEnd:
PAL_Layer2_Kackle2:
	db "Layer2_Kackle2.bin"
PAL_Layer2_Kackle2End:
PAL_Layer2_Kackle3:
	db "Layer2_Kackle3.bin"
PAL_Layer2_Kackle3End:
PAL_Layer2_Kackle4:
	db "Layer2_Kackle4.bin"
PAL_Layer2_Kackle4End:
PAL_FGBG_Level_SlimeClimb:
	db "FGBG_Level_SlimeClimb.bin"
PAL_FGBG_Level_SlimeClimbEnd:
PAL_FGBG_Level_KRoolDuel:
	db "FGBG_Level_KRoolDuel.bin"
PAL_FGBG_Level_KRoolDuelEnd:
PAL_FGBG_Level_RattleBattle:
	db "FGBG_Level_RattleBattle.bin"
PAL_FGBG_Level_RattleBattleEnd:
PAL_FGBG_Level_GangplankGalleySunsetPalettes1:
	db "FGBG_Level_GangplankGalleySunsetPalettes1.bin"
PAL_FGBG_Level_GangplankGalleySunsetPalettes1End:
PAL_FGBG_Level_GangplankGalleySunsetPalettes2:
	db "FGBG_Level_GangplankGalleySunsetPalettes2.bin"
PAL_FGBG_Level_GangplankGalleySunsetPalettes2End:
PAL_Layer3_FrozenWater:
	db "Layer3_FrozenWater.bin"
PAL_Layer3_FrozenWaterEnd:
PAL_FGBG_Level_BlackIceBattle:
	db "FGBG_Level_BlackIceBattle.bin"
PAL_FGBG_Level_BlackIceBattleEnd:
PAL_FGBG_Level_WebWoods:
	db "FGBG_Level_WebWoods.bin"
PAL_FGBG_Level_WebWoodsEnd:
PAL_UnknownPalette2:
	db "UnknownPalette2.bin"
PAL_UnknownPalette2End:
PAL_FGBG_Level_AnimalAntics_JungleAreas:
	db "FGBG_Level_AnimalAntics_JungleAreas.bin"
PAL_FGBG_Level_AnimalAntics_JungleAreasEnd:
PAL_FGBG_FileSelectScreen:
	db "FGBG_FileSelectScreen.bin"
PAL_FGBG_FileSelectScreenEnd:
PAL_Layer1_DestroyThemAllScreen:
	db "Layer1_DestroyThemAllScreen.bin"
PAL_Layer1_DestroyThemAllScreenEnd:
PAL_Layer1_CollectTheStarsScreen:
	db "Layer1_CollectTheStarsScreen.bin"
PAL_Layer1_CollectTheStarsScreenEnd:
PAL_Layer1_FindTheTokenScreen:
	db "Layer1_FindTheTokenScreen.bin"
PAL_Layer1_FindTheTokenScreenEnd:
PAL_Layer1_CrankysVideoGameHeroesScreen:
	db "Layer1_CrankysVideoGameHeroesScreen.bin"
PAL_Layer1_CrankysVideoGameHeroesScreenEnd:
PAL_Layer1_YeScurvyKongKrew:
	db "Layer1_YeScurvyKongKrew.bin"
PAL_Layer1_YeScurvyKongKrewEnd:
PAL_Layer1_DeveloperNames:
	db "Layer1_DeveloperNames.bin"
PAL_Layer1_DeveloperNamesEnd:
PAL_Sprite_GoodEndingEnergyBeam:
	db "Sprite_GoodEndingEnergyBeam.bin"
PAL_Sprite_GoodEndingEnergyBeamEnd:
PAL_Sprite_GoodEndingBottomHalfOfCrocodileIsle:
	db "Sprite_GoodEndingBottomHalfOfCrocodileIsle.bin"
PAL_Sprite_GoodEndingBottomHalfOfCrocodileIsleEnd:
PAL_Layer1_GoodEndingScreen:
	db "Layer1_GoodEndingScreen.bin"
PAL_Layer1_GoodEndingScreenEnd:
PAL_FGBG_Level_KlobberKarnage:
	db "FGBG_Level_KlobberKarnage.bin"
PAL_FGBG_Level_KlobberKarnageEnd:
PAL_FGBG_Level_JungleJinx:
	db "FGBG_Level_JungleJinx.bin"
PAL_FGBG_Level_JungleJinxEnd:
PAL_FGBG_Level_KrocheadKlamber:
	db "FGBG_Level_KrocheadKlamber.bin"
PAL_FGBG_Level_KrocheadKlamberEnd:
PAL_FGBG_Level_MudholeMarsh:
	db "FGBG_Level_MudholeMarsh.bin"
PAL_FGBG_Level_MudholeMarshEnd:
PAL_Sprite_Fireworks:
	db "Sprite_Fireworks.bin"
PAL_Sprite_FireworksEnd:
PAL_Sprite_Unknown1:
	db "Sprite_Unknown1.bin"
PAL_Sprite_Unknown1End:
PAL_Sprite_KlubbasClub:
	db "Sprite_KlubbasClub.bin"
PAL_Sprite_KlubbasClubEnd:
PAL_Sprite_Klubba:
	db "Sprite_Klubba.bin"
PAL_Sprite_KlubbaEnd:
PAL_Sprite_BreakableWall_ShipDeck:
	db "Sprite_BreakableWall_ShipDeck.bin"
PAL_Sprite_BreakableWall_ShipDeckEnd:
PAL_Sprite_BreakableWall_BeeHive:
	db "Sprite_BreakableWall_BeeHive.bin"
PAL_Sprite_BreakableWall_BeeHiveEnd:
PAL_Sprite_BreakableWall_ForestLeftWall:
	db "Sprite_BreakableWall_ForestLeftWall.bin"
PAL_Sprite_BreakableWall_ForestLeftWallEnd:
PAL_Sprite_BreakableWall_Castle:
	db "Sprite_BreakableWall_Castle.bin"
PAL_Sprite_BreakableWall_CastleEnd:
PAL_Sprite_Unknown2:
	db "Sprite_Unknown2.bin"
PAL_Sprite_Unknown2End:
PAL_Sprite_BreakableWall_LavaCave:
	db "Sprite_BreakableWall_LavaCave.bin"
PAL_Sprite_BreakableWall_LavaCaveEnd:
PAL_Sprite_BreakableWall_ShipHold_TallWoodenBox:
	db "Sprite_BreakableWall_ShipHold_TallWoodenBox.bin"
PAL_Sprite_BreakableWall_ShipHold_TallWoodenBoxEnd:
PAL_Sprite_BreakableWall_IceCave:
	db "Sprite_BreakableWall_IceCave.bin"
PAL_Sprite_BreakableWall_IceCaveEnd:
PAL_Sprite_Unknown3:
	db "Sprite_Unknown3.bin"
PAL_Sprite_Unknown3End:
PAL_Sprite_Unknown4:
	db "Sprite_Unknown4.bin"
PAL_Sprite_Unknown4End:
PAL_Sprite_Unknown5:
	db "Sprite_Unknown5.bin"
PAL_Sprite_Unknown5End:
PAL_Sprite_MapDiddyDixieTextAndLevelIcons:
	db "Sprite_MapDiddyDixieTextAndLevelIcons.bin"
PAL_Sprite_MapDiddyDixieTextAndLevelIconsEnd:
PAL_Sprite_Link:
	db "Sprite_Link.bin"
PAL_Sprite_LinkEnd:
PAL_Sprite_MapKrocodileIcons:
	db "Sprite_MapKrocodileIcons.bin"
PAL_Sprite_MapKrocodileIconsEnd:
PAL_Sprite_Diddy_Active:
	db "Sprite_Diddy_Active.bin"
PAL_Sprite_Diddy_ActiveEnd:
PAL_Sprite_Diddy_Inactive:
	db "Sprite_Diddy_Inactive.bin"
PAL_Sprite_Diddy_InactiveEnd:
PAL_Sprite_Diddy_P2Active:
	db "Sprite_Diddy_P2Active.bin"
PAL_Sprite_Diddy_P2ActiveEnd:
PAL_Sprite_Diddy_P2Inactive:
	db "Sprite_Diddy_P2Inactive.bin"
PAL_Sprite_Diddy_P2InactiveEnd:
PAL_Sprite_Diddy_Frozen:
	db "Sprite_Diddy_Frozen.bin"
PAL_Sprite_Diddy_FrozenEnd:
PAL_Sprite_Diddy_SlowMotion:
	db "Sprite_Diddy_SlowMotion.bin"
PAL_Sprite_Diddy_SlowMotionEnd:
PAL_Sprite_Diddy_ReverseControls:
	db "Sprite_Diddy_ReverseControls.bin"
PAL_Sprite_Diddy_ReverseControlsEnd:
PAL_Sprite_Diddy_Invincible:
	db "Sprite_Diddy_Invincible.bin"
PAL_Sprite_Diddy_InvincibleEnd:
PAL_Sprite_Dixie_Active:
	db "Sprite_Dixie_Active.bin"
PAL_Sprite_Dixie_ActiveEnd:
PAL_Sprite_Dixie_Inactive:
	db "Sprite_Dixie_Inactive.bin"
PAL_Sprite_Dixie_InactiveEnd:
PAL_Sprite_Dixie_P2Active:
	db "Sprite_Dixie_P2Active.bin"
PAL_Sprite_Dixie_P2ActiveEnd:
PAL_Sprite_Dixie_P2Inactive:
	db "Sprite_Dixie_P2Inactive.bin"
PAL_Sprite_Dixie_P2InactiveEnd:
PAL_Sprite_Dixie_Frozen:
	db "Sprite_Dixie_Frozen.bin"
PAL_Sprite_Dixie_FrozenEnd:
PAL_Sprite_Dixie_SlowMotion:
	db "Sprite_Dixie_SlowMotion.bin"
PAL_Sprite_Dixie_SlowMotionEnd:
PAL_Sprite_Dixie_ReverseControls:
	db "Sprite_Dixie_ReverseControls.bin"
PAL_Sprite_Dixie_ReverseControlsEnd:
PAL_Sprite_Dixie_Invincible:
	db "Sprite_Dixie_Invincible.bin"
PAL_Sprite_Dixie_InvincibleEnd:
PAL_Sprite_Barrel:
	db "Sprite_Barrel.bin"
PAL_Sprite_BarrelEnd:
PAL_Sprite_HUDNumbers:
	db "Sprite_HUDNumbers.bin"
PAL_Sprite_HUDNumbersEnd:
PAL_Sprite_Squitter:
	db "Sprite_Squitter.bin"
PAL_Sprite_SquitterEnd:
PAL_Sprite_Unknown6:
	db "Sprite_Unknown6.bin"
PAL_Sprite_Unknown6End:
PAL_Sprite_Klomp:
	db "Sprite_Klomp.bin"
PAL_Sprite_KlompEnd:
PAL_Sprite_Kannon:
	db "Sprite_Kannon.bin"
PAL_Sprite_KannonEnd:
PAL_Sprite_Cannonball:
	db "Sprite_Cannonball.bin"
PAL_Sprite_CannonballEnd:
PAL_Sprite_Cannon:
	db "Sprite_Cannon.bin"
PAL_Sprite_CannonEnd:
PAL_Sprite_LoadedCannon:
	db "Sprite_LoadedCannon.bin"
PAL_Sprite_LoadedCannonEnd:
PAL_Sprite_OrangeShuri:
	db "Sprite_OrangeShuri.bin"
PAL_Sprite_OrangeShuriEnd:
PAL_Sprite_BlueKruncha:
	db "Sprite_BlueKruncha.bin"
PAL_Sprite_BlueKrunchaEnd:
PAL_Sprite_LightRedKruncha:
	db "Sprite_LightRedKruncha.bin"
PAL_Sprite_LightRedKrunchaEnd:
PAL_Sprite_EnragedKruncha:
	db "Sprite_EnragedKruncha.bin"
PAL_Sprite_EnragedKrunchaEnd:
PAL_Sprite_Rattly:
	db "Sprite_Rattly.bin"
PAL_Sprite_RattlyEnd:
PAL_Sprite_Lockjaw:
	db "Sprite_Lockjaw.bin"
PAL_Sprite_LockjawEnd:
PAL_Sprite_GreenSquawks:
	db "Sprite_GreenSquawks.bin"
PAL_Sprite_GreenSquawksEnd:
PAL_Sprite_PurpleSquawks:
	db "Sprite_PurpleSquawks.bin"
PAL_Sprite_PurpleSquawksEnd:
PAL_Sprite_CreditsClickClack:
	db "Sprite_CreditsClickClack.bin"
PAL_Sprite_CreditsClickClackEnd:
PAL_Sprite_WaterSplash:
	db "Sprite_WaterSplash.bin"
PAL_Sprite_WaterSplashEnd:
PAL_Sprite_YellowKutlass:
	db "Sprite_YellowKutlass.bin"
PAL_Sprite_YellowKutlassEnd:
PAL_Sprite_Coins:
	db "Sprite_Coins.bin"
PAL_Sprite_CoinsEnd:
PAL_Sprite_NoAnimalBuddySign:
	db "Sprite_NoAnimalBuddySign.bin"
PAL_Sprite_NoAnimalBuddySignEnd:
PAL_Sprite_Unknown7:
	db "Sprite_Unknown7.bin"
PAL_Sprite_Unknown7End:
PAL_Sprite_LevelEndGoal:
	db "Sprite_LevelEndGoal.bin"
PAL_Sprite_LevelEndGoalEnd:
PAL_Sprite_RedExtraLifeBalloon:
	db "Sprite_RedExtraLifeBalloon.bin"
PAL_Sprite_RedExtraLifeBalloonEnd:
PAL_Sprite_GreenExtraLifeBalloon:
	db "Sprite_GreenExtraLifeBalloon.bin"
PAL_Sprite_GreenExtraLifeBalloonEnd:
PAL_Sprite_BlueExtraLifeBalloon:
	db "Sprite_BlueExtraLifeBalloon.bin"
PAL_Sprite_BlueExtraLifeBalloonEnd:
PAL_Sprite_Neek:
	db "Sprite_Neek.bin"
PAL_Sprite_NeekEnd:
PAL_Sprite_CatO9Tails:
	db "Sprite_CatO9Tails.bin"
PAL_Sprite_CatO9TailsEnd:
PAL_Sprite_MiniNecky:
	db "Sprite_MiniNecky.bin"
PAL_Sprite_MiniNeckyEnd:
PAL_Sprite_GhostMiniNecky:
	db "Sprite_GhostMiniNecky.bin"
PAL_Sprite_GhostMiniNeckyEnd:
PAL_Sprite_GreenKlobber:
	db "Sprite_GreenKlobber.bin"
PAL_Sprite_GreenKlobberEnd:
PAL_Sprite_KrowsEgg:
	db "Sprite_KrowsEgg.bin"
PAL_Sprite_KrowsEggEnd:
PAL_Sprite_KrowsBody:
	db "Sprite_KrowsBody.bin"
PAL_Sprite_KrowsBodyEnd:
PAL_Sprite_KrowsHead:
	db "Sprite_KrowsHead.bin"
PAL_Sprite_KrowsHeadEnd:
PAL_Sprite_CrankyKong:
	db "Sprite_CrankyKong.bin"
PAL_Sprite_CrankyKongEnd:
PAL_Sprite_SwankyKong:
	db "Sprite_SwankyKong.bin"
PAL_Sprite_SwankyKongEnd:
PAL_Sprite_SkullCart:
	db "Sprite_SkullCart.bin"
PAL_Sprite_SkullCartEnd:
PAL_Sprite_RedKlobber:
	db "Sprite_RedKlobber.bin"
PAL_Sprite_RedKlobberEnd:
PAL_Sprite_RollercoasterGate:
	db "Sprite_RollercoasterGate.bin"
PAL_Sprite_RollercoasterGateEnd:
PAL_Sprite_GhostRope:
	db "Sprite_GhostRope.bin"
PAL_Sprite_GhostRopeEnd:
PAL_Sprite_GreyKaboing:
	db "Sprite_GreyKaboing.bin"
PAL_Sprite_GreyKaboingEnd:
PAL_Sprite_BlueGreenKaboing:
	db "Sprite_BlueGreenKaboing.bin"
PAL_Sprite_BlueGreenKaboingEnd:
PAL_Sprite_HauntedHallDoor:
	db "Sprite_HauntedHallDoor.bin"
PAL_Sprite_HauntedHallDoorEnd:
PAL_Sprite_GoodAndBadBarrel:
	db "Sprite_GoodAndBadBarrel.bin"
PAL_Sprite_GoodAndBadBarrelEnd:
PAL_Sprite_Unknown8:
	db "Sprite_Unknown8.bin"
PAL_Sprite_Unknown8End:
PAL_Sprite_BrownPuftup:
	db "Sprite_BrownPuftup.bin"
PAL_Sprite_BrownPuftupEnd:
PAL_Sprite_RedZinger:
	db "Sprite_RedZinger.bin"
PAL_Sprite_RedZingerEnd:
PAL_Sprite_YellowZinger:
	db "Sprite_YellowZinger.bin"
PAL_Sprite_YellowZingerEnd:
PAL_Sprite_UnusedGreenZinger:
	db "Sprite_UnusedGreenZinger.bin"
PAL_Sprite_UnusedGreenZingerEnd:
PAL_Sprite_Klinger:
	db "Sprite_Klinger.bin"
PAL_Sprite_KlingerEnd:
PAL_Sprite_Flitter:
	db "Sprite_Flitter.bin"
PAL_Sprite_FlitterEnd:
PAL_Sprite_BlueFlotsam:
	db "Sprite_BlueFlotsam.bin"
PAL_Sprite_BlueFlotsamEnd:
PAL_Sprite_UnusedRedFlotsam:
	db "Sprite_UnusedRedFlotsam.bin"
PAL_Sprite_UnusedRedFlotsamEnd:
PAL_Sprite_UnusedYellowFlotsam:
	db "Sprite_UnusedYellowFlotsam.bin"
PAL_Sprite_UnusedYellowFlotsamEnd:
PAL_Sprite_GreenFlotsam:
	db "Sprite_GreenFlotsam.bin"
PAL_Sprite_GreenFlotsamEnd:
PAL_Sprite_Glimmer:
	db "Sprite_Glimmer.bin"
PAL_Sprite_GlimmerEnd:
PAL_Sprite_Rambi:
	db "Sprite_Rambi.bin"
PAL_Sprite_RambiEnd:
PAL_Sprite_UnusedTurquoiseFlitter:
	db "Sprite_UnusedTurquoiseFlitter.bin"
PAL_Sprite_UnusedTurquoiseFlitterEnd:
PAL_Sprite_UnusedBlueWingFlitter:
	db "Sprite_UnusedBlueWingFlitter.bin"
PAL_Sprite_UnusedBlueWingFlitterEnd:
PAL_Sprite_UnusedGreenWingFlitter:
	db "Sprite_UnusedGreenWingFlitter.bin"
PAL_Sprite_UnusedGreenWingFlitterEnd:
PAL_Sprite_UnusedRedFlitter:
	db "Sprite_UnusedRedFlitter.bin"
PAL_Sprite_UnusedRedFlitterEnd:
PAL_Sprite_Spiny:
	db "Sprite_Spiny.bin"
PAL_Sprite_SpinyEnd:
PAL_Sprite_Kleever1:
	db "Sprite_Kleever1.bin"
PAL_Sprite_Kleever1End:
PAL_Sprite_KleeverHurt3:
	db "Sprite_KleeverHurt3.bin"
PAL_Sprite_KleeverHurt3End:
PAL_Sprite_Unknown9:
	db "Sprite_Unknown9.bin"
PAL_Sprite_Unknown9End:
PAL_Sprite_Klampon:
	db "Sprite_Klampon.bin"
PAL_Sprite_KlamponEnd:
PAL_Sprite_BrownKrochead:
	db "Sprite_BrownKrochead.bin"
PAL_Sprite_BrownKrocheadEnd:
PAL_Sprite_Horsetail:
	db "Sprite_Horsetail.bin"
PAL_Sprite_HorsetailEnd:
PAL_Sprite_Unknown10:
	db "Sprite_Unknown10.bin"
PAL_Sprite_Unknown10End:
PAL_Sprite_RideableBalloon:
	db "Sprite_RideableBalloon.bin"
PAL_Sprite_RideableBalloonEnd:
PAL_Sprite_DarkColoredChest:
	db "Sprite_DarkColoredChest.bin"
PAL_Sprite_DarkColoredChestEnd:
PAL_Sprite_Kloak:
	db "Sprite_Kloak.bin"
PAL_Sprite_KloakEnd:
PAL_Sprite_HelicopterBarrelWings:
	db "Sprite_HelicopterBarrelWings.bin"
PAL_Sprite_HelicopterBarrelWingsEnd:
PAL_Sprite_KleeverHurt1:
	db "Sprite_KleeverHurt1.bin"
PAL_Sprite_KleeverHurt1End:
PAL_Sprite_KleeverHurt2:
	db "Sprite_KleeverHurt2.bin"
PAL_Sprite_KleeverHurt2End:
PAL_Sprite_Enguarde:
	db "Sprite_Enguarde.bin"
PAL_Sprite_EnguardeEnd:
PAL_Sprite_YellowKlobber:
	db "Sprite_YellowKlobber.bin"
PAL_Sprite_YellowKlobberEnd:
PAL_Sprite_BlackKlobber:
	db "Sprite_BlackKlobber.bin"
PAL_Sprite_BlackKlobberEnd:
PAL_Sprite_Unknown11:
	db "Sprite_Unknown11.bin"
PAL_Sprite_Unknown11End:
PAL_Sprite_Unknown12:
	db "Sprite_Unknown12.bin"
PAL_Sprite_Unknown12End:
PAL_Sprite_KRool:
	db "Sprite_KRool.bin"
PAL_Sprite_KRoolEnd:
PAL_Sprite_KRoolsGun:
	db "Sprite_KRoolGun.bin"
PAL_Sprite_KRoolsGunEnd:
PAL_Sprite_KRoolCoveredInSoot:
	db "Sprite_KRoolCoveredInSoot.bin"
PAL_Sprite_KRoolCoveredInSootEnd:
PAL_Sprite_ElectricGuitar:
	db "Sprite_ElectricGuitar.bin"
PAL_Sprite_ElectricGuitarEnd:
PAL_Sprite_BoomBox:
	db "Sprite_BoomBox.bin"
PAL_Sprite_BoomBoxEnd:
PAL_Sprite_BlueKlank:
	db "Sprite_BlueKlank.bin"
PAL_Sprite_BlueKlankEnd:
PAL_Sprite_Clapper:
	db "Sprite_Clapper.bin"
PAL_Sprite_ClapperEnd:
PAL_Sprite_KRoolGunVacuumEffect:
	db "Sprite_KRoolGunVacuumEffect.bin"
PAL_Sprite_KRoolGunVacuumEffectEnd:
PAL_Sprite_Screech:
	db "Sprite_Screech.bin"
PAL_Sprite_ScreechEnd:
PAL_Sprite_GreenPuftup:
	db "Sprite_GreenPuftup.bin"
PAL_Sprite_GreenPuftupEnd:
PAL_Sprite_PurplePuftup:
	db "Sprite_PurplePuftup.bin"
PAL_Sprite_PurplePuftupEnd:
PAL_Sprite_PinkShuri:
	db "Sprite_PinkShuri.bin"
PAL_Sprite_PinkShuriEnd:
PAL_Sprite_FireAndExplosions:
	db "Sprite_FireAndExplosions.bin"
PAL_Sprite_FireAndExplosionsEnd:
PAL_Sprite_RacingFlag:
	db "Sprite_RacingFlag.bin"
PAL_Sprite_RacingFlagEnd:
PAL_Sprite_TrafficLight:
	db "Sprite_TrafficLight.bin"
PAL_Sprite_TrafficLightEnd:
PAL_Sprite_KRoolFreezeShots:
	db "Sprite_KRoolFreezeShots.bin"
PAL_Sprite_KRoolFreezeShotsEnd:
PAL_Sprite_KRoolSlowdownShots:
	db "Sprite_KRoolSlowdownShots.bin"
PAL_Sprite_KRoolSlowdownShotsEnd:
PAL_Sprite_KRoolReverseShots:
	db "Sprite_KRoolReverseShots.bin"
PAL_Sprite_KRoolReverseShotsEnd:
PAL_Sprite_Unknown13:
	db "Sprite_Unknown13.bin"
PAL_Sprite_Unknown13End:
PAL_Sprite_MapHelicopterBarrel:
	db "Sprite_MapHelicopterBarrel.bin"
PAL_Sprite_MapHelicopterBarrelEnd:
PAL_Sprite_Yoshi:
	db "Sprite_Yoshi.bin"
PAL_Sprite_YoshiEnd:
PAL_Sprite_Mario:
	db "Sprite_Mario.bin"
PAL_Sprite_MarioEnd:
PAL_Sprite_TransparentKRool1:
	db "Sprite_TransparentKRool1.bin"
PAL_Sprite_TransparentKRool1End:
PAL_Sprite_TransparentKRool2:
	db "Sprite_TransparentKRool2.bin"
PAL_Sprite_TransparentKRool2End:
PAL_Sprite_TransparentKRool3:
	db "Sprite_TransparentKRool3.bin"
PAL_Sprite_TransparentKRool3End:
PAL_Sprite_Unknown14:
	db "Sprite_Unknown14.bin"
PAL_Sprite_Unknown14End:
PAL_Sprite_Unknown15:
	db "Sprite_Unknown15.bin"
PAL_Sprite_Unknown15End:
PAL_Sprite_Unknown16:
	db "Sprite_Unknown16.bin"
PAL_Sprite_Unknown16End:
PAL_Sprite_Kudgel:
	db "Sprite_Kudgel.bin"
PAL_Sprite_KudgelEnd:
PAL_Sprite_KudgelsClub:
	db "Sprite_KudgelsClub.bin"
PAL_Sprite_KudgelsClubEnd:
PAL_Sprite_Unknown17:
	db "Sprite_Unknown17.bin"
PAL_Sprite_Unknown17End:
PAL_Sprite_Unknown18:
	db "Sprite_Unknown18.bin"
PAL_Sprite_Unknown18End:
PAL_Sprite_Unknown19:
	db "Sprite_Unknown19.bin"
PAL_Sprite_Unknown19End:
PAL_Sprite_Kleever2:
	db "Sprite_Kleever2.bin"
PAL_Sprite_Kleever2End:
PAL_Sprite_Kleever5:
	db "Sprite_Kleever5.bin"
PAL_Sprite_Kleever5End:
PAL_Sprite_Kleever3:
	db "Sprite_Kleever3.bin"
PAL_Sprite_Kleever3End:
PAL_Sprite_Kleever4:
	db "Sprite_Kleever4.bin"
PAL_Sprite_Kleever4End:
PAL_Sprite_KingZingStinqStinger1:
	db "Sprite_KingZingStinqStinger1.bin"
PAL_Sprite_KingZingStinqStinger1End:
PAL_Sprite_KingZingStinqStinger2:
	db "Sprite_KingZingStinqStinger2.bin"
PAL_Sprite_KingZingStinqStinger2End:
PAL_Sprite_KingZingStinqStinger3:
	db "Sprite_KingZingStinqStinger3.bin"
PAL_Sprite_KingZingStinqStinger3End:
PAL_Sprite_KingZingStinqStinger4:
	db "Sprite_KingZingStinqStinger4.bin"
PAL_Sprite_KingZingStinqStinger4End:
PAL_Sprite_FunkyKong:
	db "Sprite_FunkyKong.bin"
PAL_Sprite_FunkyKongEnd:
PAL_Sprite_Unknown20:
	db "Sprite_Unknown20.bin"
PAL_Sprite_Unknown20End:
PAL_Sprite_KRoolsNote:
	db "Sprite_KRoolsNote.bin"
PAL_Sprite_KRoolsNoteEnd:
PAL_Sprite_WrinklyKong:
	db "Sprite_WrinklyKong.bin"
PAL_Sprite_WrinklyKongEnd:
PAL_Sprite_WrinklyKongBook:
	db "Sprite_WrinklyKongBook.bin"
PAL_Sprite_WrinklyKongBookEnd:
PAL_Sprite_CrankyAndWrinklyLevelIcons:
	db "Sprite_CrankyAndWrinklyLevelIcons.bin"
PAL_Sprite_CrankyAndWrinklyLevelIconsEnd:
PAL_Sprite_FunkyAndSwankyLevelIcons:
	db "Sprite_FunkyAndSwankyLevelIcons.bin"
PAL_Sprite_FunkyAndSwankyLevelIconsEnd:
PAL_Sprite_SkullLevelIcons:
	db "Sprite_SkullLevelIcons.bin"
PAL_Sprite_SkullLevelIconsEnd:
PAL_Sprite_Unknown21:
	db "Sprite_Unknown21.bin"
PAL_Sprite_Unknown21End:
PAL_Sprite_KudgelWaterSplash:
	db "Sprite_KudgelWaterSplash.bin"
PAL_Sprite_KudgelWaterSplashEnd:
PAL_Sprite_LostWorldBridge:
	db "Sprite_LostWorldBridge.bin"
PAL_Sprite_LostWorldBridgeEnd:
PAL_Sprite_Unknown22:
	db "Sprite_Unknown22.bin"
PAL_Sprite_Unknown22End:
PAL_Sprite_DonkeyKong:
	db "Sprite_DonkeyKong.bin"
PAL_Sprite_DonkeyKongEnd:
PAL_Sprite_FloppingFish:
	db "Sprite_FloppingFish.bin"
PAL_Sprite_FloppingFishEnd:
PAL_Sprite_Snapjaw:
	db "Sprite_Snapjaw.bin"
PAL_Sprite_SnapjawEnd:
PAL_Sprite_BreakableWall_ShipHold_ShortWoodenBox:
	db "Sprite_BreakableWall_ShipHold_ShortWoodenBox.bin"
PAL_Sprite_BreakableWall_ShipHold_ShortWoodenBoxEnd:
PAL_Sprite_FlyingKrocRoofPieces:
	db "Sprite_FlyingKrocRoofPieces.bin"
PAL_Sprite_FlyingKrocRoofPiecesEnd:
PAL_Sprite_Unknown23:
	db "Sprite_Unknown23.bin"
PAL_Sprite_Unknown23End:
PAL_Sprite_GreenKutlass:
	db "Sprite_GreenKutlass.bin"
PAL_Sprite_GreenKutlassEnd:
PAL_Sprite_GiantTire:
	db "Sprite_GiantTire.bin"
PAL_Sprite_GiantTireEnd:
PAL_Sprite_Unknown24:
	db "Sprite_Unknown24.bin"
PAL_Sprite_Unknown24End:
PAL_Sprite_ClickClack:
	db "Sprite_ClickClack.bin"
PAL_Sprite_ClickClackEnd:
PAL_Sprite_Unknown25:
	db "Sprite_Unknown25.bin"
PAL_Sprite_Unknown25End:
PAL_Sprite_MapKRool:
	db "Sprite_MapKRool.bin"
PAL_Sprite_MapKRoolEnd:
PAL_Sprite_MapKRoolWaterSplash:
	db "Sprite_MapKRoolWaterSplash.bin"
PAL_Sprite_MapKRoolWaterSplashEnd:
PAL_Sprite_Krook:
	db "Sprite_Krook.bin"
PAL_Sprite_KrookEnd:
PAL_Sprite_GreenKrochead:
	db "Sprite_GreenKrochead.bin"
PAL_Sprite_GreenKrocheadEnd:
PAL_Sprite_OrangeKlank:
	db "Sprite_OrangeKlank.bin"
PAL_Sprite_OrangeKlankEnd:
PAL_Sprite_PinkKlank:
	db "Sprite_PinkKlank.bin"
PAL_Sprite_PinkKlankEnd:
PAL_Sprite_KreepyKrowHead:
	db "Sprite_KreepyKrowHead.bin"
PAL_Sprite_KreepyKrowHeadEnd:
PAL_Sprite_KreepyKrowBody:
	db "Sprite_KreepyKrowBody.bin"
PAL_Sprite_KreepyKrowBodyEnd:
PAL_Sprite_DyingKreepyKrowHead1:
	db "Sprite_DyingKreepyKrowHead1.bin"
PAL_Sprite_DyingKreepyKrowHead1End:
PAL_Sprite_DyingKreepyKrowBody1:
	db "Sprite_DyingKreepyKrowBody1.bin"
PAL_Sprite_DyingKreepyKrowBody1End:
PAL_Sprite_DyingKreepyKrowHead2:
	db "Sprite_DyingKreepyKrowHead2.bin"
PAL_Sprite_DyingKreepyKrowHead2End:
PAL_Sprite_DyingKreepyKrowBody2:
	db "Sprite_DyingKreepyKrowBody2.bin"
PAL_Sprite_DyingKreepyKrowBody2End:
PAL_Sprite_DyingKreepyKrowHead3:
	db "Sprite_DyingKreepyKrowHead3.bin"
PAL_Sprite_DyingKreepyKrowHead3End:
PAL_Sprite_DyingKreepyKrowBody3:
	db "Sprite_DyingKreepyKrowBody3.bin"
PAL_Sprite_DyingKreepyKrowBody3End:
PAL_Sprite_BreakableWall_ForestRightWall:
	db "Sprite_BreakableWall_ForestRightWall.bin"
PAL_Sprite_BreakableWall_ForestRightWallEnd:

;--------------------------------------------------------------------

Music_None:
	db "None.bin"
Music_NoneEnd:
Music_WelcomeToCrocodileIsle:
	db "WelcomeToCrocodileIsle.bin"
Music_WelcomeToCrocodileIsleEnd:
Music_KRoolReturns:
	db "KRoolReturns.bin"
Music_KRoolReturnsEnd:
Music_BayouBoogie:
	db "BayouBoogie.bin"
Music_BayouBoogieEnd:
Music_SwankysSwing:
	db "SwankysSwing.bin"
Music_SwankysSwingEnd:
Music_ForestInterlude:
	db "ForestInterlude.bin"
Music_ForestInterludeEnd:
Music_KlompsRomp:
	db "KlompsRomp.bin"
Music_KlompsRompEnd:
Music_MiningMelancholy:
	db "MiningMelancholy.bin"
Music_MiningMelancholyEnd:
Music_FunkyTheMainMonkey:
	db "FunkyTheMainMonkey.bin"
Music_FunkyTheMainMonkeyEnd:
Music_StickerbushSymphony:
	db "StickerbushSymphony.bin"
Music_StickerbushSymphonyEnd:
Music_KlubbasReveille:
	db "KlubbasReveille.bin"
Music_KlubbasReveilleEnd:
Music_FlightOfTheZinger:
	db "FlightOfTheZinger.bin"
Music_FlightOfTheZingerEnd:
Music_SchoolHouseHarmony:
	db "SchoolHouseHarmony.bin"
Music_SchoolHouseHarmonyEnd:
Music_HotHeadBop:
	db "HotHeadBop.bin"
Music_HotHeadBopEnd:
Music_DiscoTrain:
	db "DiscoTrain.bin"
Music_DiscoTrainEnd:
Music_BonusIntro:
	db "BonusIntro.bin"
Music_BonusIntroEnd:
Music_LockjawsSaga:
	db "LockjawsSaga.bin"
Music_LockjawsSagaEnd:
Music_Opening:
	db "Opening.bin"
Music_OpeningEnd:
Music_SnakeyChantey:
	db "SnakeyChantey.bin"
Music_SnakeyChanteyEnd:
Music_StrongholdShowdown:
	db "StrongholdShowdown.bin"
Music_StrongholdShowdownEnd:
Music_GameOver:
	db "GameOver.bin"
Music_GameOverEnd:
Music_BossBossanova:
	db "BossBossanova.bin"
Music_BossBossanovaEnd:
Music_KrooksMarch:
	db "KrooksMarch.bin"
Music_KrooksMarchEnd:
Music_HauntedChase:
	db "HauntedChase.bin"
Music_HauntedChaseEnd:
Music_SteelDrumRhumba:
	db "SteelDrumRhumba.bin"
Music_SteelDrumRhumbaEnd:
Music_CrankysConga:
	db "CrankysConga.bin"
Music_CrankysCongaEnd:
Music_InASnowBoundLand:
	db "InASnowBoundLand.bin"
Music_InASnowBoundLandEnd:
Music_PrimalRave:
	db "PrimalRave.bin"
Music_PrimalRaveEnd:
Music_LostWorldAnthem:
	db "LostWorldAnthem.bin"
Music_LostWorldAnthemEnd:
Music_JibJig:
	db "JibJig.bin"
Music_JibJigEnd:
Music_DonkeyKongRescued:
	db "DonkeyKongRescued.bin"
Music_DonkeyKongRescuedEnd:
Music_CrocodileCacophony:
	db "CrocodileCacophony.bin"
Music_CrocodileCacophonyEnd:
Music_Unknown:
	db "Unknown.bin"
Music_UnknownEnd:

;--------------------------------------------------------------------

GlobalSoundEffects:
	db "GlobalSoundEffects.bin"
GlobalSoundEffectsEnd:
DATA_F2F106:
	db "DATA_F2F106.bin"
DATA_F2F106End:
DATA_F2F12E:
	db "DATA_F2F12E.bin"
DATA_F2F12EEnd:
DATA_F2F2F0:
	db "DATA_F2F2F0.bin"
DATA_F2F2F0End:
DATA_F2F558:
	db "DATA_F2F558.bin"
DATA_F2F558End:
DATA_F2F6C5:
	db "DATA_F2F6C5.bin"
DATA_F2F6C5End:
DATA_F2F722:
	db "DATA_F2F722.bin"
DATA_F2F722End:
DATA_F2F978:
	db "DATA_F2F978.bin"
DATA_F2F978End:

;--------------------------------------------------------------------

BRRFile00:
	db "00.brr"
BRRFile00End:
BRRFile01:
	db "01.brr"
BRRFile01End:
BRRFile02:
	db "02.brr"
BRRFile02End:
BRRFile03:
	db "03.brr"
BRRFile03End:
BRRFile04:
	db "04.brr"
BRRFile04End:
BRRFile05:
	db "05.brr"
BRRFile05End:
BRRFile06:
	db "06.brr"
BRRFile06End:
BRRFile07:
	db "07.brr"
BRRFile07End:
BRRFile08:
	db "08.brr"
BRRFile08End:
BRRFile09:
	db "09.brr"
BRRFile09End:
BRRFile0A:
	db "0A.brr"
BRRFile0AEnd:
BRRFile0B:
	db "0B.brr"
BRRFile0BEnd:
BRRFile0C:
	db "0C.brr"
BRRFile0CEnd:
BRRFile0D:
	db "0D.brr"
BRRFile0DEnd:
BRRFile0E:
	db "0E.brr"
BRRFile0EEnd:
BRRFile0F:
	db "0F.brr"
BRRFile0FEnd:
BRRFile10:
	db "10.brr"
BRRFile10End:
BRRFile11:
	db "11.brr"
BRRFile11End:
BRRFile12:
	db "12.brr"
BRRFile12End:
BRRFile13:
	db "13.brr"
BRRFile13End:
BRRFile14:
	db "14.brr"
BRRFile14End:
BRRFile15:
	db "15.brr"
BRRFile15End:
BRRFile16:
	db "16.brr"
BRRFile16End:
BRRFile17:
	db "17.brr"
BRRFile17End:
BRRFile18:
	db "18.brr"
BRRFile18End:
BRRFile19:
	db "19.brr"
BRRFile19End:
BRRFile1A:
	db "1A.brr"
BRRFile1AEnd:
BRRFile1B:
	db "1B.brr"
BRRFile1BEnd:
BRRFile1C:
	db "1C.brr"
BRRFile1CEnd:
BRRFile1D:
	db "1D.brr"
BRRFile1DEnd:
BRRFile1E:
	db "1E.brr"
BRRFile1EEnd:
BRRFile1F:
	db "1F.brr"
BRRFile1FEnd:
BRRFile20:
	db "20.brr"
BRRFile20End:
BRRFile21:
	db "21.brr"
BRRFile21End:
BRRFile22:
	db "22.brr"
BRRFile22End:
BRRFile23:
	db "23.brr"
BRRFile23End:
BRRFile24:
	db "24.brr"
BRRFile24End:
BRRFile25:
	db "25.brr"
BRRFile25End:
BRRFile26:
	db "26.brr"
BRRFile26End:
BRRFile27:
	db "27.brr"
BRRFile27End:
BRRFile28:
	db "28.brr"
BRRFile28End:
BRRFile29:
	db "29.brr"
BRRFile29End:
BRRFile2A:
	db "2A.brr"
BRRFile2AEnd:
BRRFile2B:
	db "2B.brr"
BRRFile2BEnd:
BRRFile2C:
	db "2C.brr"
BRRFile2CEnd:
BRRFile2D:
	db "2D.brr"
BRRFile2DEnd:
BRRFile2E:
	db "2E.brr"
BRRFile2EEnd:
BRRFile2F:
	db "2F.brr"
BRRFile2FEnd:
BRRFile30:
	db "30.brr"
BRRFile30End:
BRRFile31:
	db "31.brr"
BRRFile31End:
BRRFile32:
	db "32.brr"
BRRFile32End:
BRRFile33:
	db "33.brr"
BRRFile33End:
BRRFile34:
	db "34.brr"
BRRFile34End:
BRRFile35:
	db "35.brr"
BRRFile35End:
BRRFile36:
	db "36.brr"
BRRFile36End:
BRRFile37:
	db "37.brr"
BRRFile37End:
BRRFile38:
	db "38.brr"
BRRFile38End:
BRRFile39:
	db "39.brr"
BRRFile39End:
BRRFile3A:
	db "3A.brr"
BRRFile3AEnd:
BRRFile3B:
	db "3B.brr"
BRRFile3BEnd:
BRRFile3C:
	db "3C.brr"
BRRFile3CEnd:
BRRFile3D:
	db "3D.brr"
BRRFile3DEnd:
BRRFile3E:
	db "3E.brr"
BRRFile3EEnd:
BRRFile3F:
	db "3F.brr"
BRRFile3FEnd:
BRRFile40:
	db "40.brr"
BRRFile40End:
BRRFile41:
	db "41.brr"
BRRFile41End:
BRRFile42:
	db "42.brr"
BRRFile42End:
BRRFile43:
	db "43.brr"
BRRFile43End:
BRRFile44:
	db "44.brr"
BRRFile44End:
BRRFile45:
	db "45.brr"
BRRFile45End:
BRRFile46:
	db "46.brr"
BRRFile46End:
BRRFile47:
	db "47.brr"
BRRFile47End:
BRRFile48:
	db "48.brr"
BRRFile48End:
BRRFile49:
	db "49.brr"
BRRFile49End:
BRRFile4A:
	db "4A.brr"
BRRFile4AEnd:
BRRFile4B:
	db "4B.brr"
BRRFile4BEnd:
BRRFile4C:
	db "4C.brr"
BRRFile4CEnd:
BRRFile4D:
	db "4D.brr"
BRRFile4DEnd:
BRRFile4E:
	db "4E.brr"
BRRFile4EEnd:
BRRFile4F:
	db "4F.brr"
BRRFile4FEnd:
BRRFile50:
	db "50.brr"
BRRFile50End:
BRRFile51:
	db "51.brr"
BRRFile51End:
BRRFile52:
	db "52.brr"
BRRFile52End:
BRRFile53:
	db "53.brr"
BRRFile53End:
BRRFile54:
	db "54.brr"
BRRFile54End:
BRRFile55:
	db "55.brr"
BRRFile55End:
BRRFile56:
	db "56.brr"
BRRFile56End:
BRRFile57:
	db "57.brr"
BRRFile57End:
BRRFile58:
	db "58.brr"
BRRFile58End:
BRRFile59:
	db "59.brr"
BRRFile59End:
BRRFile5A:
	db "5A.brr"
BRRFile5AEnd:
BRRFile5B:
	db "5B.brr"
BRRFile5BEnd:
BRRFile5C:
	db "5C.brr"
BRRFile5CEnd:
BRRFile5D:
	db "5D.brr"
BRRFile5DEnd:
BRRFile5E:
	db "5E.brr"
BRRFile5EEnd:
BRRFile5F:
	db "5F.brr"
BRRFile5FEnd:
BRRFile60:
	db "60.brr"
BRRFile60End:
BRRFile61:
	db "61.brr"
BRRFile61End:
BRRFile62:
	db "62.brr"
BRRFile62End:
BRRFile63:
	db "63.brr"
BRRFile63End:
BRRFile64:
	db "64.brr"
BRRFile64End:
BRRFile65:
	db "65.brr"
BRRFile65End:
BRRFile66:
	db "66.brr"
BRRFile66End:
BRRFile67:
	db "67.brr"
BRRFile67End:
BRRFile68:
	db "68.brr"
BRRFile68End:
BRRFile69:
	db "69.brr"
BRRFile69End:
BRRFile6A:
	db "6A.brr"
BRRFile6AEnd:
BRRFile6B:
	db "6B.brr"
BRRFile6BEnd:
BRRFile6C:
	db "6C.brr"
BRRFile6CEnd:
BRRFile6D:
	db "6D.brr"
BRRFile6DEnd:
BRRFile6E:
	db "6E.brr"
BRRFile6EEnd:
BRRFile6F:
	db "6F.brr"
BRRFile6FEnd:
BRRFile70:
	db "70.brr"
BRRFile70End:
BRRFile71:
	db "71.brr"
BRRFile71End:
BRRFile72:
	db "72.brr"
BRRFile72End:
BRRFile73:
	db "73.brr"
BRRFile73End:
BRRFile74:
	db "74.brr"
BRRFile74End:
BRRFile75:
	db "75.brr"
BRRFile75End:
BRRFile76:
	db "76.brr"
BRRFile76End:
BRRFile77:
	db "77.brr"
BRRFile77End:
BRRFile78:
	db "78.brr"
BRRFile78End:
BRRFile79:
	db "79.brr"
BRRFile79End:
BRRFile7A:
	db "7A.brr"
BRRFile7AEnd:
BRRFile7B:
	db "7B.brr"
BRRFile7BEnd:
BRRFile7C:
	db "7C.brr"
BRRFile7CEnd:
BRRFile7D:
	db "7D.brr"
BRRFile7DEnd:
BRRFile7E:
	db "7E.brr"
BRRFile7EEnd:
BRRFile7F:
	db "7F.brr"
BRRFile7FEnd:
BRRFile80:
	db "80.brr"
BRRFile80End:
BRRFile81:
	db "81.brr"
BRRFile81End:
BRRFile82:
	db "82.brr"
BRRFile82End:
BRRFile83:
	db "83.brr"
BRRFile83End:
BRRFile84:
	db "84.brr"
BRRFile84End:
BRRFile85:
	db "85.brr"
BRRFile85End:
BRRFile86:
	db "86.brr"
BRRFile86End:
BRRFile87:
	db "87.brr"
BRRFile87End:
BRRFile88:
	db "88.brr"
BRRFile88End:
BRRFile89:
	db "89.brr"
BRRFile89End:
BRRFile8A:
	db "8A.brr"
BRRFile8AEnd:
BRRFile8B:
	db "8B.brr"
BRRFile8BEnd:
BRRFile8C:
	db "8C.brr"
BRRFile8CEnd:
BRRFile8D:
	db "8D.brr"
BRRFile8DEnd:
BRRFile8E:
	db "8E.brr"
BRRFile8EEnd:
BRRFile8F:
	db "8F.brr"
BRRFile8FEnd:
BRRFile90:
	db "90.brr"
BRRFile90End:
BRRFile91:
	db "91.brr"
BRRFile91End:
BRRFile92:
	db "92.brr"
BRRFile92End:
BRRFile93:
	db "93.brr"
BRRFile93End:
BRRFile94:
	db "94.brr"
BRRFile94End:
BRRFile95:
	db "95.brr"
BRRFile95End:
BRRFile96:
	db "96.brr"
BRRFile96End:
BRRFile97:
	db "97.brr"
BRRFile97End:
BRRFile98:
	db "98.brr"
BRRFile98End:
BRRFile99:
	db "99.brr"
BRRFile99End:
BRRFile9A:
	db "9A.brr"
BRRFile9AEnd:
BRRFile9B:
	db "9B.brr"
BRRFile9BEnd:
BRRFile9C:
	db "9C.brr"
BRRFile9CEnd:
BRRFile9D:
	db "9D.brr"
BRRFile9DEnd:
BRRFile9E:
	db "9E.brr"
BRRFile9EEnd:
BRRFile9F:
	db "9F.brr"
BRRFile9FEnd:
BRRFileA0:
	db "A0.brr"
BRRFileA0End:
BRRFileA1:
	db "A1.brr"
BRRFileA1End:
BRRFileA2:
	db "A2.brr"
BRRFileA2End:
BRRFileA3:
	db "A3.brr"
BRRFileA3End:
BRRFileA4:
	db "A4.brr"
BRRFileA4End:
BRRFileA5:
	db "A5.brr"
BRRFileA5End:
BRRFileA6:
	db "A6.brr"
BRRFileA6End:
BRRFileA7:
	db "A7.brr"
BRRFileA7End:
BRRFileA8:
	db "A8.brr"
BRRFileA8End:
BRRFileA9:
	db "A9.brr"
BRRFileA9End:
BRRFileAA:
	db "AA.brr"
BRRFileAAEnd:
BRRFileAB:
	db "AB.brr"
BRRFileABEnd:
BRRFileAC:
	db "AC.brr"
BRRFileACEnd:
BRRFileAD:
	db "AD.brr"
BRRFileADEnd:
BRRFileAE:
	db "AE.brr"
BRRFileAEEnd:
BRRFileAF:
	db "AF.brr"
BRRFileAFEnd:
BRRFileB0:
	db "B0.brr"
BRRFileB0End:
BRRFileB1:
	db "B1.brr"
BRRFileB1End:
BRRFileB2:
	db "B2.brr"
BRRFileB2End:
BRRFileB3:
	db "B3.brr"
BRRFileB3End:
BRRFileB4:
	db "B4.brr"
BRRFileB4End:
BRRFileB5:
	db "B5.brr"
BRRFileB5End:
BRRFileB6:
	db "B6.brr"
BRRFileB6End:
BRRFileB7:
	db "B7.brr"
BRRFileB7End:
BRRFileB8:
	db "B8.brr"
BRRFileB8End:
BRRFileB9:
	db "B9.brr"
BRRFileB9End:
BRRFileBA:
	db "BA.brr"
BRRFileBAEnd:
BRRFileBB:
	db "BB.brr"
BRRFileBBEnd:
BRRFileBC:
	db "BC.brr"
BRRFileBCEnd:
BRRFileBD:
	db "BD.brr"
BRRFileBDEnd:
BRRFileBE:
	db "BE.brr"
BRRFileBEEnd:
BRRFileBF:
	db "BF.brr"
BRRFileBFEnd:
BRRFileC0:
	db "C0.brr"
BRRFileC0End:
BRRFileC1:
	db "C1.brr"
BRRFileC1End:
BRRFileC2:
	db "C2.brr"
BRRFileC2End:
BRRFileC3:
	db "C3.brr"
BRRFileC3End:
BRRFileC4:
	db "C4.brr"
BRRFileC4End:
BRRFileC5:
	db "C5.brr"
BRRFileC5End:
BRRFileC6:
	db "C6.brr"
BRRFileC6End:
BRRFileC7:
	db "C7.brr"
BRRFileC7End:
BRRFileC8:
	db "C8.brr"
BRRFileC8End:
BRRFileC9:
	db "C9.brr"
BRRFileC9End:
BRRFileCA:
	db "CA.brr"
BRRFileCAEnd:
BRRFileCB:
	db "CB.brr"
BRRFileCBEnd:
BRRFileCC:
	db "CC.brr"
BRRFileCCEnd:
BRRFileCD:
	db "CD.brr"
BRRFileCDEnd:
BRRFileCE:
	db "CE.brr"
BRRFileCEEnd:
BRRFileCF:
	db "CF.brr"
BRRFileCFEnd:
BRRFileD0:
	db "D0.brr"
BRRFileD0End:
BRRFileD1:
	db "D1.brr"
BRRFileD1End:
BRRFileD2:
	db "D2.brr"
BRRFileD2End:
BRRFileD3:
	db "D3.brr"
BRRFileD3End:
BRRFileD4:
	db "D4.brr"
BRRFileD4End:
BRRFileD5:
	db "D5.brr"
BRRFileD5End:
BRRFileD6:
	db "D6.brr"
BRRFileD6End:
BRRFileD7:
	db "D7.brr"
BRRFileD7End:
BRRFileD8:
	db "D8.brr"
BRRFileD8End:
BRRFileD9:
	db "D9.brr"
BRRFileD9End:
BRRFileDA:
	db "DA.brr"
BRRFileDAEnd:

;--------------------------------------------------------------------
