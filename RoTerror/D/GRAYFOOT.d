BEGIN ~GRAYFOOT~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN EXTERN ~BRUNDOR~ 0
END

IF ~~ THEN BEGIN 1 // from: BRUNDOR
  SAY @1 
  IF ~~ THEN DO ~SetGlobal("SmithApprsc","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: BRUNDOR
  SAY @2
  IF ~Global("Brundtalk","RR3101",0)~ THEN EXTERN ~BRUNDOR~ 18
  IF ~Global("Brundtalk","RR3101",1)~ THEN EXTERN ~BRUNDOR~ 31
END

IF ~Global("Talkgray","LOCALS",0)
!Global("ForgedItemGray","RR3101",1)
!Global("ForgedItemGray","RR3101",2)
!Global("ForgedItemGray","RR3101",3)
!Global("ForgedItemGray","RR3101",4)
!Global("ForgedItemGray","RR3101",5)
!Global("ForgedItemGray","RR3101",6)
!Global("ForgedItemGray","RR3101",7)
!Global("ForgedItemGray","RR3101",8)
!Global("ForgedItemGray","RR3101",9)
!Global("ForgedItemGray","RR3101",10)
!Global("ForgedItemGray","RR3101",11)
!Global("ForgedItemGray","RR3101",12)
!Global("ForgedItemGray","RR3101",13)
!Global("ForgedItemGray","RR3101",14)
!Global("PackStuffPip","RR3101",2)
!NumTimesTalkedTo(0)
!Global("SmithApprsc","GLOBAL",3)
!Global("SmithApprsc","GLOBAL",4)
!Global("SmithApprsc","GLOBAL",7)
!Global("SmithApprsc","GLOBAL",8)
!Global("SmithApprextra","RR3101",1)
!Global("SmithApprextra","RR3101",2)
!Global("SmithApprextra","RR3101",3)
!Global("SmithApprextra","RR3101",4)
!Global("SmithApprextra","RR3101",5)~ THEN BEGIN 3
  SAY @3 
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 21.0 16.0 8.0 6.0 3.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~~ THEN REPLY @11 GOTO 15
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 8.1 3.1
  SAY @14
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @15
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 15.1 14.2 12.2 11.3 6.1 4.2 3.2
  SAY @17
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 15.2 14.3 12.3 11.4 8.2 6.2 4.3 3.4
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 15.0 4.0
  SAY @22
  IF ~!PartyHasItem("GrayBook")~ THEN DO ~SetGlobal("KnowGem","LOCALS",1)
GiveItemCreate("GrayBook",LastTalkedToBy,0,0,0)~ GOTO 12
  IF ~PartyHasItem("GrayBook")~ THEN REPLY @23 DO ~SetGlobal("KnowGem","LOCALS",1)~ GOTO 13
  IF ~PartyHasItem("GrayBook")~ THEN REPLY @24 DO ~SetGlobal("KnowGem","LOCALS",1)~ GOTO 15
  IF ~PartyHasItem("GrayBook")~ THEN REPLY @12 DO ~SetGlobal("KnowGem","LOCALS",1)~ GOTO 7
  IF ~PartyHasItem("GrayBook")~ THEN REPLY @13 DO ~SetGlobal("KnowGem","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 /* #69534 */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 121.0 120.0 119.0 118.0 117.0 116.0 115.0 100.3 92.2 86.2 79.0 76.0 72.2 52.0 50.0 48.0 46.3 27.4 26.3 25.3 24.3 23.4 14.0 12.0 11.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~PartyHasItem("StarGem")~ THEN REPLY @30 GOTO 23
  IF ~PartyHasItem("BlackGem")~ THEN REPLY @31 GOTO 24
  IF ~PartyHasItem("AcidGem")~ THEN REPLY @32 GOTO 25
  IF ~PartyHasItem("FireOrb")~ THEN REPLY @33 GOTO 26
  IF ~PartyHasItem("FrozOrb")~ THEN REPLY @34 GOTO 27
  IF ~PartyHasItem("GlowRock")~ THEN REPLY @35 GOTO 28
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 13
  IF ~~ THEN REPLY @38 GOTO 15
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @39 GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 14.1 12.1 11.2 4.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~Global("Talkgray","LOCALS",1)
!Global("ForgedItemGray","RR3101",1)
!Global("ForgedItemGray","RR3101",2)
!Global("ForgedItemGray","RR3101",3)
!Global("ForgedItemGray","RR3101",4)
!Global("ForgedItemGray","RR3101",5)
!Global("ForgedItemGray","RR3101",6)
!Global("ForgedItemGray","RR3101",7)
!Global("ForgedItemGray","RR3101",8)
!Global("ForgedItemGray","RR3101",9)
!Global("ForgedItemGray","RR3101",10)
!Global("ForgedItemGray","RR3101",11)
!Global("ForgedItemGray","RR3101",12)
!Global("ForgedItemGray","RR3101",13)
!Global("ForgedItemGray","RR3101",14)
!Global("SmithApprsc","GLOBAL",3)
!Global("SmithApprsc","GLOBAL",4)
!Global("SmithApprsc","GLOBAL",7)
!Global("SmithApprsc","GLOBAL",8)
!Global("SmithApprextra","RR3101",1)
!Global("SmithApprextra","RR3101",2)
!Global("SmithApprextra","RR3101",3)
!Global("SmithApprextra","RR3101",4)
!Global("SmithApprextra","RR3101",5)
!Global("PackStuffPip","RR3101",2)~ THEN BEGIN 16
  SAY @42 
  IF ~!Global("KnowGem","LOCALS",1)~ THEN REPLY @4 DO ~SetGlobal("KnowGem","LOCALS",1)~ GOTO 4
  IF ~Global("KnowGem","LOCALS",1)~ THEN REPLY @43 GOTO 17
  IF ~~ THEN REPLY @44 GOTO 20
  IF ~~ THEN REPLY @45 GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 159.2 154.0 144.3 138.2 134.2 129.2 121.1 120.1 119.1 118.1 117.1 116.1 115.1 79.1 76.1 66.3 52.1 50.1 48.1 34.3 33.4 32.3 31.3 30.3 29.4 21.1 18.0 16.1
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 18
  IF ~PartyHasItem("StarGem")~ THEN REPLY @30 GOTO 29
  IF ~PartyHasItem("BlackGem")~ THEN REPLY @31 GOTO 30
  IF ~PartyHasItem("AcidGem")~ THEN REPLY @32 GOTO 31
  IF ~PartyHasItem("FireOrb")~ THEN REPLY @33 GOTO 32
  IF ~PartyHasItem("FrozOrb")~ THEN REPLY @34 GOTO 33
  IF ~PartyHasItem("GlowRock")~ THEN REPLY @35 GOTO 34
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 17
  IF ~~ THEN REPLY @50 GOTO 20
  IF ~~ THEN REPLY @39 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 21.2 18.2
  SAY @51
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1 16.2
  SAY @17
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @18
  IF ~!Global("KnowGem","LOCALS",1)~ THEN REPLY @52 DO ~SetGlobal("KnowGem","LOCALS",1)~ GOTO 4
  IF ~Global("KnowGem","LOCALS",1)~ THEN REPLY @53 GOTO 17
  IF ~~ THEN REPLY @54 GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 16.3
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.1
  SAY @56
  IF ~PartyHasItem("HELM01")~ THEN REPLY @57 GOTO 35
  IF ~PartyHasItem("SHLD01")~ THEN REPLY @58 GOTO 38
  IF ~PartyHasItem("BLUN04")~ THEN REPLY @59 GOTO 41
  IF ~~ THEN REPLY @60 GOTO 44
  IF ~~ THEN REPLY @61 GOTO 13
  IF ~~ THEN REPLY @62 GOTO 47
END

IF ~~ THEN BEGIN 24 // from: 13.2
  SAY @63
  IF ~PartyHasItem("HAMM01")~ THEN REPLY @64 GOTO 67
  IF ~PartyHasItem("PLAT01")~ THEN REPLY @65 GOTO 69
  IF ~~ THEN REPLY @66 GOTO 71
  IF ~~ THEN REPLY @61 GOTO 13
  IF ~~ THEN REPLY @62 GOTO 47
END

IF ~~ THEN BEGIN 25 // from: 13.3
  SAY @67
  IF ~PartyHasItem("AX1H01")~ THEN REPLY @68 GOTO 81
  IF ~PartyHasItem("BLUN02")~ THEN REPLY @69 GOTO 83
  IF ~~ THEN REPLY @66 GOTO 85
  IF ~~ THEN REPLY @61 GOTO 13
  IF ~~ THEN REPLY @62 GOTO 47
END

IF ~~ THEN BEGIN 26 // from: 13.4
  SAY @70
  IF ~PartyHasItem("SHLD03")~ THEN REPLY @58 GOTO 87
  IF ~PartyHasItem("SW1H04")~ THEN REPLY @71 GOTO 89
  IF ~~ THEN REPLY @66 GOTO 91
  IF ~~ THEN REPLY @61 GOTO 13
  IF ~~ THEN REPLY @62 GOTO 47
END

IF ~~ THEN BEGIN 27 // from: 13.5
  SAY @72
  IF ~PartyHasItem("PLAT04")~ THEN REPLY @73 GOTO 93
  IF ~PartyHasItem("SHLD05")~ THEN REPLY @58 GOTO 95
  IF ~PartyHasItem("SW1H43")~ THEN REPLY @74 GOTO 97
  IF ~~ THEN REPLY @66 GOTO 98
  IF ~~ THEN REPLY @61 GOTO 13
  IF ~~ THEN REPLY @62 GOTO 47
END

IF ~~ THEN BEGIN 28 // from: 13.6
  SAY @75
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 17.1
  SAY @56
  IF ~PartyHasItem("HELM01")~ THEN REPLY @57 GOTO 57
  IF ~PartyHasItem("SHLD01")~ THEN REPLY @58 GOTO 60
  IF ~PartyHasItem("BLUN04")~ THEN REPLY @59 GOTO 62
  IF ~~ THEN REPLY @60 GOTO 64
  IF ~~ THEN REPLY @76 GOTO 17
  IF ~~ THEN REPLY @77 GOTO 47
END

IF ~~ THEN BEGIN 30 // from: 17.2
  SAY @63
  IF ~PartyHasItem("HAMM01")~ THEN REPLY @64 GOTO 123
  IF ~PartyHasItem("PLAT01")~ THEN REPLY @65 GOTO 126
  IF ~~ THEN REPLY @66 GOTO 128
  IF ~~ THEN REPLY @76 GOTO 17
  IF ~~ THEN REPLY @77 GOTO 130
END

IF ~~ THEN BEGIN 31 // from: 17.3
  SAY @78
  IF ~PartyHasItem("AX1H01")~ THEN REPLY @68 GOTO 131
  IF ~PartyHasItem("BLUN02")~ THEN REPLY @69 GOTO 132
  IF ~~ THEN REPLY @66 GOTO 133
  IF ~~ THEN REPLY @76 GOTO 17
  IF ~~ THEN REPLY @77 GOTO 130
END

IF ~~ THEN BEGIN 32 // from: 17.4
  SAY @70
  IF ~PartyHasItem("SHLD03")~ THEN REPLY @58 GOTO 135
  IF ~PartyHasItem("SW1H04")~ THEN REPLY @71 GOTO 136
  IF ~~ THEN REPLY @66 GOTO 137
  IF ~~ THEN REPLY @76 GOTO 17
  IF ~~ THEN REPLY @77 GOTO 130
END

IF ~~ THEN BEGIN 33 // from: 17.5
  SAY @72
  IF ~PartyHasItem("PLAT04")~ THEN REPLY @73 GOTO 139
  IF ~PartyHasItem("SHLD05")~ THEN REPLY @58 GOTO 140
  IF ~PartyHasItem("SW1H43")~ THEN REPLY @74 GOTO 141
  IF ~~ THEN REPLY @66 GOTO 142
  IF ~~ THEN REPLY @76 GOTO 17
  IF ~~ THEN REPLY @77 GOTO 130
END

IF ~~ THEN BEGIN 34 // from: 17.6
  SAY @79
  IF ~PartyHasItem("CHAN01")~ THEN REPLY @80 GOTO 152
  IF ~PartyHasItem("HALB01")~ THEN REPLY @81 GOTO 156
  IF ~~ THEN REPLY @66 GOTO 158
  IF ~~ THEN REPLY @76 GOTO 17
  IF ~~ THEN REPLY @77 GOTO 130
END

IF ~~ THEN BEGIN 35 // from: 46.0 23.0
  SAY @82
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("StarGem")
TakePartyItem("HELM01")
TakePartyGold(3000)
DestroyItem("StarGem")
DestroyItem("HELM01")~ GOTO 36
  IF ~~ THEN REPLY @84 GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @85
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",1)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 97.1 95.1 93.1 89.1 87.1 83.1 81.1 69.1 67.1 35.1
  SAY @86
  IF ~~ THEN DO ~SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 46.1 23.1
  SAY @82
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("StarGem")
TakePartyItem("SHLD01")
TakePartyGold(3000)
DestroyItem("StarGem")
DestroyItem("SHLD01")~ GOTO 39
  IF ~~ THEN REPLY @84 GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @85
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",2)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY @86
  IF ~~ THEN DO ~SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 46.2 23.2
  SAY @82
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("StarGem")
TakePartyItem("BLUN04")
TakePartyGold(3000)
DestroyItem("StarGem")
DestroyItem("BLUN04")~ GOTO 42
  IF ~~ THEN REPLY @84 GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @85
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",3)~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY @86
  IF ~~ THEN DO ~SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 23.3
  SAY @87
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @88
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY @89
  IF ~PartyHasItem("HELM01")~ THEN REPLY @90 GOTO 35
  IF ~PartyHasItem("SHLD01")~ THEN REPLY @91 GOTO 38
  IF ~PartyHasItem("BLUN04")~ THEN REPLY @92 GOTO 41
  IF ~~ THEN REPLY @61 GOTO 13
  IF ~~ THEN REPLY @62 GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 100.4 92.3 86.3 72.3 66.4 46.4 29.5 27.5 26.4 25.4 24.4 23.5
  SAY @93
  IF ~~ THEN DO ~SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 48 // from: BRUNDOR
  SAY @94
  IF ~Global("Talkgray","LOCALS",0)~ THEN REPLY @95 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("StarHelm",LastTalkedToBy,0,0,0)~ GOTO 13
  IF ~Global("Talkgray","LOCALS",1)~ THEN REPLY @96 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("StarHelm",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @97 DO ~GiveItemCreate("StarHelm",LastTalkedToBy,0,0,0)~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.2
  SAY @98
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3101",0)
SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 50 // from: BRUNDOR
  SAY @99
  IF ~Global("Talkgray","LOCALS",0)~ THEN REPLY @95 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("StarShld",LastTalkedToBy,0,0,0)~ GOTO 13
  IF ~Global("Talkgray","LOCALS",1)~ THEN REPLY @96 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("StarShld",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @97 DO ~GiveItemCreate("StarShld",LastTalkedToBy,0,0,0)~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.2
  SAY @98
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3101",0)
SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 52 // from: BRUNDOR
  SAY @100
  IF ~Global("Talkgray","LOCALS",0)~ THEN REPLY @95 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("StarMace",LastTalkedToBy,0,0,0)~ GOTO 13
  IF ~Global("Talkgray","LOCALS",1)~ THEN REPLY @96 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("StarMace",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @97 DO ~GiveItemCreate("StarMace",LastTalkedToBy,0,0,0)~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.2
  SAY @98
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3101",0)
SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~Global("ForgedItemGray","RR3101",1)~ THEN BEGIN 54
  SAY @101
  IF ~~ THEN EXTERN ~BRUNDOR~ 40
END

IF ~Global("ForgedItemGray","RR3101",2)~ THEN BEGIN 55
  SAY @101
  IF ~~ THEN EXTERN ~BRUNDOR~ 43
END

IF ~Global("ForgedItemGray","RR3101",3)~ THEN BEGIN 56
  SAY @101
  IF ~~ THEN EXTERN ~BRUNDOR~ 45
END

IF ~~ THEN BEGIN 57 // from: 66.0 29.0
  SAY @82
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("StarGem")
TakePartyItem("HELM01")
TakePartyGold(3000)
DestroyItem("StarGem")
DestroyItem("HELM01")~ GOTO 58
  IF ~~ THEN REPLY @84 GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY @85
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",1)~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 62.1 60.1 57.1
  SAY @86
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from: 66.1 29.1
  SAY @82
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("StarGem")
TakePartyItem("SHLD01")
TakePartyGold(3000)
DestroyItem("StarGem")
DestroyItem("SHLD01")~ GOTO 61
  IF ~~ THEN REPLY @84 GOTO 59
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY @85
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",2)~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 66.2 29.2
  SAY @82
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("StarGem")
TakePartyItem("BLUN04")
TakePartyGold(3000)
DestroyItem("StarGem")
DestroyItem("BLUN04")~ GOTO 63
  IF ~~ THEN REPLY @84 GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @85
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",3)~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 29.3
  SAY @87
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY @88
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY @89
  IF ~PartyHasItem("HELM01")~ THEN REPLY @90 GOTO 57
  IF ~PartyHasItem("SHLD01")~ THEN REPLY @91 GOTO 60
  IF ~PartyHasItem("BLUN04")~ THEN REPLY @92 GOTO 62
  IF ~~ THEN REPLY @76 GOTO 17
  IF ~~ THEN REPLY @77 GOTO 47
END

IF ~~ THEN BEGIN 67 // from: 72.0 24.0
  SAY @102
  IF ~PartyGoldGT(2999)~ THEN REPLY @103 DO ~TakePartyItem("BlackGem")
TakePartyItem("HAMM01")
TakePartyGold(3000)
DestroyItem("BlackGem")
DestroyItem("HAMM01")~ GOTO 68
  IF ~~ THEN REPLY @104 GOTO 37
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY @105
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",4)~ EXIT
END

IF ~~ THEN BEGIN 69 // from: 72.1 24.1
  SAY @102
  IF ~PartyGoldGT(2999)~ THEN REPLY @103 DO ~TakePartyItem("BlackGem")
TakePartyItem("PLAT01")
TakePartyGold(3000)
DestroyItem("BlackGem")
DestroyItem("PLAT01")~ GOTO 70
  IF ~~ THEN REPLY @104 GOTO 37
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY @105
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",5)~ EXIT
END

IF ~~ THEN BEGIN 71 // from: 24.2
  SAY @106
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @107
  IF ~PartyHasItem("HAMM01")~ THEN REPLY @108 GOTO 67
  IF ~PartyHasItem("PLAT01")~ THEN REPLY @109 GOTO 69
  IF ~~ THEN REPLY @61 GOTO 13
  IF ~~ THEN REPLY @62 GOTO 47
END

IF ~Global("ForgedItemGray","RR3101",4)~ THEN BEGIN 73
  SAY @110
  IF ~~ THEN EXTERN ~BRUNDOR~ 47
END

IF ~Global("ForgedItemGray","RR3101",5)~ THEN BEGIN 74
  SAY @110
  IF ~~ THEN EXTERN ~BRUNDOR~ 50
END

IF ~~ THEN BEGIN 75 // from: BRUNDOR
  SAY @111
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY @112
  IF ~Global("Talkgray","LOCALS",0)~ THEN REPLY @95 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("BlacHamm",LastTalkedToBy,0,0,0)~ GOTO 13
  IF ~Global("Talkgray","LOCALS",1)~ THEN REPLY @96 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("BlacHamm",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @113 DO ~GiveItemCreate("BlacHamm",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 121.2 120.2 119.2 118.2 117.2 116.2 115.2 76.2
  SAY @114
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3101",0)
SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 78 // from: BRUNDOR
  SAY @115
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY @116
  IF ~Global("Talkgray","LOCALS",0)~ THEN REPLY @95 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("BlacPlat",LastTalkedToBy,0,0,0)~ GOTO 13
  IF ~Global("Talkgray","LOCALS",1)~ THEN REPLY @96 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("BlacPlat",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @113 DO ~GiveItemCreate("BlacPlat",LastTalkedToBy,0,0,0)~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.2
  SAY @114
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3101",0)
SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 81 // from: 86.0 25.0
  SAY @117
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("AcidGem")
TakePartyItem("AX1H01")
TakePartyGold(3000)
DestroyItem("AcidGem")
DestroyItem("AX1H01")~ GOTO 82
  IF ~~ THEN REPLY @118 GOTO 37
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY @119
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",6)~ EXIT
END

IF ~~ THEN BEGIN 83 // from: 86.1 25.1
  SAY @117
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("AcidGem")
TakePartyItem("BLUN02")
TakePartyGold(3000)
DestroyItem("AcidGem")
DestroyItem("BLUN02")~ GOTO 84
  IF ~~ THEN REPLY @118 GOTO 37
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY @119
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",7)~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 25.2
  SAY @120
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY @121
  IF ~PartyHasItem("AX1H01")~ THEN REPLY @122 GOTO 81
  IF ~PartyHasItem("BLUN02")~ THEN REPLY @123 GOTO 83
  IF ~~ THEN REPLY @61 GOTO 13
  IF ~~ THEN REPLY @62 GOTO 47
END

IF ~~ THEN BEGIN 87 // from: 92.0 26.0
  SAY @124
  IF ~PartyGoldGT(2999)~ THEN REPLY @103 DO ~TakePartyItem("FireOrb")
TakePartyItem("SHLD03")
TakePartyGold(3000)
DestroyItem("FireOrb")
DestroyItem("SHLD03")~ GOTO 88
  IF ~~ THEN REPLY @125 GOTO 37
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY @85
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",8)~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 92.1 26.1
  SAY @124
  IF ~PartyGoldGT(2999)~ THEN REPLY @103 DO ~TakePartyItem("FireOrb")
TakePartyItem("SW1H04")
TakePartyGold(3000)
DestroyItem("FireOrb")
DestroyItem("SW1H04")~ GOTO 90
  IF ~~ THEN REPLY @125 GOTO 37
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY @85
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",9)~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 26.2
  SAY @126
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY @127
  IF ~PartyHasItem("SHLD03")~ THEN REPLY @128 GOTO 87
  IF ~PartyHasItem("SW1H04")~ THEN REPLY @129 GOTO 89
  IF ~~ THEN REPLY @61 GOTO 13
  IF ~~ THEN REPLY @62 GOTO 47
END

IF ~~ THEN BEGIN 93 // from: 100.0 27.0
  SAY @102
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("FrozOrb")
TakePartyItem("PLAT04")
TakePartyGold(3000)
DestroyItem("FrozOrb")
DestroyItem("PLAT04")~ GOTO 94
  IF ~~ THEN REPLY @125 GOTO 37
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY @130
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",10)~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 100.1 27.1
  SAY @102
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("FrozOrb")
TakePartyItem("SHLD05")
TakePartyGold(3000)
DestroyItem("FrozOrb")
DestroyItem("SHLD05")~ GOTO 96
  IF ~~ THEN REPLY @125 GOTO 37
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY @130
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",11)~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 100.2 27.2
  SAY @102
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("FrozOrb")
TakePartyItem("SW1H43")
TakePartyGold(3000)
DestroyItem("FrozOrb")
DestroyItem("SW1H43")~ GOTO 122
  IF ~~ THEN REPLY @125 GOTO 37
END

IF ~~ THEN BEGIN 98 // from: 27.3
  SAY @131
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY @132
  IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY @133
  IF ~PartyHasItem("PLAT04")~ THEN REPLY @134 GOTO 93
  IF ~PartyHasItem("SHLD05")~ THEN REPLY @135 GOTO 95
  IF ~PartyHasItem("SW1H43")~ THEN REPLY @136 GOTO 97
  IF ~~ THEN REPLY @61 GOTO 13
  IF ~~ THEN REPLY @62 GOTO 47
END

IF ~Global("ForgedItemGray","RR3101",6)~ THEN BEGIN 101
  SAY @137
  IF ~~ THEN EXTERN ~BRUNDOR~ 53
END

IF ~Global("ForgedItemGray","RR3101",7)~ THEN BEGIN 102
  SAY @137
  IF ~~ THEN EXTERN ~BRUNDOR~ 56
END

IF ~Global("ForgedItemGray","RR3101",8)~ THEN BEGIN 103
  SAY @137
  IF ~~ THEN EXTERN ~BRUNDOR~ 57
END

IF ~Global("ForgedItemGray","RR3101",9)~ THEN BEGIN 104
  SAY @137
  IF ~~ THEN EXTERN ~BRUNDOR~ 58
END

IF ~Global("ForgedItemGray","RR3101",10)~ THEN BEGIN 105
  SAY @137
  IF ~~ THEN EXTERN ~BRUNDOR~ 59
END

IF ~Global("ForgedItemGray","RR3101",11)~ THEN BEGIN 106
  SAY @137
  IF ~~ THEN EXTERN ~BRUNDOR~ 60
END

IF ~Global("ForgedItemGray","RR3101",12)~ THEN BEGIN 107
  SAY @137
  IF ~~ THEN EXTERN ~BRUNDOR~ 61
END

IF ~~ THEN BEGIN 108 // from: BRUNDOR
  SAY @138
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 109 // from: BRUNDOR
  SAY @139
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 110 // from: BRUNDOR
  SAY @140
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 111 // from: BRUNDOR
  SAY @140
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 112 // from: BRUNDOR
  SAY @141
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 113 // from: BRUNDOR
  SAY @142
  IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 114 // from: BRUNDOR
  SAY @143
  IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 115 // from: 108.0
  SAY @144
  IF ~Global("Talkgray","LOCALS",0)~ THEN REPLY @95 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("AcidAx",LastTalkedToBy,0,0,0)~ GOTO 13
  IF ~Global("Talkgray","LOCALS",1)~ THEN REPLY @96 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("AcidAx",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @145 DO ~GiveItemCreate("AcidAx",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 116 // from: 109.0
  SAY @146
  IF ~Global("Talkgray","LOCALS",0)~ THEN REPLY @95 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("AcidFlil",LastTalkedToBy,0,0,0)~ GOTO 13
  IF ~Global("Talkgray","LOCALS",1)~ THEN REPLY @96 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("AcidFlil",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @97 DO ~GiveItemCreate("AcidFlil",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 117 // from: 110.0
  SAY @147
  IF ~Global("Talkgray","LOCALS",0)~ THEN REPLY @95 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("FireShld",LastTalkedToBy,0,0,0)~ GOTO 13
  IF ~Global("Talkgray","LOCALS",1)~ THEN REPLY @96 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("FireShld",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @97 DO ~GiveItemCreate("FireShld",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 118 // from: 111.0
  SAY @148
  IF ~Global("Talkgray","LOCALS",0)~ THEN REPLY @95 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("FireSwrd",LastTalkedToBy,0,0,0)~ GOTO 13
  IF ~Global("Talkgray","LOCALS",1)~ THEN REPLY @96 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("FireSwrd",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @97 DO ~GiveItemCreate("FireSwrd",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 119 // from: 112.0
  SAY @149
  IF ~Global("Talkgray","LOCALS",0)~ THEN REPLY @95 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("FrozPlat",LastTalkedToBy,0,0,0)~ GOTO 13
  IF ~Global("Talkgray","LOCALS",1)~ THEN REPLY @96 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("FrozPlat",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @97 DO ~GiveItemCreate("FrozPlat",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 120 // from: 113.0
  SAY @150
  IF ~Global("Talkgray","LOCALS",0)~ THEN REPLY @95 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("FrozShld",LastTalkedToBy,0,0,0)~ GOTO 13
  IF ~Global("Talkgray","LOCALS",1)~ THEN REPLY @96 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("FrozShld",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @151 DO ~GiveItemCreate("FrozShld",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 121 // from: 114.0
  SAY @152
  IF ~Global("Talkgray","LOCALS",0)~ THEN REPLY @95 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("FrozKat",LastTalkedToBy,0,0,0)~ GOTO 13
  IF ~Global("Talkgray","LOCALS",1)~ THEN REPLY @96 DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("FrozKat",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @151 DO ~GiveItemCreate("FrozKat",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 122 // from: 97.0
  SAY @130
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",12)~ EXIT
END

IF ~~ THEN BEGIN 123 // from: 129.0 30.0
  SAY @102
  IF ~PartyGoldGT(2999)~ THEN REPLY @103 DO ~TakePartyItem("BlackGem")
TakePartyItem("HAMM01")
TakePartyGold(3000)
DestroyItem("BlackGem")
DestroyItem("HAMM01")~ GOTO 124
  IF ~~ THEN REPLY @104 GOTO 125
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY @105
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",4)~ EXIT
END

IF ~~ THEN BEGIN 125 // from: 141.1 140.1 139.1 136.1 135.1 132.1 131.1 126.1 123.1
  SAY @86
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 126 // from: 129.1 30.1
  SAY @102
  IF ~PartyGoldGT(2999)~ THEN REPLY @103 DO ~TakePartyItem("BlackGem")
TakePartyItem("PLAT01")
TakePartyGold(3000)
DestroyItem("BlackGem")
DestroyItem("PLAT01")~ GOTO 127
  IF ~~ THEN REPLY @104 GOTO 125
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY @105
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",5)~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 30.2
  SAY @106
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.0
  SAY @107
  IF ~PartyHasItem("HAMM01")~ THEN REPLY @108 GOTO 123
  IF ~PartyHasItem("PLAT01")~ THEN REPLY @109 GOTO 126
  IF ~~ THEN REPLY @76 GOTO 17
  IF ~~ THEN REPLY @77 GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 159.3 144.4 138.3 134.3 129.3 34.4 33.5 32.4 31.4 30.4
  SAY @93
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 131 // from: 134.0 31.0
  SAY @117
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("AcidGem")
TakePartyItem("AX1H01")
TakePartyGold(3000)
DestroyItem("AcidGem")
DestroyItem("AX1H01")~ GOTO 145
  IF ~~ THEN REPLY @118 GOTO 125
END

IF ~~ THEN BEGIN 132 // from: 134.1 31.1
  SAY @117
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("AcidGem")
TakePartyItem("BLUN02")
TakePartyGold(3000)
DestroyItem("AcidGem")
DestroyItem("BLUN02")~ GOTO 146
  IF ~~ THEN REPLY @118 GOTO 125
END

IF ~~ THEN BEGIN 133 // from: 31.2
  SAY @120
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY @121
  IF ~PartyHasItem("AX1H01")~ THEN REPLY @122 GOTO 131
  IF ~PartyHasItem("BLUN02")~ THEN REPLY @123 GOTO 132
  IF ~~ THEN REPLY @76 GOTO 17
  IF ~~ THEN REPLY @77 GOTO 130
END

IF ~~ THEN BEGIN 135 // from: 138.0 32.0
  SAY @124
  IF ~PartyGoldGT(2999)~ THEN REPLY @103 DO ~TakePartyItem("FireOrb")
TakePartyItem("SHLD03")
TakePartyGold(3000)
DestroyItem("FireOrb")
DestroyItem("SHLD03")~ GOTO 147
  IF ~~ THEN REPLY @125 GOTO 125
END

IF ~~ THEN BEGIN 136 // from: 138.1 32.1
  SAY @124
  IF ~PartyGoldGT(2999)~ THEN REPLY @103 DO ~TakePartyItem("FireOrb")
TakePartyItem("SW1H04")
TakePartyGold(3000)
DestroyItem("FireOrb")
DestroyItem("SW1H04")~ GOTO 148
  IF ~~ THEN REPLY @125 GOTO 125
END

IF ~~ THEN BEGIN 137 // from: 32.2
  SAY @126
  IF ~~ THEN GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY @127
  IF ~PartyHasItem("SHLD03")~ THEN REPLY @128 GOTO 135
  IF ~PartyHasItem("SW1H04")~ THEN REPLY @129 GOTO 136
  IF ~~ THEN REPLY @76 GOTO 17
  IF ~~ THEN REPLY @77 GOTO 130
END

IF ~~ THEN BEGIN 139 // from: 144.0 33.0
  SAY @102
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("FrozOrb")
TakePartyItem("PLAT04")
TakePartyGold(3000)
DestroyItem("FrozOrb")
DestroyItem("PLAT04")~ GOTO 149
  IF ~~ THEN REPLY @125 GOTO 125
END

IF ~~ THEN BEGIN 140 // from: 144.1 33.1
  SAY @102
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("FrozOrb")
TakePartyItem("SHLD05")
TakePartyGold(3000)
DestroyItem("FrozOrb")
DestroyItem("SHLD05")~ GOTO 150
  IF ~~ THEN REPLY @125 GOTO 125
END

IF ~~ THEN BEGIN 141 // from: 144.2 33.2
  SAY @102
  IF ~PartyGoldGT(2999)~ THEN REPLY @83 DO ~TakePartyItem("FrozOrb")
TakePartyItem("SW1H43")
TakePartyGold(3000)
DestroyItem("FrozOrb")
DestroyItem("SW1H43")~ GOTO 151
  IF ~~ THEN REPLY @125 GOTO 125
END

IF ~~ THEN BEGIN 142 // from: 33.3
  SAY @131
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY @132
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY @133
  IF ~PartyHasItem("PLAT04")~ THEN REPLY @134 GOTO 139
  IF ~PartyHasItem("SHLD05")~ THEN REPLY @135 GOTO 140
  IF ~PartyHasItem("SW1H43")~ THEN REPLY @136 GOTO 141
  IF ~~ THEN REPLY @76 GOTO 17
  IF ~~ THEN REPLY @77 GOTO 130
END

IF ~~ THEN BEGIN 145 // from: 131.0
  SAY @119
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",6)~ EXIT
END

IF ~~ THEN BEGIN 146 // from: 132.0
  SAY @119
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",7)~ EXIT
END

IF ~~ THEN BEGIN 147 // from: 135.0
  SAY @85
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",8)~ EXIT
END

IF ~~ THEN BEGIN 148 // from: 136.0
  SAY @85
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",9)~ EXIT
END

IF ~~ THEN BEGIN 149 // from: 139.0
  SAY @130
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",10)~ EXIT
END

IF ~~ THEN BEGIN 150 // from: 140.0
  SAY @130
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",11)~ EXIT
END

IF ~~ THEN BEGIN 151 // from: 141.0
  SAY @130
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",12)~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 159.0 34.0
  SAY @153
  IF ~PartyGoldGT(4999)~ THEN REPLY @154 DO ~TakePartyItem("GlowRock")
TakePartyItem("CHAN01")
TakePartyGold(5000)
DestroyItem("GlowRock")
DestroyItem("CHAN01")~ GOTO 153
  IF ~~ THEN REPLY @155 GOTO 154
END

IF ~~ THEN BEGIN 153 // from: 152.0
  SAY @156
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3101",13)~ EXTERN ~BRUNDOR~ 69
END

IF ~~ THEN BEGIN 154 // from: 156.1 152.1
  SAY @157
  IF ~~ THEN REPLY @158 GOTO 17
  IF ~~ THEN REPLY @159 GOTO 155
END

IF ~~ THEN BEGIN 155 // from: 154.1
  SAY @160
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 156 // from: 159.1 34.1
  SAY @153
  IF ~PartyGoldGT(4999)~ THEN REPLY @154 DO ~TakePartyItem("GlowRock")
TakePartyItem("HALB01")
TakePartyGold(5000)
DestroyItem("GlowRock")
DestroyItem("HALB01")~ GOTO 157
  IF ~~ THEN REPLY @155 GOTO 154
END

IF ~~ THEN BEGIN 157 // from: 156.0
  SAY @156
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3101",14)~ EXTERN ~BRUNDOR~ 69
END

IF ~~ THEN BEGIN 158 // from: 34.2
  SAY @161
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159 // from: 158.0
  SAY @162
  IF ~PartyHasItem("CHAN01")~ THEN REPLY @163 GOTO 152
  IF ~PartyHasItem("HALB01")~ THEN REPLY @164 GOTO 156
  IF ~~ THEN REPLY @76 GOTO 17
  IF ~~ THEN REPLY @77 GOTO 130
END

IF ~~ THEN BEGIN 160 // from: BRUNDOR
  SAY @165
  IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.0
  SAY @166
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)~ EXIT
END

IF ~Global("ForgedItemGray","RR3101",13)~ THEN BEGIN 162
  SAY @167
  IF ~~ THEN EXTERN ~BRUNDOR~ 71
END

IF ~~ THEN BEGIN 163 // from: BRUNDOR
  SAY @168
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("GlowChan",LastTalkedToBy,0,0,0)~ GOTO 164
END

IF ~~ THEN BEGIN 164 // from: 163.0
  SAY @169
  IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY @170
  IF ~~ THEN EXTERN ~BRUNDOR~ 74
END

IF ~~ THEN BEGIN 166 // from: BRUNDOR
  SAY @171
  IF ~~ THEN GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY @172
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY @173
  IF ~~ THEN DO ~SetGlobal("PackStuffPip","RR3101",1)~ EXIT
END

IF ~Global("PackStuffPip","RR3101",2)~ THEN BEGIN 169
  SAY @174
  IF ~~ THEN DO ~SetGlobal("PackStuffPip","RR3101",3)~ GOTO 170
END

IF ~~ THEN BEGIN 170 // from: 169.0
  SAY @175
  IF ~~ THEN EXTERN ~BRUNDOR~ 78
END

IF ~~ THEN BEGIN 171 // from: BRUNDOR
  SAY @176
  IF ~~ THEN DO ~SetGlobal("Pipleaves","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~Global("ForgedItemGray","RR3101",14)~ THEN BEGIN 172
  SAY @167
  IF ~~ THEN EXTERN ~BRUNDOR~ 79
END

IF ~~ THEN BEGIN 173 // from: BRUNDOR
  SAY @168
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3101",0)
GiveItemCreate("GlowHalb",LastTalkedToBy,0,0,0)~ GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY @169
  IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY @170
  IF ~~ THEN EXTERN ~BRUNDOR~ 74
END

IF ~~ THEN BEGIN 176 // from: BRUNDOR
  SAY @177 
  IF ~~ THEN EXTERN ~BRUNDOR~ 134
END

IF ~~ THEN BEGIN 177 // from: BRUNDOR
  SAY @178 
  IF ~~ THEN EXTERN ~BRUNDOR~ 135
END

IF ~~ THEN BEGIN 178 // from: BRUNDOR
  SAY @179 
  IF ~~ THEN EXTERN ~BRUNDOR~ 136
END

IF ~Global("SmithApprsc","GLOBAL",7)~ THEN BEGIN 179
  SAY @180 
  IF ~~ THEN EXTERN ~BRUNDOR~ 140
END

IF ~~ THEN BEGIN 180 // from: BRUNDOR
  SAY @181 
  IF ~~ THEN EXTERN ~BRUNDOR~ 141
END

IF ~Global("SmithApprsc","GLOBAL",8)~ THEN BEGIN 181
  SAY @182 
  IF ~~ THEN EXTERN ~BRUNDOR~ 142
END

IF ~~ THEN BEGIN 182 // from: BRUNDOR
  SAY @183 
  IF ~~ THEN EXTERN ~BRUNDOR~ 144
END

IF ~~ THEN BEGIN 183 // from: BRUNDOR
  SAY @184 
  IF ~~ THEN EXTERN ~BRUNDOR~ 145
END

IF ~~ THEN BEGIN 184 // from: BRUNDOR
  SAY @185 
  IF ~~ THEN EXTERN ~BRUNDOR~ 146
END

IF ~~ THEN BEGIN 185 // from: BRUNDOR
  SAY @186 
  IF ~~ THEN EXTERN ~BRUNDOR~ 148
END

IF ~~ THEN BEGIN 186 // from: BRUNDOR
  SAY @187 
  IF ~~ THEN EXTERN ~BRUNDOR~ 149
END

IF ~~ THEN BEGIN 187 // from: BRUNDOR
  SAY @188 
  IF ~~ THEN DO ~SetGlobal("SmithApprsc","GLOBAL",14)
SetGlobal("SmithApprextra","RR3101",0)~ EXIT
END

IF ~~ THEN BEGIN 188 // from: BRUNDOR
  SAY @189 
  IF ~~ THEN EXTERN ~BRUNDOR~ 151
END

IF ~~ THEN BEGIN 189 // from: BRUNDOR
  SAY @190 
  IF ~~ THEN EXTERN ~BRUNDOR~ 153
END

IF ~~ THEN BEGIN 190 // from: BRUNDOR
  SAY @191 
  IF ~~ THEN EXTERN ~BRUNDOR~ 154
END

IF ~~ THEN BEGIN 191 // from: BRUNDOR
  SAY @192 
  IF ~~ THEN DO ~SetGlobal("SmithApprsc","GLOBAL",18)
SetGlobal("SmithApprextra","RR3101",0)~ EXIT
END
