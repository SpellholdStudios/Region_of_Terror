BEGIN ~CULTBE21~

IF ~Global("BeastCultMembership","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",1)~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)
Global("flkmdflkjlk","LOCALS",0)~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @16
  IF ~~ THEN DO ~SetGlobal("flkmdflkjlk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 6.1
  SAY @17
  IF ~~ THEN DO ~SetGlobal("flkmdflkjlk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @18
  IF ~~ THEN DO ~SetGlobal("flkmdflkjlk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2
  SAY @19
  IF ~~ THEN DO ~SetGlobal("flkmdflkjlk","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.3
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @23
  IF ~~ THEN DO ~SetGlobal("flkmdflkjlk","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @24
  IF ~~ THEN DO ~SetGlobal("flkmdflkjlk","LOCALS",4)~ EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)
Global("flkmdflkjlk","LOCALS",1)~ THEN BEGIN 14
  SAY @25
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)
Global("flkmdflkjlk","LOCALS",2)~ THEN BEGIN 15
  SAY @26
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)
Global("flkmdflkjlk","LOCALS",3)~ THEN BEGIN 16
  SAY @27
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)
Global("flkmdflkjlk","LOCALS",4)~ THEN BEGIN 17
  SAY @28
  IF ~~ THEN EXIT
END
