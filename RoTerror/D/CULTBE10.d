BEGIN ~CULTBE10~

IF ~!Global("BeastCultMembership","GLOBAL",1)
!Global("BeastCultMembership","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)
Global("Choise","RA5500",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)
Global("Choise","RA5500",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",1)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN EXIT
END
