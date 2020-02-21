BEGIN ~CULTBE17~

IF ~NumTimesTalkedTo(0)
Global("BeastCultMembership","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("CultBe1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @3 EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("BeastCultMembership","GLOBAL",0)~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 DO ~StartStore("CultBe1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @3 EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",1)~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 DO ~StartStore("CultBe1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @10 DO ~StartStore("CultBe1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @11 GOTO 4
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @13
  IF ~~ THEN REPLY @14 DO ~StartStore("CultBe1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15 GOTO 5
  IF ~~ THEN REPLY @16 EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @17
  IF ~~ THEN EXIT
END
