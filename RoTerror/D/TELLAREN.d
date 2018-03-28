BEGIN ~TELLAREN~

IF ~Global("TellArenn","GLOBAL",0)~ THEN BEGIN 3
  SAY @0
  IF ~~ THEN DO ~SetGlobal("TellArenn","GLOBAL",1)
RevealAreaOnMap("RA4300")~ EXIT
END

IF ~Global("TellArenn","GLOBAL",1)~ THEN BEGIN 4
  SAY @1
  IF ~~ THEN EXIT
END
