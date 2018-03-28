BEGIN ~MYSHDW10~

IF ~Global("Leave","RA4006",0)
!Dead("Gholim")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Leave","RA4006",0)
Dead("Gholim")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END
