BEGIN ~CATT2J~

IF ~Global("Catelldrg","RR4005",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("asdfadfa","GLOBAL",2)
SetGlobal("Catelldrg","RR4005",2)~ EXIT
END

IF ~Global("DrizztKickedOut","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("DrizztCattiBrieOut","LOCALS",1)
LeaveParty()
EscapeArea()~ EXIT
END
