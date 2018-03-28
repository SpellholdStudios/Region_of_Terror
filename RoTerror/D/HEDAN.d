BEGIN ~HEDAN~

IF ~Global("Alknepro","GLOBAL",1)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 DO ~SetGlobal("DestyRyo","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("DestyRyo","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @3 DO ~SetGlobal("DestyRyo","GLOBAL",1)~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 26.0 25.0 17.0 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 37.0 1.0
  SAY @5
  IF ~~ THEN DO ~GiveItemCreate("Keyfuh",LastTalkedToBy,0,0,0)~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @9 
  IF ~~ THEN DO ~SetGlobal("Alknepro","GLOBAL",3)~ UNSOLVED_JOURNAL @565530 EXIT
END

IF ~~ THEN BEGIN 5 // from: 17.1 0.1
  SAY @10
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 DO ~EraseJournalEntry(@565533)
EraseJournalEntry(@565536)
EraseJournalEntry(@565535)
EraseJournalEntry(@565530)
EraseJournalEntry(@565529)
EraseJournalEntry(@565641)~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @14
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 8 // from: 29.1 27.1 26.1 25.2 6.1
  SAY @15
  IF ~~ THEN DO ~SetGlobal("Alknepro","GLOBAL",2)
SetGlobal("Evwechar","GLOBAL",1)~ EXIT
END

IF ~Global("Alknepro","GLOBAL",2)~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN EXIT
END

IF ~Global("Alknepro","GLOBAL",3)
!Global("Didnknwc","GLOBAL",1)
!Global("Didnknwc","GLOBAL",2)~ THEN BEGIN 10
  SAY @17 
  IF ~~ THEN EXIT
END

IF ~Global("Didnknwc","GLOBAL",0)
!Global("Alknepro","GLOBAL",1)
!Global("Alknepro","GLOBAL",2)
!Global("Alknepro","GLOBAL",3)~ THEN BEGIN 11
  SAY @18 
  IF ~!Global("Iknabwc","GLOBAL",1)~ THEN REPLY @19 DO ~SetGlobal("DestyRyo","GLOBAL",1)~ GOTO 16
  IF ~!Global("Iknabwc","GLOBAL",1)~ THEN REPLY @20 DO ~SetGlobal("DestyRyo","GLOBAL",1)~ GOTO 12
  IF ~Global("Iknabwc","GLOBAL",1)~ THEN REPLY @21 DO ~SetGlobal("DestyRyo","GLOBAL",1)~ GOTO 17
  IF ~Global("Iknabwc","GLOBAL",1)~ THEN REPLY @20 DO ~SetGlobal("DestyRyo","GLOBAL",1)~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Didnknwc","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.3
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Didnknwc","GLOBAL",2)~ EXIT
END

IF ~Global("Didnknwc","GLOBAL",1)~ THEN BEGIN 14
  SAY @23 
  IF ~~ THEN REPLY @24 DO ~SetGlobal("Didnknwc","GLOBAL",3)~ GOTO 16
  IF ~~ THEN REPLY @25 EXIT
END

IF ~Global("Didnknwc","GLOBAL",2)~ THEN BEGIN 15
  SAY @23 
  IF ~~ THEN REPLY @21 DO ~SetGlobal("Didnknwc","GLOBAL",3)~ GOTO 17
  IF ~~ THEN REPLY @25 EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 11.0
  SAY @26
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 15.0 11.2
  SAY @27
  IF ~~ THEN REPLY @28 UNSOLVED_JOURNAL @565533 GOTO 1
  IF ~~ THEN REPLY @2 UNSOLVED_JOURNAL @565533 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY @29
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @30
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @31
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @32
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @33
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @34
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @35
  IF ~~ THEN REPLY @36 UNSOLVED_JOURNAL @565536 GOTO 25
  IF ~~ THEN REPLY @37 UNSOLVED_JOURNAL @565536 GOTO 27
  IF ~~ THEN REPLY @38 GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 1
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 DO ~EraseJournalEntry(@565533)
EraseJournalEntry(@565536)
EraseJournalEntry(@565535)
EraseJournalEntry(@565530)
EraseJournalEntry(@565529)
EraseJournalEntry(@565641)~ GOTO 8
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 1
  IF ~~ THEN REPLY @45 DO ~EraseJournalEntry(@565533)
EraseJournalEntry(@565536)
EraseJournalEntry(@565535)
EraseJournalEntry(@565530)
EraseJournalEntry(@565529)
EraseJournalEntry(@565641)~ GOTO 8
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 28
  IF ~~ THEN REPLY @45 DO ~EraseJournalEntry(@565533)
EraseJournalEntry(@565536)
EraseJournalEntry(@565535)
EraseJournalEntry(@565530)
EraseJournalEntry(@565529)
EraseJournalEntry(@565641)~ GOTO 8
END

IF ~~ THEN BEGIN 28 // from: 29.0 27.0
  SAY @48
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 29 // from: 24.2
  SAY @49
  IF ~~ THEN REPLY @50 UNSOLVED_JOURNAL @565536 GOTO 28
  IF ~~ THEN REPLY @13 DO ~EraseJournalEntry(@565533)
EraseJournalEntry(@565536)
EraseJournalEntry(@565535)
EraseJournalEntry(@565530)
EraseJournalEntry(@565529)
EraseJournalEntry(@565641)~ GOTO 8
END

IF ~Global("UltFight","GLOBAL",2)~ THEN BEGIN 30
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 31
  IF ~~ THEN REPLY @53 GOTO 32
  IF ~~ THEN REPLY @54 DO ~EraseJournalEntry(@565533)
EraseJournalEntry(@565536)
EraseJournalEntry(@565535)
EraseJournalEntry(@565530)
EraseJournalEntry(@565529)
EraseJournalEntry(@565641)
AddXPObject(Player1,30000)
AddXPObject(Player2,30000)
AddXPObject(Player3,30000)
AddXPObject(Player4,30000)
AddXPObject(Player5,30000)
AddXPObject(Player6,30000)
SetGlobal("UltFight","GLOBAL",3)
SetGlobal("UltLeft","GLOBAL",3)~ SOLVED_JOURNAL @565656 EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @55
  IF ~~ THEN DO ~EraseJournalEntry(@565533)
EraseJournalEntry(@565536)
EraseJournalEntry(@565535)
EraseJournalEntry(@565530)
EraseJournalEntry(@565529)
EraseJournalEntry(@565641)
AddXPObject(Player1,40000)
AddXPObject(Player2,40000)
AddXPObject(Player3,40000)
AddXPObject(Player4,40000)
AddXPObject(Player5,40000)
AddXPObject(Player6,40000)
SetGlobal("UltFight","GLOBAL",3)
SetGlobal("UltLeft","GLOBAL",3)~ SOLVED_JOURNAL @565655 EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY @56
  IF ~~ THEN DO ~EraseJournalEntry(@565533)
EraseJournalEntry(@565536)
EraseJournalEntry(@565535)
EraseJournalEntry(@565530)
EraseJournalEntry(@565529)
EraseJournalEntry(@565641)
AddXPObject(Player1,45000)
AddXPObject(Player2,45000)
AddXPObject(Player3,45000)
AddXPObject(Player4,45000)
AddXPObject(Player5,45000)
AddXPObject(Player6,45000)
SetGlobal("UltFight","GLOBAL",3)
SetGlobal("UltLeft","GLOBAL",3)~ SOLVED_JOURNAL @565655 EXIT
END

IF ~Global("UltLeft","GLOBAL",3)
Global("UltFight","GLOBAL",3)~ THEN BEGIN 33
  SAY @57 
  IF ~~ THEN EXIT
END

IF ~Global("UltLeft","GLOBAL",2)~ THEN BEGIN 34
  SAY @51
  IF ~~ THEN REPLY @58 GOTO 35
  IF ~~ THEN REPLY @59 GOTO 36
  IF ~~ THEN REPLY @54 DO ~EraseJournalEntry(@565533)
EraseJournalEntry(@565536)
EraseJournalEntry(@565535)
EraseJournalEntry(@565530)
EraseJournalEntry(@565529)
EraseJournalEntry(@565641)
AddXPObject(Player1,30000)
AddXPObject(Player2,30000)
AddXPObject(Player3,30000)
AddXPObject(Player4,30000)
AddXPObject(Player5,30000)
AddXPObject(Player6,30000)
SetGlobal("UltLeft","GLOBAL",3)
SetGlobal("UltFight","GLOBAL",3)~ SOLVED_JOURNAL @566285 EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @60
  IF ~~ THEN DO ~EraseJournalEntry(@565533)
EraseJournalEntry(@565536)
EraseJournalEntry(@565535)
EraseJournalEntry(@565530)
EraseJournalEntry(@565529)
EraseJournalEntry(@565641)
AddXPObject(Player1,35000)
AddXPObject(Player2,35000)
AddXPObject(Player3,35000)
AddXPObject(Player4,35000)
AddXPObject(Player5,35000)
AddXPObject(Player6,35000)
SetGlobal("UltLeft","GLOBAL",3)
SetGlobal("UltFight","GLOBAL",3)~ SOLVED_JOURNAL @565653 EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY @55
  IF ~~ THEN DO ~EraseJournalEntry(@565533)
EraseJournalEntry(@565536)
EraseJournalEntry(@565535)
EraseJournalEntry(@565530)
EraseJournalEntry(@565529)
EraseJournalEntry(@565641)
AddXPObject(Player1,40000)
AddXPObject(Player2,40000)
AddXPObject(Player3,40000)
AddXPObject(Player4,40000)
AddXPObject(Player5,40000)
AddXPObject(Player6,40000)
SetGlobal("UltFight","GLOBAL",3)
SetGlobal("UltLeft","GLOBAL",3)~ SOLVED_JOURNAL @566284 EXIT
END

IF ~~ THEN BEGIN 37 // from: 28.0 7.0 5.0
  SAY @61
  IF ~~ THEN GOTO 2
END
