BEGIN ~TALAVAN3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN DO ~EraseJournalEntry(@564128)
EraseJournalEntry(@564129)
EraseJournalEntry(@564130)
EraseJournalEntry(@564219)
SetGlobal("DeadPeple","GLOBAL",1)
SetGlobal("RuleCas","GLOBAL",1)
SetGlobal("Aftall","GLOBAL",1)
AddExperienceParty(100000)
GiveItemCreate("TalKey",LastTalkedToBy,0,0,0)
EscapeArea()~ SOLVED_JOURNAL @564132 EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  IF ~~ THEN DO ~EraseJournalEntry(@564128)
EraseJournalEntry(@564129)
EraseJournalEntry(@564130)
EraseJournalEntry(@564219)
SetGlobal("DeadPeple","GLOBAL",1)
SetGlobal("RuleEra","RR3401",1)
SetGlobal("Aftall","GLOBAL",1)
AddExperienceParty(100000)
GiveItemCreate("TalKey",LastTalkedToBy,0,0,0)
EscapeArea()~ SOLVED_JOURNAL @564131 EXIT
END
