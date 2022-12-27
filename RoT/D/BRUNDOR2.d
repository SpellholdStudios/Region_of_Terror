BEGIN ~BRUNDOR2~

IF ~~ THEN BEGIN 0 // from:
  SAY @0 
  IF ~~ THEN EXTERN ~GRAYFOOT~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2 
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~~ THEN REPLY @7 GOTO 12
END

IF ~~ THEN BEGIN 3 // from: 130.0 128.0 126.0 124.0 122.0 120.0 117.0 115.0 36.0 32.0 19.0 18.0 13.0 10.0 6.0 2.0
  SAY @8
  IF ~~ THEN DO ~SetGlobal("Brundtalk","RR3101",1)
StartStore("Brundor",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 31.2 26.2 20.2 18.1 10.1 2.1
  SAY @9
  IF ~!PartyHasItem("BrunBook")~ THEN DO ~SetGlobal("Knowsmith","LOCALS",1)~ GOTO 5
  IF ~PartyHasItem("BrunBook")~ THEN GOTO 32
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN DO ~GiveItemCreate("BrunBook",LastTalkedToBy,0,0,0)~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @12 GOTO 13
  IF ~~ THEN REPLY @13 GOTO 14
  IF ~~ THEN REPLY @5 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 32.4 19.4 18.2 13.3 10.3 6.4
  SAY @15
  IF ~~ THEN DO ~SetGlobal("Brundtalk","RR3101",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 32.3 19.3 13.2 6.3 2.2
  SAY @16
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @17
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @18
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 2.3
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Brundtalk","RR3101",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Brundtalk","RR3101",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 32.1 19.2 6.1
  SAY @22
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @13 GOTO 14
  IF ~~ THEN REPLY @5 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 130.1 128.1 126.1 124.1 122.1 120.1 117.1 115.1 99.1 97.1 95.1 93.1 91.1 89.1 87.1 85.1 36.1 33.1 32.2 19.1 13.1 6.2
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 19
  IF ~PartyHasItem("AnciSa")
PartyHasItem("AnciSb")
PartyHasItem("AnciSc")
PartyHasItem("AnciSd")~ THEN REPLY @25 GOTO 33
  IF ~PartyHasItem("NewSsFi")
PartyHasItem("NewSsIc")
PartyHasItem("NewSsLi")~ THEN REPLY @26 GOTO 85
  IF ~PartyHasItem("SW1H25")
NumItemsPartyGT("MISC42",1)
PartyHasItem("NewStHa")~ THEN REPLY @27 GOTO 87
  IF ~PartyHasItem("NewCryH")
PartyHasItem("NewCryB1")
PartyHasItem("NewCryB2")~ THEN REPLY @28 GOTO 89
  IF ~PartyHasItem("NewGSca")
PartyHasItem("LEAT19")~ THEN REPLY @29 GOTO 91
  IF ~PartyHasItem("NewBeH1")
PartyHasItem("NewBeH2")
PartyHasItem("NewBeH3")~ THEN REPLY @30 GOTO 93
  IF ~PartyHasItem("NewNtG1")
PartyHasItem("NewNtG2")
PartyHasItem("SW1H49")~ THEN REPLY @31 GOTO 95
  IF ~PartyHasItem("NewShP1")
PartyHasItem("NewShP2")
PartyHasItem("NewShP3")~ THEN REPLY @32 GOTO 97
  IF ~PartyHasItem("AX1H08")
PartyHasItem("NewRuMo")
PartyHasItem("NewRuCl")~ THEN REPLY @33 GOTO 99
END

IF ~~ THEN BEGIN 15 // from: 10.2
  SAY @34
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @35
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @36
  IF ~~ THEN EXTERN ~GRAYFOOT~ 2
END

IF ~~ THEN BEGIN 18 // from:
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 19 // from: 14.0
  SAY @39
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @40 GOTO 14
  IF ~~ THEN REPLY @12 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 8
  IF ~~ THEN REPLY @41 GOTO 7
END

IF ~Global("Brundoralone","RR3101",0)
!Global("ForgedItem","RR3101",1)
!Global("ForgedItem","RR3101",2)
!Global("ForgedItem","RR3101",3)
!Global("ForgedItem","RR3101",4)
!Global("ForgedItem","RR3101",5)
!Global("ForgedItem","RR3101",6)
!Global("ForgedItem","RR3101",7)
!Global("ForgedItem","RR3101",8)
!Global("ForgedItem","RR3101",9)
!Global("ForgedItem","RR3101",10)~ THEN BEGIN 20
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 21
  IF ~~ THEN REPLY @44 GOTO 22
  IF ~Global("Knowsmithghgh","LOCALS",1)~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @45 GOTO 24
  IF ~PartyHasItem("SoulArmr")
Global("SoulArmorQuest","GLOBAL",0)~ THEN REPLY @46 GOTO 82
  IF ~~ THEN REPLY @47 GOTO 30
END

IF ~~ THEN BEGIN 21 // from: 131.0 129.0 127.0 125.0 123.0 121.0 118.0 116.0 39.0 31.0 26.0 23.0 20.0
  SAY @48
  IF ~~ THEN DO ~StartStore("Brundor",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 131.1 129.1 127.1 125.1 123.1 121.1 118.1 116.1 113.1 111.1 109.1 107.1 105.1 103.1 101.1 84.1 39.1 38.1 31.1 26.1 23.1 20.1
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 23
  IF ~PartyHasItem("AnciSa")
PartyHasItem("AnciSb")
PartyHasItem("AnciSc")
PartyHasItem("AnciSd")~ THEN REPLY @25 GOTO 38
  IF ~PartyHasItem("NewSsFi")
PartyHasItem("NewSsIc")
PartyHasItem("NewSsLi")~ THEN REPLY @26 GOTO 84
  IF ~PartyHasItem("SW1H25")
NumItemsPartyGT("MISC42",1)
PartyHasItem("NewStHa")~ THEN REPLY @27 GOTO 101
  IF ~PartyHasItem("NewCryH")
PartyHasItem("NewCryB1")
PartyHasItem("NewCryB2")~ THEN REPLY @28 GOTO 103
  IF ~PartyHasItem("NewGSca")
PartyHasItem("LEAT19")~ THEN REPLY @29 GOTO 105
  IF ~PartyHasItem("NewBeH1")
PartyHasItem("NewBeH2")
PartyHasItem("NewBeH3")~ THEN REPLY @30 GOTO 107
  IF ~PartyHasItem("NewNtG1")
PartyHasItem("NewNtG2")
PartyHasItem("SW1H49")~ THEN REPLY @31 GOTO 109
  IF ~PartyHasItem("NewShP1")
PartyHasItem("NewShP2")
PartyHasItem("NewShP3")~ THEN REPLY @32 GOTO 111
  IF ~PartyHasItem("AX1H08")
PartyHasItem("NewRuMo")
PartyHasItem("NewRuCl")~ THEN REPLY @33 GOTO 113
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @51
  IF ~~ THEN REPLY @43 GOTO 21
  IF ~~ THEN REPLY @52 GOTO 22
  IF ~~ THEN REPLY @45 GOTO 24
  IF ~~ THEN REPLY @53 GOTO 30
END

IF ~~ THEN BEGIN 24 // from: 23.2 20.3
  SAY @54
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @55
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @56
  IF ~~ THEN REPLY @43 GOTO 21
  IF ~Global("Knowsmith","LOCALS",1)~ THEN REPLY @44 GOTO 22
  IF ~!Global("Knowsmith","LOCALS",1)~ THEN REPLY @4 GOTO 4
  IF ~PartyHasItem("SoulArmr")
Global("SoulArmorQuest","GLOBAL",0)~ THEN REPLY @46 GOTO 82
  IF ~~ THEN REPLY @57 GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 31.3 26.4 23.3 20.5
  SAY @58
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY @37
  IF ~~ THEN REPLY @59 GOTO 21
  IF ~Global("Knowsmith","LOCALS",1)~ THEN REPLY @44 GOTO 22
  IF ~!Global("Knowsmith","LOCALS",1)~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @14 GOTO 30
END

IF ~~ THEN BEGIN 32 // from: 4.1
  SAY @60
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @12 GOTO 13
  IF ~~ THEN REPLY @13 GOTO 14
  IF ~~ THEN REPLY @5 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 33 // from: 14.1
  SAY @61
  IF ~PartyGoldGT(2999)~ THEN REPLY @62 DO ~TakePartyGold(3000)
TakePartyItem("AnciSa")
TakePartyItem("AnciSb")
TakePartyItem("AnciSc")
TakePartyItem("AnciSd")~ GOTO 34
  IF ~~ THEN REPLY @63 GOTO 14
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 38.0 33.0
  SAY @65
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",1)~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 113.2 111.2 109.2 107.2 105.2 103.2 101.2 99.2 97.2 95.2 93.2 91.2 89.2 87.2 85.2 84.2 38.2 33.2
  SAY @66
  IF ~~ THEN DO ~SetGlobal("Brundtalk","RR3101",1)~ EXIT
END

IF ~Global("ForgedItem","RR3101",1)
Global("Brundtalk","RR3101",0)~ THEN BEGIN 36
  SAY @67
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
SetGlobal("Brundtalk","RR3101",1)
GiveItemCreate("AnciSwrd",LastTalkedToBy,0,0,0)~ GOTO 3
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("AnciSwrd",LastTalkedToBy,0,0,0)~ GOTO 14
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("AnciSwrd",LastTalkedToBy,0,0,0)~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 116.2 115.2 39.2 36.2
  SAY @71
  IF ~~ THEN DO ~SetGlobal("Brundtalk","RR3101",1)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1
  SAY @61
  IF ~PartyGoldGT(2999)~ THEN REPLY @62 /* #69593 */ DO ~TakePartyGold(3000)
TakePartyItem("AnciSa")
TakePartyItem("AnciSb")
TakePartyItem("AnciSc")
TakePartyItem("AnciSd")
DestroyItem("AnciSa")
DestroyItem("AnciSb")
DestroyItem("AnciSc")
DestroyItem("AnciSd")~ GOTO 34
  IF ~~ THEN REPLY @63 GOTO 22
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~Global("ForgedItem","RR3101",1)
Global("Brundtalk","RR3101",1)~ THEN BEGIN 39
  SAY @67
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("AnciSwrd",LastTalkedToBy,0,0,0)~ GOTO 21
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("AnciSwrd",LastTalkedToBy,0,0,0)~ GOTO 22
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("AnciSwrd",LastTalkedToBy,0,0,0)~ GOTO 37
END

IF ~~ THEN BEGIN 40 // from:
  SAY @72
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @73
  IF ~~ THEN DO ~SetGlobal("Ifixthisabit","RR3101",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY @74
  IF ~~ THEN DO ~SetGlobal("Ifixthisabit","RR3101",0)~ EXTERN ~GRAYFOOT~ 48
END

IF ~~ THEN BEGIN 43 // from:
  SAY @72
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @75
  IF ~~ THEN EXTERN ~GRAYFOOT~ 50
END

IF ~~ THEN BEGIN 45 // from:
  SAY @72
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY @76
  IF ~~ THEN EXTERN ~GRAYFOOT~ 52
END

IF ~~ THEN BEGIN 47 // from:
  SAY @72
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @77
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @78
  IF ~~ THEN EXTERN ~GRAYFOOT~ 75
END

IF ~~ THEN BEGIN 50 // from:
  SAY @72
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY @77
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY @79
  IF ~~ THEN EXTERN ~GRAYFOOT~ 78
END

IF ~~ THEN BEGIN 53 // from:
  SAY @80
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY @81
  IF ~~ THEN DO ~SetGlobal("Ifixthisabit","RR3101",1)~ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY @82
  IF ~~ THEN DO ~SetGlobal("Ifixthisabit","RR3101",0)~ EXTERN ~GRAYFOOT~ 108
END

IF ~~ THEN BEGIN 56 // from:
  SAY @80
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 57 // from:
  SAY @80
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 58 // from:
  SAY @80
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 59 // from:
  SAY @80
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 60 // from:
  SAY @80
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 61 // from:
  SAY @80
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY @83
  IF ~~ THEN DO ~SetGlobal("Ifixthisabit","RR3101",1)~ EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY @84
  IF ~~ THEN DO ~SetGlobal("Ifixthisabit","RR3101",0)~ EXTERN ~GRAYFOOT~ 114
END

IF ~~ THEN BEGIN 64 // from: 56.0
  SAY @85
  IF ~~ THEN EXTERN ~GRAYFOOT~ 109
END

IF ~~ THEN BEGIN 65 // from: 59.0
  SAY @86
  IF ~~ THEN EXTERN ~GRAYFOOT~ 112
END

IF ~~ THEN BEGIN 66 // from: 60.0
  SAY @87
  IF ~~ THEN EXTERN ~GRAYFOOT~ 113
END

IF ~~ THEN BEGIN 67 // from: 57.0
  SAY @88
  IF ~~ THEN EXTERN ~GRAYFOOT~ 110
END

IF ~~ THEN BEGIN 68 // from: 58.0
  SAY @89
  IF ~~ THEN EXTERN ~GRAYFOOT~ 111
END

IF ~~ THEN BEGIN 69 // from:
  SAY @90
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY @91
  IF ~~ THEN EXTERN ~GRAYFOOT~ 160
END

IF ~~ THEN BEGIN 71 // from:
  SAY @92
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @93
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY @94
  IF ~~ THEN EXTERN ~GRAYFOOT~ 163
END

IF ~~ THEN BEGIN 74 // from:
  SAY @95
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY @96
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY @97
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY @98
  IF ~~ THEN EXTERN ~GRAYFOOT~ 166
END

IF ~~ THEN BEGIN 78 // from:
  SAY @99
  IF ~~ THEN EXTERN ~GRAYFOOT~ 171
END

IF ~~ THEN BEGIN 79 // from:
  SAY @92
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY @93
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY @94
  IF ~~ THEN EXTERN ~GRAYFOOT~ 173
END

IF ~~ THEN BEGIN 82 // from: 26.3 20.4
  SAY @100
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY @101
  IF ~~ THEN DO ~SetGlobal("SoulArmorQuest","GLOBAL",1)
RevealAreaOnMap("RR3300")~ UNSOLVED_JOURNAL @571685 EXIT
END

IF ~~ THEN BEGIN 84 // from: 22.2
  SAY @102
  IF ~PartyGoldGT(2999)~ THEN REPLY @62 DO ~TakePartyGold(3000)
TakePartyItem("NewSsFi")
TakePartyItem("NewSsIc")
TakePartyItem("NewSsLi")
DestroyItem("NewSsFi")
DestroyItem("NewSsIc")
DestroyItem("NewSsLi")~ GOTO 86
  IF ~~ THEN REPLY @63 GOTO 22
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 85 // from: 14.2
  SAY @102
  IF ~PartyGoldGT(2999)~ THEN REPLY @62 DO ~TakePartyGold(3000)
TakePartyItem("NewSsFi")
TakePartyItem("NewSsIc")
TakePartyItem("NewSsLi")~ GOTO 86
  IF ~~ THEN REPLY @63 GOTO 14
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 86 // from: 85.0 84.0
  SAY @65
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",2)~ EXIT
END

IF ~~ THEN BEGIN 87 // from: 14.3
  SAY @103
  IF ~PartyGoldGT(2999)~ THEN REPLY @62 DO ~TakePartyGold(3000)
TakePartyItem("NewStHa")
TakePartyItem("SW1H25")
TakePartyItemNum("MISC42", 2)
DestroyItem("NewStHa")
DestroyItem("SW1H25")
DestroyItem("MISC42")
DestroyItem("MISC42")~ GOTO 88
  IF ~~ THEN REPLY @63 GOTO 14
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY @104
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",3)~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 14.4
  SAY @105
  IF ~PartyGoldGT(3999)~ THEN REPLY @62 DO ~TakePartyGold(4000)
TakePartyItem("NewCryH")
TakePartyItem("NewCryB1")
TakePartyItem("NewCryB2")~ GOTO 90
  IF ~~ THEN REPLY @63 GOTO 14
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY @106
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",4)~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 14.5
  SAY @105
  IF ~PartyGoldGT(3999)~ THEN REPLY @62 DO ~TakePartyGold(4000)
TakePartyItem("NewGSca")
TakePartyItem("LEAT19")~ GOTO 92
  IF ~~ THEN REPLY @63 GOTO 14
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY @107
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",5)~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 14.6
  SAY @108
  IF ~PartyGoldGT(2499)~ THEN REPLY @62 DO ~TakePartyGold(2500)
TakePartyItem("NewBeH1")
TakePartyItem("NewBeH2")
TakePartyItem("NewBeH3")~ GOTO 94
  IF ~~ THEN REPLY @63 GOTO 14
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY @109
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",6)~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 14.7
  SAY @103
  IF ~PartyGoldGT(2999)~ THEN REPLY @62 DO ~TakePartyGold(3000)
TakePartyItem("NewNtG1")
TakePartyItem("NewNtG2")
TakePartyItem("SW1H49")~ GOTO 96
  IF ~~ THEN REPLY @63 GOTO 14
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY @110
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",7)~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 14.8
  SAY @103
  IF ~PartyGoldGT(2999)~ THEN REPLY @62 DO ~TakePartyGold(3000)
TakePartyItem("NewShP1")
TakePartyItem("NewShP2")
TakePartyItem("NewShP3")~ GOTO 98
  IF ~~ THEN REPLY @63 GOTO 14
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY @111
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",8)~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 14.9
  SAY @105
  IF ~PartyGoldGT(3999)~ THEN REPLY @62 DO ~TakePartyGold(4000)
TakePartyItem("AX1H08")
TakePartyItem("NewRuMo")
TakePartyItem("NewRuCl")~ GOTO 100
  IF ~~ THEN REPLY @63 GOTO 14
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY @112
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",9)~ EXIT
END

IF ~~ THEN BEGIN 101 // from: 22.3
  SAY @103
  IF ~PartyGoldGT(2999)~ THEN REPLY @62 DO ~TakePartyGold(3000)
TakePartyItem("NewStHa")
TakePartyItem("SW1H25")
TakePartyItemNum("MISC42", 2)
DestroyItem("NewStHa")
DestroyItem("SW1H25")
DestroyItem("MISC42")
DestroyItem("MISC42")~ GOTO 102
  IF ~~ THEN REPLY @63 GOTO 22
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY @104
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",3)~ EXIT
END

IF ~~ THEN BEGIN 103 // from: 22.4
  SAY @105
  IF ~PartyGoldGT(3999)~ THEN REPLY @62 DO ~TakePartyGold(4000)
TakePartyItem("NewCryH")
TakePartyItem("NewCryB1")
TakePartyItem("NewCryB2")
DestroyItem("NewCryH")
DestroyItem("NewCryB1")
DestroyItem("NewCryB2")~ GOTO 104
  IF ~~ THEN REPLY @63  GOTO 22
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY @106
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",4)~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 22.5
  SAY @105
  IF ~PartyGoldGT(3999)~ THEN REPLY @62 DO ~TakePartyGold(4000)
TakePartyItem("NewGSca")
TakePartyItem("LEAT19")
DestroyItem("NewGSca")
DestroyItem("LEAT19")~ GOTO 106
  IF ~~ THEN REPLY @63 GOTO 22
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY @107
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",5)~ EXIT
END

IF ~~ THEN BEGIN 107 // from: 22.6
  SAY @108
  IF ~PartyGoldGT(2499)~ THEN REPLY @62 DO ~TakePartyGold(2500)
TakePartyItem("NewBeH1")
TakePartyItem("NewBeH2")
TakePartyItem("NewBeH3")
DestroyItem("NewBeH1")
DestroyItem("NewBeH2")
DestroyItem("NewBeH3")~ GOTO 108
  IF ~~ THEN REPLY @63 GOTO 22
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY @109
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",6)~ EXIT
END

IF ~~ THEN BEGIN 109 // from: 22.7
  SAY @103 /* #74438 */
  IF ~PartyGoldGT(2999)~ THEN REPLY @62 DO ~TakePartyGold(3000)
TakePartyItem("NewNtG1")
TakePartyItem("NewNtG2")
TakePartyItem("SW1H49")
DestroyItem("NewNtG1")
DestroyItem("NewNtG2")
DestroyItem("SW1H49")~ GOTO 110
  IF ~~ THEN REPLY @63 GOTO 22
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY @110
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",7)~ EXIT
END

IF ~~ THEN BEGIN 111 // from: 22.8
  SAY @103
  IF ~PartyGoldGT(2999)~ THEN REPLY @62 DO ~TakePartyGold(3000)
TakePartyItem("NewShP1")
TakePartyItem("NewShP2")
TakePartyItem("NewShP3")
DestroyItem("NewShP1")
DestroyItem("NewShP2")
DestroyItem("NewShP3")~ GOTO 112
  IF ~~ THEN REPLY @63 GOTO 22
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY @111
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",8)~ EXIT
END

IF ~~ THEN BEGIN 113 // from: 22.9
  SAY @105
  IF ~PartyGoldGT(3999)~ THEN REPLY @62 DO ~TakePartyGold(4000)
TakePartyItem("AX1H08")
TakePartyItem("NewRuMo")
TakePartyItem("NewRuCl")
DestroyItem("AX1H08")
DestroyItem("NewRuMo")
DestroyItem("NewRuCl")~ GOTO 114
  IF ~~ THEN REPLY @63 GOTO 22
  IF ~~ THEN REPLY @64 GOTO 35
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY @112
  IF ~~ THEN DO ~SetGlobal("StartForging","RR3101",1)
SetGlobal("ForgedItem","RR3101",9)~ EXIT
END

IF ~Global("ForgedItem","RR3101",2)
Global("Brundtalk","RR3101",0)~ THEN BEGIN 115
  SAY @113
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
SetGlobal("Brundtalk","RR3101",1)
GiveItemCreate("NewHoTr",LastTalkedToBy,0,0,0)~ GOTO 3
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewHoTr",LastTalkedToBy,0,0,0)~ GOTO 14
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewHoTr",LastTalkedToBy,0,0,0)~ GOTO 37
END

IF ~Global("ForgedItem","RR3101",2)
Global("Brundtalk","RR3101",1)~ THEN BEGIN 116
  SAY @113
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewHoTr",LastTalkedToBy,0,0,0)~ GOTO 21
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewHoTr",LastTalkedToBy,0,0,0)~ GOTO 22
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewHoTr",LastTalkedToBy,0,0,0)~ GOTO 37
END

IF ~Global("ForgedItem","RR3101",3)
Global("Brundtalk","RR3101",0)~ THEN BEGIN 117
  SAY @114
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
SetGlobal("Brundtalk","RR3101",1)
GiveItemCreate("NewStQu",LastTalkedToBy,0,0,0)~ GOTO 3
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewStQu",LastTalkedToBy,0,0,0)~ GOTO 14
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewStQu",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~Global("ForgedItem","RR3101",3)
Global("Brundtalk","RR3101",1)~ THEN BEGIN 118
  SAY @114
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewStQu",LastTalkedToBy,0,0,0)~ GOTO 21
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewStQu",LastTalkedToBy,0,0,0)~ GOTO 22
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewStQu",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 131.2 130.2 129.2 128.2 127.2 126.2 125.2 124.2 123.2 122.2 121.2 120.2 118.2 117.2
  SAY @71
  IF ~~ THEN DO ~SetGlobal("Brundtalk","RR3101",1)~ EXIT
END

IF ~Global("ForgedItem","RR3101",4)
Global("Brundtalk","RR3101",0)~ THEN BEGIN 120
  SAY @115
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
SetGlobal("Brundtalk","RR3101",1)
GiveItemCreate("NewCrys",LastTalkedToBy,0,0,0)~ GOTO 3
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewCrys",LastTalkedToBy,0,0,0)~ GOTO 14
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewCrys",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~Global("ForgedItem","RR3101",4)
Global("Brundtalk","RR3101",1)~ THEN BEGIN 121
  SAY @115
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewCrys",LastTalkedToBy,0,0,0)~ GOTO 21
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewCrys",LastTalkedToBy,0,0,0)~ GOTO 22
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewCrys",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~Global("ForgedItem","RR3101",5)
Global("Brundtalk","RR3101",0)~ THEN BEGIN 122
  SAY @116
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
SetGlobal("Brundtalk","RR3101",1)
GiveItemCreate("NewGAr",LastTalkedToBy,0,0,0)~ GOTO 3
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewGAr",LastTalkedToBy,0,0,0)~ GOTO 14
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewGAr",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~Global("ForgedItem","RR3101",5)
Global("Brundtalk","RR3101",1)~ THEN BEGIN 123
  SAY @116
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewGAr",LastTalkedToBy,0,0,0)~ GOTO 21
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewGAr",LastTalkedToBy,0,0,0)~ GOTO 22
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewGAr",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~Global("ForgedItem","RR3101",6)
Global("Brundtalk","RR3101",0)~ THEN BEGIN 124
  SAY @117
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
SetGlobal("Brundtalk","RR3101",1)
GiveItemCreate("NewBeHe",LastTalkedToBy,0,0,0)~ GOTO 3
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewBeHe",LastTalkedToBy,0,0,0)~ GOTO 14
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewBeHe",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~Global("ForgedItem","RR3101",6)
Global("Brundtalk","RR3101",1)~ THEN BEGIN 125
  SAY @117
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewBeHe",LastTalkedToBy,0,0,0)~ GOTO 21
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewBeHe",LastTalkedToBy,0,0,0)~ GOTO 22
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewBeHe",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~Global("ForgedItem","RR3101",7)
Global("Brundtalk","RR3101",0)~ THEN BEGIN 126
  SAY @118
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
SetGlobal("Brundtalk","RR3101",1)
GiveItemCreate("NewNtXa",LastTalkedToBy,0,0,0)~ GOTO 3
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewNtXa",LastTalkedToBy,0,0,0)~ GOTO 14
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewNtXa",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~Global("ForgedItem","RR3101",7)
Global("Brundtalk","RR3101",1)~ THEN BEGIN 127
  SAY @118
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewNtXa",LastTalkedToBy,0,0,0)~ GOTO 21
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewNtXa",LastTalkedToBy,0,0,0)~ GOTO 22
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewNtXa",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~Global("ForgedItem","RR3101",8)
Global("Brundtalk","RR3101",0)~ THEN BEGIN 128
  SAY @119
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
SetGlobal("Brundtalk","RR3101",1)
GiveItemCreate("NewShPo",LastTalkedToBy,0,0,0)~ GOTO 3
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewShPo",LastTalkedToBy,0,0,0)~ GOTO 14
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewShPo",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~Global("ForgedItem","RR3101",8)
Global("Brundtalk","RR3101",1)~ THEN BEGIN 129
  SAY @119
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewShPo",LastTalkedToBy,0,0,0)~ GOTO 21
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewShPo",LastTalkedToBy,0,0,0)~ GOTO 22
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewShPo",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~Global("ForgedItem","RR3101",9)
Global("Brundtalk","RR3101",0)~ THEN BEGIN 130
  SAY @120
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
SetGlobal("Brundtalk","RR3101",1)
GiveItemCreate("NewDwLe",LastTalkedToBy,0,0,0)~ GOTO 3
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewDwLe",LastTalkedToBy,0,0,0)~ GOTO 14
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewDwLe",LastTalkedToBy,0,0,0)~ GOTO 119
END

IF ~Global("ForgedItem","RR3101",9)
Global("Brundtalk","RR3101",1)~ THEN BEGIN 131
  SAY @120
  IF ~~ THEN REPLY @68 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewDwLe",LastTalkedToBy,0,0,0)~ GOTO 21
  IF ~~ THEN REPLY @69 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewDwLe",LastTalkedToBy,0,0,0)~ GOTO 22
  IF ~~ THEN REPLY @70 DO ~SetGlobal("ForgedItem","RR3101",0)
GiveItemCreate("NewDwLe",LastTalkedToBy,0,0,0)~ GOTO 119
END
