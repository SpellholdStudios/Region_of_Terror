BEGIN ~ARENAF3~

IF ~NumTimesTalkedTo(0)
!Global("Ardaeffects","GLOBAL",2)
!Global("Ardaeffects","GLOBAL",3)
!Global("Ardaeffects","GLOBAL",4)
!Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
!Global("Ardaeffects","GLOBAL",2)
!Global("Ardaeffects","GLOBAL",3)
!Global("Ardaeffects","GLOBAL",4)
!Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~OR(4)
Global("Ardaeffects","GLOBAL",2)
Global("Ardaeffects","GLOBAL",3)
Global("Ardaeffects","GLOBAL",4)
Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END
