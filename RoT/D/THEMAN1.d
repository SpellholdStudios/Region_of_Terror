BEGIN ~THEMAN1~

IF ~Global("sdjagdsa","LOCALS",0)
!Global("Burthif","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Burthif","GLOBAL",5)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Burthif","GLOBAL",6)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("Burthif","GLOBAL",6)
Enemy()~ EXIT
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @7
  IF ~~ THEN DO ~SetGlobal("Burthif","GLOBAL",6)
Enemy()~ EXIT
END
