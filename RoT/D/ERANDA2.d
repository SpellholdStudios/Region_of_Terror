BEGIN ~ERANDA2~

IF ~Global("RuleCas","GLOBAL",1)
!Global("EraQuest","GLOBAL",2)
!Global("EraQuest","GLOBAL",3)
!Global("EraQuest","GLOBAL",4)
!Global("EraQuest","GLOBAL",5)
!Global("EraQuest","GLOBAL",6)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("RuleEra","RR3401",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("EraQuest","GLOBAL",2)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 8
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 3 // from: 8.0 2.0
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 6.0 4.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("EraQuest","GLOBAL",3)~ UNSOLVED_JOURNAL @570608 EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 5
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 4.2
  SAY @15
  IF ~~ THEN DO ~SetGlobal("Irattcoti","RR3401",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY @16
  IF ~~ THEN GOTO 3
END

IF ~Global("EraQuest","GLOBAL",3)~ THEN BEGIN 9
  SAY @17
  IF ~~ THEN EXIT
END

IF ~Global("EraQuest","GLOBAL",4)~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN REPLY @19 DO ~EraseJournalEntry(@570606)
EraseJournalEntry(@570608)
SetGlobal("EraQuest","GLOBAL",5)
SetGlobal("RuleCas","GLOBAL",2)
AddExperienceParty(10000)
ReputationInc(-1)~ SOLVED_JOURNAL @570607 EXIT
  IF ~~ THEN REPLY @20 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @21
  IF ~~ THEN DO ~EraseJournalEntry(@570606)
EraseJournalEntry(@570608)
SetGlobal("EraQuest","GLOBAL",5)
SetGlobal("RuleCas","GLOBAL",2)
AddExperienceParty(10000)
ReputationInc(-1)~ SOLVED_JOURNAL @570607 EXIT
END

IF ~Global("EraQuest","GLOBAL",5)~ THEN BEGIN 12
  SAY @22
  IF ~~ THEN EXIT
END

IF ~Global("EraQuest","GLOBAL",6)~ THEN BEGIN 13
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.0
  SAY @26
  IF ~~ THEN DO ~EraseJournalEntry(@570606)
EraseJournalEntry(@570608)
SetGlobal("EraQuest","GLOBAL",5)
SetGlobal("RuleCas","GLOBAL",2)~ SOLVED_JOURNAL @570609 EXIT
END
