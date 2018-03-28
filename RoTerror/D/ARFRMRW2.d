BEGIN ~ARFRMRW2~

IF ~!Global("Esathquest","GLOBAL",6)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Esathquest","GLOBAL",6)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END
