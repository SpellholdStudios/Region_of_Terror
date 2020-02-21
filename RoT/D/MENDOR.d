BEGIN ~MENDOR~

IF ~Global("Clobsson","GLOBAL",4)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1 0.0
  SAY @4
  IF ~CheckStatGT(LastTalkedToBy,17,INT)~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 10
  IF ~~ THEN REPLY @7 GOTO 10
  IF ~~ THEN REPLY @8 DO ~SetGlobal("Clobsson","GLOBAL",5)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @12
  IF ~LevelGT(Player1,16)~ THEN GOTO 4
  IF ~LevelLT(Player1,17)~ THEN GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @13
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @14
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @15
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 12.0 6.0
  SAY @16
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @17
  IF ~~ THEN DO ~SetGlobal("Clobsson","GLOBAL",5)
RevealAreaOnMap("RR0044")
EscapeArea()~ UNSOLVED_JOURNAL @567010 EXIT
END

IF ~~ THEN BEGIN 9 // from: 10.1 3.1
  SAY @18
  IF ~~ THEN DO ~SetGlobal("Clobsson","GLOBAL",5)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.2 1.1
  SAY @12
  IF ~LevelGT(Player1,17)~ THEN GOTO 11
  IF ~LevelLT(Player1,17)~ THEN GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1 11.0
  SAY @22
  IF ~~ THEN GOTO 7
END
