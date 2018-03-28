BEGIN ~PCDM2~

IF ~RandomNum(3,1)
!Dead("Olmar2")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)
!Dead("Olmar2")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)
!Dead("Olmar2")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Dead("Olmar2")~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END
