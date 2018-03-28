BEGIN ~OLMAR3~

IF ~Global("Olmtlks","GLOBAL",1)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Olmtlks","GLOBAL",2)~ EXIT
END
