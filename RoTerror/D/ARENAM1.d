BEGIN ~ARENAM1~

IF ~Global("aldsfg","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("ArenaM1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END
