BEGIN ~WULFG2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 6
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 3
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @10
  IF ~~ THEN REPLY @11 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @12 DO ~JoinParty()~ EXIT
END

IF ~NumTimesTalkedToGT(0)
!Global("Wulfgargone","GLOBAL",1)~ THEN BEGIN 4
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @16
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 7
  IF ~~ THEN REPLY @19 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 8
  IF ~~ THEN REPLY @22 GOTO 8
  IF ~~ THEN REPLY @23 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.0
  SAY @24
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2 6.1
  SAY @25
  IF ~~ THEN EXIT
END

IF ~Global("Wulfgargone","GLOBAL",1)~ THEN BEGIN 10
  SAY @26
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @27
  IF ~~ THEN DO ~SetGlobal("Wulfgargone","GLOBAL",2)
JoinParty()~ EXIT
END
