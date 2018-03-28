BEGIN ~NCDM2~

IF ~NumTimesTalkedTo(0)
!Dead("Olmar2")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
!Dead("Olmar2")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("RuleCas","GLOBAL",1)
Dead("Olmar2")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("RuleEra","RR3401",1)
Dead("Olmar2")~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END
