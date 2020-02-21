BEGIN ~BRELAMOR~

IF ~Global("Helpthebrother","GLOBAL",0)
!Dead("BreTor1")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 9
  IF ~~ THEN REPLY @4 DO ~SetGlobal("Helpthebrother","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 9.0 0.1 0.0
  SAY @5
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 7.0 6.0 3.0
  SAY @11
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Helpthebrother","GLOBAL",3)
SetGlobal("Youcanleavenow2","GLOBAL",1)~ UNSOLVED_JOURNAL @572896 EXIT
END

IF ~~ THEN BEGIN 6 // from: 7.1 3.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 4
  IF ~~ THEN REPLY @15 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 4
  IF ~~ THEN REPLY @18 GOTO 6
  IF ~~ THEN REPLY @19 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2 6.1
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Helpthebrother","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.2
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Helpthebrother","GLOBAL",2)~ EXIT
END

IF ~Global("Helpthebrother","GLOBAL",1)
!Dead("BreTor1")~ THEN BEGIN 11
  SAY @23
  IF ~~ THEN EXIT
END

IF ~Global("Helpthebrother","GLOBAL",2)
!Dead("BreTor1")~ THEN BEGIN 12
  SAY @24
  IF ~~ THEN EXIT
END

IF ~Global("Helpthebrother","GLOBAL",3)
!Global("Brothertimeriwd","GLOBAL",9)
!Global("Brothertimeriwd","GLOBAL",4)
!Global("Brothertimeriwd","GLOBAL",15)
!Global("Brothertimeriwd","GLOBAL",16)
!Dead("BreTor1")~ THEN BEGIN 13
  SAY @25
  IF ~~ THEN EXIT
END

IF ~Global("Helpthebrother","GLOBAL",3)
Global("Brothertimeriwd","GLOBAL",9)
Global("Brotherisback","LOCALS",0)
!Dead("BreTor1")~ THEN BEGIN 14
  SAY @26
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @27
  IF ~~ THEN DO ~EraseJournalEntry(@572896)
SetGlobal("Brotherisback","LOCALS",1)
AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)~ SOLVED_JOURNAL @572897 EXIT
END

IF ~Dead("BreTor1")
Global("DeadTorvald","LOCALS",0)~ THEN BEGIN 16
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @31
  IF ~~ THEN DO ~EraseJournalEntry(@572896)
SetGlobal("DeadTorvald","LOCALS",1)~ SOLVED_JOURNAL @572898 EXIT
END

IF ~Global("DeadTorvald","LOCALS",1)~ THEN BEGIN 18
  SAY @32
  IF ~~ THEN EXIT
END

IF ~Global("Brothertimeriwd","GLOBAL",4)
Global("Imissedthebrother","LOCALS",0)~ THEN BEGIN 19
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 20
  IF ~~ THEN REPLY @3 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.0
  SAY @35
  IF ~~ THEN DO ~EraseJournalEntry(@572896)
SetGlobal("Imissedthebrother","LOCALS",1)~ SOLVED_JOURNAL @572899 EXIT
END

IF ~Global("Imissedthebrother","LOCALS",1)~ THEN BEGIN 21
  SAY @36
  IF ~~ THEN EXIT
END

IF ~Global("Brotherisback","LOCALS",1)~ THEN BEGIN 22
  SAY @37
  IF ~~ THEN EXIT
END

IF ~Global("Brothertimeriwd","GLOBAL",15)~ THEN BEGIN 23
  SAY @28
  IF ~~ THEN REPLY @38 GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @39
  IF ~~ THEN DO ~EraseJournalEntry(@572896)
SetGlobal("Brothertimeriwd","GLOBAL",16)~ SOLVED_JOURNAL @572903 EXIT
END
