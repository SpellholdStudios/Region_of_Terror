BEGIN ~HENMAN~

IF ~NumTimesTalkedTo(0)
!InParty("Brue2")
!InParty("Wulfg2")
InParty("Driz2")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~DRIZ2J~ 109
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN EXTERN ~DRIZ2J~ 113
END

IF ~~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXTERN ~DRIZ2J~ 113
END

IF ~~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN DO ~EscapeArea()
SetGlobal("Driknicd","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @1
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @2
  IF ~~ THEN EXTERN ~BRUE2J~ 2
END

IF ~~ THEN BEGIN 7 // from:
  SAY @1
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @2
  IF ~~ THEN EXTERN ~WULFG2J~ 39
END

IF ~~ THEN BEGIN 9 // from:
  SAY @1
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @2
  IF ~~ THEN EXTERN ~WULFG2J~ 40
END

IF ~~ THEN BEGIN 11 // from:
  SAY @5
  IF ~~ THEN EXTERN ~BRUE2J~ 2
END

IF ~NumTimesTalkedTo(0)
InParty("Brue2")
!InParty("Wulfg2")
InParty("Driz2")~ THEN BEGIN 12
  SAY @0
  IF ~~ THEN EXTERN ~DRIZ2J~ 115
END

IF ~NumTimesTalkedTo(0)
InParty("Brue2")
InParty("Wulfg2")
InParty("Driz2")~ THEN BEGIN 13
  SAY @0
  IF ~~ THEN EXTERN ~DRIZ2J~ 116
END

IF ~NumTimesTalkedTo(0)
!InParty("Brue2")
InParty("Wulfg2")
InParty("Driz2")~ THEN BEGIN 14
  SAY @0
  IF ~~ THEN EXTERN ~DRIZ2J~ 117
END
