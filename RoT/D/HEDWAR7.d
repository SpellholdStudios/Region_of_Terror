BEGIN ~HEDWAR7~

IF ~~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Infatwc","RR3300",1)
Dead("HedOrc1")
Dead("HedOrc2")
Dead("HedOrc3")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~AddXPObject(Player1,2000)
AddXPObject(Player2,2000)
AddXPObject(Player3,2000)
AddXPObject(Player4,2000)
AddXPObject(Player5,2000)
AddXPObject(Player6,2000)
EscapeArea()~ EXIT
END

IF ~Global("Infatwc","RR3300",0)
!Dead("HedOrc1")
!Dead("HedOrc2")
!Dead("HedOrc3")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END
