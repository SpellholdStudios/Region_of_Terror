BEGIN ~SPESELCA~

IF ~NumTimesTalkedTo(0)
!Dead("Eranda3")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN DO ~StartStore("SpeSelCa",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
!Dead("Eranda3")~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN DO ~StartStore("SpeSelCa",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @9
  IF ~~ THEN EXIT
END

IF ~Dead("Eranda3")~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN REPLY @11 DO ~StartStore("SpeSelCa",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @12 EXIT
END
