BEGIN ~PHARON~

IF ~~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Phatell","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.2 1.1 1.0
  SAY @5
  IF ~~ THEN DO ~RevealAreaOnMap("RR3950")~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 11
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 15.0 5.0
  SAY @15
  IF ~~ THEN DO ~SetGlobal("Phatell","GLOBAL",1)
SetGlobal("Remasac","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 15.1 5.2
  SAY @16
  IF ~~ THEN DO ~SetGlobal("Phatell","GLOBAL",1)
SetGlobal("Remasac","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @17
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2 4.2
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Phatell","GLOBAL",1)
SetGlobal("Remasac","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY @17
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @18
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 14.1 14.0 12.1 12.0
  SAY @25
  IF ~~ THEN DO ~SetGlobal("Phatell","GLOBAL",1)
SetGlobal("Remasac","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 13
  IF ~~ THEN REPLY @28 GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~Global("Phatell","GLOBAL",1)
Global("Villagesaved","GLOBAL",0)~ THEN BEGIN 16
  SAY @29
  IF ~~ THEN EXIT
END

IF ~Global("Villagesaved","GLOBAL",1)
Global("Phatell","GLOBAL",1)~ THEN BEGIN 17
  SAY @30
  IF ~~ THEN DO ~SetGlobal("Phatell","GLOBAL",2)~ EXIT
END

IF ~Global("Villagesaved","GLOBAL",1)
Global("Phatell","GLOBAL",2)~ THEN BEGIN 18
  SAY @31
  IF ~~ THEN EXIT
END
