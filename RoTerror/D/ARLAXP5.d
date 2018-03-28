BEGIN ~ARLAXP5~

IF ~!Global("Notyetbeat","RR3117",4)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Notyetbeat","RR3117",4)~ THEN BEGIN 2
  SAY @1
  IF ~~ THEN EXIT
END
