BEGIN ~ERANDA3~

IF ~Global("Erwhat","RR3456",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN DO ~SetGlobal("Erwhat","RR3456",2)
Enemy()~ EXIT
END
