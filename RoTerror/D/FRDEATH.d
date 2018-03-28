BEGIN ~FRDEATH~

IF ~~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1  EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("Esathquest","GLOBAL",5)
Enemy()~ EXIT
END
