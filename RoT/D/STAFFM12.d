BEGIN ~STAFFM12~

IF ~Global("Registr","GLOBAL",0)
!Global("Ardaeffects","GLOBAL",1)
XPLT(LastTalkedToBy(Myself),1000000)
PartyGoldGT(999)~ THEN BEGIN 0
  SAY @0
  IF ~Class(Player1,FIGHTER_ALL)
XPLT(Player1,1000000)~ THEN REPLY @1 GOTO 2
  IF ~InParty("Tapio")
XPLT("Tapio",1000000)~ THEN REPLY @2 GOTO 5
  IF ~InParty("Wulfg2")
XPLT("Wulfg2",1000000)~ THEN REPLY @3 GOTO 7
  IF ~InParty("Korgan")
XPLT("Korgan",1000000)~ THEN REPLY @4 GOTO 9
  IF ~InParty("Mazzy")
XPLT("Mazzy",1000000)~ THEN REPLY @5 GOTO 11
  IF ~InParty("Brue2")
XPLT("Brue2",1000000)~ THEN REPLY @6 GOTO 14
  IF ~~ THEN REPLY @7 EXIT
END

IF ~Global("Registr","GLOBAL",0)
PartyGoldLT(1000)~ THEN BEGIN 1
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @9
  IF ~~ THEN REPLY @10 /* #67441 */ GOTO 3
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaPla","GLOBAL",1)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 14.1 11.1 9.1 7.1 5.1 2.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaTap","GLOBAL",1)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaWulf","GLOBAL",1)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.3
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaKor","GLOBAL",1)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.4
  SAY @15
  IF ~~ THEN REPLY @10 GOTO 12
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaMaz","GLOBAL",1)
TakePartyGold(1000)~ EXIT
END

IF ~Global("Registr","GLOBAL",1)~ THEN BEGIN 13
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.5
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 15
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaBru","GLOBAL",1)
TakePartyGold(1000)~ EXIT
END

IF ~Global("Registr","GLOBAL",0)
!Global("Ardaeffects","GLOBAL",2)
XPLT(LastTalkedToBy(Myself),2250000)
XPGT(LastTalkedToBy(Myself),999999)
PartyGoldGT(999)~ THEN BEGIN 16
  SAY @17
  IF ~Class(Player1,FIGHTER_ALL)
XPLT(Player1,2250000)
XPGT(Player1,999999)~ THEN REPLY @1 GOTO 26
  IF ~InParty("Tapio")
XPLT("Tapio",2250000)
XPGT("Tapio",999999)~ THEN REPLY @2 GOTO 29
  IF ~InParty("Wulfg2")
XPLT("Wulfg2",2250000)
XPGT("Wulfg2",999999)~ THEN REPLY @3 GOTO 32
  IF ~InParty("Korgan")
XPLT("Korgan",2250000)
XPGT("Korgan",999999)~ THEN REPLY @4 GOTO 35
  IF ~InParty("Mazzy")
XPLT("Mazzy",2250000)
XPGT("Mazzy",999999)~ THEN REPLY @5 GOTO 38
  IF ~InParty("Brue2")
XPLT("Brue2",2250000)
XPGT("Brue2",999999)~ THEN REPLY @6 GOTO 41
  IF ~~ THEN REPLY @7 EXIT
END

IF ~Global("Registr","GLOBAL",0)
!Global("Ardaeffects","GLOBAL",3)
XPLT(LastTalkedToBy(Myself),3000000)
XPGT(LastTalkedToBy(Myself),2249999)
PartyGoldGT(999)~ THEN BEGIN 17
  SAY @18
  IF ~Class(Player1,FIGHTER_ALL)
XPLT(Player1,3000000)
XPGT(Player1,2249999)~ THEN REPLY @1 GOTO 44
  IF ~InParty("Tapio")
XPLT("Tapio",3000000)
XPGT("Tapio",2249999)~ THEN REPLY @2 GOTO 47
  IF ~InParty("Wulfg2")
