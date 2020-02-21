BEGIN ~EQUSELCA~

IF ~NumTimesTalkedTo(0)
Global("Cantto","RR3451",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.0
  SAY @4
  IF ~~ THEN DO ~StartStore("EquSelCa",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 1
  IF ~~ THEN REPLY @7 EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("Cantto","RR3451",1)~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @13
  IF ~~ THEN DO ~StartStore("EquSelCa",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @13
  IF ~~ THEN DO ~StartStore("EquSelCa",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @17
  IF ~~ THEN EXIT
END
