BEGIN ~GAREM~

IF ~Global("Garemring","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 6.0 5.0 4.0 3.0 1.0
  SAY @9
  IF ~~ THEN DO ~SetGlobal("Garemring","LOCALS",1)~ UNSOLVED_JOURNAL @568263 EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @12
  IF ~~ THEN REPLY @11 GOTO 2
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @12
  IF ~~ THEN REPLY @11 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 2
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 5.2 4.1 3.2 1.3
  SAY @13
  IF ~~ THEN EXIT
END

IF ~Global("Garemring","LOCALS",1)~ THEN BEGIN 8
  SAY @14
  IF ~PartyHasItem("GaRing")~ THEN REPLY @15 GOTO 9
  IF ~PartyHasItem("GaRing")~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @18
  IF ~~ THEN DO ~EraseJournalEntry(@568263)
SetGlobal("Garemring","LOCALS",2)
TakePartyItem("GaRing")
GiveGoldForce(50)
AddexperienceParty(10000)
EscapeArea()~ SOLVED_JOURNAL @568281 EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @21 GOTO 12
  IF ~CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @21 GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @22
  IF ~~ THEN DO ~EraseJournalEntry(@568263)
SetGlobal("Garemring","LOCALS",2)
TakePartyItem("GaRing")
GiveGoldForce(50)
AddexperienceParty(10000)
EscapeArea()~ SOLVED_JOURNAL @568281 EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @23
  IF ~~ THEN DO ~GiveGoldForce(100)
TakePartyItem("GaRing")~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @24
  IF ~~ THEN DO ~EraseJournalEntry(@568263)
SetGlobal("Garemring","LOCALS",2)
AddexperienceParty(15000)
EscapeArea()~ SOLVED_JOURNAL @568281 EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 DO ~SetGlobal("Garemring","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 16.0 14.0
  SAY @28
  IF ~~ THEN DO ~EraseJournalEntry(@568263)
SetGlobal("Garemring","LOCALS",2)
TakePartyItem("GaRing")
GiveGoldForce(50)
AddexperienceParty(5000)
EscapeArea()~ SOLVED_JOURNAL @568281 EXIT
END

IF ~Global("Garemring","LOCALS",3)~ THEN BEGIN 16
  SAY @29
  IF ~PartyHasItem("GaRing")~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @30 EXIT
END
