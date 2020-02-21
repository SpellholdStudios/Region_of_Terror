BEGIN ~RODGER~

IF ~Global("Clobsson","GLOBAL",7)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN DO ~EraseJournalEntry(@567005)
EraseJournalEntry(@567006)
EraseJournalEntry(@567011)
EraseJournalEntry(@567010)
SetGlobal("Clobsson","GLOBAL",8)
AddExperienceParty(30000)
EscapeArea()~ SOLVED_JOURNAL @567008 EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @6
  IF ~~ THEN DO ~EraseJournalEntry(@567005)
EraseJournalEntry(@567006)
EraseJournalEntry(@567011)
EraseJournalEntry(@567010)
SetGlobal("Clobsson","GLOBAL",8)
AddExperienceParty(30000)
EscapeArea()~ SOLVED_JOURNAL @567008 EXIT
END
