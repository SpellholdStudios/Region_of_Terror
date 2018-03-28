BEGIN ~GRAYFOT2~

IF ~~ THEN BEGIN 4 // from: 21.0 8.0 6.0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 11
  IF ~~ THEN REPLY @2 GOTO 15
  IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 8.1
  SAY @5
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 15.1 14.2 12.2 11.3 6.1 4.2
  SAY @9
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 4
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 15.2 14.3 12.3 11.4 8.2 6.2 4.3
  SAY @13
  IF ~~ THEN DO ~SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 15.0 4.0
  SAY @14
  IF ~!PartyHasItem("GrayBook")~ THEN DO ~SetGlobal("KnowGem","LOCALS",1)
GiveItemCreate("GrayBook",LastTalkedToBy,0,0,0)~ GOTO 12
  IF ~PartyHasItem("GrayBook")~ THEN REPLY @15 DO ~SetGlobal("KnowGem","LOCALS",1)~ GOTO 13
  IF ~PartyHasItem("GrayBook")~ THEN REPLY @16 DO ~SetGlobal("KnowGem","LOCALS",1)~ GOTO 15
  IF ~PartyHasItem("GrayBook")~ THEN REPLY @3 DO ~SetGlobal("KnowGem","LOCALS",1)~ GOTO 7
  IF ~PartyHasItem("GrayBook")~ THEN REPLY @4 DO ~SetGlobal("KnowGem","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 100.3 92.2 86.2 72.2 46.3 27.4 26.3 25.3 24.3 23.4 14.0 12.0 11.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~PartyHasItem("StarGem")~ THEN REPLY @22 GOTO 23
  IF ~PartyHasItem("BlackGem")~ THEN REPLY @23 GOTO 24
  IF ~PartyHasItem("AcidGem")~ THEN REPLY @24 GOTO 25
  IF ~PartyHasItem("FireOrb")~ THEN REPLY @25 GOTO 26
  IF ~PartyHasItem("FrozOrb")~ THEN REPLY @26 GOTO 27
  IF ~PartyHasItem("GlowRock")~ THEN REPLY @27 GOTO 28
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 13
  IF ~~ THEN REPLY @30 GOTO 15
  IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @31 GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 14.1 12.1 11.2 4.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 11
  IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 10
END

IF ~Global("PipGray","LOCALS",0)
!PartyHasItem("HolyGem")
!Global("ForgedItemGray","RR3100",1)
!Global("ForgedItemGray","RR3100",2)
!Global("ForgedItemGray","RR3100",3)
!Global("ForgedItemGray","RR3100",4)
!Global("ForgedItemGray","RR3100",5)
!Global("ForgedItemGray","RR3100",6)
!Global("ForgedItemGray","RR3100",7)
!Global("ForgedItemGray","RR3100",8)
!Global("ForgedItemGray","RR3100",9)
!Global("ForgedItemGray","RR3100",10)
!Global("ForgedItemGray","RR3100",11)
!Global("ForgedItemGray","RR3100",12)
!Global("ForgedItemGray","RR3100",13)
!Global("ForgedItemGray","RR3100",14)
!Global("ForgedItemGray","RR3100",15)
!Global("ForgedItemGray","RR3100",16)~ THEN BEGIN 16
  SAY @34
  IF ~Global("EyeGod","GLOBAL",0)~ THEN REPLY @35 GOTO 176
  IF ~~ THEN REPLY @36 GOTO 17
  IF ~~ THEN REPLY @37 GOTO 20
  IF ~~ THEN REPLY @38 GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 179.0 173.0 163.0 159.2 154.0 144.3 138.2 134.2 129.2 121.1 121.0 120.1 120.0 119.1 119.0 118.1 118.0 117.1 117.0 116.1 116.0 115.1 115.0 79.1 79.0 76.1 76.0 66.3 52.1 52.0 50.1 50.0 48.1 48.0 34.3 33.4 32.3 31.3 30.3 29.4 21.1 18.0 16.1
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 18
  IF ~PartyHasItem("StarGem")~ THEN REPLY @22 GOTO 29
  IF ~PartyHasItem("BlackGem")~ THEN REPLY @23 GOTO 30
  IF ~PartyHasItem("AcidGem")~ THEN REPLY @24 GOTO 31
  IF ~PartyHasItem("FireOrb")~ THEN REPLY @25 GOTO 32
  IF ~PartyHasItem("FrozOrb")~ THEN REPLY @26 GOTO 33
  IF ~PartyHasItem("GlowRock")~ THEN REPLY @27 GOTO 34
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 17
  IF ~~ THEN REPLY @43 GOTO 20
  IF ~Global("EyeGod","GLOBAL",0)~ THEN REPLY @35 GOTO 176
  IF ~~ THEN REPLY @31 GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 21.2
  SAY @44
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 179.1 18.1 16.2
  SAY @45
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @46
  IF ~Global("EyeGod","GLOBAL",0)~ THEN REPLY @35 GOTO 4
  IF ~~ THEN REPLY @47 GOTO 17
  IF ~~ THEN REPLY @48 GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 179.2 18.3 16.3
  SAY @49
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.1
  SAY @50
  IF ~PartyHasItem("HELM01")~ THEN REPLY @51 GOTO 35
  IF ~PartyHasItem("SHLD01")~ THEN REPLY @52 GOTO 38
  IF ~PartyHasItem("BLUN04")~ THEN REPLY @53 GOTO 41
  IF ~~ THEN REPLY @54 GOTO 44
  IF ~~ THEN REPLY @55 GOTO 13
  IF ~~ THEN REPLY @56 GOTO 47
END

IF ~~ THEN BEGIN 24 // from: 13.2
  SAY @57
  IF ~PartyHasItem("HAMM01")~ THEN REPLY @58 GOTO 67
  IF ~PartyHasItem("PLAT01")~ THEN REPLY @59 GOTO 69
  IF ~~ THEN REPLY @60 GOTO 71
  IF ~~ THEN REPLY @55 GOTO 13
  IF ~~ THEN REPLY @56 GOTO 47
END

IF ~~ THEN BEGIN 25 // from: 13.3
  SAY @61
  IF ~PartyHasItem("AX1H01")~ THEN REPLY @62 GOTO 81
  IF ~PartyHasItem("BLUN02")~ THEN REPLY @63 GOTO 83
  IF ~~ THEN REPLY @60 GOTO 85
  IF ~~ THEN REPLY @55 GOTO 13
  IF ~~ THEN REPLY @56 GOTO 47
END

IF ~~ THEN BEGIN 26 // from: 13.4
  SAY @64
  IF ~PartyHasItem("SHLD03")~ THEN REPLY @52 GOTO 87
  IF ~PartyHasItem("SW1H04")~ THEN REPLY @65 GOTO 89
  IF ~~ THEN REPLY @60 GOTO 91
  IF ~~ THEN REPLY @55 GOTO 13
  IF ~~ THEN REPLY @56 GOTO 47
END

IF ~~ THEN BEGIN 27 // from: 13.5
  SAY @66
  IF ~PartyHasItem("PLAT04")~ THEN REPLY @67 GOTO 93
  IF ~PartyHasItem("SHLD05")~ THEN REPLY @52 GOTO 95
  IF ~PartyHasItem("SW1H43")~ THEN REPLY @68 GOTO 97
  IF ~~ THEN REPLY @60 GOTO 98
  IF ~~ THEN REPLY @55 GOTO 13
  IF ~~ THEN REPLY @56 GOTO 47
END

IF ~~ THEN BEGIN 28 // from: 13.6
  SAY @69
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 17.1
  SAY @50
  IF ~PartyHasItem("HELM01")~ THEN REPLY @51 GOTO 57
  IF ~PartyHasItem("SHLD01")~ THEN REPLY @52 GOTO 60
  IF ~PartyHasItem("BLUN04")~ THEN REPLY @53 GOTO 62
  IF ~~ THEN REPLY @54 GOTO 64
  IF ~~ THEN REPLY @70 GOTO 17
  IF ~~ THEN REPLY @71 GOTO 47
END

IF ~~ THEN BEGIN 30 // from: 17.2
  SAY @57
  IF ~PartyHasItem("HAMM01")~ THEN REPLY @58 GOTO 123
  IF ~PartyHasItem("PLAT01")~ THEN REPLY @59 GOTO 126
  IF ~~ THEN REPLY @60 GOTO 128
  IF ~~ THEN REPLY @70 GOTO 17
  IF ~~ THEN REPLY @71 GOTO 130
END

IF ~~ THEN BEGIN 31 // from: 17.3
  SAY @72
  IF ~PartyHasItem("AX1H01")~ THEN REPLY @62 GOTO 131
  IF ~PartyHasItem("BLUN02")~ THEN REPLY @63 GOTO 132
  IF ~~ THEN REPLY @60 GOTO 133
  IF ~~ THEN REPLY @70 GOTO 17
  IF ~~ THEN REPLY @71 GOTO 130
END

IF ~~ THEN BEGIN 32 // from: 17.4
  SAY @64
  IF ~PartyHasItem("SHLD03")~ THEN REPLY @52 GOTO 135
  IF ~PartyHasItem("SW1H04")~ THEN REPLY @65 GOTO 136
  IF ~~ THEN REPLY @60 GOTO 137
  IF ~~ THEN REPLY @70 GOTO 17
  IF ~~ THEN REPLY @71 GOTO 130
END

IF ~~ THEN BEGIN 33 // from: 17.5
  SAY @66
  IF ~PartyHasItem("PLAT04")~ THEN REPLY @67 GOTO 139
  IF ~PartyHasItem("SHLD05")~ THEN REPLY @52 GOTO 140
  IF ~PartyHasItem("SW1H43")~ THEN REPLY @68 GOTO 141
  IF ~~ THEN REPLY @60 GOTO 142
  IF ~~ THEN REPLY @70 GOTO 17
  IF ~~ THEN REPLY @71 GOTO 130
END

IF ~~ THEN BEGIN 34 // from: 17.6
  SAY @73
  IF ~PartyHasItem("CHAN01")~ THEN REPLY @74 GOTO 152
  IF ~PartyHasItem("HALB01")~ THEN REPLY @75 GOTO 156
  IF ~~ THEN REPLY @60 GOTO 158
  IF ~~ THEN REPLY @70 GOTO 17
  IF ~~ THEN REPLY @71 GOTO 130
END

IF ~~ THEN BEGIN 35 // from: 46.0 23.0
  SAY @76
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("StarGem")
TakePartyItem("HELM01")
TakePartyGold(3000)~ GOTO 36
  IF ~~ THEN REPLY @78 GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @79
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",1)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 97.1 95.1 93.1 89.1 87.1 83.1 81.1 69.1 67.1 35.1
  SAY @80
  IF ~~ THEN DO ~SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 46.1 23.1
  SAY @76
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("StarGem")
TakePartyItem("SHLD01")
TakePartyGold(3000)~ GOTO 39
  IF ~~ THEN REPLY @78 GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @79
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",2)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY @80
  IF ~~ THEN DO ~SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 46.2 23.2
  SAY @76
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("StarGem")
TakePartyItem("BLUN04")
TakePartyGold(3000)~ GOTO 42
  IF ~~ THEN REPLY @78 GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @79
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",3)~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY @80
  IF ~~ THEN DO ~SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 23.3
  SAY @81
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @82
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY @83
  IF ~PartyHasItem("HELM01")~ THEN REPLY @84 GOTO 35
  IF ~PartyHasItem("SHLD01")~ THEN REPLY @85 GOTO 38
  IF ~PartyHasItem("BLUN04")~ THEN REPLY @86 GOTO 41
  IF ~~ THEN REPLY @55 GOTO 13
  IF ~~ THEN REPLY @56 GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 100.4 92.3 86.3 72.3 66.4 46.4 29.5 27.5 26.4 25.4 24.4 23.5
  SAY @87
  IF ~~ THEN DO ~SetGlobal("Talkgray","LOCALS",1)~ EXIT
END

IF ~Global("ForgedItemGray","RR3100",1)~ THEN BEGIN 48
  SAY @88
  IF ~Global("PipGray","LOCALS",0)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("StarHelm",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~Global("PipGray","LOCALS",1)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("StarHelm",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @90 DO ~GiveItemCreate("StarHelm",LastTalkedToBy,0,0,0)~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.2
  SAY @91
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3100",0)~ EXIT
END

IF ~Global("ForgedItemGray","RR3100",2)~ THEN BEGIN 50
  SAY @92
  IF ~Global("PipGray","LOCALS",0)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("StarShld",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~Global("PipGray","LOCALS",1)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("StarShld",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @90 DO ~GiveItemCreate("StarShld",LastTalkedToBy,0,0,0)~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.2
  SAY @91
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3100",0)~ EXIT
END

IF ~Global("ForgedItemGray","RR3100",3)~ THEN BEGIN 52
  SAY @93
  IF ~Global("PipGray","LOCALS",0)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("StarMace",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~Global("PipGray","LOCALS",1)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("StarMace",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @90 DO ~GiveItemCreate("StarMace",LastTalkedToBy,0,0,0)~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.2
  SAY @91
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3100",0)~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 66.0 29.0
  SAY @76
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("StarGem")
TakePartyItem("HELM01")
TakePartyGold(3000)
DestroyItem("StarGem")
DestroyItem("HELM01")~ GOTO 58
  IF ~~ THEN REPLY @78 GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY @79
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",1)~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 62.1 60.1 57.1
  SAY @80
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from: 66.1 29.1
  SAY @76
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("StarGem")
TakePartyItem("SHLD01")
TakePartyGold(3000)
DestroyItem("StarGem")
DestroyItem("SHLD01")~ GOTO 61
  IF ~~ THEN REPLY @78 GOTO 59
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY @79
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",2)~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 66.2 29.2
  SAY @76
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("StarGem")
TakePartyItem("BLUN04")
TakePartyGold(3000)
DestroyItem("StarGem")
DestroyItem("BLUN04")~ GOTO 63
  IF ~~ THEN REPLY @78 GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @79
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",3)~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 29.3
  SAY @81
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY @82
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY @83
  IF ~PartyHasItem("HELM01")~ THEN REPLY @84 GOTO 57
  IF ~PartyHasItem("SHLD01")~ THEN REPLY @85 GOTO 60
  IF ~PartyHasItem("BLUN04")~ THEN REPLY @86 GOTO 62
  IF ~~ THEN REPLY @70 GOTO 17
  IF ~~ THEN REPLY @71 GOTO 47
END

IF ~~ THEN BEGIN 67 // from: 72.0 24.0
  SAY @94
  IF ~PartyGoldGT(2999)~ THEN REPLY @95 DO ~TakePartyItem("BlackGem")
TakePartyItem("HAMM01")
TakePartyGold(3000)~ GOTO 68
  IF ~~ THEN REPLY @96 GOTO 37
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY @97
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",4)~ EXIT
END

IF ~~ THEN BEGIN 69 // from: 72.1 24.1
  SAY @94
  IF ~PartyGoldGT(2999)~ THEN REPLY @95 DO ~TakePartyItem("BlackGem")
TakePartyItem("PLAT01")
TakePartyGold(3000)~ GOTO 70
  IF ~~ THEN REPLY @96 GOTO 37
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY @97
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",5)~ EXIT
END

IF ~~ THEN BEGIN 71 // from: 24.2
  SAY @98
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @99
  IF ~PartyHasItem("HAMM01")~ THEN REPLY @100 GOTO 67
  IF ~PartyHasItem("PLAT01")~ THEN REPLY @101 GOTO 69
  IF ~~ THEN REPLY @55 GOTO 13
  IF ~~ THEN REPLY @56 GOTO 47
END

IF ~Global("ForgedItemGray","RR3100",4)~ THEN BEGIN 75
  SAY @102
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY @103
  IF ~Global("PipGray","LOCALS",0)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("BlacHamm",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~Global("PipGray","LOCALS",1)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("BlacHamm",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @104 DO ~GiveItemCreate("BlacHamm",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 121.2 120.2 119.2 118.2 117.2 116.2 115.2 76.2
  SAY @105
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3100",0)~ EXIT
END

IF ~Global("ForgedItemGray","RR3100",5)~ THEN BEGIN 78
  SAY @102
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY @106
  IF ~Global("PipGray","LOCALS",0)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("BlacPlat",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~Global("PipGray","LOCALS",1)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("BlacPlat",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @104 DO ~GiveItemCreate("BlacPlat",LastTalkedToBy,0,0,0)~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 173.1 163.1 79.2
  SAY @105
  IF ~~ THEN DO ~SetGlobal("ForgedItemGray","RR3100",0)~ EXIT
END

IF ~~ THEN BEGIN 81 // from: 86.0 25.0
  SAY @107
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("AcidGem")
TakePartyItem("AX1H01")
TakePartyGold(3000)~ GOTO 82
  IF ~~ THEN REPLY @108 GOTO 37
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY @109
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",6)~ EXIT
END

IF ~~ THEN BEGIN 83 // from: 86.1 25.1
  SAY @107
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("AcidGem")
TakePartyItem("BLUN02")
TakePartyGold(3000)~ GOTO 84
  IF ~~ THEN REPLY @108 GOTO 37
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY @109
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",7)~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 25.2
  SAY @110
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY @111
  IF ~PartyHasItem("AX1H01")~ THEN REPLY @112 GOTO 81
  IF ~PartyHasItem("BLUN02")~ THEN REPLY @113 GOTO 83
  IF ~~ THEN REPLY @55 GOTO 13
  IF ~~ THEN REPLY @56 GOTO 47
END

IF ~~ THEN BEGIN 87 // from: 92.0 26.0
  SAY @114
  IF ~PartyGoldGT(2999)~ THEN REPLY @95 DO ~TakePartyItem("FireOrb")
TakePartyItem("SHLD03")
TakePartyGold(3000)~ GOTO 88
  IF ~~ THEN REPLY @115 GOTO 37
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY @79
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",8)~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 92.1 26.1
  SAY @114
  IF ~PartyGoldGT(2999)~ THEN REPLY @95 DO ~TakePartyItem("FireOrb")
TakePartyItem("SW1H04")
TakePartyGold(3000)~ GOTO 90
  IF ~~ THEN REPLY @115 GOTO 37
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY @79
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",9)~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 26.2
  SAY @116
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY @117
  IF ~PartyHasItem("SHLD03")~ THEN REPLY @118 GOTO 87
  IF ~PartyHasItem("SW1H04")~ THEN REPLY @119 GOTO 89
  IF ~~ THEN REPLY @55 GOTO 13
  IF ~~ THEN REPLY @56 GOTO 47
END

IF ~~ THEN BEGIN 93 // from: 100.0 27.0
  SAY @94
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("FrozOrb")
TakePartyItem("PLAT04")
TakePartyGold(3000)~ GOTO 94
  IF ~~ THEN REPLY @115 GOTO 37
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY @120
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",10)~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 100.1 27.1
  SAY @94
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("FrozOrb")
TakePartyItem("SHLD05")
TakePartyGold(3000)~ GOTO 96
  IF ~~ THEN REPLY @115 GOTO 37
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY @120
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",11)~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 100.2 27.2
  SAY @94
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("FrozOrb")
TakePartyItem("SW1H43")
TakePartyGold(3000)~ GOTO 122
  IF ~~ THEN REPLY @115 GOTO 37
END

IF ~~ THEN BEGIN 98 // from: 27.3
  SAY @121
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY @122
  IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY @123
  IF ~PartyHasItem("PLAT04")~ THEN REPLY @124 GOTO 93
  IF ~PartyHasItem("SHLD05")~ THEN REPLY @125 GOTO 95
  IF ~PartyHasItem("SW1H43")~ THEN REPLY @126 GOTO 97
  IF ~~ THEN REPLY @55 GOTO 13
  IF ~~ THEN REPLY @56 GOTO 47
END

IF ~Global("ForgedItemGray","RR3100",6)~ THEN BEGIN 108
  SAY @102
  IF ~~ THEN GOTO 115
END

IF ~Global("ForgedItemGray","RR3100",7)~ THEN BEGIN 109
  SAY @102
  IF ~~ THEN GOTO 116
END

IF ~Global("ForgedItemGray","RR3100",8)~ THEN BEGIN 110
  SAY @102
  IF ~~ THEN GOTO 117
END

IF ~Global("ForgedItemGray","RR3100",9)~ THEN BEGIN 111
  SAY @102
  IF ~~ THEN GOTO 118
END

IF ~Global("ForgedItemGray","RR3100",10)~ THEN BEGIN 112
  SAY @102
  IF ~~ THEN GOTO 119
END

IF ~Global("ForgedItemGray","RR3100",11)~ THEN BEGIN 113
  SAY @102
  IF ~~ THEN GOTO 120
END

IF ~Global("ForgedItemGray","RR3100",12)~ THEN BEGIN 114
  SAY @102
  IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 115 // from: 108.0
  SAY @127
  IF ~Global("PipGray","LOCALS",0)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("AcidAx",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~Global("PipGray","LOCALS",1)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("AcidAx",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @128 DO ~GiveItemCreate("AcidAx",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 116 // from: 109.0
  SAY @129
  IF ~Global("PipGray","LOCALS",0)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("AcidFlil",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~Global("PipGray","LOCALS",1)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("AcidFlil",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @90 DO ~GiveItemCreate("AcidFlil",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 117 // from: 110.0
  SAY @130
  IF ~Global("PipGray","LOCALS",0)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("FireShld",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~Global("PipGray","LOCALS",1)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("FireShld",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @90 DO ~GiveItemCreate("FireShld",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 118 // from: 111.0
  SAY @131
  IF ~Global("PipGray","LOCALS",0)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("FireSwrd",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~Global("PipGray","LOCALS",1)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("FireSwrd",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @90 DO ~GiveItemCreate("FireSwrd",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 119 // from: 112.0
  SAY @132
  IF ~Global("PipGray","LOCALS",0)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("FrozPlat",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~Global("PipGray","LOCALS",1)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("FrozPlat",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @90 DO ~GiveItemCreate("FrozPlat",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 120 // from: 113.0
  SAY @133
  IF ~Global("PipGray","LOCALS",0)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("FrozShld",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~Global("PipGray","LOCALS",1)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("FrozShld",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @134 DO ~GiveItemCreate("FrozShld",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 121 // from: 114.0
  SAY @135
  IF ~Global("PipGray","LOCALS",0)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("FrozKat",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~Global("PipGray","LOCALS",1)~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("FrozKat",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @134 DO ~GiveItemCreate("FrozKat",LastTalkedToBy,0,0,0)~ GOTO 77
END

IF ~~ THEN BEGIN 122 // from: 97.0
  SAY @120
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3101",1)
SetGlobal("ForgedItemGray","RR3101",12)~ EXIT
END

IF ~~ THEN BEGIN 123 // from: 129.0 30.0
  SAY @94
  IF ~PartyGoldGT(2999)~ THEN REPLY @95 DO ~TakePartyItem("BlackGem")
TakePartyItem("HAMM01")
TakePartyGold(3000)
DestroyItem("BlackGem")
DestroyItem("HAMM01")~ GOTO 124
  IF ~~ THEN REPLY @96 GOTO 125
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY @97
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",4)~ EXIT
END

IF ~~ THEN BEGIN 125 // from: 141.1 140.1 139.1 136.1 135.1 132.1 131.1 126.1 123.1
  SAY @80
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 126 // from: 129.1 30.1
  SAY @94
  IF ~PartyGoldGT(2999)~ THEN REPLY @95 DO ~TakePartyItem("BlackGem")
TakePartyItem("PLAT01")
TakePartyGold(3000)
DestroyItem("BlackGem")
DestroyItem("PLAT01")~ GOTO 127
  IF ~~ THEN REPLY @96 GOTO 125
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY @97
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",5)~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 30.2
  SAY @98
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.0
  SAY @99
  IF ~PartyHasItem("HAMM01")~ THEN REPLY @100 GOTO 123
  IF ~PartyHasItem("PLAT01")~ THEN REPLY @101 GOTO 126
  IF ~~ THEN REPLY @70 GOTO 17
  IF ~~ THEN REPLY @71 GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 159.3 144.4 138.3 134.3 129.3 34.4 33.5 32.4 31.4 30.4
  SAY @87
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 131 // from: 134.0 31.0
  SAY @107
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("AcidGem")
TakePartyItem("AX1H01")
TakePartyGold(3000)
DestroyItem("AcidGem")
DestroyItem("AX1H01")~ GOTO 145
  IF ~~ THEN REPLY @108 GOTO 125
END

IF ~~ THEN BEGIN 132 // from: 134.1 31.1
  SAY @107
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("AcidGem")
TakePartyItem("BLUN02")
TakePartyGold(3000)
DestroyItem("AcidGem")
DestroyItem("BLUN02")~ GOTO 146
  IF ~~ THEN REPLY @108 GOTO 125
END

IF ~~ THEN BEGIN 133 // from: 31.2
  SAY @110
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY @111
  IF ~PartyHasItem("AX1H01")~ THEN REPLY @112 GOTO 131
  IF ~PartyHasItem("BLUN02")~ THEN REPLY @113 GOTO 132
  IF ~~ THEN REPLY @70 GOTO 17
  IF ~~ THEN REPLY @71 GOTO 130
END

IF ~~ THEN BEGIN 135 // from: 138.0 32.0
  SAY @114
  IF ~PartyGoldGT(2999)~ THEN REPLY @95 DO ~TakePartyItem("FireOrb")
TakePartyItem("SHLD03")
TakePartyGold(3000)
DestroyItem("FireOrb")
DestroyItem("SHLD03")~ GOTO 147
  IF ~~ THEN REPLY @115 GOTO 125
END

IF ~~ THEN BEGIN 136 // from: 138.1 32.1
  SAY @114
  IF ~PartyGoldGT(2999)~ THEN REPLY @95 DO ~TakePartyItem("FireOrb")
TakePartyItem("SW1H04")
TakePartyGold(3000)
DestroyItem("FireOrb")
DestroyItem("SW1H04")~ GOTO 148
  IF ~~ THEN REPLY @115 GOTO 125
END

IF ~~ THEN BEGIN 137 // from: 32.2
  SAY @116
  IF ~~ THEN GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY @117
  IF ~PartyHasItem("SHLD03")~ THEN REPLY @118 GOTO 135
  IF ~PartyHasItem("SW1H04")~ THEN REPLY @119 GOTO 136
  IF ~~ THEN REPLY @70 GOTO 17
  IF ~~ THEN REPLY @71 GOTO 130
END

IF ~~ THEN BEGIN 139 // from: 144.0 33.0
  SAY @94
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("FrozOrb")
TakePartyItem("PLAT04")
TakePartyGold(3000)
DestroyItem("FrozOrb")
DestroyItem("PLAT04")~ GOTO 149
  IF ~~ THEN REPLY @115 GOTO 125
END

IF ~~ THEN BEGIN 140 // from: 144.1 33.1
  SAY @94
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("FrozOrb")
TakePartyItem("SHLD05")
TakePartyGold(3000)
DestroyItem("FrozOrb")
DestroyItem("SHLD05")~ GOTO 150
  IF ~~ THEN REPLY @115 GOTO 125
END

IF ~~ THEN BEGIN 141 // from: 144.2 33.2
  SAY @94
  IF ~PartyGoldGT(2999)~ THEN REPLY @77 DO ~TakePartyItem("FrozOrb")
TakePartyItem("SW1H43")
TakePartyGold(3000)
DestroyItem("FrozOrb")
DestroyItem("SW1H43")~ GOTO 151
  IF ~~ THEN REPLY @115 GOTO 125
END

IF ~~ THEN BEGIN 142 // from: 33.3
  SAY @121
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY @122
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY @123
  IF ~PartyHasItem("PLAT04")~ THEN REPLY @124 GOTO 139
  IF ~PartyHasItem("SHLD05")~ THEN REPLY @125 GOTO 140
  IF ~PartyHasItem("SW1H43")~ THEN REPLY @126 GOTO 141
  IF ~~ THEN REPLY @70 GOTO 17
  IF ~~ THEN REPLY @71 GOTO 130
END

IF ~~ THEN BEGIN 145 // from: 131.0
  SAY @109
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",6)~ EXIT
END

IF ~~ THEN BEGIN 146 // from: 132.0
  SAY @109
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",7)~ EXIT
END

IF ~~ THEN BEGIN 147 // from: 135.0
  SAY @79
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",8)~ EXIT
END

IF ~~ THEN BEGIN 148 // from: 136.0
  SAY @79
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",9)~ EXIT
END

IF ~~ THEN BEGIN 149 // from: 139.0
  SAY @120
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",10)~ EXIT
END

IF ~~ THEN BEGIN 150 // from: 140.0
  SAY @120
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",11)~ EXIT
END

IF ~~ THEN BEGIN 151 // from: 141.0
  SAY @120
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",12)~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 159.0 34.0
  SAY @136
  IF ~PartyGoldGT(4999)~ THEN REPLY @137 DO ~TakePartyItem("GlowRock")
TakePartyItem("CHAN01")
TakePartyGold(5000)
DestroyItem("GlowRock")
DestroyItem("CHAN01")~ GOTO 153
  IF ~~ THEN REPLY @138 GOTO 154
END

IF ~~ THEN BEGIN 153 // from: 152.0
  SAY @139
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",13)~ EXIT
END

IF ~~ THEN BEGIN 154 // from: 156.1 152.1
  SAY @140
  IF ~~ THEN REPLY @141 GOTO 17
  IF ~~ THEN REPLY @142 GOTO 155
END

IF ~~ THEN BEGIN 155 // from: 154.1
  SAY @143
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 156 // from: 159.1 34.1
  SAY @136
  IF ~PartyGoldGT(4999)~ THEN REPLY @137 DO ~TakePartyItem("GlowRock")
TakePartyItem("HALB01")
TakePartyGold(5000)
DestroyItem("GlowRock")
DestroyItem("HALB01")~ GOTO 157
  IF ~~ THEN REPLY @138 GOTO 154
END

IF ~~ THEN BEGIN 157 // from: 156.0
  SAY @139
  IF ~~ THEN DO ~SetGlobal("StartForgGray","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",14)~ EXIT
END

IF ~~ THEN BEGIN 158 // from: 34.2
  SAY @144
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159 // from: 158.0
  SAY @145
  IF ~PartyHasItem("CHAN01")~ THEN REPLY @146 GOTO 152
  IF ~PartyHasItem("HALB01")~ THEN REPLY @147 GOTO 156
  IF ~~ THEN REPLY @70 GOTO 17
  IF ~~ THEN REPLY @71 GOTO 130
END

IF ~Global("ForgedItemGray","RR3100",13)~ THEN BEGIN 163
  SAY @148
  IF ~~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("GlowChan",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @134 DO ~GiveItemCreate("GlowChan",LastTalkedToBy,0,0,0)~ GOTO 80
END

IF ~Global("ForgedItemGray","RR3100",14)~ THEN BEGIN 173
  SAY @149
  IF ~~ THEN REPLY @89 DO ~SetGlobal("ForgedItemGray","RR3100",0)
GiveItemCreate("GlowHalb",LastTalkedToBy,0,0,0)~ GOTO 17
  IF ~~ THEN REPLY @134 DO ~GiveItemCreate("GlowHalb",LastTalkedToBy,0,0,0)~ GOTO 80
END

IF ~~ THEN BEGIN 176 // from: 18.2 16.0
  SAY @150
  IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY @151
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY @152
  IF ~~ THEN DO ~RevealAreaOnMap("RA4900")~ GOTO 179
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY @153
  IF ~~ THEN REPLY @154 DO ~SetGlobal("EyeGod","GLOBAL",1)~ UNSOLVED_JOURNAL @570462 GOTO 17
  IF ~~ THEN REPLY @155 DO ~SetGlobal("EyeGod","GLOBAL",1)~ UNSOLVED_JOURNAL @570462 GOTO 20
  IF ~~ THEN REPLY @156 DO ~SetGlobal("EyeGod","GLOBAL",1)~ UNSOLVED_JOURNAL @570462 GOTO 22
END

IF ~Global("YougottheEye","GLOBAL",2)
PartyHasItem("HolyGem")~ THEN BEGIN 180
  SAY @157
  IF ~~ THEN REPLY @158 GOTO 181
  IF ~~ THEN REPLY @159 GOTO 181
  IF ~~ THEN REPLY @160 GOTO 187
END

IF ~~ THEN BEGIN 181 // from: 180.1 180.0
  SAY @161
  IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 182 // from: 181.0
  SAY @162
  IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 183 // from: 182.0
  SAY @163
  IF ~PartyHasItem("PLAT04")~ THEN REPLY @164 GOTO 188
  IF ~PartyHasItem("SHLD05")~ THEN REPLY @165 GOTO 189
  IF ~~ THEN REPLY @166 GOTO 184
  IF ~~ THEN REPLY @167 GOTO 185
END

IF ~~ THEN BEGIN 184 // from: 183.2
  SAY @168
  IF ~PartyHasItem("PLAT04")~ THEN REPLY @169 GOTO 188
  IF ~PartyHasItem("SHLD05")~ THEN REPLY @170 GOTO 189
  IF ~~ THEN REPLY @171 GOTO 185
END

IF ~~ THEN BEGIN 185 // from: 184.2 183.3
  SAY @172
  IF ~~ THEN GOTO 186
END

IF ~~ THEN BEGIN 186 // from: 185.0
  SAY @173
  IF ~~ THEN DO ~SetGlobal("YougottheEye","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 187 // from: 180.2
  SAY @174
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 188 // from: 190.0 184.0 183.0
  SAY @175
  IF ~~ THEN DO ~TakePartyItem("HolyGem")
TakePartyItem("PLAT04")
DestroyItem("HolyGem")
DestroyItem("PLAT04")
SetGlobal("StartForgGray2","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",15)~ EXIT
END

IF ~~ THEN BEGIN 189 // from: 190.1 184.1 183.1
  SAY @175
  IF ~~ THEN DO ~TakePartyItem("HolyGem")
TakePartyItem("SHLD05")
DestroyItem("HolyGem")
DestroyItem("SHLD05")
SetGlobal("StartForgGray2","RR3100",1)
SetGlobal("ForgedItemGray","RR3100",16)~ EXIT
END

IF ~Global("YougottheEye","GLOBAL",3)
PartyHasItem("HolyGem")~ THEN BEGIN 190
  SAY @176
  IF ~PartyHasItem("PLAT04")~ THEN REPLY @177 GOTO 188
  IF ~PartyHasItem("SHLD05")~ THEN REPLY @178 GOTO 189
  IF ~~ THEN REPLY @179 GOTO 191
END

IF ~~ THEN BEGIN 191 // from: 190.2
  SAY @180
  IF ~~ THEN EXIT
END

IF ~Global("ForgedItemGray","RR3100",15)~ THEN BEGIN 192
  SAY @181
  IF ~~ THEN REPLY @182 DO ~GiveItemCreate("HolyPlat",LastTalkedToBy,0,0,0)~ GOTO 193
  IF ~~ THEN REPLY @183 DO ~GiveItemCreate("HolyPlat",LastTalkedToBy,0,0,0)~ GOTO 194
END

IF ~~ THEN BEGIN 193 // from: 200.0 192.0
  SAY @184
  IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 194 // from: 192.1
  SAY @185
  IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 195 // from: 201.0 194.0 193.0
  SAY @186
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY @187
  IF ~~ THEN GOTO 197
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY @188
  IF ~~ THEN GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY @189
  IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY @190
  IF ~~ THEN DO ~EraseJournalEntry(@570462)
SetGlobal("ForgedItemGray","RR3100",0)
EscapeArea()~ SOLVED_JOURNAL @570505 EXIT
END

IF ~Global("ForgedItemGray","RR3100",16)~ THEN BEGIN 200
  SAY @181
  IF ~~ THEN REPLY @182 DO ~GiveItemCreate("HolyShld",LastTalkedToBy,0,0,0)~ GOTO 193
  IF ~~ THEN REPLY @183 DO ~GiveItemCreate("HolyShld",LastTalkedToBy,0,0,0)~ GOTO 201
END

IF ~~ THEN BEGIN 201 // from: 200.1
  SAY @185
  IF ~~ THEN GOTO 195
END
