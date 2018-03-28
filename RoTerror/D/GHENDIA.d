BEGIN ~GHENDIA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("GheStore",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 2.2 0.2
  SAY @4
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 DO ~StartStore("GheStore",LastTalkedToBy())~ EXIT
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @9
  IF ~~ THEN EXIT
END
