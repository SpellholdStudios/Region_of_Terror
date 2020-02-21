BEGIN ~ARLHELM1~ 2

IF ~ReputationLT(LastTalkedToBy,15)
ReputationGT(LastTalkedToBy,6)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~ReputationLT(LastTalkedToBy,7)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~ReputationGT(LastTalkedToBy,14)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END