XPLT("Wulfg2",3000000)
XPGT("Wulfg2",2249999)~ THEN REPLY @3 GOTO 50
  IF ~InParty("Korgan")
XPLT("Korgan",3000000)
XPGT("Korgan",2249999)~ THEN REPLY @4 GOTO 53
  IF ~InParty("Mazzy")
XPLT("Mazzy",3000000)
XPGT("Mazzy",2249999)~ THEN REPLY @5 GOTO 56
  IF ~InParty("Brue2")
XPLT("Brue2",3000000)
XPGT("Brue2",2249999)~ THEN REPLY @6 GOTO 59
  IF ~~ THEN REPLY @7 EXIT
END

IF ~Global("Registr","GLOBAL",0)
!Global("Ardaeffects","GLOBAL",4)
XPLT(LastTalkedToBy(Myself),4000000)
XPGT(LastTalkedToBy(Myself),2999999)
PartyGoldGT(999)~ THEN BEGIN 18
  SAY @19
  IF ~Class(Player1,FIGHTER_ALL)
XPLT(Player1,4000000)
XPGT(Player1,2999999)~ THEN REPLY @1 GOTO 62
  IF ~InParty("Tapio")
XPLT("Tapio",4000000)
XPGT("Tapio",2999999)~ THEN REPLY @2 GOTO 65
  IF ~InParty("Wulfg2")
XPLT("Wulfg2",4000000)
XPGT("Wulfg2",2999999)~ THEN REPLY @3 GOTO 68
  IF ~InParty("Korgan")
XPLT("Korgan",4000000)
XPGT("Korgan",2999999)~ THEN REPLY @4 GOTO 71
  IF ~InParty("Mazzy")
XPLT("Mazzy",4000000)
XPGT("Mazzy",2999999)~ THEN REPLY @5 GOTO 74
  IF ~InParty("Brue2")
XPLT("Brue2",4000000)
XPGT("Brue2",2999999)~ THEN REPLY @6 GOTO 77
  IF ~~ THEN REPLY @7 EXIT
END

IF ~Global("Registr","GLOBAL",0)
!Global("Ardaeffects","GLOBAL",5)
XPGT(LastTalkedToBy(Myself),3999999)
PartyGoldGT(999)~ THEN BEGIN 19
  SAY @20
  IF ~Class(Player1,FIGHTER_ALL)
XPGT(Player1,3999999)~ THEN REPLY @1 GOTO 80
  IF ~InParty("Tapio")
XPGT("Tapio",3999999)~ THEN REPLY @2 GOTO 83
  IF ~InParty("Wulfg2")
XPGT("Wulfg2",3999999)~ THEN REPLY @3 GOTO 86
  IF ~InParty("Korgan")
XPGT("Korgan",3999999)~ THEN REPLY @4 GOTO 89
  IF ~InParty("Mazzy")
XPGT("Mazzy",3999999)~ THEN REPLY @5 GOTO 92
  IF ~InParty("Brue2")
XPGT("Brue2",3999999)~ THEN REPLY @6 GOTO 95
  IF ~~ THEN REPLY @7 EXIT
END

IF ~Global("Registr","GLOBAL",0)
Global("Ardaeffects","GLOBAL",1)
PartyGoldGT(999)~ THEN BEGIN 20
  SAY @21
  IF ~~ THEN EXIT
END

IF ~Global("Registr","GLOBAL",0)
Global("Ardaeffects","GLOBAL",2)
PartyGoldGT(999)~ THEN BEGIN 21
  SAY @22
  IF ~~ THEN EXIT
END

IF ~Global("Registr","GLOBAL",0)
Global("Ardaeffects","GLOBAL",3)
PartyGoldGT(999)~ THEN BEGIN 22
  SAY @23
  IF ~~ THEN EXIT
END

