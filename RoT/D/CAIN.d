BEGIN ~CAIN~

IF ~Global("Arlaxthief","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 13
  IF ~~ THEN REPLY @7 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 13
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @11
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)~ THEN GOTO 4
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 13.0 3.0
  SAY @12
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 6
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @17
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 9.0 6.0
  SAY @18
  IF ~~ THEN DO ~SetGlobal("Arlaxthief","GLOBAL",1)~ UNSOLVED_JOURNAL @568192 EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @21 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @22
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @23
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY @24
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 13.1 3.1
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.1 1.1
  SAY @11
  IF ~CheckStatGT(LastTalkedToBy,14,STR)~ THEN GOTO 4
  IF ~CheckStatLT(LastTalkedToBy,15,STR)~ THEN GOTO 12
END

IF ~Global("Arlaxthief","GLOBAL",1)~ THEN BEGIN 14
  SAY @26
  IF ~PartyHasItem("GolDag")~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @28 EXIT
  IF ~~ THEN REPLY @29 GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 22.2 18.2 14.2
  SAY @30
  IF ~~ THEN DO ~EraseJournalEntry(@568220)
EraseJournalEntry(@568205)
EraseJournalEntry(@568192)
EscapeArea()~ SOLVED_JOURNAL @568198 EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY @31
  IF ~~ THEN DO ~TakePartyItem("GolDag")~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @32
  IF ~~ THEN DO ~SetGlobal("Arlaxthief","GLOBAL",2)~ UNSOLVED_JOURNAL @568205 EXIT
END

IF ~Global("Arlaxthief","GLOBAL",2)~ THEN BEGIN 18
  SAY @33
  IF ~PartyHasItem("ArDiam")~ THEN REPLY @34 GOTO 19
  IF ~~ THEN REPLY @35 EXIT
  IF ~~ THEN REPLY @36 GOTO 15
END

IF ~~ THEN BEGIN 19 // from: 20.0 18.0
  SAY @37
  IF ~~ THEN DO ~SetGlobal("Arlaxthief","GLOBAL",4)
SetGlobal("dflkjad","GLOBAL",2)
TakePartyItem("ArDiam")~ UNSOLVED_JOURNAL @568220 EXIT
END

IF ~Global("Arlaxthief","GLOBAL",3)~ THEN BEGIN 20
  SAY @38
  IF ~PartyHasItem("ArDiam")~ THEN REPLY @34 GOTO 19
  IF ~~ THEN REPLY @39 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @40
  IF ~~ THEN DO ~EraseJournalEntry(@568220)
EraseJournalEntry(@568205)
EraseJournalEntry(@568192)
EscapeArea()~ UNSOLVED_JOURNAL @568221 EXIT
END

IF ~Global("Arlaxthief","GLOBAL",4)~ THEN BEGIN 22
  SAY @41
  IF ~PartyHasItem("ArlScrl")~ THEN REPLY @42 GOTO 23
  IF ~~ THEN REPLY @43 EXIT
  IF ~~ THEN REPLY @44 GOTO 15
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @45
  IF ~~ THEN DO ~EraseJournalEntry(@568220)
EraseJournalEntry(@568205)
EraseJournalEntry(@568192)
SetGlobal("Arlaxthief","GLOBAL",5)
AddExperienceParty(30000)
TakePartyItem("ArlScrl")
EscapeArea()~ SOLVED_JOURNAL @568222 EXIT
END
