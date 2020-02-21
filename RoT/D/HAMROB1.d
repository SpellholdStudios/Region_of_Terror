BEGIN ~HAMROB1~

IF ~~ THEN BEGIN 0 // from: HAMMR2
  SAY @0
  IF ~~ THEN EXTERN ~HAMMR2~ 3
END

IF ~~ THEN BEGIN 1 // from: HAMMR2
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Hammermeetings","GLOBAL",4)~ EXIT
END
