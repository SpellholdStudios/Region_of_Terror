BEGIN ~ELEANA2~

IF ~Global("Eleanquest","GLOBAL",7)
!Global("Lookfermonn","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("djjkfdajkf","GLOBAL",1)
EscapeArea()~ SOLVED_JOURNAL @568695 EXIT
END

IF ~Global("Eleanquest","GLOBAL",8)
!Global("Lookfermonn","GLOBAL",2)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("djjkfdajkf","GLOBAL",1)
HideAreaOnMap("Ra4700")
EscapeArea()~ SOLVED_JOURNAL @568867 EXIT
END

IF ~Global("Eleanquest","GLOBAL",9)
!Global("Lookfermonn","GLOBAL",2)~ THEN BEGIN 5
  SAY @5
  IF ~PartyHasItem("RareSpel")~ THEN REPLY @9 DO ~TakePartyItem("RareSpel")~ GOTO 6
  IF ~PartyHasItem("RareSpel")~ THEN REPLY @10 DO ~TakePartyItem("RareSpel")~ GOTO 10
  IF ~~ THEN REPLY @11 GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~Global("Elepayhun","GLOBAL",1)~ THEN GOTO 7
  IF ~Global("Elepaytwohun","GLOBAL",1)~ THEN GOTO 9
  IF ~!Global("Elepayhun","GLOBAL",1)
!Global("Elepaytwohun","GLOBAL",1)
Global("Ipaidten","GLOBAL",1)~ THEN REPLY @13 DO ~SetGlobal("losttenthous","LOCALS",1)~ GOTO 8
  IF ~!Global("Elepayhun","GLOBAL",1)
!Global("Elepaytwohun","GLOBAL",1)
Global("Ipaidfive","GLOBAL",1)~ THEN REPLY @14 DO ~SetGlobal("lostfivethous","LOCALS",1)~ GOTO 8
  IF ~!Global("Ipaidfive","GLOBAL",1)
!Global("Ipaidten","GLOBAL",1)
!Global("Elepayhun","GLOBAL",1)
!Global("Elepaytwohun","GLOBAL",1)~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("Eleanquest","GLOBAL",14)
AddXPObject(Player1,30000)
AddXPObject(Player2,30000)
AddXPObject(Player3,30000)
AddXPObject(Player4,30000)
AddXPObject(Player5,30000)
AddXPObject(Player6,30000)
EscapeArea()~ SOLVED_JOURNAL @568877 EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @15
  IF ~Global("Ipaidten","GLOBAL",1)~ THEN REPLY @13 DO ~SetGlobal("losttenthous","LOCALS",1)
GiveGoldForce(100)~ GOTO 8
  IF ~Global("Ipaidfive","GLOBAL",1)~ THEN REPLY @14 DO ~SetGlobal("lostfivethous","LOCALS",1)
GiveGoldForce(100)~ GOTO 8
  IF ~!Global("Ipaidfive","GLOBAL",1)
!Global("Ipaidten","GLOBAL",1)~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("Eleanquest","GLOBAL",14)
GiveGoldForce(100)
AddXPObject(Player1,25000)
AddXPObject(Player2,25000)
AddXPObject(Player3,25000)
AddXPObject(Player4,25000)
AddXPObject(Player5,25000)
AddXPObject(Player6,25000)
EscapeArea()~ SOLVED_JOURNAL @568875 EXIT
END

IF ~~ THEN BEGIN 8 // from: 9.1 9.0 7.1 7.0 6.3 6.2
  SAY @16
  IF ~~ THEN DO ~SetGlobal("Lookfermonn","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @17
  IF ~Global("Ipaidten","GLOBAL",1)~ THEN REPLY @13 DO ~SetGlobal("losttenthous","LOCALS",1)
GiveGoldForce(200)~ GOTO 8
  IF ~Global("Ipaidfive","GLOBAL",1)~ THEN REPLY @14 DO ~SetGlobal("lostfivethous","LOCALS",1)
GiveGoldForce(200)~ GOTO 8
  IF ~!Global("Ipaidfive","GLOBAL",1)
!Global("Ipaidten","GLOBAL",1)~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("Eleanquest","GLOBAL",14)
GiveGoldForce(200)
AddXPObject(Player1,25000)
AddXPObject(Player2,25000)
AddXPObject(Player3,25000)
AddXPObject(Player4,25000)
AddXPObject(Player5,25000)
AddXPObject(Player6,25000)
EscapeArea()~ SOLVED_JOURNAL @568875 EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @12
  IF ~Global("Elepayhun","GLOBAL",1)~ THEN GOTO 11
  IF ~Global("Elepaytwohun","GLOBAL",1)~ THEN GOTO 12
  IF ~!Global("Elepayhun","GLOBAL",1)
!Global("Elepaytwohun","GLOBAL",1)~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("Eleanquest","GLOBAL",14)
AddXPObject(Player1,30000)
AddXPObject(Player2,30000)
AddXPObject(Player3,30000)
AddXPObject(Player4,30000)
AddXPObject(Player5,30000)
AddXPObject(Player6,30000)
EscapeArea()~ SOLVED_JOURNAL @568877 EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @15
  IF ~~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("Eleanquest","GLOBAL",14)
GiveGoldForce(100)
AddXPObject(Player1,25000)
AddXPObject(Player2,25000)
AddXPObject(Player3,25000)
AddXPObject(Player4,25000)
AddXPObject(Player5,25000)
AddXPObject(Player6,25000)
EscapeArea()~ SOLVED_JOURNAL @568875 EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @17
  IF ~~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("Eleanquest","GLOBAL",14)
GiveGoldForce(200)
AddXPObject(Player1,25000)
AddXPObject(Player2,25000)
AddXPObject(Player3,25000)
AddXPObject(Player4,25000)
AddXPObject(Player5,25000)
AddXPObject(Player6,25000)
EscapeArea()~ SOLVED_JOURNAL @568875 EXIT
END

IF ~~ THEN BEGIN 13 // from: 14.1 5.2
  SAY @18
  IF ~~ THEN EXIT
END

IF ~Global("Eleanquest","GLOBAL",13)
!Global("Lookfermonn","GLOBAL",2)~ THEN BEGIN 14
  SAY @19
  IF ~PartyHasItem("RareSpel")~ THEN REPLY @20 DO ~TakePartyItem("RareSpel")~ GOTO 19
  IF ~~ THEN REPLY @21 GOTO 13
END

IF ~Global("Lookfermonn","GLOBAL",2)
Global("losttenthous","LOCALS",1)~ THEN BEGIN 15
  SAY @22
  IF ~~ THEN REPLY @23 DO ~GiveGoldForce(5000)~ GOTO 16
  IF ~~ THEN REPLY @24 DO ~GiveGoldForce(5000)~ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 18.0 15.0
  SAY @25
  IF ~~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("Eleanquest","GLOBAL",14)
AddXPObject(Player1,30000)
AddXPObject(Player2,30000)
AddXPObject(Player3,30000)
AddXPObject(Player4,30000)
AddXPObject(Player5,30000)
AddXPObject(Player6,30000)
EscapeArea()~ SOLVED_JOURNAL @568873 EXIT
END

IF ~~ THEN BEGIN 17 // from: 18.1 15.1
  SAY @26
  IF ~~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("Eleanquest","GLOBAL",14)
AddXPObject(Player1,30000)
AddXPObject(Player2,30000)
AddXPObject(Player3,30000)
AddXPObject(Player4,30000)
AddXPObject(Player5,30000)
AddXPObject(Player6,30000)
EscapeArea()~ SOLVED_JOURNAL @568873 EXIT
END

IF ~Global("Lookfermonn","GLOBAL",2)
Global("lostfivethous","LOCALS",1)~ THEN BEGIN 18
  SAY @27
  IF ~~ THEN REPLY @23 DO ~GiveGoldForce(2500)~ GOTO 16
  IF ~~ THEN REPLY @24 DO ~GiveGoldForce(2500)~ GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 14.0
  SAY @12
  IF ~Global("Elepayhun","GLOBAL",1)~ THEN GOTO 20
  IF ~Global("Elepaytwohun","GLOBAL",1)~ THEN GOTO 21
  IF ~!Global("Elepayhun","GLOBAL",1)
!Global("Elepaytwohun","GLOBAL",1)~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("Eleanquest","GLOBAL",14)
AddXPObject(Player1,35000)
AddXPObject(Player2,35000)
AddXPObject(Player3,35000)
AddXPObject(Player4,35000)
AddXPObject(Player5,35000)
AddXPObject(Player6,35000)
EscapeArea()~ SOLVED_JOURNAL @568881 EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @15
  IF ~~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("Eleanquest","GLOBAL",14)
GiveGoldForce(100)
AddXPObject(Player1,30000)
AddXPObject(Player2,30000)
AddXPObject(Player3,30000)
AddXPObject(Player4,30000)
AddXPObject(Player5,30000)
AddXPObject(Player6,30000)
EscapeArea()~ SOLVED_JOURNAL @568882 EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY @17
  IF ~~ THEN DO ~EraseJournalEntry(@568689)
EraseJournalEntry(@568691)
SetGlobal("Eleanquest","GLOBAL",14)
GiveGoldForce(200)
AddXPObject(Player1,30000)
AddXPObject(Player2,30000)
AddXPObject(Player3,30000)
AddXPObject(Player4,30000)
AddXPObject(Player5,30000)
AddXPObject(Player6,30000)
EscapeArea()~ SOLVED_JOURNAL @568882 EXIT
END
