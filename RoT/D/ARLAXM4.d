BEGIN ~ARLAXM4~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("Arlax3",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 DO ~StartStore("Arlax3",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @7
  IF ~~ THEN EXIT
END
