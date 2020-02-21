BEGIN ~RAZOR~

IF ~Global("Razorbattle","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Razorbattle","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN EXTERN ~RANDALLJ~ 14
END

IF ~~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @6
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @7
  IF ~~ THEN EXTERN ~RANDALLJ~ 15
END

IF ~~ THEN BEGIN 8 // from:
  SAY @8
  IF ~~ THEN EXTERN ~RANDALLJ~ 16
END

IF ~~ THEN BEGIN 9 // from:
  SAY @9
  IF ~~ THEN DO ~SetGlobal("Fuckfuck","RA5701",2)~ EXIT
END
