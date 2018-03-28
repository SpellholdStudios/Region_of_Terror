BEGIN ~BREFI3~

IF ~!Global("Changepeodialogs","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~CheckStatGT(LastTalkedToBy,16,CHR)~ THEN REPLY @2 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)~ GOTO 2
  IF ~CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @2 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 12
  IF ~CheckStatGT(LastTalkedToBy,16,WIS)~ THEN REPLY @4 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 16
  IF ~~ THEN REPLY @6 GOTO 17
END

IF ~~ THEN BEGIN 2 // from: 12.0 1.0
  SAY @7
  IF ~CheckStatGT(LastTalkedToBy,16,INT)~ THEN REPLY @8 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
IncrementGlobal("PeoplesMorale","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @15 GOTO 19
  IF ~~ THEN REPLY @16 GOTO 20
END

IF ~~ THEN BEGIN 5 // from: 4.0 2.2
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 21
  IF ~~ THEN REPLY @19 DO ~SetGlobal("Talkfinished","LOCALS",1)
IncrementGlobal("PeoplesMorale","GLOBAL",-1)~ EXIT
  IF ~~ THEN REPLY @20 GOTO 21
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
IncrementGlobal("PeoplesMorale","GLOBAL",-2)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 12.1 1.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 8
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @24 GOTO 9
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)~ THEN REPLY @25 GOTO 10
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY @25 GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @26
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @27
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
IncrementGlobal("PeoplesMorale","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @28
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
IncrementGlobal("PeoplesMorale","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY @29
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
IncrementGlobal("PeoplesMorale","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.2
  SAY @30
  IF ~CheckStatGT(LastTalkedToBy,16,CHR)~ THEN REPLY @2 GOTO 2
  IF ~CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @2 GOTO 7
  IF ~~ THEN REPLY @31 GOTO 13
  IF ~~ THEN REPLY @32 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY @33
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
IncrementGlobal("PeoplesMorale","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.3
  SAY @34
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
IncrementGlobal("PeoplesMorale","GLOBAL",-2)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.3
  SAY @35
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
IncrementGlobal("PeoplesMorale","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.4
  SAY @36
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
IncrementGlobal("PeoplesMorale","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.5
  SAY @37
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
IncrementGlobal("PeoplesMorale","GLOBAL",-1)~ EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",1)~ THEN BEGIN 18
  SAY @0
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.1
  SAY @38
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 4.2
  SAY @39
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
IncrementGlobal("PeoplesMorale","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 5.2 5.0
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 22
  IF ~~ THEN REPLY @42 GOTO 23
  IF ~~ THEN REPLY @43 GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @44
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.2 21.1
  SAY @45
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END
