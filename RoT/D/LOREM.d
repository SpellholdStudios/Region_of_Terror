BEGIN ~LOREM~

IF ~Global("LoremQuest","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 7
END

IF ~Global("LoremQuest","GLOBAL",1)~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 8
  IF ~~ THEN REPLY @5 EXIT
END

IF ~Global("LoremQuest","GLOBAL",2)
NumItemsLT("MyMeat",Myself,13)~ THEN BEGIN 2 // from:
  SAY @6 /* #76054 */
  IF ~NumItemsGT("MyMeat",LastTalkedToBy(),12)~ THEN REPLY @7 DO ~TakePartyItemNum("MyMeat",13)~ GOTO 12
  IF ~NumItems("MyMeat",LastTalkedToBy(),12)~ THEN REPLY @8 DO ~TakePartyItemNum("MyMeat",12)~ GOTO 12
  IF ~NumItems("MyMeat",LastTalkedToBy(),11)~ THEN REPLY @9 DO ~TakePartyItemNum("MyMeat",11)~ GOTO 12
  IF ~NumItems("MyMeat",LastTalkedToBy(),10)~ THEN REPLY @10 DO ~TakePartyItemNum("MyMeat",10)~ GOTO 12
  IF ~NumItems("MyMeat",LastTalkedToBy(),9)~ THEN REPLY @11 DO ~TakePartyItemNum("MyMeat",9)~ GOTO 12
  IF ~NumItems("MyMeat",LastTalkedToBy(),8)~ THEN REPLY @12 DO ~TakePartyItemNum("MyMeat",8)~ GOTO 12
  IF ~NumItems("MyMeat",LastTalkedToBy(),7)~ THEN REPLY @13 DO ~TakePartyItemNum("MyMeat",7)~ GOTO 12
  IF ~NumItems("MyMeat",LastTalkedToBy(),6)~ THEN REPLY @14 DO ~TakePartyItemNum("MyMeat",6)~ GOTO 12
  IF ~NumItems("MyMeat",LastTalkedToBy(),5)~ THEN REPLY @15 DO ~TakePartyItemNum("MyMeat",5)~ GOTO 12
  IF ~NumItems("MyMeat",LastTalkedToBy(),4)~ THEN REPLY @16 DO ~TakePartyItemNum("MyMeat",4)~ GOTO 12
  IF ~NumItems("MyMeat",LastTalkedToBy(),3)~ THEN REPLY @17 DO ~TakePartyItemNum("MyMeat",3)~ GOTO 12
  IF ~NumItems("MyMeat",LastTalkedToBy(),2)~ THEN REPLY @18 DO ~TakePartyItemNum("MyMeat",2)~ GOTO 12
  IF ~NumItems("MyMeat",LastTalkedToBy(),1)~ THEN REPLY @19 DO ~TakePartyItemNum("MyMeat",1)~ GOTO 12
  IF ~~ THEN REPLY @2 EXIT
END

IF ~Global("LoremQuest","GLOBAL",2)
NumItemsGT("MyMeat",Myself,12)~ THEN BEGIN 3
  SAY @20
  IF ~~ THEN DO ~EraseJournalEntry(@576084)
SetGlobal("LoremQuest","GLOBAL",3)
AddexperienceParty(25000)
GiveGoldForce(100)~ SOLVED_JOURNAL @576086 EXIT
END

IF ~Global("LoremQuest","GLOBAL",3)~ THEN BEGIN 4
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY @22
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 8
  IF ~~ THEN REPLY @25 GOTO 10
  IF ~~ THEN REPLY @26 GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 10.0 6.0 1.0
  SAY @28
  IF ~~ THEN DO ~RevealAreaOnMap("RA4200")~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @29
  IF ~~ THEN DO ~SetGlobal("LoremQuest","GLOBAL",2)~ UNSOLVED_JOURNAL @576084 EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 8
  IF ~~ THEN REPLY @32 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1 6.2
  SAY @27
  IF ~~ THEN DO ~SetGlobal("LoremQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.12 2.11 2.10 2.9 2.8 2.7 2.6 2.5 2.4 2.3 2.2 2.1 2.0
  SAY @33
  IF ~~ THEN EXIT
END
