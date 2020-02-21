BEGIN ~CADDER2~

IF ~Global("DilgCatt","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("DilgCatt","GLOBAL",1)
SetGlobal("CadSpe","GLOBAL",1)~ EXIT
END

IF ~Global("CaptiHep","RR3801",2)~ THEN BEGIN 4
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CaptiHep","RR3801",3)~ EXIT
END

IF ~Global("CaptiHep","RR3801",3)~ THEN BEGIN 5
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("CaptiHep","RR3801",4)~ EXIT
  IF ~~ THEN REPLY @6 EXIT
END
