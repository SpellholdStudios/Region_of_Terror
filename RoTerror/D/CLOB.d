BEGIN ~CLOB~

IF ~Global("Clobsson","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 8
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 8.0 2.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 6.0 3.0
  SAY @10
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("Clobsson","GLOBAL",2)~ UNSOLVED_JOURNAL @567005 EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 4
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 3.2
  SAY @15
  IF ~~ THEN DO ~SetGlobal("Clobsson","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY @16
  IF ~~ THEN GOTO 3
END

IF ~!Global("Clobsson","GLOBAL",0)
!Global("Clobsson","GLOBAL",8)~ THEN BEGIN 9
  SAY @17
  IF ~~ THEN EXIT
END

IF ~Global("Clobsson","GLOBAL",8)~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN EXIT
END

