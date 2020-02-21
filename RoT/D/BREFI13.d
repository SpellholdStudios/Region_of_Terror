BEGIN ~BREFI13~

IF ~!Global("Changepeodialogs","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~CheckStatGT(LastTalkedToBy,13,INT)
CheckStatGT(LastTalkedToBy,11,WIS)~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.4 1.1 1.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",2)
SetGlobal("BreVil2","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @8
  IF ~RandomNum(2,1)~ THEN GOTO 4
  IF ~RandomNum(2,2)~ THEN GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 8.0 5.0
  SAY @13
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil4","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 1.3
  SAY @17
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",3)
SetGlobal("BreVil3","GLOBAL",1)~ EXIT
END

IF ~Global("Talkfinished","LOCALS",3)
!Global("BreVil4","GLOBAL",3)
!Global("BreVil2","GLOBAL",3)~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN EXIT
END

IF ~Global("Talkfinished","LOCALS",2)
!Global("BreVil4","GLOBAL",3)
!Global("BreVil2","GLOBAL",3)~ THEN BEGIN 11
  SAY @19
  IF ~~ THEN EXIT
END

IF ~Global("Talkfinished","LOCALS",1)
!Global("BreVil4","GLOBAL",3)
!Global("BreVil2","GLOBAL",3)~ THEN BEGIN 12
  SAY @20
  IF ~~ THEN EXIT
END

IF ~Global("BreVil3","GLOBAL",3)
!Global("Talkfinished","LOCALS",1)
!Global("BreVil2","GLOBAL",3)~ THEN BEGIN 13
  SAY @21
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~Global("BreVil2","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",5)
GlobalGT("PeoplesMorale","GLOBAL",-6)
!Global("BreVil4","GLOBAL",3)~ THEN BEGIN 14
  SAY @22
  IF ~~ THEN EXIT
END

IF ~Global("BreVil2","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",-5)
!Global("BreVil4","GLOBAL",3)~ THEN BEGIN 15
  SAY @23
  IF ~~ THEN EXIT
END

IF ~Global("BreVil2","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",10)
GlobalGT("PeoplesMorale","GLOBAL",4)
!Global("BreVil4","GLOBAL",3)~ THEN BEGIN 16
  SAY @24
  IF ~~ THEN EXIT
END

IF ~Global("BreVil2","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",15)
GlobalGT("PeoplesMorale","GLOBAL",9)
!Global("BreVil4","GLOBAL",3)~ THEN BEGIN 17
  SAY @25
  IF ~~ THEN EXIT
END

IF ~Global("BreVil2","GLOBAL",3)
GlobalGT("PeoplesMorale","GLOBAL",14)
!Global("BreVil4","GLOBAL",3)~ THEN BEGIN 18
  SAY @26
  IF ~~ THEN EXIT
END

IF ~Global("BreVil4","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",-5)
!Global("BreVil2","GLOBAL",3)~ THEN BEGIN 19
  SAY @27
  IF ~~ THEN EXIT
END

IF ~Global("BreVil4","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",5)
GlobalGT("PeoplesMorale","GLOBAL",-6)
!Global("BreVil2","GLOBAL",3)~ THEN BEGIN 20
  SAY @28
  IF ~~ THEN EXIT
END

IF ~Global("BreVil4","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",10)
GlobalGT("PeoplesMorale","GLOBAL",4)
!Global("BreVil2","GLOBAL",3)~ THEN BEGIN 21
  SAY @29
  IF ~~ THEN EXIT
END

IF ~Global("BreVil4","GLOBAL",3)
GlobalGT("PeoplesMorale","GLOBAL",9)
!Global("BreVil2","GLOBAL",3)~ THEN BEGIN 22
  SAY @30
  IF ~~ THEN EXIT
END
