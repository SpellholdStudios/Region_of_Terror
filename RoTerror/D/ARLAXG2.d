BEGIN ~ARLAXG2~

IF ~Global("EnterArlax","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("EnterArlax","GLOBAL",2)~ EXIT
END

IF ~Global("EnterArlax","GLOBAL",2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END
