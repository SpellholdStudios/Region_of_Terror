BEGIN ~HEDWAR2~

IF ~!Global("Alknepro","GLOBAL",5)
!Global("Didnknwc","GLOBAL",5)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~!Global("Alknepro","GLOBAL",5)
!Global("Didnknwc","GLOBAL",5)
NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("Alknepro","GLOBAL",5)
Global("Didnknwc","GLOBAL",5)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END
