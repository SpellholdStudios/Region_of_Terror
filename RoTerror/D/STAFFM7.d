BEGIN ~STAFFM7~

IF ~NumTimesTalkedTo(0)
!Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
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
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @6
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
!Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN EXIT
END
