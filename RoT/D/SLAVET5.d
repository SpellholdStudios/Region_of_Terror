BEGIN ~SLAVET5~

IF ~Global("Eihuvimmee","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 3.3 3.2 0.0
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Clobsson","GLOBAL",6)
SetGlobal("Eihuvimmee","GLOBAL",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5
  IF ~~ THEN DO ~SetGlobal("Clobsson","GLOBAL",6)
SetGlobal("Eihuvimmee","GLOBAL",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @6
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
LevelGT(Player1,20)~ THEN GOTO 4
  IF ~CheckStatLT(LastTalkedToBy,16,CHR)
LevelLT(Player1,21)~ THEN GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
LevelLT(Player1,21)~ THEN GOTO 1
  IF ~CheckStatLT(LastTalkedToBy,16,CHR)
LevelGT(Player1,20)~ THEN GOTO 1
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @10
  IF ~~ THEN DO ~EraseJournalEntry(@567005)
EraseJournalEntry(@567006)
EraseJournalEntry(@567011)
EraseJournalEntry(@567010)
GiveGoldForce(2000)
SetGlobal("Clobsson","GLOBAL",6)
SetGlobal("Letsgrot","RR0044",1)
SetGlobal("Eihuvimmee","GLOBAL",2)
AddExperienceParty(20000)
ReputationInc(-1)~ SOLVED_JOURNAL @567009 EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 3.1
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Clobsson","GLOBAL",6)
SetGlobal("Eihuvimmee","GLOBAL",1)
Enemy()~ EXIT
END
