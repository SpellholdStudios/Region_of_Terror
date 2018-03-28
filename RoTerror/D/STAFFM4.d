BEGIN ~STAFFM4~

IF ~Global("asldkf","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("Historyroom","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END
