BEGIN ~CADPRI22~

IF ~Global("lasdfjlk","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("Spirit1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN EXIT
END
