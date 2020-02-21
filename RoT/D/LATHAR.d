BEGIN ~LATHAR~ 2

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("temhelm",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~Global("ArlTemplQ","GLOBAL",0)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 DO ~StartStore("temhelm",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @7 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 6.1 3.1 1.1 0.3
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @12
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 6
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @16
  IF ~~ THEN REPLY @1 DO ~SetGlobal("ArlTemplQ","GLOBAL",1)
StartStore("temhelm",LastTalkedToBy())~ UNSOLVED_JOURNAL @576185 EXIT
  IF ~~ THEN REPLY @17 DO ~SetGlobal("ArlTemplQ","GLOBAL",1)~ UNSOLVED_JOURNAL @576185 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @18
  IF ~~ THEN EXIT
END
