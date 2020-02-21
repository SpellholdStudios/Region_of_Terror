BEGIN ~STEAL3~

IF ~RandomNum(3,1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~ReputationInc(-2)
Enemy()~ EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~ReputationInc(-2)
Enemy()~ EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~ReputationInc(-2)
Enemy()~ EXIT
END
