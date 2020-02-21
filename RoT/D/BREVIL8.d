BEGIN ~BREVIL8~

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
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 13
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @11 GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,16,CHR)~ THEN REPLY @12 GOTO 8
  IF ~CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @14
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil10","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @15
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",2)
SetGlobal("Talkfinished","LOCALS",2)
SetGlobal("BreVil10","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @16
  IF ~CheckStatGT(LastTalkedToBy,16,CHR)~ THEN REPLY @17 GOTO 8
  IF ~CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0 4.2
  SAY @21
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",2)
SetGlobal("BreVil10","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 4.3
  SAY @22
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil10","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @23
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil10","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY @24
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",2)
SetGlobal("BreVil10","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.4 4.4
  SAY @25
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",3)
SetGlobal("BreVil10","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY @26
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil10","GLOBAL",1)~ EXIT
END

IF ~Global("Talkfinished","LOCALS",1)
!Global("BreVil10","GLOBAL",3)~ THEN BEGIN 14
  SAY @27
  IF ~~ THEN EXIT
END

IF ~Global("Talkfinished","LOCALS",2)
!Global("BreVil10","GLOBAL",3)~ THEN BEGIN 15
  SAY @28
  IF ~~ THEN EXIT
END

IF ~Global("Talkfinished","LOCALS",3)
!Global("BreVil10","GLOBAL",3)~ THEN BEGIN 16
  SAY @29
  IF ~~ THEN EXIT
END

IF ~Global("BreVil10","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",5)
GlobalGT("PeoplesMorale","GLOBAL",-6)~ THEN BEGIN 17
  SAY @30
  IF ~~ THEN EXIT
END

IF ~Global("BreVil10","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",-5)~ THEN BEGIN 18
  SAY @31
  IF ~~ THEN EXIT
END

IF ~Global("BreVil10","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",10)
GlobalGT("PeoplesMorale","GLOBAL",4)~ THEN BEGIN 19
  SAY @32
  IF ~~ THEN EXIT
END

IF ~Global("BreVil10","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",15)
GlobalGT("PeoplesMorale","GLOBAL",9)~ THEN BEGIN 20
  SAY @33
  IF ~~ THEN EXIT
END

IF ~Global("BreVil10","GLOBAL",3)
GlobalGT("PeoplesMorale","GLOBAL",14)~ THEN BEGIN 21
  SAY @34
  IF ~~ THEN EXIT
END
