BEGIN ~IWDDOOR~

IF ~Global("Notopened","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
  IF ~PartyHasItem("HerScrl")~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1 0.0
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @7
  IF ~~ THEN DO ~UnLock("AR4100_Door13")
SetGlobal("Notopened","LOCALS",1)~ EXIT
END
