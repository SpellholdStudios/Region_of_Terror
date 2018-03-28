BEGIN ~IWDDRG5~

IF ~Global("TheGreatOne","RA5415",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("TheGreatOne","RA5415",1)
Enemy()~ EXIT
END
