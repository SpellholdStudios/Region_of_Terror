BEGIN ~FRMR1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~~ THEN REPLY @8 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @9
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @10
  IF ~~ THEN DO ~SetGlobal("Sencav","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY @11
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
