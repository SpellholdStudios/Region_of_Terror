BEGIN ~FRMR4~

IF ~Global("asdadg","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~PartyGoldGT(999)~ THEN REPLY @1 GOTO 1
  IF ~PartyGoldGT(19)~ THEN REPLY @2 GOTO 3
  IF ~PartyGoldGT(4)~ THEN REPLY @3 GOTO 4
  IF ~PartyGoldGT(0)~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("asdadg","LOCALS",1)
TakePartyGold(1000)
ReputationInc(2)
AddexperienceParty(6000)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @8
  IF ~~ THEN DO ~SetGlobal("asdadg","LOCALS",1)
TakePartyGold(20)
AddexperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY @9
  IF ~~ THEN DO ~SetGlobal("asdadg","LOCALS",1)
TakePartyGold(5)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY @10
  IF ~~ THEN DO ~SetGlobal("asdadg","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY @11
  IF ~~ THEN DO ~SetGlobal("asdadg","LOCALS",3)~ EXIT
END

IF ~Global("asdadg","LOCALS",1)~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN EXIT
END

IF ~Global("asdadg","LOCALS",2)~ THEN BEGIN 8
  SAY @13
  IF ~~ THEN EXIT
END

IF ~Global("asdadg","LOCALS",3)~ THEN BEGIN 9
  SAY @14
  IF ~~ THEN EXIT
END
