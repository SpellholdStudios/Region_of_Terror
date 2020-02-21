BEGIN ~BREVIL2~

IF ~!Global("Changepeodialogs","GLOBAL",2)
!Global("Talkfinished","LOCALS",2)
RandomNum(2,1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~!Global("Changepeodialogs","GLOBAL",2)
!Global("Talkfinished","LOCALS",2)
RandomNum(2,2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 24
  IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @9 GOTO 26
  IF ~~ THEN REPLY @10 GOTO 27
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 16
  IF ~~ THEN REPLY @14 GOTO 23
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @23 GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @24
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @25
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY @26
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 13
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~~ THEN REPLY @30 GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @31
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @32
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",2)
SetGlobal("Talkfinished","LOCALS",2)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2
  SAY @33
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.1
  SAY @34 /* #72087 */
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @35 GOTO 17
  IF ~CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @35 GOTO 18
  IF ~~ THEN REPLY @36 GOTO 19
  IF ~~ THEN REPLY @37 GOTO 20
  IF ~~ THEN REPLY @38 GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 28
  IF ~~ THEN REPLY @42 GOTO 29
  IF ~~ THEN REPLY @43 GOTO 28
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY @44
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.3
  SAY @45
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @46
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",2)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.4
  SAY @47
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.2
  SAY @48
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 4.1
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 26
  IF ~~ THEN REPLY @51 GOTO 30
  IF ~CheckStatGT(LastTalkedToBy,11,INT)~ THEN REPLY @52 GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.2
  SAY @53
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.0 4.2
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 31
  IF ~CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @56 GOTO 32
  IF ~CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY @57 GOTO 33
  IF ~~ THEN REPLY @58 GOTO 35
  IF ~~ THEN REPLY @59 GOTO 36
END

IF ~~ THEN BEGIN 27 // from: 4.3
  SAY @60
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 18.2 18.0
  SAY @61
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1
  SAY @62
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.1
  SAY @63
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.0
  SAY @64
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.1
  SAY @65
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.2
  SAY @66
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @67
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 26.3
  SAY @68
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 26.4
  SAY @69
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",1)
SetGlobal("BreVil5","GLOBAL",1)~ EXIT
END

IF ~Global("Talkfinished","LOCALS",1)
!Global("BreVil5","GLOBAL",3)
RandomNum(2,1)~ THEN BEGIN 37
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Talkfinished","LOCALS",1)
!Global("BreVil5","GLOBAL",3)
RandomNum(2,2)~ THEN BEGIN 38
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("Talkfinished","LOCALS",2)
!Global("BreVil5","GLOBAL",3)~ THEN BEGIN 39
  SAY @70
  IF ~~ THEN EXIT
END

IF ~Global("BreVil5","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",5)
GlobalGT("PeoplesMorale","GLOBAL",-6)~ THEN BEGIN 40
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("BreVil5","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",-5)~ THEN BEGIN 41
  SAY @71
  IF ~~ THEN EXIT
END

IF ~Global("BreVil5","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",10)
GlobalGT("PeoplesMorale","GLOBAL",4)~ THEN BEGIN 42
  SAY @72
  IF ~~ THEN EXIT
END

IF ~Global("BreVil5","GLOBAL",3)
GlobalGT("PeoplesMorale","GLOBAL",9)~ THEN BEGIN 43
  SAY @73
  IF ~~ THEN EXIT
END
