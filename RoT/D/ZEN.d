BEGIN ~ZEN~

IF ~Global("MMHDialog","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END
