BEGIN ~WULFG2J~

IF ~ReputationGT(Player1,14)
Global("Wulfg2GoodRep","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("Wulfg2GoodRep","LOCALS",1)~ GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("Wulfg2GoodRep","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Wulfg2GoodRep","LOCALS",1)~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @13
  IF ~~ THEN REPLY @14 EXIT
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 7
  IF ~~ THEN REPLY @18 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @20
  IF ~~ THEN EXIT
END

IF ~ReputationGT(Player1,16)
Global("Wulfg2GoodRep2","LOCALS",0)~ THEN BEGIN 9
  SAY @21
  IF ~~ THEN REPLY @22 DO ~SetGlobal("Wulfg2GoodRep2","LOCALS",1)~ GOTO 10
  IF ~~ THEN REPLY @23 DO ~SetGlobal("Wulfg2GoodRep2","LOCALS",1)~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @24
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 12
  IF ~~ THEN REPLY @27 EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @28
  IF ~~ THEN EXIT
END

IF ~ReputationGT(Player1,20)
Global("Wulfg2GoodRep3","LOCALS",0)~ THEN BEGIN 13
  SAY @29
  IF ~~ THEN REPLY @30 DO ~SetGlobal("Wulfg2GoodRep3","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY @31 EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @32
  IF ~~ THEN EXIT
END

IF ~ReputationLT(Player1,6)
Global("Wulfg2BadRep","LOCALS",0)~ THEN BEGIN 15
  SAY @33
  IF ~~ THEN DO ~SetGlobal("Wulfg2BadRep","LOCALS",1)~ EXIT
END

IF ~ReputationLT(Player1,3)
Global("Wulfg2BadRep2","LOCALS",0)~ THEN BEGIN 16
  SAY @34
  IF ~~ THEN REPLY @35 DO ~SetGlobal("Wulfg2BadRep2","LOCALS",1)~ GOTO 17
  IF ~~ THEN REPLY @36 DO ~SetGlobal("Wulfg2BadRep2","LOCALS",1)~ GOTO 18
  IF ~~ THEN REPLY @37 DO ~SetGlobal("Wulfg2BadRep2","LOCALS",1)~ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @38
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @39
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY @40
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY @41
  IF ~~ THEN EXTERN ~DRIZ2~ 26
END

IF ~~ THEN BEGIN 21 // from:
  SAY @42
  IF ~~ THEN EXTERN ~DRIZ2~ 35
END

IF ~~ THEN BEGIN 22 // from:
  SAY @43
  IF ~~ THEN EXTERN ~DRIZ2~ 33
END

IF ~~ THEN BEGIN 23 // from:
  SAY @44
  IF ~~ THEN EXTERN ~DRIZ2~ 30
END

IF ~~ THEN BEGIN 24 // from:
  SAY @45
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY @46
  IF ~~ THEN EXTERN ~DRIZ2~ 29
END

IF ~~ THEN BEGIN 26 // from:
  SAY @47
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY @48
  IF ~~ THEN EXTERN ~DRIZ2~ 27
END

IF ~~ THEN BEGIN 28 // from:
  SAY @49
  IF ~~ THEN REPLY @50 EXTERN ~DRIZ2~ 28
  IF ~~ THEN REPLY @51 EXTERN ~DRIZ2~ 28
END

IF ~~ THEN BEGIN 29 // from:
  SAY @52
  IF ~~ THEN EXTERN ~DRIZ2~ 31
END

IF ~~ THEN BEGIN 30 // from:
  SAY @53
  IF ~~ THEN REPLY @54 EXTERN ~DRIZ2~ 34
  IF ~~ THEN REPLY @55 EXTERN ~DRIZ2~ 34
END

IF ~~ THEN BEGIN 31 // from:
  SAY @56
  IF ~~ THEN REPLY @57 EXTERN ~DRIZ2~ 36
  IF ~~ THEN REPLY @58 EXTERN ~DRIZ2~ 36
END

IF ~~ THEN BEGIN 32 // from:
  SAY @59
  IF ~~ THEN REPLY @60 EXTERN ~DRIZ2~ 37
  IF ~~ THEN REPLY @61 EXTERN ~DRIZ2~ 37
END

IF ~~ THEN BEGIN 33 // from:
  SAY @62
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~Global("KickedOut","LOCALS",5)
InParty("Driz2")~ THEN BEGIN 34
  SAY @63
  IF ~~ THEN REPLY @64 EXIT
  IF ~~ THEN REPLY @65 DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY @66
  IF ~~ THEN EXTERN ~ERRTU~ 2
END

IF ~~ THEN BEGIN 36 // from:
  SAY @67
  IF ~~ THEN REPLY @68 EXTERN ~ERRTU~ 28
  IF ~~ THEN REPLY @69 GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @70
  IF ~~ THEN EXTERN ~ERRTU~ 3
END

IF ~~ THEN BEGIN 38 // from:
  SAY @71
  IF ~~ THEN EXTERN ~DRIZ2J~ 64
END

IF ~~ THEN BEGIN 39 // from:
  SAY @72
  IF ~~ THEN EXTERN ~HENMAN~ 11
END

IF ~~ THEN BEGIN 40 // from:
  SAY @72
  IF ~~ THEN EXTERN ~HENMAN~ 3
END

IF ~~ THEN BEGIN 41 // from:
  SAY @73 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY @74
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY @75
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY @76
  IF ~~ THEN DO ~SetGlobal("AbaWulf","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY @77
  IF ~~ THEN DO ~SetGlobal("AbaWulf","GLOBAL",10)~ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY @78
  IF ~~ THEN DO ~SetGlobal("AbaWulf","GLOBAL",18)~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY @78
  IF ~~ THEN DO ~SetGlobal("AbaWulf","GLOBAL",26)~ EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY @79
  IF ~~ THEN EXTERN ~DRIZ2J~ 151
END

IF ~~ THEN BEGIN 49 // from:
  SAY @80
  IF ~~ THEN REPLY @81 EXTERN ~EGALD1~ 19
  IF ~~ THEN REPLY @82 GOTO 50
  IF ~~ THEN REPLY @83 EXTERN ~EGALD1~ 20
END

IF ~~ THEN BEGIN 50 // from: 49.1
  SAY @84
  IF ~~ THEN REPLY @85 EXTERN ~EGALD1~ 11
  IF ~~ THEN REPLY @86 EXTERN ~EGALD1~ 20
END

IF ~~ THEN BEGIN 51 // from:
  SAY @87
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY @88
  IF ~~ THEN EXTERN ~BEOGORN~ 2
END

IF ~~ THEN BEGIN 53 // from:
  SAY @89
  IF ~~ THEN EXTERN ~BEOGORN~ 4
END

IF ~~ THEN BEGIN 54 // from:
  SAY @90
  IF ~~ THEN EXTERN ~ULGARTH~ 0
END

IF ~~ THEN BEGIN 55 // from:
  SAY @91
  IF ~~ THEN EXTERN ~MALAR1~ 19
END

IF ~~ THEN BEGIN 56 // from:
  SAY @92
  IF ~~ THEN DO ~SetGlobal("FinalBattleofitemp","GLOBAL",4)~ EXIT
END

IF ~Global("Mespeakswulfgar","GLOBAL",1)~ THEN BEGIN 57
  SAY @93
  IF ~~ THEN EXTERN ~BEOGORN~ 6
END

IF ~~ THEN BEGIN 58 // from:
  SAY @94
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY @95
  IF ~~ THEN DO ~SetGlobal("Mespeakswulfgar","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY @96
  IF ~~ THEN EXIT
END

IF ~Global("DrizztKickedOut","GLOBAL",1)~ THEN BEGIN 61
  SAY @97
  IF ~~ THEN DO ~SetGlobal("DrizztWulfgarOut","LOCALS",1)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY @98
  IF ~~ THEN EXTERN ~DRIZ2J~ 182
END

IF ~~ THEN BEGIN 63 // from:
  SAY @99
  IF ~~ THEN DO ~SetGlobal("DrizWulfTalk","LOCALS",2)~ EXIT
END
