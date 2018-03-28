BEGIN ~SHDW1~

IF ~Global("SoulArmorQuest","GLOBAL",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("SoulArmorQuest","GLOBAL",4)
EscapeArea()~ UNSOLVED_JOURNAL @571713 EXIT
END

IF ~Global("SoulArmorQuest","GLOBAL",11)
PartyHasItem("SoulArmr")~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~TakePartyItem("SoulArmr")~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN DO ~SetGlobal("SoulArmorQuest","GLOBAL",12)~ EXIT
END

IF ~Global("SoulArmorQuest","GLOBAL",12)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~EraseJournalEntry(@571711)
EraseJournalEntry(@571685)
EraseJournalEntry(@571713)
GiveItemCreate("SoulArm3",LastTalkedToBy,0,0,0)
ReputationInc(-1)
AddExperienceParty(25000)
SetGlobal("SoulArmorQuest","GLOBAL",15)
EscapeArea()~ SOLVED_JOURNAL @571714 EXIT
END
