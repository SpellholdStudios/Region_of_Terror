BEGIN ~NOHOS2~

IF ~Global("dsaflk","LOCALS",0)
CombatCounter(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("dsaflk","LOCALS",1)
AddExperienceParty(2000)
EscapeArea()~ EXIT
END
