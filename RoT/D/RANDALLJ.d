BEGIN ~RANDALLJ~

IF ~Global("RandallJoin","GLOBAL",7)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0 1.1 1.0 0.2
  SAY @8
  IF ~~ THEN DO ~SetGlobal("RandallJoin","GLOBAL",8)~ UNSOLVED_JOURNAL @574048 EXIT
END

IF ~Global("RandallJoin","GLOBAL",11)~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @13
  IF ~~ THEN DO ~SetGlobal("RandallJoin","GLOBAL",12)~ UNSOLVED_JOURNAL @574049 EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @14
  IF ~~ THEN DO ~SetGlobal("RandallJoin","GLOBAL",12)~ UNSOLVED_JOURNAL @574049 EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @15
  IF ~~ THEN DO ~EraseJournalEntry(@574048)
LeaveParty()
EscapeArea()~ SOLVED_JOURNAL @574050 EXIT
END

IF ~Global("RandallJoin","GLOBAL",15)~ THEN BEGIN 8
  SAY @16
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @17
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @18
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1 11.0
  SAY @22
  IF ~~ THEN DO ~SetGlobal("RandallJoin","GLOBAL",16)
RevealAreaOnMap("RA5700")~ UNSOLVED_JOURNAL @574051 EXIT
END

IF ~Global("Razorbattle","GLOBAL",4)
!Global("adslkjdfkjl","RA5701",1)~ THEN BEGIN 13
  SAY @23
  IF ~~ THEN EXTERN ~RAZOR~ 1
END

IF ~~ THEN BEGIN 14 // from:
  SAY @24
  IF ~~ THEN EXTERN ~RAZOR~ 4
END

IF ~~ THEN BEGIN 15 // from:
  SAY @25
  IF ~~ THEN EXTERN ~RAZOR~ 8
END

IF ~~ THEN BEGIN 16 // from:
  SAY @26
  IF ~~ THEN EXTERN ~RAZOR~ 9
END

IF ~Global("adslkjdfkjl","RA5701",1)~ THEN BEGIN 17
  SAY @27
  IF ~~ THEN DO ~EraseJournalEntry(@574048)
EraseJournalEntry(@574049)
EraseJournalEntry(@574051)
AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)
SetGlobal("Razorbattle","GLOBAL",6)
SetGlobal("adslkjdfkjl","RA5701",2)~ SOLVED_JOURNAL @574052 EXIT
END

IF ~Global("Scheisse","ar1515",1)~ THEN BEGIN 18
  SAY @28
  IF ~~ THEN EXTERN ~RANMARC~ 1
END

IF ~~ THEN BEGIN 19 // from:
  SAY @29
  IF ~~ THEN EXTERN ~RANMARC~ 2
END

IF ~~ THEN BEGIN 20 // from:
  SAY @30
  IF ~~ THEN EXTERN ~RANMARC~ 3
END

IF ~~ THEN BEGIN 21 // from:
  SAY @31
  IF ~~ THEN EXTERN ~RANMARC~ 4
END

IF ~~ THEN BEGIN 22 // from:
  SAY @32
  IF ~~ THEN DO ~SetGlobal("Razorbattle","GLOBAL",7)
SetGlobal("RandallJoin","GLOBAL",20)
SetGlobal("Scheisse","ar1515",2)~ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY @33
  IF ~~ THEN EXTERN ~RANMARC~ 6
END

IF ~~ THEN BEGIN 24 // from:
  SAY @34
  IF ~~ THEN EXTERN ~RANMARC~ 7
END

IF ~~ THEN BEGIN 25 // from:
  SAY @35
  IF ~~ THEN EXTERN ~RANMARC~ 8
END

IF ~~ THEN BEGIN 26 // from:
  SAY @36
  IF ~~ THEN DO ~SetGlobal("Razorbattle","GLOBAL",7)
SetGlobal("RandallJoin","GLOBAL",20)
SetGlobal("Scheisse2","ar1515",2)~ EXIT
END

IF ~Global("Scheisse2","ar1515",1)~ THEN BEGIN 27
  SAY @28
  IF ~~ THEN EXTERN ~RANMARC~ 9
END

IF ~~ THEN BEGIN 28 // from:
  SAY @29
  IF ~~ THEN EXTERN ~RANMARC~ 10
END

IF ~~ THEN BEGIN 29 // from:
  SAY @30
  IF ~~ THEN EXTERN ~RANMARC~ 11
END

IF ~~ THEN BEGIN 30 // from:
  SAY @31
  IF ~~ THEN EXTERN ~RANMARC~ 12
END

IF ~~ THEN BEGIN 31 // from:
  SAY @37
  IF ~~ THEN EXTERN ~STAFFM11~ 43
END

IF ~~ THEN BEGIN 32 // from:
  SAY @38
  IF ~~ THEN DO ~SetGlobal("Startmd","GLOBAL",1)
SetGlobal("FigRan","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY @39
  IF ~~ THEN DO ~SetGlobal("FigRan","GLOBAL",17)~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY @40
  IF ~~ THEN DO ~SetGlobal("FigRan","GLOBAL",17)~ EXIT
END
