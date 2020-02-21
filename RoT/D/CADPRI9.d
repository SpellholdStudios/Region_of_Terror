BEGIN ~CADPRI9~

IF ~Global("EnterSpirit","LOCALS",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("EnterSpirit","LOCALS",2)~ EXIT
END

IF ~Global("EnterSpirit","LOCALS",2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END
