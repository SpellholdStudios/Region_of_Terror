BEGIN ~ARLAXM5~

IF ~Global("ldjskf","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("Arlax4",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END
