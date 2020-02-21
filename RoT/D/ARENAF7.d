BEGIN ~ARENAF7~

IF ~NumTimesTalkedTo(0)
!Global("Ardaeffects","GLOBAL",1)
!Global("Ardaeffects","GLOBAL",2)
!Global("Ardaeffects","GLOBAL",3)
!Global("Ardaeffects","GLOBAL",4)
!Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
!Global("Ardaeffects","GLOBAL",1)
!Global("Ardaeffects","GLOBAL",2)
!Global("Ardaeffects","GLOBAL",3)
!Global("Ardaeffects","GLOBAL",4)
!Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~OR(5)
Global("Ardaeffects","GLOBAL",1)
Global("Ardaeffects","GLOBAL",2)
Global("Ardaeffects","GLOBAL",3)
Global("Ardaeffects","GLOBAL",4)
Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN EXIT
END
