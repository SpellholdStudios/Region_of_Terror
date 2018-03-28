BEGIN ~AHIGHMA3~

IF ~RandomNum(4,1)
!Global("ZemirQuests","GLOBAL",12)
!Global("ZemirQuests","GLOBAL",13)
!Global("ZemirQuests","GLOBAL",14)
!Global("ZemirQuests","GLOBAL",15)
!Global("ZemirQuests","GLOBAL",16)
!Global("ZemirQuests","GLOBAL",17)
!Global("ZemirQuests","GLOBAL",20)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
!Global("ZemirQuests","GLOBAL",12)
!Global("ZemirQuests","GLOBAL",13)
!Global("ZemirQuests","GLOBAL",14)
!Global("ZemirQuests","GLOBAL",15)
!Global("ZemirQuests","GLOBAL",16)
!Global("ZemirQuests","GLOBAL",17)
!Global("ZemirQuests","GLOBAL",20)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
!Global("ZemirQuests","GLOBAL",12)
!Global("ZemirQuests","GLOBAL",13)
!Global("ZemirQuests","GLOBAL",14)
!Global("ZemirQuests","GLOBAL",15)
!Global("ZemirQuests","GLOBAL",16)
!Global("ZemirQuests","GLOBAL",17)
!Global("ZemirQuests","GLOBAL",20)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)
!Global("ZemirQuests","GLOBAL",12)
!Global("ZemirQuests","GLOBAL",13)
!Global("ZemirQuests","GLOBAL",14)
!Global("ZemirQuests","GLOBAL",15)
!Global("ZemirQuests","GLOBAL",16)
!Global("ZemirQuests","GLOBAL",17)
!Global("ZemirQuests","GLOBAL",20)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("ZemirQuests","GLOBAL",12)~ THEN BEGIN 4
  SAY @4
  IF ~Global("Emergency","LOCALS",0)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 12
  IF ~~ THEN REPLY @8 GOTO 19
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN DO ~SetGlobal("Emergency","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~Global("Brotherdead","LOCALS",0)~ THEN REPLY @13 GOTO 10
  IF ~Global("Verybad","LOCALS",0)~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @15
  IF ~Global("Youllhear","LOCALS",0)~ THEN REPLY @16 GOTO 8
  IF ~Global("Youllhear","LOCALS",0)~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.0
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Youllhear","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @20
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",13)
SetGlobal("Ihavests","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Brotherdead","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Verybad","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.2
  SAY @23
  IF ~Global("Someonedead","LOCALS",0)~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~Global("Somelady","LOCALS",0)~ THEN REPLY @26 GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @27
  IF ~~ THEN DO ~SetGlobal("Someonedead","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @28
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",13)
SetGlobal("Farmers","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2
  SAY @29
  IF ~~ THEN REPLY @30 DO ~SetGlobal("Somelady","LOCALS",1)~ GOTO 16
  IF ~~ THEN REPLY @31 DO ~SetGlobal("Somelady","LOCALS",1)~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.0
  SAY @32
  IF ~CheckStatLT(LastTalkedToBy,17,CHR)~ THEN GOTO 17
  IF ~CheckStatGT(LastTalkedToBy,16,CHR)~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @33
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @34
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",13)
SetGlobal("Meetlady","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.3
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 20
  IF ~~ THEN REPLY @37 GOTO 25
  IF ~~ THEN REPLY @38 GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 21
  IF ~~ THEN REPLY @41 GOTO 25
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @42
  IF ~CheckStatLT(LastTalkedToBy,17,CHR)~ THEN GOTO 22
  IF ~CheckStatGT(LastTalkedToBy,16,CHR)~ THEN GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @43
  IF ~~ THEN REPLY @37 GOTO 25
  IF ~~ THEN REPLY @38 GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY @44
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",13)
SetGlobal("Wellmeethihg","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 19.2
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 25
  IF ~~ THEN REPLY @47 GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1 24.0 22.0 20.1 19.1
  SAY @48
  IF ~~ THEN DO ~SetGlobal("ZemirQuests","GLOBAL",16)
SetGlobal("BetrayZemir","RR3103",1)~ EXIT
END

IF ~Global("Meetlady","LOCALS",1)
Global("ZemirQuests","GLOBAL",15)~ THEN BEGIN 26
  SAY @49
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Global("Farmers","LOCALS",1)
Global("ZemirQuests","GLOBAL",15)~ THEN BEGIN 27
  SAY @50
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Global("Ihavests","LOCALS",1)
Global("ZemirQuests","GLOBAL",15)~ THEN BEGIN 28
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 29
  IF ~~ THEN REPLY @53 GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 31.0 28.0
  SAY @54
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY @55
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Global("Wellmeethihg","GLOBAL",1)
Global("ZemirQuests","GLOBAL",15)~ THEN BEGIN 31
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 29
  IF ~~ THEN REPLY @37 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Wellmeethihg","GLOBAL",2)~ EXIT
END

IF ~Global("BetrayZemir","RR3103",1)
Global("ZemirQuests","GLOBAL",17)~ THEN BEGIN 33
  SAY @58
  IF ~~ THEN DO ~EraseJournalEntry(@571675)
EraseJournalEntry(@571676)
EraseJournalEntry(@571677)
AddXPObject(Player1,4000)
AddXPObject(Player2,4000)
AddXPObject(Player3,4000)
AddXPObject(Player4,4000)
AddXPObject(Player5,4000)
AddXPObject(Player6,4000)
SetGlobal("ZemirQuests","GLOBAL",20)~ SOLVED_JOURNAL @500000 EXIT
END

IF ~Global("Wellmeethihg","GLOBAL",3)
Global("ZemirQuests","GLOBAL",15)~ THEN BEGIN 34
  SAY @58
  IF ~~ THEN DO ~EraseJournalEntry(@571675)
EraseJournalEntry(@571676)
EraseJournalEntry(@571677)
AddXPObject(Player1,4000)
AddXPObject(Player2,4000)
AddXPObject(Player3,4000)
AddXPObject(Player4,4000)
AddXPObject(Player5,4000)
AddXPObject(Player6,4000)
SetGlobal("ZemirQuests","GLOBAL",20)
EscapeAreaMove("RR3103",594,618,10)~ SOLVED_JOURNAL @500000 EXIT
END

IF ~Global("ZemirQuests","GLOBAL",20)~ THEN BEGIN 35
  SAY @59
  IF ~~ THEN EXIT
END
