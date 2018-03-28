BEGIN ~BRUE2J~

IF ~~ THEN BEGIN 0 // from: DRIZ2J
  SAY @0
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: HENMAN
  SAY @1 
  IF ~~ THEN EXTERN ~DRIZ2J~ 110
END

IF ~~ THEN BEGIN 4 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @3 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @4 
  IF ~~ THEN DO ~SetGlobal("Theyaaw","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: STAFFM8
  SAY @8 
  IF ~~ THEN DO ~SetGlobal("AbaBru","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: STAFFM8
  SAY @9 
  IF ~~ THEN DO ~SetGlobal("AbaBru","GLOBAL",10)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: STAFFM8
  SAY @10 
  IF ~~ THEN DO ~SetGlobal("AbaBru","GLOBAL",18)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: STAFFM8
  SAY @10 
  IF ~~ THEN DO ~SetGlobal("AbaBru","GLOBAL",26)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: TPWENT
  SAY @11
  IF ~~ THEN EXTERN ~TPWENT~ 1
END

IF ~~ THEN BEGIN 15 // from: TPWENT
  SAY @12
  IF ~~ THEN EXTERN ~TPWENT~ 2
END

IF ~~ THEN BEGIN 16 // from: TPWENT
  SAY @13
  IF ~~ THEN EXTERN ~TPWENT~ 3
END

IF ~~ THEN BEGIN 17 // from: TPWENT
  SAY @14
  IF ~~ THEN EXTERN ~TPWENT~ 4
END

IF ~~ THEN BEGIN 18 // from: TPWENT
  SAY @15
  IF ~~ THEN EXTERN ~TPWENT~ 5
END

IF ~~ THEN BEGIN 19 // from: TPWENT
  SAY @16 /* #75706 */
  IF ~~ THEN EXIT
END

IF ~Global("DrizztKickedOut","GLOBAL",1)~ THEN BEGIN 20
  SAY @17
  IF ~~ THEN DO ~SetGlobal("DrizztBruenorOut","LOCALS",1)
LeaveParty()
EscapeArea()~ EXIT
END
