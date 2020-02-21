BEGIN ~BREVIL12~

IF ~!Global("Changepeodialogs","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("Talkfinished","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 3.0 1.0
  SAY @6
  IF ~~ THEN REPLY @4 DO ~SetGlobal("Talkfinished","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 EXIT
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.2 2.1 1.3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-5)
Enemy()~ EXIT
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @14
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-1)
SetGlobal("Talkfinished","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @15
  IF ~~ THEN DO ~IncrementGlobal("PeoplesMorale","GLOBAL",-2)
SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY @16
  IF ~~ THEN DO ~SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~Global("Talkfinished","LOCALS",1)~ THEN BEGIN 8
  SAY @17
  IF ~~ THEN EXIT
END

IF ~Global("Talkfinished","LOCALS",2)~ THEN BEGIN 9
  SAY @18
  IF ~~ THEN EXIT
END
