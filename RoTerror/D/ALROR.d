BEGIN ~ALROR~

IF ~NumTimesTalkedTo(0)
InParty("Driz2")
Global("AlorSpe","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~DRIZ2J~ 70
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXTERN ~DRIZ2J~ 71
END

IF ~~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXTERN ~DRIZ2J~ 72
END

IF ~~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN DO ~RevealAreaOnMap("RR3300")~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN REPLY @5 DO ~GiveItemCreate("KeytoBr",LastTalkedToBy,0,0,0)~ GOTO 9
  IF ~~ THEN REPLY @6 DO ~GiveItemCreate("KeytoBr",LastTalkedToBy,0,0,0)~ GOTO 12
  IF ~~ THEN REPLY @7 DO ~GiveItemCreate("KeytoBr",LastTalkedToBy,0,0,0)~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY @8
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 14.0 13.1 11.1 10.1 6.0
  SAY @12
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @13
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 9 // from: 4.0
  SAY @14
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @9
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @10 GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 14.1 10.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 14
  IF ~~ THEN REPLY @18 GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY @19
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @9
  IF ~~ THEN REPLY @15 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 13.0 11.0
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 7
  IF ~~ THEN REPLY @23 GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 8.0 7.0
  SAY @24
  IF ~~ THEN DO ~SetGlobal("AlorSpe","LOCALS",1)
SetGlobal("AlorLea","AR1100",1)
SetGlobal("AloDriz","GLOBAL",1)~ UNSOLVED_JOURNAL @566095 EXIT
END
