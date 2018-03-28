BEGIN ~ARLAXGC~

IF ~Global("GuardCquest","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 7.0 6.0 0.0
  SAY @5
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 3 // from: 5.0 4.0 2.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("GuardCquest","GLOBAL",1)~ UNSOLVED_JOURNAL @568920 EXIT
END

IF ~~ THEN BEGIN 4 // from: 5.1 2.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 2.2
  SAY @14
  IF ~~ THEN REPLY @13 GOTO 3
  IF ~~ THEN REPLY @15 GOTO 4
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 6 // from: 7.1 0.1
  SAY @14
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1 0.2
  SAY @12
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 6
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3
  SAY @16
  IF ~~ THEN EXIT
END

IF ~Global("GuardCquest","GLOBAL",1)
!PartyHasItem("TresLive")
!PartyHasItem("TresDead")~ THEN BEGIN 9
  SAY @17
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("TresDead")~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.0
  SAY @21
  IF ~~ THEN DO ~GiveGoldForce(200)~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @22
  IF ~~ THEN DO ~TakePartyItem("TresDead")
EraseJournalEntry(@568920)
EraseJournalEntry(@569184)
EraseJournalEntry(@569173)
EraseJournalEntry(@569174)
SetGlobal("GuardCquest","GLOBAL",7)
ReputationInc(1)
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)~ SOLVED_JOURNAL @569177 EXIT
END

IF ~PartyHasItem("TresLive")~ THEN BEGIN 13
  SAY @23
  IF ~~ THEN DO ~TakePartyItem("TresLive")
SetGlobal("GuardCquest","GLOBAL",5)~ EXIT
END

IF ~Global("GuardCquest","GLOBAL",6)~ THEN BEGIN 14
  SAY @24
  IF ~~ THEN DO ~EraseJournalEntry(@568920)
EraseJournalEntry(@569184)
EraseJournalEntry(@569173)
EraseJournalEntry(@569174)
SetGlobal("GuardCquest","GLOBAL",7)
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)
ReputationInc(1)
GiveGoldForce(500)~ SOLVED_JOURNAL @569178 EXIT
END

IF ~Global("GuardCquest","GLOBAL",7)~ THEN BEGIN 15
  SAY @25
  IF ~~ THEN EXIT
END

IF ~OR(3)
 Global("GuardCquest","GLOBAL",2)
 Global("GuardCquest","GLOBAL",3)
 Global("GuardCquest","GLOBAL",4)
!PartyHasItem("TresLive")
!PartyHasItem("TresDead")~ THEN BEGIN 16
  SAY @17
  IF ~~ THEN EXIT
END

