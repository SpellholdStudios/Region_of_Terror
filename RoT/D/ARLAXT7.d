BEGIN ~ARLAXT7~

IF ~Global("sljdfja","RR3100",0)~ THEN BEGIN 0
  SAY @0
  IF ~Global("GuardCquest","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 3
  IF ~~ THEN REPLY @11 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @13
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
CheckStatGT(LastTalkedToBy,15,STR)~ THEN GOTO 4
  IF ~!CheckStatGT(LastTalkedToBy,15,CHR)
!CheckStatGT(LastTalkedToBy,15,STR)~ THEN GOTO 5
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
!CheckStatGT(LastTalkedToBy,15,STR)~ THEN GOTO 5
  IF ~!CheckStatGT(LastTalkedToBy,15,CHR)
CheckStatGT(LastTalkedToBy,15,STR)~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @14
  IF ~~ THEN REPLY @15 DO ~SetGlobal("GuardCquest","GLOBAL",2)~ UNSOLVED_JOURNAL @569173 EXIT
  IF ~~ THEN REPLY @16 DO ~SetGlobal("GuardCquest","GLOBAL",2)
Enemy()~ UNSOLVED_JOURNAL @569173 EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3 3.2 3.1
  SAY @17
  IF ~~ THEN REPLY @18 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3
  SAY @21
  IF ~~ THEN EXIT
END

IF ~Global("sljdfja","RR3100",1)~ THEN BEGIN 10
  SAY @22
  IF ~~ THEN REPLY @23 DO ~SetGlobal("GuardCquest","GLOBAL",2)
SetGlobal("sljdfja","RR3100",0)~ UNSOLVED_JOURNAL @569173 EXIT
  IF ~~ THEN REPLY @24 DO ~SetGlobal("GuardCquest","GLOBAL",2)
SetGlobal("sljdfja","RR3100",0)
Enemy()~ UNSOLVED_JOURNAL @569173 EXIT
END
