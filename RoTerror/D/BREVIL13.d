BEGIN ~BREVIL13~

IF ~!Global("Changepeodialogs","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)
RandomNum(3,1)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)
RandomNum(3,2)~ THEN BEGIN 2
  SAY @1
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @2
  IF ~CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 DO ~SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 13.0 3.0
  SAY @6
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",2)
SetGlobal("BreVil11","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @7
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)
RandomNum(3,3)~ THEN BEGIN 6
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("BreVil11","GLOBAL",3)
!Global("BreVil12","GLOBAL",2)~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("BreVil11","GLOBAL",6)~ EXIT
END

IF ~Global("BreVil11","GLOBAL",6)
!Global("BreVil12","GLOBAL",2)~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN EXIT
END

IF ~Global("BreVil11","GLOBAL",4)
!Global("BreVil12","GLOBAL",2)~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("BreVil11","GLOBAL",7)~ EXIT
END

IF ~Global("BreVil11","GLOBAL",7)
!Global("BreVil12","GLOBAL",2)~ THEN BEGIN 10
  SAY @11
  IF ~~ THEN EXIT
END

IF ~Global("BreVil11","GLOBAL",5)
!Global("BreVil12","GLOBAL",2)~ THEN BEGIN 11
  SAY @12
  IF ~~ THEN DO ~SetGlobal("BreVil11","GLOBAL",8)~ EXIT
END

IF ~Global("BreVil11","GLOBAL",8)
!Global("BreVil12","GLOBAL",2)~ THEN BEGIN 12
  SAY @13
  IF ~~ THEN EXIT
END

IF ~Global("Talkfinished","LOCALS",1)
!Global("BreVil12","GLOBAL",2)
!Global("BreVil11","GLOBAL",3)
!Global("BreVil11","GLOBAL",4)
!Global("BreVil11","GLOBAL",5)
!Global("BreVil11","GLOBAL",6)
!Global("BreVil11","GLOBAL",7)
!Global("BreVil11","GLOBAL",8)~ THEN BEGIN 13
  SAY @14
  IF ~CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @15 GOTO 4
  IF ~~ THEN REPLY @16 EXIT
  IF ~~ THEN REPLY @17 EXIT
END

IF ~Global("Talkfinished","LOCALS",2)
!Global("BreVil12","GLOBAL",2)
!Global("BreVil11","GLOBAL",3)
!Global("BreVil11","GLOBAL",4)
!Global("BreVil11","GLOBAL",5)
!Global("BreVil11","GLOBAL",6)
!Global("BreVil11","GLOBAL",7)
!Global("BreVil11","GLOBAL",8)~ THEN BEGIN 14
  SAY @18
  IF ~~ THEN EXIT
END

IF ~Global("BreVil12","GLOBAL",2)
GlobalLT("PeoplesMorale","GLOBAL",5)
GlobalGT("PeoplesMorale","GLOBAL",-6)~ THEN BEGIN 15
  SAY @19
  IF ~~ THEN EXIT
END

IF ~Global("BreVil12","GLOBAL",2)
GlobalLT("PeoplesMorale","GLOBAL",-5)~ THEN BEGIN 16
  SAY @20
  IF ~~ THEN EXIT
END

IF ~Global("BreVil12","GLOBAL",2)
GlobalLT("PeoplesMorale","GLOBAL",15)
GlobalGT("PeoplesMorale","GLOBAL",4)~ THEN BEGIN 17
  SAY @21
  IF ~~ THEN EXIT
END

IF ~Global("BreVil12","GLOBAL",2)
GlobalGT("PeoplesMorale","GLOBAL",14)~ THEN BEGIN 18
  SAY @22
  IF ~~ THEN EXIT
END
