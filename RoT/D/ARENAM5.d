BEGIN ~ARENAM5~

IF ~Global("dafglk","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("dafglk","LOCALS",1)~ EXIT
END

IF ~Global("dafglk","LOCALS",1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END
