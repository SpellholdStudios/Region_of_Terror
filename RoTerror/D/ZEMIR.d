BEGIN ~ZEMIR~

IF ~Global("ZemirQuests","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 10.0 7.0 4.0 2.0 0.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 10.1 7.1 0.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @11 GOTO 4
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @13
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 1
  IF ~~ THEN REPLY @16 GOTO 5
  IF ~~ THEN REPLY @17 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @18
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @19
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY @20
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @21 GOTO 2
  IF ~~ THEN REPLY @22 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 10.2 7.2 2.2 0.3
  SAY @23
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1 1.0
  SAY @24
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",2)~ EXIT
END

IF ~Global("ZemirQuests","GLOBAL",1)~ THEN BEGIN 10
  SAY @25
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @26 GOTO 8
END

IF ~Global("ZemirQuests","GLOBAL",3)~ THEN BEGIN 12
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 13
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~~ THEN REPLY @30 GOTO 18
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 14
  IF ~~ THEN REPLY @33 GOTO 15
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 15
  IF ~~ THEN REPLY @37 GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 17.0 14.0 13.1
  SAY @38
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY @35
  IF ~~ THEN REPLY @39 GOTO 17
  IF ~~ THEN REPLY @40 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @31
  IF ~~ THEN REPLY @41 GOTO 15
  IF ~~ THEN REPLY @42 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1 16.1 14.1 13.2 12.2
  SAY @43
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",4)~ EXIT
END

IF ~Global("ZemirQuests","GLOBAL",4)~ THEN BEGIN 19
  SAY @44
  IF ~~ THEN EXIT
END

IF ~Global("ZemirQuests","GLOBAL",7)~ THEN BEGIN 23
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @47 GOTO 25
  IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @49
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",8)~ UNSOLVED_JOURNAL @571675 EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY @50
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",4)~ EXIT
END

IF ~Global("ZemirQuests","GLOBAL",8)
!Dead("Galan1")~ THEN BEGIN 26
  SAY @51
  IF ~~ THEN EXIT
END

IF ~Global("ZemirQuests","GLOBAL",8)
Dead("Galan1")~ THEN BEGIN 27
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 28
  IF ~~ THEN REPLY @54 DO ~AddXPObject(Player1,2000)
AddXPObject(Player2,2000)
AddXPObject(Player3,2000)
AddXPObject(Player4,2000)
AddXPObject(Player5,2000)
AddXPObject(Player6,2000)~ GOTO 29
  IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @55
  IF ~~ THEN DO ~AddXPObject(Player1,2000)
AddXPObject(Player2,2000)
AddXPObject(Player3,2000)
AddXPObject(Player4,2000)
AddXPObject(Player5,2000)
AddXPObject(Player6,2000)
SetGlobal("ZemirQuests","GLOBAL",10)~ UNSOLVED_JOURNAL @571676 EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY @56
  IF ~~ THEN DO ~EraseJournalEntry(@571675)
EraseJournalEntry(@571676)
EraseJournalEntry(@571677)
Enemy()~ SOLVED_JOURNAL @571680 EXIT
END

IF ~Global("ZemirQuests","GLOBAL",10)~ THEN BEGIN 30
  SAY @57
  IF ~~ THEN EXIT
END

IF ~Global("ZemirQuests","GLOBAL",11)~ THEN BEGIN 31
  SAY @58
  IF ~~ THEN REPLY @53 GOTO 32
  IF ~~ THEN REPLY @54 GOTO 43
  IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 33
  IF ~~ THEN REPLY @61 GOTO 34
  IF ~~ THEN REPLY @62 GOTO 36
  IF ~~ THEN REPLY @63 GOTO 43
END

IF ~~ THEN BEGIN 33 // from: 37.0 36.0 35.0 34.0 32.0
  SAY @64
  IF ~~ THEN DO ~AddXPObject(Player1,3000)
AddXPObject(Player2,3000)
AddXPObject(Player3,3000)
AddXPObject(Player4,3000)
AddXPObject(Player5,3000)
AddXPObject(Player6,3000)
SetGlobal("ZemirQuests","GLOBAL",12)~ UNSOLVED_JOURNAL @571677 EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 33
  IF ~~ THEN REPLY @62 GOTO 35
  IF ~~ THEN REPLY @63 GOTO 43
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @67
  IF ~~ THEN REPLY @66 GOTO 33
  IF ~~ THEN REPLY @68 GOTO 43
END

IF ~~ THEN BEGIN 36 // from: 32.2
  SAY @67
  IF ~~ THEN REPLY @66 GOTO 33
  IF ~~ THEN REPLY @69 GOTO 37
  IF ~~ THEN REPLY @68 GOTO 43
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @70
  IF ~~ THEN REPLY @66 GOTO 33
  IF ~~ THEN REPLY @71 GOTO 43
END

IF ~Global("ZemirQuests","GLOBAL",12)~ THEN BEGIN 38
  SAY @72
  IF ~~ THEN EXIT
END

IF ~Global("Killedhim","LOCALS",0)
Dead("AHighMa3")~ THEN BEGIN 39
  SAY @73
  IF ~~ THEN DO ~GiveItemCreate("CurKat",LastTalkedToBy,0,0,0)~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @74
  IF ~~ THEN DO ~EraseJournalEntry(@571675)
EraseJournalEntry(@571676)
EraseJournalEntry(@571677)
AddXPObject(Player1,4000)
AddXPObject(Player2,4000)
AddXPObject(Player3,4000)
AddXPObject(Player4,4000)
AddXPObject(Player5,4000)
AddXPObject(Player6,4000)
SetGlobal("ZemirQuests","GLOBAL",16)
SetGlobal("Killedhim","LOCALS",1)~ SOLVED_JOURNAL @571678 EXIT
END

IF ~Global("ZemirQuests","GLOBAL",16)~ THEN BEGIN 41
  SAY @75
  IF ~~ THEN REPLY @76 GOTO 42
  IF ~~ THEN REPLY @77 EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @78
  IF ~~ THEN REPLY @79 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @80 EXIT
END

IF ~~ THEN BEGIN 43 // from: 37.1 36.2 35.1 34.2 32.3 31.1
  SAY @56
  IF ~~ THEN DO ~EraseJournalEntry(@571675)
EraseJournalEntry(@571676)
EraseJournalEntry(@571677)
Enemy()~ SOLVED_JOURNAL @571681 EXIT
END
