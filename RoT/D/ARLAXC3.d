BEGIN ~ARLAXC3~

IF ~Gender(LastTalkedToBy,MALE)
Global("sdalfk","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~PartyGoldGT(1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("sdalfk","LOCALS",1)
TakePartyGold(2)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @6
  IF ~PartyGoldGT(1)~ THEN REPLY @7 DO ~SetGlobal("sdalfk","LOCALS",1)
TakePartyGold(2)
RestParty()~ EXIT
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 0.2
  SAY @9
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy,MALE)
Global("sdalfk","LOCALS",1)~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN DO ~SetGlobal("sdalfk","LOCALS",2)~ EXIT
END

IF ~Gender(LastTalkedToBy,MALE)
Global("sdalfk","LOCALS",2)~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN REPLY @12 DO ~TakePartyGold(2)
RestParty()~ EXIT
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @9
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN EXIT
END
