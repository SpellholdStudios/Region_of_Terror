BEGIN ~CHADE~

IF ~!Global("Alknepro","GLOBAL",5)
!Global("Didnknwc","GLOBAL",5)
Global("kjsagd","LOCALS",0)
!Global("SoulArmorQuest","GLOBAL",7)
!Global("SoulArmorQuest","GLOBAL",8)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~Global("SoulArmorQuest","GLOBAL",1)
PartyHasItem("SoulArmr")~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.0
  SAY @5
  IF ~~ THEN DO ~StartStore("Wechar",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 1
  IF ~~ THEN REPLY @8 EXIT
END

IF ~Global("Alknepro","GLOBAL",5)
Global("Didnknwc","GLOBAL",5)
Global("kjsagd","LOCALS",0)
!Global("SoulArmorQuest","GLOBAL",7)
!Global("SoulArmorQuest","GLOBAL",8)~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @10 DO ~StartStore("Wechar2",LastTalkedToBy())~ EXIT
  IF ~Global("SoulArmorQuest","GLOBAL",1)
PartyHasItem("SoulArmr")~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 12
  IF ~~ THEN REPLY @11 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 0.2
  SAY @12
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @13
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14
  IF ~~ THEN REPLY @15 DO ~SetGlobal("SoulArmorQuest","GLOBAL",4)~ UNSOLVED_JOURNAL @571711 EXIT
  IF ~~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @18
  IF ~~ THEN DO ~SetGlobal("SoulArmorQuest","GLOBAL",4)~ UNSOLVED_JOURNAL @571711 EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY @19
  IF ~~ THEN DO ~EraseJournalEntry(@571711)
EraseJournalEntry(@571685)
EraseJournalEntry(@571713)
SetGlobal("SoulArmorQuest","GLOBAL",2)~ SOLVED_JOURNAL @571709 EXIT
END

IF ~Global("SoulArmorQuest","GLOBAL",7)~ THEN BEGIN 9
  SAY @20
  IF ~~ THEN DO ~TakePartyItem("SoulArmr")~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @21
  IF ~~ THEN DO ~SetGlobal("SoulArmorQuest","GLOBAL",8)~ EXIT
END

IF ~Global("SoulArmorQuest","GLOBAL",8)~ THEN BEGIN 11
  SAY @22
  IF ~~ THEN DO ~EraseJournalEntry(@571711)
EraseJournalEntry(@571685)
EraseJournalEntry(@571713)
GiveItemCreate("SoulArm2",LastTalkedToBy,0,0,0)
ReputationInc(1)
AddexperienceParty(25000)
SetGlobal("SoulArmorQuest","GLOBAL",9)~ SOLVED_JOURNAL @571712 EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.2
  SAY @6
  IF ~~ THEN REPLY @7 DO ~StartStore("Wechar2",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END
