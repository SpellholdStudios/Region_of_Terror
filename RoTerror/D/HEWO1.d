BEGIN ~HEWO1~

IF ~Global("Infatwc","RR3300",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~!Global("Alknepro","GLOBAL",5)
!Global("Didnknwc","GLOBAL",5)
Global("Infatwc","RR3300",1)
Dead("HedOrc1")
Dead("HedOrc2")
Dead("HedOrc3")~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("Alknepro","GLOBAL",5)
Global("Didnknwc","GLOBAL",5)
Global("Infatwc","RR3300",1)
Dead("HedOrc1")
Dead("HedOrc2")
Dead("HedOrc3")~ THEN BEGIN 3
  SAY @2
  IF ~~ THEN EXIT
END