IF ~Global("Registr","GLOBAL",0)
Global("Ardaeffects","GLOBAL",4)
PartyGoldGT(999)~ THEN BEGIN 23
  SAY @24
  IF ~~ THEN EXIT
END

IF ~Global("Registr","GLOBAL",0)
Global("Ardaeffects","GLOBAL",5)
PartyGoldGT(999)~ THEN BEGIN 24
  SAY @25
  IF ~~ THEN EXIT
END

IF ~Global("Registr","GLOBAL",2)~ THEN BEGIN 25
  SAY @26
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 27
  IF ~~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaPla","GLOBAL",9)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 16.1
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 30
  IF ~~ THEN REPLY @11 GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaTap","GLOBAL",9)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.2
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 33
  IF ~~ THEN REPLY @11 GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaWulf","GLOBAL",9)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 16.3
  SAY @14
  IF ~~ THEN REPLY @10 /* #67441 */ GOTO 36
  IF ~~ THEN REPLY @11 GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaKor","GLOBAL",9)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 16.4
  SAY @15
  IF ~~ THEN REPLY @10 GOTO 39
  IF ~~ THEN REPLY @11 GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaMaz","GLOBAL",9)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from: 16.5
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 42
  IF ~~ THEN REPLY @11 GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaBru","GLOBAL",9)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44 // from: 17.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 45
  IF ~~ THEN REPLY @11 GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaPla","GLOBAL",17)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47 // from: 17.1
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 48
  IF ~~ THEN REPLY @11 GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaTap","GLOBAL",17)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from: 17.2
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 51
  IF ~~ THEN REPLY @11 GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaWulf","GLOBAL",17)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from: 17.3
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 54
  IF ~~ THEN REPLY @11 GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaKor","GLOBAL",17)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from: 17.4
  SAY @15
  IF ~~ THEN REPLY @10 GOTO 57
  IF ~~ THEN REPLY @11 GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaMaz","GLOBAL",17)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from: 17.5
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 60
  IF ~~ THEN REPLY @11 GOTO 61
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaBru","GLOBAL",17)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from: 18.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 63
  IF ~~ THEN REPLY @11 GOTO 64
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaPla","GLOBAL",25)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 62.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65 // from: 18.1
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 66
  IF ~~ THEN REPLY @11 GOTO 67
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaTap","GLOBAL",25)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from: 18.2
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 69
  IF ~~ THEN REPLY @11 GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaWulf","GLOBAL",25)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 68.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from: 18.3
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 72
  IF ~~ THEN REPLY @11 GOTO 73
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaKor","GLOBAL",25)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 18.4
  SAY @15
  IF ~~ THEN REPLY @10 GOTO 75
  IF ~~ THEN REPLY @11 GOTO 76
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaMaz","GLOBAL",25)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 74.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77 // from: 18.5
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 78
  IF ~~ THEN REPLY @11 GOTO 79
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaBru","GLOBAL",25)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 79 // from: 77.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80 // from: 19.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 81
  IF ~~ THEN REPLY @11 GOTO 82
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY @27
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaPla","GLOBAL",33)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from: 19.1
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 84
  IF ~~ THEN REPLY @11 GOTO 85
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY @27
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaTap","GLOBAL",33)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 83.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 86 // from: 19.2
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 87
  IF ~~ THEN REPLY @11 GOTO 88
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY @27
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaWulf","GLOBAL",33)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 86.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 89 // from: 19.3
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 90
  IF ~~ THEN REPLY @11 GOTO 91
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY @27
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaKor","GLOBAL",33)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 89.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 92 // from: 19.4
  SAY @15
  IF ~~ THEN REPLY @10 GOTO 93
  IF ~~ THEN REPLY @11 GOTO 94
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY @27
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaMaz","GLOBAL",33)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 94 // from: 92.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95 // from: 19.5
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 96
  IF ~~ THEN REPLY @11 GOTO 97
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY @27
  IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaBru","GLOBAL",33)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 95.1
  SAY @13
  IF ~~ THEN EXIT
END
