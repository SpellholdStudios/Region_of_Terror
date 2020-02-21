BEGIN ~GRAGHAS~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @5
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN REPLY @7 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END
