BEGIN ~KINDAST~

IF ~Global("Kinquest","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 12
END

IF ~~ THEN BEGIN 1 // from: 13.0 0.0
  SAY @4
  IF ~~ THEN DO ~StartStore("Kindast",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~CheckStatGT(LastTalkedToBy,17,CHR)~ THEN REPLY @8 DO ~SetGlobal("twogold","LOCALS",1)~ GOTO 5
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 DO ~SetGlobal("onegold","LOCALS",1)~ GOTO 7
  IF ~~ THEN REPLY @10 DO ~SetGlobal("normgold","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY @11 GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Kinquest","GLOBAL",2)~ UNSOLVED_JOURNAL @566777 EXIT
  IF ~~ THEN REPLY @15 DO ~SetGlobal("Kinquest","GLOBAL",2)~ UNSOLVED_JOURNAL @566777 EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @12
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Kinquest","GLOBAL",2)~ UNSOLVED_JOURNAL @566777 EXIT
  IF ~~ THEN REPLY @15 DO ~SetGlobal("Kinquest","GLOBAL",2)~ UNSOLVED_JOURNAL @566777 EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY @16
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 14.0 9.0
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Kinquest","GLOBAL",2)~ UNSOLVED_JOURNAL @566777 EXIT
  IF ~~ THEN REPLY @15 DO ~SetGlobal("Kinquest","GLOBAL",2)~ UNSOLVED_JOURNAL @566777 EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY @17
  IF ~~ THEN DO ~SetGlobal("Kinquest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 13.2 0.2
  SAY @18
  IF ~~ THEN EXIT
END

IF ~Global("Kinquest","GLOBAL",1)~ THEN BEGIN 13
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @19 DO ~SetGlobal("normgold","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY @3 GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @20
  IF ~~ THEN GOTO 10
END

IF ~Global("Kinquest","GLOBAL",2)~ THEN BEGIN 15
  SAY @21
  IF ~~ THEN REPLY @22 DO ~StartStore("Kindast",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @24
  IF ~~ THEN EXIT
END

IF ~Global("Kinquest","GLOBAL",4)~ THEN BEGIN 17
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 DO ~StartStore("Kindast",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @28
  IF ~~ THEN DO ~SetGlobal("Kinquest","GLOBAL",5)~ UNSOLVED_JOURNAL @566781 EXIT
END

IF ~Global("Kinquest","GLOBAL",5)~ THEN BEGIN 19
  SAY @29
  IF ~~ THEN EXIT
END

IF ~Global("Kinquest","GLOBAL",6)~ THEN BEGIN 20
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @32
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @33
  IF ~~ THEN DO ~EraseJournalEntry(@566784)
EraseJournalEntry(@566785)
EraseJournalEntry(@566781)
EraseJournalEntry(@566777)
SetGlobal("Kinquest","GLOBAL",8)~ SOLVED_JOURNAL @566782 EXIT
END

IF ~Global("Kinquest","GLOBAL",7)~ THEN BEGIN 23
  SAY @30
  IF ~~ THEN REPLY @34 GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @35
  IF ~~ THEN DO ~SetGlobal("Tellhmth","GLOBAL",1)~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @36
  IF ~Global("twogold","LOCALS",1)
!Global("normgold","LOCALS",1)
!Global("onegold","LOCALS",1)~ THEN GOTO 26
  IF ~Global("onegold","LOCALS",1)
!Global("normgold","LOCALS",1)
!Global("twogold","LOCALS",1)~ THEN GOTO 27
  IF ~Global("normgold","LOCALS",1)
!Global("onegold","LOCALS",1)
!Global("twogold","LOCALS",1)~ THEN GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @37
  IF ~~ THEN DO ~EraseJournalEntry(@566784)
EraseJournalEntry(@566785)
EraseJournalEntry(@566781)
EraseJournalEntry(@566777)
SetGlobal("Kinquest","GLOBAL",8)
GiveGoldForce(100)~ SOLVED_JOURNAL @566783 EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY @38
  IF ~~ THEN DO ~EraseJournalEntry(@566784)
EraseJournalEntry(@566785)
EraseJournalEntry(@566781)
EraseJournalEntry(@566777)
SetGlobal("Kinquest","GLOBAL",8)
GiveGoldForce(75)~ SOLVED_JOURNAL @566783 EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY @39
  IF ~~ THEN DO ~EraseJournalEntry(@566784)
EraseJournalEntry(@566785)
EraseJournalEntry(@566781)
EraseJournalEntry(@566777)
SetGlobal("Kinquest","GLOBAL",8)
GiveGoldForce(50)~ SOLVED_JOURNAL @566783 EXIT
END

IF ~Global("Kinquest","GLOBAL",8)~ THEN BEGIN 29
  SAY @40
  IF ~~ THEN REPLY @22 DO ~StartStore("Kindast",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @41 EXIT
END
