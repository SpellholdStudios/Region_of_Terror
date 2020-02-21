BEGIN ~GAIDAN~

IF ~Global("Eleanquest","GLOBAL",8)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("Eleanquest","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.0 0.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~~ THEN REPLY @8 GOTO 17
END

IF ~~ THEN BEGIN 2 // from: 4.0 3.1 1.1 0.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 17
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 1
  IF ~~ THEN REPLY @14 GOTO 2
  IF ~~ THEN REPLY @15 GOTO 17
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 2
  IF ~~ THEN REPLY @18 GOTO 17
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 6
  IF ~~ THEN REPLY @21 GOTO 17
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 7
  IF ~~ THEN REPLY @24 GOTO 17
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @25
  IF ~PartyGoldGT(9999)~ THEN REPLY @26 DO ~TakePartyGold(10000)~ GOTO 8
  IF ~PartyGoldGT(4999)~ THEN REPLY @27 GOTO 10
  IF ~~ THEN REPLY @28 GOTO 14
  IF ~~ THEN REPLY @29 GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @30
  IF ~~ THEN DO ~SetGlobal("Ipaidten","GLOBAL",1)
GiveItemCreate("RareSpel",LastTalkedToBy,0,0,0)~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 11.0 8.0
  SAY @31
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",9)
SetGlobal("Outescrt","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @32
  IF ~LevelGT(Player1,15)~ THEN GOTO 11
  IF ~LevelLT(Player1,16)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @33
  IF ~~ THEN REPLY @34 DO ~SetGlobal("Ipaidfive","GLOBAL",1)
GiveItemCreate("RareSpel",LastTalkedToBy,0,0,0)
TakePartyGold(5000)~ GOTO 9
  IF ~~ THEN REPLY @35 DO ~GiveItemCreate("RareSpel",LastTalkedToBy,0,0,0)~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @36
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @37
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.2
  SAY @38
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 16
  IF ~~ THEN REPLY @41 GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @42
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",10)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 7.3 6.1 5.1 4.1 3.2 2.1 1.2
  SAY @43
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",9)~ EXIT
END
