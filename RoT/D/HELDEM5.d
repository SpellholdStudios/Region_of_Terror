BEGIN ~HELDEM5~

IF ~Global("DemonAttack","RA3750",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 DO ~SetGlobal("DemonAttack","RA3750",2)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 DO ~SetGlobal("DemonAttack","RA3750",2)~ EXIT
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @9
  IF ~~ THEN DO ~SetGlobal("DemonAttack","RA3750",2)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @10
  IF ~~ THEN DO ~SetGlobal("DemonAttack","RA3750",2)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 DO ~SetGlobal("DemonAttack","RA3750",2)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 6
  IF ~~ THEN REPLY @17 GOTO 7
  IF ~~ THEN REPLY @18 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @19
  IF ~~ THEN DO ~SetGlobal("DemonAttack","RA3750",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 5.1
  SAY @20
  IF ~~ THEN DO ~SetGlobal("DemonAttack","RA3750",2)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @21
  IF ~~ THEN DO ~SetGlobal("DemonAttack","RA3750",2)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.3
  SAY @22
  IF ~~ THEN DO ~SetGlobal("DemonAttack","RA3750",2)~ EXIT
END

IF ~Global("DemonAttack","RA3750",1)~ THEN BEGIN 10
  SAY @23
  IF ~~ THEN EXIT
END
