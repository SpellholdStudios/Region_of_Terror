BEGIN ~QUINTIP1~

IF ~!Global("Caravanquest","GLOBAL",3)
!Global("Caravanquest","GLOBAL",4)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~Global("HermitQuests","GLOBAL",2)
Global("Supplies","LOCALS",0)~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 17.1 16.1 15.2 14.1 0.1
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Supplies","LOCALS",1)
GiveItemCreate("Supplies",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~Global("Caravanquest","GLOBAL",3)
Global("Caravantalks","LOCALS",0)~ THEN BEGIN 3
  SAY @5
  IF ~!Global("Createmonstersiwd","GLOBAL",2)~ THEN REPLY @6 GOTO 4
  IF ~!Global("Createmonstersiwd","GLOBAL",2)~ THEN REPLY @7 GOTO 5
  IF ~Global("Createmonstersiwd","GLOBAL",2)~ THEN REPLY @8 GOTO 11
  IF ~~ THEN REPLY @9 GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 5.0 3.0
  SAY @10
  IF ~~ THEN DO ~SetGlobal("Caravantalks","LOCALS",1)~ UNSOLVED_JOURNAL @572863 EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 4
  IF ~~ THEN REPLY @13 GOTO 6
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Caravantalks","LOCALS",1)~ UNSOLVED_JOURNAL @572863 EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Caravantalks","LOCALS",1)~ UNSOLVED_JOURNAL @572863 EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2 5.2
  SAY @23
  IF ~~ THEN DO ~SetGlobal("Caravantalks","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 15.0 14.0 3.2
  SAY @24
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 3.3
  SAY @25
  IF ~~ THEN DO ~SetGlobal("Caravantalks","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY @26
  IF ~~ THEN DO ~SetGlobal("Createmonstersiwd","GLOBAL",3)
SetGlobal("Caravanquest","GLOBAL",4)
SetGlobal("Caravantalks","LOCALS",3)
EraseJournalEntry(@572863)
AddXPObject(Player1,5000)
AddXPObject(Player2,5000)
AddXPObject(Player3,5000)
AddXPObject(Player4,5000)
AddXPObject(Player5,5000)
AddXPObject(Player6,5000)~ EXIT
END

IF ~Global("Caravantalks","LOCALS",1)~ THEN BEGIN 14
  SAY @27
  IF ~Global("Createmonstersiwd","GLOBAL",2)~ THEN REPLY @28 
  DO ~EraseJournalEntry(@572863)~ SOLVED_JOURNAL @572864 GOTO 11
  IF ~Global("HermitQuests","GLOBAL",2)
Global("Supplies","LOCALS",0)~ THEN REPLY @29 GOTO 1
  IF ~~ THEN REPLY @30 EXIT
END

IF ~Global("Caravantalks","LOCALS",2)~ THEN BEGIN 15
  SAY @31
  IF ~Global("Createmonstersiwd","GLOBAL",2)~ THEN REPLY @32 GOTO 11
  IF ~!Global("Createmonstersiwd","GLOBAL",2)~ THEN EXIT
  IF ~Global("HermitQuests","GLOBAL",2)
Global("Supplies","LOCALS",0)~ THEN REPLY @29 GOTO 1
END

IF ~Global("Caravanquest","GLOBAL",4)~ THEN BEGIN 16
  SAY @33
  IF ~!Global("Supplies","LOCALS",0)~ THEN EXIT
  IF ~Global("HermitQuests","GLOBAL",2)
Global("Supplies","LOCALS",0)~ THEN REPLY @34 GOTO 1
  IF ~!Global("HermitQuests","GLOBAL",2)
Global("Supplies","LOCALS",0)~ THEN EXIT
END

IF ~Global("Caravanquest","GLOBAL",5)~ THEN BEGIN 17
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~Global("HermitQuests","GLOBAL",2)
Global("Supplies","LOCALS",0)~ THEN REPLY @2 GOTO 1
END
