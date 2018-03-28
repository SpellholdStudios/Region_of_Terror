BEGIN ~REG2J~

IF ~~ THEN BEGIN 0 // from:
  SAY @0 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @2 
  IF ~~ THEN EXIT
END

IF ~Global("DrizztKickedOut","GLOBAL",1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("DrizztRegisOut","LOCALS",1)
LeaveParty()
EscapeArea()~ EXIT
END
