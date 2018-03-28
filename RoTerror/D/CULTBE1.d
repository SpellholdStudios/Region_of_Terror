BEGIN ~CULTBE1~

IF ~NumTimesTalkedTo(0)
!Global("Matthewdialogc","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 DO ~SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 DO ~SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 7
  IF ~~ THEN REPLY @15 DO ~SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @16
  IF ~~ THEN DO ~SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 0.1
  SAY @17
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 7
  IF ~~ THEN REPLY @15 DO ~SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 3.0
  SAY @18
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @19 GOTO 7
  IF ~~ THEN REPLY @20 DO ~SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.0 5.2 5.1 3.2 3.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 8
  IF ~~ THEN REPLY @23 GOTO 8
  IF ~~ THEN REPLY @24 GOTO 10
  IF ~~ THEN REPLY @25 DO ~SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 11.1 11.0 10.1 10.0 7.1 7.0
  SAY @26
  IF ~~ THEN REPLY @27 UNSOLVED_JOURNAL @574058 EXIT
  IF ~~ THEN REPLY @28 GOTO 9
  IF ~~ THEN REPLY @29 DO ~SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @30
  IF ~~ THEN REPLY @27 UNSOLVED_JOURNAL @574058 EXIT
  IF ~~ THEN REPLY @31 DO ~SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @32
  IF ~~ THEN REPLY @22 GOTO 8
  IF ~~ THEN REPLY @23 GOTO 8
  IF ~~ THEN REPLY @33 GOTO 11
  IF ~~ THEN REPLY @25 DO ~SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.2
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 8
  IF ~~ THEN REPLY @23 GOTO 8
  IF ~~ THEN REPLY @25 DO ~SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
!Global("Matthewdialogc","GLOBAL",1)~ THEN BEGIN 12
  SAY @36
  IF ~~ THEN EXIT
END

IF ~Global("Matthewdialogc","GLOBAL",1)~ THEN BEGIN 13
  SAY @37
  IF ~~ THEN EXIT
END
