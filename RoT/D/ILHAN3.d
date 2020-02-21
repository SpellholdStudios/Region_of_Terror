BEGIN ~ILHAN3~

IF ~Global("MeRule","GLOBAL",1)
!Global("IlhSQuest","GLOBAL",2)
!Global("IlhSQuest","GLOBAL",3)
!Global("IlhSQuest","GLOBAL",4)
!Global("IlhSQuest","GLOBAL",5)
!Global("IlhSQuest","GLOBAL",6)
!Global("IlhSQuest","GLOBAL",7)
!Global("IlhSQuest","GLOBAL",8)
!Global("IlhSQuest","GLOBAL",9)
!Global("IlhSQuest","GLOBAL",10)
!Global("IlhSQuest","GLOBAL",11)
!Global("IlhSQuest","GLOBAL",12)
!Global("IlhSQuest","GLOBAL",13)
!Global("IlhSQuest","GLOBAL",14)
!Global("IlhSQuest","GLOBAL",15)
!Global("IlhSQuest","GLOBAL",16)
!Global("IlhSQuest","GLOBAL",17)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("IlhRule","RR3451",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("IlhSQuest","GLOBAL",2)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 17
  IF ~~ THEN REPLY @5 GOTO 18
  IF ~~ THEN REPLY @6 GOTO 19
END

IF ~~ THEN BEGIN 3 // from: 17.0 2.0
  SAY @7
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 21
  IF ~~ THEN REPLY @13 GOTO 22
END

IF ~~ THEN BEGIN 6 // from: 8.0 7.0 5.0
  SAY @14
  IF ~~ THEN DO ~SetGlobal("IlhSQuest","GLOBAL",4)~ UNSOLVED_JOURNAL @570748 EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 6
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 /* #70633 */ DO ~EraseJournalEntry(@570734)
SetGlobal("IlhSQuest","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @19 GOTO 16
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @22 GOTO 9
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @25
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN GOTO 10
  IF ~CheckStatLT(LastTalkedToBy,15,CHR)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @26
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @27
  IF ~~ THEN DO ~SetGlobal("IlhSQuest","GLOBAL",4)
SetGlobal("Itakesixtyper","GLOBAL",1)~ UNSOLVED_JOURNAL @570748 EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 13
  IF ~~ THEN REPLY @30 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @31
  IF ~~ THEN DO ~SetGlobal("IlhSQuest","GLOBAL",4)~ UNSOLVED_JOURNAL @570748 EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 8.2
  SAY @32
  IF ~~ THEN DO ~EraseJournalEntry(@570734)
SetGlobal("IlhSQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY @33
  IF ~~ THEN DO ~EraseJournalEntry(@570734)
SetGlobal("IlhSQuest","GLOBAL",3)
AddexperienceParty(5000)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.3
  SAY @34
  IF ~~ THEN DO ~EraseJournalEntry(@570734)
SetGlobal("IlhSQuest","GLOBAL",3)
AddexperienceParty(5000)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.1
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 3
  IF ~~ THEN REPLY @37 GOTO 41
  IF ~~ THEN REPLY @38 GOTO 42
END

IF ~~ THEN BEGIN 18 // from: 2.2
  SAY @39
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY @40
  IF ~~ THEN DO ~EraseJournalEntry(@570734)
SetGlobal("IlhSQuest","GLOBAL",3)~ EXIT
END

IF ~Global("IlhSQuest","GLOBAL",3)~ THEN BEGIN 20
  SAY @41
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 5.2
  SAY @42
  IF ~~ THEN DO ~EraseJournalEntry(@570734)
SetGlobal("IlhSQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.3
  SAY @43
  IF ~~ THEN DO ~EraseJournalEntry(@570734)
SetGlobal("IlhSQuest","GLOBAL",3)
AddexperienceParty(5000)~ EXIT
END

IF ~Global("IlhSQuest","GLOBAL",5)~ THEN BEGIN 23
  SAY @44
  IF ~~ THEN DO ~SetGlobal("IlhSQuest","GLOBAL",6)
EscapeAreaMove("ra5200",887,687,13)~ EXIT
END

IF ~Global("IlhSQuest","GLOBAL",8)~ THEN BEGIN 24
  SAY @45
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY @46
  IF ~~ THEN REPLY @47 EXIT
  IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY @49
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 28.0 26.0
  SAY @50
  IF ~~ THEN DO ~EraseJournalEntry(@570748)~ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY @51
  IF ~~ THEN GOTO 27
END

IF ~Global("IlhSQuest","GLOBAL",17)~ THEN BEGIN 29
  SAY @52
  IF ~~ THEN EXIT
END

IF ~Global("IlhSQuest","GLOBAL",9)~ THEN BEGIN 30
  SAY @53
  IF ~~ THEN DO ~SetGlobal("IlhSQuest","GLOBAL",10)~ EXIT
END

IF ~Global("IlhSQuest","GLOBAL",12)~ THEN BEGIN 31
  SAY @54
  IF ~PartyGoldGT(987)~ THEN REPLY @55 DO ~SetGlobal("IlhSQuest","GLOBAL",15)
SetGlobal("Ilootedthedc","GLOBAL",1)
EscapeAreaMove("RR3451",594,587,13)~ EXIT
  IF ~~ THEN REPLY @56 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 33.1 31.1
  SAY @57
  IF ~~ THEN DO ~SetGlobal("IlhSQuest","GLOBAL",13)~ EXIT
END

IF ~Global("IlhSQuest","GLOBAL",13)~ THEN BEGIN 33
  SAY @58
  IF ~PartyGoldGT(987)~ THEN REPLY @55 DO ~SetGlobal("IlhSQuest","GLOBAL",15)
SetGlobal("Ilootedthedc","GLOBAL",1)
EscapeAreaMove("RR3451",594,587,13)~ EXIT
  IF ~~ THEN REPLY @56 GOTO 32
END

IF ~Global("IlhSQuest","GLOBAL",14)~ THEN BEGIN 34
  SAY @59
  IF ~~ THEN DO ~SetGlobal("IlhSQuest","GLOBAL",15)
EscapeAreaMove("RR3451",594,587,13)~ EXIT
END

IF ~Global("IlhSQuest","GLOBAL",16)
Global("Itakesixtyper","GLOBAL",0)
Global("Ilootedthedc","GLOBAL",0)~ THEN BEGIN 35
  SAY @60
  IF ~~ THEN DO ~AddexperienceParty(20000)
GiveGoldForce(494)
ReputationInc(-1)~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 37.0 35.0
  SAY @61
  IF ~~ THEN DO ~EraseJournalEntry(@570734)
EraseJournalEntry(@570748)
SetGlobal("IlhSQuest","GLOBAL",17)~ SOLVED_JOURNAL @570736 EXIT
END

IF ~Global("IlhSQuest","GLOBAL",16)
Global("Itakesixtyper","GLOBAL",1)
Global("Ilootedthedc","GLOBAL",0)~ THEN BEGIN 37
  SAY @62
  IF ~~ THEN DO ~AddexperienceParty(20000)
GiveGoldForce(593)
ReputationInc(-1)~ GOTO 36
END

IF ~Global("IlhSQuest","GLOBAL",16)
Global("Itakesixtyper","GLOBAL",0)
Global("Ilootedthedc","GLOBAL",1)~ THEN BEGIN 38
  SAY @63
  IF ~~ THEN DO ~AddexperienceParty(20000)
TakePartyGold(494)
ReputationInc(-1)~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 40.0 38.0
  SAY @64
  IF ~~ THEN DO ~EraseJournalEntry(@570734)
EraseJournalEntry(@570748)
SetGlobal("IlhSQuest","GLOBAL",17)~ SOLVED_JOURNAL @570736 EXIT
END

IF ~Global("IlhSQuest","GLOBAL",16)
Global("Itakesixtyper","GLOBAL",1)
Global("Ilootedthedc","GLOBAL",1)~ THEN BEGIN 40
  SAY @65
  IF ~~ THEN DO ~AddexperienceParty(20000)
TakePartyGold(395)
ReputationInc(-1)~ GOTO 39
END

IF ~~ THEN BEGIN 41 // from: 17.1
  SAY @66
  IF ~~ THEN DO ~EraseJournalEntry(@570734)
SetGlobal("IlhSQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 17.2
  SAY @67
  IF ~~ THEN DO ~EraseJournalEntry(@570734)
AddexperienceParty(5000)
SetGlobal("IlhSQuest","GLOBAL",3)~ EXIT
END
