BEGIN ~BREFI7~

IF ~Global("Openthegate","RA5100",0)
	OR(3)
	!Global("Youcanleavenow","GLOBAL",0)
	!Global("Youcanleavenow2","GLOBAL",0)
	!Global("Youcanleavenow3","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Openthegate","RA5100",1)
UnLock("5100Dor6")
OpenDoor("5100Dor6")~ EXIT
END

IF ~Global("Openthegate","RA5100",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END
