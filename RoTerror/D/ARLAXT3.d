BEGIN ~ARLAXT3~

IF ~Global("dkjfdfklj","AR0406",3)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("dkjfdfklj","AR0406",4)
EscapeArea()~ UNSOLVED_JOURNAL @569174 EXIT
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @7
  IF ~~ THEN DO ~SetGlobal("dkjfdfklj","AR0406",4)
Enemy()~ UNSOLVED_JOURNAL @569174 EXIT
END
