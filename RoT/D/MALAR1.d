BEGIN ~MALAR1~

IF ~Global("FinalBattleofitemp","GLOBAL",1)
!InParty("Wulfg2")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 9
  IF ~~ THEN REPLY @5 GOTO 12
END

IF ~~ THEN BEGIN 1 // from: 5.1 0.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~~ THEN REPLY @8 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @10
  IF ~~ THEN DO ~SetGlobal("FinalBattleofitemp","GLOBAL",2)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @11
  IF ~~ THEN DO ~SetGlobal("FinalBattleofitemp","GLOBAL",2)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @12
  IF ~~ THEN DO ~SetGlobal("FinalBattleofitemp","GLOBAL",2)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 6
  IF ~~ THEN REPLY @15 GOTO 1
  IF ~~ THEN REPLY @16 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @17
  IF ~~ THEN DO ~SetGlobal("FinalBattleofitemp","GLOBAL",2)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @18
  IF ~~ THEN DO ~SetGlobal("FinalBattleofitemp","GLOBAL",2)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2
  SAY @19
  IF ~~ THEN DO ~SetGlobal("FinalBattleofitemp","GLOBAL",2)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.3
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @23
  IF ~~ THEN DO ~SetGlobal("FinalBattleofitemp","GLOBAL",2)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @24
  IF ~~ THEN DO ~SetGlobal("FinalBattleofitemp","GLOBAL",2)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.4
  SAY @25
  IF ~~ THEN DO ~SetGlobal("FinalBattleofitemp","GLOBAL",2)
Enemy()~ EXIT
END

IF ~Global("FinalBattleofitemp","GLOBAL",1)
InParty("Wulfg2")~ THEN BEGIN 13
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 14
  IF ~~ THEN REPLY @2 GOTO 15
  IF ~~ THEN REPLY @3 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 17
  IF ~~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @6
  IF ~~ THEN EXTERN ~WULFG2J~ 55
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @13
  IF ~~ THEN EXTERN ~WULFG2J~ 55
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY @19
  IF ~~ THEN EXTERN ~WULFG2J~ 55
END

IF ~~ THEN BEGIN 17 // from: 13.3
  SAY @20
  IF ~~ THEN EXTERN ~WULFG2J~ 55
END

IF ~~ THEN BEGIN 18 // from: 13.4
  SAY @25
  IF ~~ THEN EXTERN ~WULFG2J~ 55
END

IF ~~ THEN BEGIN 19 // from:
  SAY @26
  IF ~~ THEN EXTERN ~WULFG2J~ 56
END
