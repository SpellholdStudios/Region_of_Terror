BEGIN ~POTSELCA~

IF ~NumTimesTalkedTo(0)
!Dead("Eranda3")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~NumTimesTalkedToGT(0)
!Dead("Eranda3")~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @6
  IF ~~ THEN DO ~StartStore("PotSelCa",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY @6
  IF ~~ THEN DO ~StartStore("PotSelCa",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Dead("Eranda3")~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN REPLY @4 DO ~StartStore("PotSelCa",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @10 EXIT
END
