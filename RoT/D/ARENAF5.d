BEGIN ~ARENAF5~

IF ~Global("dlsfjk","LOCALS",0)
!Global("Ardaeffects","GLOBAL",3)
!Global("Ardaeffects","GLOBAL",4)
!Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("dlsfjk","LOCALS",0)
OR(3)
Global("Ardaeffects","GLOBAL",3)
Global("Ardaeffects","GLOBAL",4)
Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END
