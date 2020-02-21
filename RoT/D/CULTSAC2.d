BEGIN ~CULTSAC2~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~Global("Torturing1","LOCALS",0)~ THEN REPLY @1 DO ~SetGlobal("Torturing1","LOCALS",1)
IncrementGlobal("Torturer","RA5501",1)
SetGlobal("Torturing21","RA5501",1)~ EXIT
  IF ~Global("Torturing2","LOCALS",0)~ THEN REPLY @2 DO ~SetGlobal("Torturing2","LOCALS",1)
SetGlobal("Torturing22","RA5501",1)~ EXIT
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Torturing23","RA5501",1)~ EXIT
  IF ~~ THEN REPLY @4 DO ~SetGlobal("Torturing15","RA5501",1)~ EXIT
  IF ~~ THEN REPLY @5 DO ~SetGlobal("Torturing14","RA5501",1)~ EXIT
  IF ~~ THEN REPLY @6 EXIT
END
