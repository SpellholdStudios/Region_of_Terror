BEGIN ~JATTA~

IF ~Global("Clobsson","GLOBAL",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.0
  SAY @10
  IF ~~ THEN DO ~SetGlobal("Clobsson","GLOBAL",4)~ UNSOLVED_JOURNAL @567011 EXIT
END

IF ~!Global("Clobsson","GLOBAL",3)~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
