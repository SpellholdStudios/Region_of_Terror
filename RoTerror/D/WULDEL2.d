BEGIN ~WULDEL2~

IF ~OR(2)
  Global("Wulfgargone","GLOBAL",1)
  Global("Wulfgargone","GLOBAL",2)
!See("Wulfg2")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~OR(2)
  Global("Wulfgargone","GLOBAL",1)
  Global("Wulfgargone","GLOBAL",2)
See("Wulfg2")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END
