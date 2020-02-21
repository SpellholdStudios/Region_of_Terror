BEGIN ~BRYNE~

IF ~Global("Brynebattle","RA4701",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Brynebattle","RA4701",1)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.0 2.0 0.0
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Brynebattle","RA4701",3)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 1
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 DO ~SetGlobal("Brynebattle","RA4701",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Brynebattle","RA4701",1)~ EXIT
END

