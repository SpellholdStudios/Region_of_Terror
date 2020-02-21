BEGIN ~ARLBAR~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("ArlBar",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 DO ~StartStore("ArlBar",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN EXIT
END
