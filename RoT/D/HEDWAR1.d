BEGIN ~HEDWAR1~

IF ~!Global("LevGra","GLOBAL",2)
Global("tiallooki","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 DO ~SetGlobal("tiallooki","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("tiallooki","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @9 DO ~SetGlobal("tiallooki","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 DO ~SetGlobal("tiallooki","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @13
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @4
  IF ~~ THEN REPLY @8 DO ~SetGlobal("tiallooki","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @9 DO ~SetGlobal("tiallooki","LOCALS",2)~ EXIT
END

IF ~!Global("LevGra","GLOBAL",2)
Global("tiallooki","LOCALS",1)~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN EXIT
END

IF ~!Global("LevGra","GLOBAL",2)
Global("tiallooki","LOCALS",2)~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN EXIT
END

IF ~Global("LevGra","GLOBAL",2)~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN REPLY @17 DO ~SetGlobal("LevGra","GLOBAL",3)~ GOTO 11
  IF ~~ THEN REPLY @18 EXIT
END

IF ~Global("LevGra","GLOBAL",3)~ THEN BEGIN 10
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY @20
  IF ~~ THEN EXIT
END
