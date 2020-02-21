BEGIN ~OLMAR5~

IF ~Global("Olmsidthebat","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Olmsidthebat","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @2 
  IF ~~ THEN EXIT
END

IF ~Global("Olmsidthebat","GLOBAL",13)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Olmsidthebat","GLOBAL",14)~ EXIT
END
