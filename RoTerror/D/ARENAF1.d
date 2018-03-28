BEGIN ~ARENAF1~

IF ~!Global("Ardaeffects","GLOBAL",1)
!Global("Ardaeffects","GLOBAL",2)
!Global("Ardaeffects","GLOBAL",3)
!Global("Ardaeffects","GLOBAL",4)
!Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~OR(5)
Global("Ardaeffects","GLOBAL",1)
Global("Ardaeffects","GLOBAL",2)
Global("Ardaeffects","GLOBAL",3)
Global("Ardaeffects","GLOBAL",4)
Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END
