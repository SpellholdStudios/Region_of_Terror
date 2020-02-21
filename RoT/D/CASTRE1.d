BEGIN ~CASTRE1~

IF ~Global("Idealertms","RR3400",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 15
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 12
  IF ~~ THEN REPLY @7 GOTO 14
  IF ~~ THEN REPLY @8 DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 3
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 14.1 14.0 2.1 2.0
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 4
  IF ~~ THEN REPLY @16 GOTO 5
  IF ~~ THEN REPLY @17 DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @18
  IF ~PartyGoldGT(2999)~ THEN REPLY @19 DO ~TakePartyGold(3000)~ GOTO 7
  IF ~PartyGoldLT(3000)~ THEN REPLY @20 GOTO 8
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @23
  IF ~~ THEN DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 14.2 2.2
  SAY @24
  IF ~PartyGoldGT(2999)~ THEN REPLY @19 DO ~TakePartyGold(3000)~ GOTO 7
  IF ~PartyGoldLT(3000)~ THEN REPLY @25 GOTO 8
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 10.0 6.0 4.0
  SAY @26
  IF ~~ THEN DO ~SetGlobal("Idealertms","RR3400",4)
AddExperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 12.1 6.1 4.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 9
  IF ~~ THEN REPLY @29 DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @30
  IF ~~ THEN DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 12.2 6.2 4.2
  SAY @31
  IF ~PartyGoldGT(2999)~ THEN REPLY @32 DO ~TakePartyGold(3000)~ GOTO 7
  IF ~PartyGoldLT(3000)~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @33 DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @34
  IF ~~ THEN DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.1
  SAY @35
  IF ~PartyGoldGT(2999)~ THEN REPLY @36 DO ~TakePartyGold(3000)~ GOTO 13
  IF ~PartyGoldLT(3000)~ THEN REPLY @25 GOTO 8
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @37 DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @38
  IF ~~ THEN DO ~SetGlobal("Idealertms","RR3400",4)
AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.2
  SAY @39
  IF ~~ THEN REPLY @10 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 3
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.2
  SAY @40
  IF ~~ THEN DO ~SetGlobal("Idealertms","RR3400",2)~ EXIT
END
