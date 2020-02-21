BEGIN ~MAYASSI~

IF ~Global("Thestrangeman","GLOBAL",0)
!Global("NoQuest","LOCALS",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 11
  IF ~~ THEN REPLY @3 GOTO 14
END

IF ~~ THEN BEGIN 1 // from: 12.0 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @8
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 15.0 9.0 8.0 6.0
  SAY @14
  IF ~~ THEN DO ~SetGlobal("Thestrangeman","GLOBAL",2)~ UNSOLVED_JOURNAL @574055 EXIT
END

IF ~~ THEN BEGIN 8 // from: 9.1 6.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.1 6.2
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2 8.2 6.3
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Thestrangeman","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.1
  SAY @21
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 1
  IF ~~ THEN REPLY @24 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2
  SAY @26
  IF ~~ THEN EXIT
END

IF ~Global("Thestrangeman","GLOBAL",1)
!Global("NoQuest","LOCALS",1)~ THEN BEGIN 15
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 7
  IF ~~ THEN REPLY @29 /* #71919 */ EXIT
END

IF ~Global("Thestrangeman","GLOBAL",2)
!Global("Thestrangeman2","GLOBAL",1)
!Global("Thestrangeman3","GLOBAL",2)
!Global("NoQuest","LOCALS",1)~ THEN BEGIN 16
  SAY @30
  IF ~~ THEN EXIT
END

IF ~Global("Thestrangeman2","GLOBAL",1)
Global("Thestrangeman","GLOBAL",2)
!Global("Thestrangeman3","GLOBAL",2)
!Global("NoQuest","LOCALS",1)~ THEN BEGIN 17
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 EXIT
END

IF ~Global("Thestrangeman3","GLOBAL",2)
!Global("Thestrangeman2","GLOBAL",1)
!Global("NoQuest","LOCALS",1)~ THEN BEGIN 18
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 17.0
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 20
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @38
  IF ~~ THEN DO ~SetGlobal("Thestrangeman2","GLOBAL",2)
SetGlobal("Thestrangeman3","GLOBAL",3)
SetGlobal("Thestrangeman","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 19.1
  SAY @39
  IF ~~ THEN DO ~EraseJournalEntry(@574055)
SetGlobal("Thestrangeman2","GLOBAL",2)
SetGlobal("Thestrangeman3","GLOBAL",3)
SetGlobal("Thestrangeman","GLOBAL",0)
SetGlobal("NoQuest","LOCALS",1)
AddXPObject(Player1,3000)
AddXPObject(Player2,3000)
AddXPObject(Player3,3000)
AddXPObject(Player4,3000)
AddXPObject(Player5,3000)
AddXPObject(Player6,3000)~ SOLVED_JOURNAL @574056 EXIT
END

IF ~Global("Thestrangeman","GLOBAL",5)
!Global("NoQuest","LOCALS",1)~ THEN BEGIN 22
  SAY @31
  IF ~~ THEN REPLY @40 GOTO 23
  IF ~~ THEN REPLY @33 EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @41
  IF ~~ THEN DO ~EraseJournalEntry(@574055)
SetGlobal("Thestrangeman","GLOBAL",6)
AddXPObject(Player1,5000)
AddXPObject(Player2,5000)
AddXPObject(Player3,5000)
AddXPObject(Player4,5000)
AddXPObject(Player5,5000)
AddXPObject(Player6,5000)~ SOLVED_JOURNAL @574057 EXIT
END

IF ~Global("NoQuest","LOCALS",1)~ THEN BEGIN 24
  SAY @42
  IF ~~ THEN EXIT
END

IF ~Global("Thestrangeman","GLOBAL",3)
!Global("Thestrangeman2","GLOBAL",1)
!Global("Thestrangeman3","GLOBAL",2)
!Global("NoQuest","LOCALS",1)~ THEN BEGIN 25
  SAY @43
  IF ~~ THEN EXIT
END

IF ~Global("Thestrangeman","GLOBAL",6)
!Global("NoQuest","LOCALS",1)~ THEN BEGIN 26
  SAY @44
  IF ~~ THEN EXIT
END
