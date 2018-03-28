BEGIN ~CULTBE18~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("CultBe2",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 DO ~StartStore("CultBe2",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @6 EXIT
END
