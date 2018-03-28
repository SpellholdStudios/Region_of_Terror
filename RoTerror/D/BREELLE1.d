BEGIN ~BREELLE1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: MARTWYN1
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("Knowabouttl","GLOBAL",1)
SetGlobal("Youcanleavenow3","GLOBAL",1)~ EXIT
END
