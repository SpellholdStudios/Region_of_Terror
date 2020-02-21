BEGIN ~BREVIL5~

IF ~!Global("Changepeodialogs","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXTERN ~BREBAR1~ 0
  IF ~~ THEN REPLY @2 EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN REPLY @1 EXTERN ~BREBAR1~ 0
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN 4 // from: 5.0 3.2 3.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 15
  IF ~~ THEN REPLY @13 GOTO 16
  IF ~~ THEN REPLY @14 GOTO 17
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 4
  IF ~~ THEN REPLY @17 GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @18 GOTO 7
  IF ~~ THEN REPLY @19 GOTO 14
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @13 GOTO 16
  IF ~~ THEN REPLY @14 GOTO 17
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 8
  IF ~~ THEN REPLY @24 GOTO 9
  IF ~~ THEN REPLY @25 GOTO 14
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 10
  IF ~CheckStatGT(LastTalkedToBy,12,WIS)~ THEN REPLY @29 GOTO 11
  IF ~~ THEN REPLY @30 GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 14
  IF ~~ THEN REPLY @33 GOTO 10
  IF ~CheckStatGT(LastTalkedToBy,12,WIS)~ THEN REPLY @34 GOTO 11
  IF ~~ THEN REPLY @30 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 17.1 16.0 9.1 8.1
  SAY @35
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",3)
SetGlobal("BreVil8","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 17.2 16.3 9.2 8.2
  SAY @36
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @37
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",2)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil7","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 17.3 16.2 9.3 8.3
  SAY @38
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 17.0 16.1 9.0 8.0 7.2 5.3
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 6.0 4.0
  SAY @40
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.1 4.1
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 10
  IF ~~ THEN REPLY @43 GOTO 14
  IF ~~ THEN REPLY @44 GOTO 13
  IF ~CheckStatGT(LastTalkedToBy,12,WIS)~ THEN REPLY @45 GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 6.2 4.2
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 10
  IF ~CheckStatGT(LastTalkedToBy,12,WIS)~ THEN REPLY @45 GOTO 11
  IF ~~ THEN REPLY @30 GOTO 13
END

IF ~Global("Talkfinished","LOCALS",1)
!Global("BreVil8","GLOBAL",3)~ THEN BEGIN 18
  SAY @48
  IF ~~ THEN REPLY @1 EXTERN ~BREBAR1~ 0
  IF ~~ THEN REPLY @2 EXIT
END

IF ~Global("Talkfinished","LOCALS",2)
!Global("BreVil8","GLOBAL",3)~ THEN BEGIN 19
  SAY @0
  IF ~~ THEN REPLY @1 EXTERN ~BREBAR1~ 0
  IF ~~ THEN REPLY @2 EXIT
END

IF ~Global("Talkfinished","LOCALS",3)
!Global("BreVil8","GLOBAL",3)~ THEN BEGIN 20
  SAY @48
  IF ~~ THEN REPLY @1 EXTERN ~BREBAR1~ 0
  IF ~~ THEN REPLY @2 EXIT
END

IF ~Global("BreVil8","GLOBAL",3)~ THEN BEGIN 21
  SAY @0
  IF ~~ THEN REPLY @1 EXTERN ~BREBAR1~ 0
  IF ~~ THEN REPLY @2 EXIT
END
