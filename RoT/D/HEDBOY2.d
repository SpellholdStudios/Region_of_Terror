BEGIN ~HEDBOY2~

IF ~!Global("Alknepro","GLOBAL",5)
!Global("Didnknwc","GLOBAL",5)
!Global("Burthif","GLOBAL",3)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~!Global("Alknepro","GLOBAL",5)
!Global("Didnknwc","GLOBAL",5)
!Global("Burthif","GLOBAL",3)
NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("Alknepro","GLOBAL",5)
Global("Didnknwc","GLOBAL",5)
!Global("Burthif","GLOBAL",3)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("Burthif","GLOBAL",3)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  IF ~~ THEN DO ~SetGlobal("Burthif","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @7
  IF ~~ THEN DO ~SetGlobal("Burthif","GLOBAL",4)~ EXIT
END
