BEGIN ~GRAGHAM5~

IF ~Global("Fndlst","GLOBAL",0)
Dead("GGiantF1")
Dead("GGiantF2")
Dead("GGiantF3")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("Fndlst","GLOBAL",1)
SetGlobal("Getouta","GLOBAL",1)~ EXIT
END

IF ~Global("Fndlst","GLOBAL",4)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END
