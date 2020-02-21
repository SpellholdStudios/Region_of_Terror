BEGIN ~BATMAGE2~

IF ~RandomNum(2,1)
!Dead("Olmar2")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~RandomNum(2,2)
!Dead("Olmar2")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Dead("Olmar2")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

