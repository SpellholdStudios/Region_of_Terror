BEGIN ~AMERCH1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN 1 // from: 6.0 0.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 EXIT
END

IF ~~ THEN BEGIN 2 // from: 8.0 1.0
  SAY @8
  IF ~~ THEN DO ~StartStore("Arlax1",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.0 0.1
  SAY @8
  IF ~~ THEN DO ~StartStore("Arlax1",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN REPLY @14 DO ~StartStore("Arlax1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 2
  IF ~~ THEN REPLY @19 EXIT
END
