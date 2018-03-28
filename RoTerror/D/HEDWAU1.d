BEGIN ~HEDWAU1~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 7
  IF ~Global("SoulArmorQuest","GLOBAL",4)
PartyHasItem("SoulArmr")~ THEN REPLY @4 GOTO 9
  IF ~Global("SoulArmorQuest","GLOBAL",18)
PartyHasItem("SoulArmr")~ THEN REPLY @5 DO ~SetGlobal("SoulArmorQuest","GLOBAL",5)
Enemy()~ EXIT
  IF ~~ THEN REPLY @6 GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 6.0 0.0
  SAY @7
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @8
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 0.1
  SAY @13
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @14
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @15
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.1 3.1 0.2
  SAY @17
  IF ~~ THEN DO ~StartStore("govwau01",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 3.2 0.5
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.3
  SAY @19
  IF ~~ THEN DO ~SetGlobal("SoulArmorQuest","GLOBAL",6)~ EXIT
END
