BEGIN ~MIRLANDA~

IF ~LevelLT(Player1,15)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("AskAboot","RR3102",1)~ EXIT
END

IF ~LevelGT(Player1,14)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~Global("AskAboot","RR3102",1)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN DO ~StartStore("Arlax6",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @6
  IF ~~ THEN REPLY @7 DO ~StartStore("Arlax6",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @9
  IF ~~ THEN EXIT
END
