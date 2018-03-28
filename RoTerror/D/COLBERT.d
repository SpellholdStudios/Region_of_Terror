BEGIN ~COLBERT~

IF ~Global("PocketPicking","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("PocketPicking","LOCALS",1)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3
  IF ~~ THEN DO ~Enemy()~ EXIT
END
