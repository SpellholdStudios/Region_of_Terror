BEGIN ~OLMCOOK~

IF ~NumTimesTalkedTo(0)
!Dead("Olmar2")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
END

IF ~NumTimesTalkedToGT(0)
!Dead("Olmar2")~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 EXIT
END

IF ~OR(2)
 Global("RuleCas","Global",1)
 Global("RuleEra","RR3401",1)~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN EXIT
END
