BEGIN ~TALMAGE1~

IF ~NumTimesTalkedTo(0)
!Dead("Eranda3")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,1)
!Dead("Eranda3")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)
!Dead("Eranda3")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)
!Dead("Eranda3")~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Dead("Eranda3")~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END
