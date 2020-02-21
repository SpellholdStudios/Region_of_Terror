BEGIN ~HANDS~

IF ~Global("Handsmis","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 14
END

IF ~Global("Handsmis","GLOBAL",1)~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.0
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
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 15.0 11.1 11.0 6.1 6.0
  SAY @15
  IF ~~ THEN DO ~RevealAreaOnMap("RA4200")~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Handsmis","GLOBAL",1)~ UNSOLVED_JOURNAL @566652 EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Handsmis","GLOBAL",1)~ UNSOLVED_JOURNAL @566652 EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 7
  IF ~~ THEN REPLY @23 GOTO 7
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.2 6.3
  SAY @25
  IF ~~ THEN DO ~SetGlobal("Handsmis","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.3 6.4
  SAY @26
  IF ~~ THEN DO ~SetGlobal("Handsmis","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2
  SAY @27
  IF ~~ THEN EXIT
END

IF ~Global("Handsmis","GLOBAL",2)~ THEN BEGIN 15
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 7
  IF ~~ THEN REPLY @30 EXIT
END

IF ~Global("Handsmis","GLOBAL",3)~ THEN BEGIN 16
  SAY @31
  IF ~~ THEN EXIT
END

IF ~Global("Handsmis","GLOBAL",4)~ THEN BEGIN 17
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 18
  IF ~PartyHasItem("Hanbb")~ THEN REPLY @35 GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.1 17.0
  SAY @36
  IF ~~ THEN DO ~EraseJournalEntry(@566652)
SetGlobal("Handsmis","GLOBAL",5)
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)~ SOLVED_JOURNAL @566653 EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY @37
  IF ~~ THEN DO ~EraseJournalEntry(@566652)
SetGlobal("Handsmis","GLOBAL",5)
TakePartyItem("Hanbb")
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)~ SOLVED_JOURNAL @566653 EXIT
END

IF ~Global("Handsmis","GLOBAL",5)~ THEN BEGIN 20
  SAY @38
  IF ~~ THEN EXIT
END
