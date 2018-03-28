BEGIN ~CULTBE13~

IF ~Global("BeastCultMembership","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)
Global("ljkalkfd","LOCALS",0)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0 3.1
  SAY @11
  IF ~~ THEN DO ~SetGlobal("ljkalkfd","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 3.2
  SAY @12
  IF ~~ THEN DO ~SetGlobal("ljkalkfd","LOCALS",2)~ EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)
Global("ljkalkfd","LOCALS",2)~ THEN BEGIN 7
  SAY @13
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)
Global("ljkalkfd","LOCALS",1)~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN EXIT
END
