BEGIN ~BOYCS~

IF ~Global("kjsldaf","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("kjsldaf","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN DO ~SetGlobal("kjsldaf","LOCALS",1)~ EXIT
END

IF ~Global("kjsldaf","LOCALS",1)
RandomNum(4,1)~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("kjsldaf","LOCALS",1)
RandomNum(4,2)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("kjsldaf","LOCALS",1)
RandomNum(4,3)~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("kjsldaf","LOCALS",1)
RandomNum(4,4)~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("kjsldaf","LOCALS",2)~ THEN BEGIN 6
  SAY @8
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
