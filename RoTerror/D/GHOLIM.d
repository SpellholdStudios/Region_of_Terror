BEGIN ~GHOLIM~

IF ~Global("Speaking","LOCALS",1)
Global("GholimBattle","RA4006",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("GholimBattle","RA4006",1)
Enemy()~ EXIT
END
