BEGIN ~MARTWYN1~

IF ~Global("Knowabouttl","GLOBAL",0)
RandomNum(3,1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~BREELLE1~ 2
END

IF ~Global("Knowabouttl","GLOBAL",0)
RandomNum(3,2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~BREELLE1~ 2
END

IF ~Global("Knowabouttl","GLOBAL",0)
RandomNum(3,3)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXTERN ~BREELLE1~ 2
END

IF ~Global("Knowabouttl","GLOBAL",1)
RandomNum(3,1)~ THEN BEGIN 3
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Knowabouttl","GLOBAL",1)
RandomNum(3,2)~ THEN BEGIN 4
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("Knowabouttl","GLOBAL",1)
RandomNum(3,3)~ THEN BEGIN 5
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("Knowabouttl","GLOBAL",2)~ THEN BEGIN 6
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @6
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @7
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~~ THEN REPLY @11 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 11.0 9.0
  SAY @13
  IF ~~ THEN DO ~SetGlobal("Knowabouttl","GLOBAL",3)~ UNSOLVED_JOURNAL @573330 EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @14
  IF ~~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1 9.2
  SAY @15
  IF ~~ THEN DO ~SetGlobal("Knowabouttl","GLOBAL",3)~ UNSOLVED_JOURNAL @573330 EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 9.3
  SAY @16
  IF ~~ THEN DO ~SetGlobal("Knowabouttl","GLOBAL",3)~ UNSOLVED_JOURNAL @573330 EXIT
END

IF ~Global("Knowabouttl","GLOBAL",3)~ THEN BEGIN 14
  SAY @17
  IF ~~ THEN EXIT
END
