BEGIN ~STAFFM1~

IF ~Global("asdg","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("Regisroom","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END
