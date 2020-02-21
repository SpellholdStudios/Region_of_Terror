BEGIN ~CADPRI10~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("Spirit1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 DO ~StartStore("Spirit1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 2.1 0.2
  SAY @4
  IF ~~ THEN REPLY @5 EXIT
  IF ~~ THEN REPLY @6 EXIT
  IF ~~ THEN REPLY @7 EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 2
  SAY @8
  IF ~~ THEN REPLY @9 DO ~StartStore("Spirit1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @10 GOTO 1
END

IF ~NumTimesTalkedToGT(1)~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN REPLY @9 DO ~StartStore("Spirit1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @4
  IF ~~ THEN EXIT
END
