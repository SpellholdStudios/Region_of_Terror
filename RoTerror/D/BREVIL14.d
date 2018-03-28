BEGIN ~BREVIL14~

IF ~!Global("Changepeodialogs","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 11
  IF ~~ THEN REPLY @9 GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @14
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @15
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil13","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @16
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @19
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",2)
SetGlobal("BreVil13","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @20
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil13","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2 11.0 7.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 22
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @28 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",2)
SetGlobal("BreVil13","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @29
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",2)
SetGlobal("BreVil13","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.2
  SAY @30
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",2)
SetGlobal("BreVil13","GLOBAL",1)~ EXIT
END

IF ~Global("Talkfinished","LOCALS",1)
!Global("BreVil13","GLOBAL",3)~ THEN BEGIN 16
  SAY @31
  IF ~~ THEN EXIT
END

IF ~Global("Talkfinished","LOCALS",2)
!Global("BreVil13","GLOBAL",3)~ THEN BEGIN 17
  SAY @32
  IF ~~ THEN EXIT
END

IF ~Global("BreVil13","GLOBAL",3)
Global("Talkfinished","LOCALS",1)
GlobalLT("PeoplesMorale","GLOBAL",0)~ THEN BEGIN 18
  SAY @33
  IF ~~ THEN EXIT
END

IF ~Global("BreVil13","GLOBAL",3)
Global("Talkfinished","LOCALS",2)
GlobalGT("PeoplesMorale","GLOBAL",9)~ THEN BEGIN 19
  SAY @34
  IF ~~ THEN EXIT
END

IF ~Global("BreVil13","GLOBAL",3)
Global("Talkfinished","LOCALS",2)
GlobalLT("PeoplesMorale","GLOBAL",10)~ THEN BEGIN 20
  SAY @32
  IF ~~ THEN EXIT
END

IF ~Global("BreVil13","GLOBAL",3)
Global("Talkfinished","LOCALS",1)
GlobalGT("PeoplesMorale","GLOBAL",-1)~ THEN BEGIN 21
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 12.1 12.0
  SAY @35
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @36
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil13","GLOBAL",1)~ EXIT
END
