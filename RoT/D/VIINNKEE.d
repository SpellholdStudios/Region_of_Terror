BEGIN ~VIINNKEE~

IF ~Global("aldksjf","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("ViInnKee",LastTalkedToBy())~ EXIT
  IF ~!Global("Clobsson","GLOBAL",8)~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 DO ~StartStore("ViInnKee",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN EXIT
END
