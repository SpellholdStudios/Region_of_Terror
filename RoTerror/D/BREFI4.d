BEGIN ~BREFI4~

IF ~!Global("Changepeodialogs","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Changepeodialogs","GLOBAL",2)
Global("Talkfinished","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~CheckStatGT(LastTalkedToBy,17,INT)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~RandomNum(2,1)~ THEN REPLY @5 GOTO 3
  IF ~RandomNum(2,2)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",2)
SetGlobal("Talkfinished","LOCALS",1)~ GOTO 6
  IF ~~ THEN REPLY @9 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",2)
SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @7
  IF ~~ THEN REPLY @8 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)~ GOTO 6
  IF ~~ THEN REPLY @9 DO ~IncrementGlobal("PeoplesMorale","GLOBAL",1)
SetGlobal("Talkfinished","LOCALS",1)~ EXIT
END

IF ~Global("Talkfinished","LOCALS",1)~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 3.0
  SAY @11
  IF ~~ THEN EXIT
END
