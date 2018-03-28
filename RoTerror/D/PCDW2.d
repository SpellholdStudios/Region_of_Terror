BEGIN ~PCDW2~

IF ~Global("aldskjfl","LOCALS",0)
NumTimesTalkedTo(0)
!Dead("Olmar2")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("aldskjfl","LOCALS",1)~ EXIT
END

IF ~Global("aldskjfl","LOCALS",1)
RandomNum(2,1)
!Dead("Olmar2")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("aldskjfl","LOCALS",1)
RandomNum(2,2)
!Dead("Olmar2")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Dead("Olmar2")~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

