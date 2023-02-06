BEGIN ~BREVIL7~

IF ~!Global("Changepeodialogs","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~CheckStatGT(LastTalkedToBy,17,CHR)~ THEN REPLY @6 GOTO 8
  IF ~CheckStatLT(LastTalkedToBy,18,CHR)~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 7.0 2.0
  SAY @8
  IF ~CheckStatGT(LastTalkedToBy,11,WIS)~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
EscapeArea()~ EXIT
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @13
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil9","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY @14
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil9","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.3
  SAY @15
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 3
  IF ~~ THEN REPLY @18 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-2)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @23 GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @24
  IF ~~ THEN REPLY @25 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil9","GLOBAL",1)~ EXIT
  IF ~PartyGoldGT(99)
CheckStatGT(LastTalkedToBy,11,INT)~ THEN REPLY @26 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @27
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil9","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @28
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY @29
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3
  SAY @30
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil9","GLOBAL",1)~ EXIT
END

IF ~Global("Talkfinished","LOCALS",1)
!Global("BreVil9","GLOBAL",3)~ THEN BEGIN 14
  SAY @31
  IF ~~ THEN EXIT
END

IF ~Global("BreVil9","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",5)
GlobalGT("PeoplesMorale","GLOBAL",-6)~ THEN BEGIN 15
  SAY @31
  IF ~~ THEN EXIT
END

IF ~Global("BreVil9","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",-5)~ THEN BEGIN 16
  SAY @32
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("BreVil9","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",10)
GlobalGT("PeoplesMorale","GLOBAL",4)~ THEN BEGIN 17
  SAY @33
  IF ~~ THEN EXIT
END

IF ~Global("BreVil9","GLOBAL",3)
GlobalGT("PeoplesMorale","GLOBAL",9)~ THEN BEGIN 18
  SAY @34
  IF ~~ THEN EXIT
END
