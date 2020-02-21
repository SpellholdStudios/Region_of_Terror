BEGIN ~CULTBE3~

IF ~Global("BeastCultMembership","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END
