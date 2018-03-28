BEGIN ~MOLLY2~

IF ~Global("adslkj","LOCALS",0)
!Global("Burthif","GLOBAL",7)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 DO ~SetGlobal("adslkj","LOCALS",0)~ EXIT
END

IF ~Global("adslkj","LOCALS",1)
!Global("Burthif","GLOBAL",7)~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 6.0 5.0 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
END

IF ~Global("adslkj","LOCALS",3)
!Global("Burthif","GLOBAL",7)~ THEN BEGIN 7
  SAY @13
  IF ~PartyHasItem("MolNeck")~ THEN REPLY @14 GOTO 16
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 8 // from: 13.0 9.0 4.0
  SAY @16
  IF ~~ THEN DO ~SetGlobal("adslkj","LOCALS",3)
SetGlobal("Burthif","GLOBAL",1)~ UNSOLVED_JOURNAL @566564 EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 8
  IF ~~ THEN REPLY @19 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 13.1 9.1 4.2
  SAY @20
  IF ~~ THEN DO ~SetGlobal("adslkj","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY @17
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @23
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @9
  IF ~~ THEN REPLY @24 GOTO 8
  IF ~~ THEN REPLY @25 GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 11.1 2.2
  SAY @26
  IF ~~ THEN DO ~SetGlobal("adslkj","LOCALS",2)~ EXIT
END

IF ~Global("adslkj","LOCALS",2)
!Global("Burthif","GLOBAL",7)~ THEN BEGIN 15
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.0
  SAY @28
  IF ~~ THEN REPLY @29 DO ~TakePartyItem("MolNeck")~ GOTO 17
  IF ~~ THEN REPLY @30 DO ~TakePartyItem("MolNeck")~ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @31
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @32
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @33
  IF ~~ THEN DO ~EraseJournalEntry(@566564)
SetGlobal("Burthif","GLOBAL",7)
AddXPObject(Player1,1000)
AddXPObject(Player2,1000)
AddXPObject(Player3,1000)
AddXPObject(Player4,1000)
AddXPObject(Player5,1000)
AddXPObject(Player6,1000)
GiveGoldForce(50)~ SOLVED_JOURNAL @566565 EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY @34
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @33
  IF ~~ THEN DO ~EraseJournalEntry(@566564)
SetGlobal("Burthif","GLOBAL",7)
AddXPObject(Player1,2000)
AddXPObject(Player2,2000)
AddXPObject(Player3,2000)
AddXPObject(Player4,2000)
AddXPObject(Player5,2000)
AddXPObject(Player6,2000)
GiveGoldForce(50)~ SOLVED_JOURNAL @566566 EXIT
END

IF ~Global("Burthif","GLOBAL",7)~ THEN BEGIN 22
  SAY @35
  IF ~~ THEN EXIT
END
