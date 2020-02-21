BEGIN ~BREFI11~

IF ~~ THEN BEGIN 0 // from: BREVIL9
  SAY @0
  IF ~~ THEN EXTERN ~BREVIL9~ 5
END

IF ~~ THEN BEGIN 1 // from: BREVIL9
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Theboy","RA5100",2)~ EXIT
END

IF ~!Global("Changepeodialogs","GLOBAL",2)
!Global("Theboy","RA5100",3)
!Global("Theboy","RA5100",4)
!Global("Theboy","RA5100",5)
!Global("BreVil1","GLOBAL",3)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("Theboy","RA5100",3)
!Global("BreVil1","GLOBAL",3)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("Theboy","RA5100",4)~ EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Theboy","RA5100",4)
Global("Talkfinished","LOCALS",0)
!Global("BreVil1","GLOBAL",3)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("Theboy","RA5100",5)
SetGlobal("BreVil1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("Theboy","RA5100",5)
SetGlobal("BreVil1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @13
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("Theboy","RA5100",5)
SetGlobal("BreVil1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @14
  IF ~~ THEN REPLY @15 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)~ GOTO 11
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @18
  IF ~~ THEN EXTERN ~BREVIL9~ 7
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY @19
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("Theboy","RA5100",5)
SetGlobal("BreVil1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Theboy","RA5100",5)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @21
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("Theboy","RA5100",5)
SetGlobal("BreVil1","GLOBAL",1)~ EXIT
END

IF ~Global("Talkfinished","LOCALS",1)
!Global("BreVil1","GLOBAL",3)~ THEN BEGIN 13
  SAY @22
  IF ~~ THEN EXIT
END

IF ~!Global("Changepeodialogs","GLOBAL",2)
Global("Theboy","RA5100",4)
!Global("BreVil1","GLOBAL",3)~ THEN BEGIN 14
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("BreVil1","GLOBAL",3)
GlobalGT("PeoplesMorale","GLOBAL",14)~ THEN BEGIN 15
  SAY @23
  IF ~~ THEN EXIT
END

IF ~Global("BreVil1","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",15)
GlobalGT("PeoplesMorale","GLOBAL",9)~ THEN BEGIN 16
  SAY @24
  IF ~~ THEN EXIT
END

IF ~Global("BreVil1","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",10)
GlobalGT("PeoplesMorale","GLOBAL",4)~ THEN BEGIN 17
  SAY @22
  IF ~~ THEN EXIT
END

IF ~Global("BreVil1","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",5)
GlobalGT("PeoplesMorale","GLOBAL",-6)~ THEN BEGIN 18
  SAY @22
  IF ~~ THEN EXIT
END

IF ~Global("BreVil1","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",-5)~ THEN BEGIN 19
  SAY @25
  IF ~~ THEN EXIT
END
