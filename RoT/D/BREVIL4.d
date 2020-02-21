BEGIN ~BREVIL4~

IF ~!Global("Changepeodialogs","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)
CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 12
  IF ~~ THEN REPLY @8 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 19
  IF ~~ THEN REPLY @10 GOTO 20
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 19
  IF ~~ THEN REPLY @10 GOTO 20
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @13
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil6","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @1
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @1
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @1
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @16
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil6","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @1
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @17
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @18
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",2)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil6","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.2
  SAY @19
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil6","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.1 2.3
  SAY @1
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @1
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @1
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @17
  IF ~CheckStatGT(LastTalkedToBy,7,INT)~ THEN GOTO 17
  IF ~CheckStatLT(LastTalkedToBy,8,INT)~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @18
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil6","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @20
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-2)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil6","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.2 2.4
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil6","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.3 2.5
  SAY @13
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-2)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil6","GLOBAL",1)~ EXIT
END

IF ~Global("BreVil6","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",5)
GlobalGT("PeoplesMorale","GLOBAL",-6)~ THEN BEGIN 21
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("BreVil6","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",-5)~ THEN BEGIN 22
  SAY @22
  IF ~~ THEN EXIT
END

IF ~Global("BreVil6","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",15)
GlobalGT("PeoplesMorale","GLOBAL",4)~ THEN BEGIN 23
  SAY @23
  IF ~~ THEN EXIT
END

IF ~Global("BreVil6","GLOBAL",3)
GlobalGT("PeoplesMorale","GLOBAL",14)~ THEN BEGIN 24
  SAY @24
  IF ~~ THEN EXIT
END
