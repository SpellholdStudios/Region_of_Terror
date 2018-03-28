BEGIN ~OSGIL~

IF ~Global("sakdlj","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("sakdlj","LOCALS",1)
StartStore("Osgil1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @5 DO ~SetGlobal("sakdlj","LOCALS",1)
StartStore("Osgil2",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @6 DO ~SetGlobal("sakdlj","LOCALS",1)
StartStore("Osgil3",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @7 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.3
  SAY @8
  IF ~~ THEN DO ~SetGlobal("sakdlj","LOCALS",1)~ EXIT
END

IF ~Global("sakdlj","LOCALS",1)~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @4 DO ~StartStore("Osgil1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @5 DO ~StartStore("Osgil2",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @6 DO ~StartStore("Osgil3",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY @11
  IF ~~ THEN EXIT
END
