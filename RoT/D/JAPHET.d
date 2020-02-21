BEGIN ~JAPHET~

IF ~!Global("Kinquest","GLOBAL",5)
!Global("Kinquest","GLOBAL",6)
!Global("Kinquest","GLOBAL",7)
!Global("Kinquest","GLOBAL",8)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Kinquest","GLOBAL",5)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 6.0 2.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 DO ~SetGlobal("Kinquest","GLOBAL",7)~ UNSOLVED_JOURNAL @566785 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @9
  IF ~~ THEN DO ~SetGlobal("Kinquest","GLOBAL",6)
SetGlobal("rompeli","LOCALS",1)
GiveItemCreate("BoTapio",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @566784 EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @10
  IF ~~ THEN GOTO 3
END

IF ~Global("Tellhmth","GLOBAL",1)~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @14
  IF ~~ THEN DO ~SetGlobal("rompeli","LOCALS",1)
SetGlobal("Tellhmth","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @15
  IF ~~ THEN DO ~SetGlobal("rompeli","LOCALS",1)
SetGlobal("Tellhmth","GLOBAL",2)~ EXIT
END

IF ~Global("rompeli","LOCALS",1)
!Global("Tellhmth","GLOBAL",1)~ THEN BEGIN 10
  SAY @16
  IF ~~ THEN EXIT
END
