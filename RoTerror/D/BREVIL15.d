BEGIN ~BREVIL15~

IF ~!Global("Changepeodialogs","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 8
  IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 14
  IF ~~ THEN REPLY @12 GOTO 15
  IF ~~ THEN REPLY @13 GOTO 17
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @14
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @15
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @16
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @15
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY @17
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 14
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 17
END

IF ~~ THEN BEGIN 9 // from: 14.0 8.0 3.0
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @23 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 11
  IF ~~ THEN REPLY @26 GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @27
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @15
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @28
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",2)
SetGlobal("BreVil14","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.1 3.1
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 9
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @32 GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.1 9.0 8.2 3.2
  SAY @33
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @15
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 9.1 8.3 3.3
  SAY @34
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @15
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~Global("Talkfinished","LOCALS",1)
!Global("BreVil14","GLOBAL",3)
!Global("BreVil14","GLOBAL",4)~ THEN BEGIN 19
  SAY @15
  IF ~~ THEN EXIT
END

IF ~Global("Talkfinished","LOCALS",2)
!Global("BreVil14","GLOBAL",3)
!Global("BreVil14","GLOBAL",4)~ THEN BEGIN 20
  SAY @35
  IF ~~ THEN EXIT
END

IF ~Global("BreVil14","GLOBAL",3)~ THEN BEGIN 21
  SAY @36
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("BreVil14","GLOBAL",4)~ EXIT
END

IF ~Global("BreVil14","GLOBAL",4)~ THEN BEGIN 22
  SAY @37
  IF ~~ THEN EXIT
END
