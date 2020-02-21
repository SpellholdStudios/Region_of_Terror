BEGIN ~NCDW2~

IF ~Global("adsfdsafa","LOCALS",0)
NumTimesTalkedTo(0)
!Dead("Olmar2")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("adsfdsafa","LOCALS",1)~ EXIT
END

IF ~Global("adsfdsafa","LOCALS",1)
RandomNum(3,1)
!Dead("Olmar2")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("adsfdsafa","LOCALS",1)
RandomNum(3,2)
!Dead("Olmar2")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("adsfdsafa","LOCALS",1)
RandomNum(3,3)
!Dead("Olmar2")~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Dead("Olmar2")~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END
