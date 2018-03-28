BEGIN ~NCDM~

IF ~NumTimesTalkedTo(0)
!Dead("Eranda3")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
!Dead("Eranda3")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Dead("Eranda3")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END
