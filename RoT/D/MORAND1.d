BEGIN ~MORAND1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 17.0 7.0 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 9.0 4.0
  SAY @13
  IF ~~ THEN DO ~SetGlobal("Morand3","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 9.1 8.1 4.1 3.2
  SAY @14
  IF ~~ THEN DO ~SetGlobal("Morand1","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY @15
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @16 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @19 GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @10
  IF ~~ THEN REPLY @20 GOTO 5
  IF ~~ THEN REPLY @21 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 7.1 0.1
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Morand2","LOCALS",1)~ EXIT
END

IF ~Global("Morand1","LOCALS",1)~ THEN BEGIN 11
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @26
  IF ~~ THEN REPLY @27 DO ~SetGlobal("Morand3","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @28 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @29
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @30
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @31
  IF ~~ THEN DO ~SetGlobal("Morand3","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY @32
  IF ~~ THEN DO ~SetGlobal("Morand1","LOCALS",1)~ EXIT
END

IF ~Global("Morand2","LOCALS",1)~ THEN BEGIN 17
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 1
  IF ~~ THEN REPLY @35 DO ~SetGlobal("Morand2","LOCALS",1)~ EXIT
END

IF ~Global("Morand3","LOCALS",1)~ THEN BEGIN 18
  SAY @36
  IF ~!Dead("DeLich1")~ THEN REPLY @37 GOTO 19
  IF ~!Dead("DeLich1")~ THEN REPLY @38 GOTO 20
  IF ~Dead("DeLich1")~ THEN REPLY @39 GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @40
  IF ~~ THEN DO ~SetGlobal("Morand3","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @41
  IF ~~ THEN DO ~SetGlobal("Morand3","LOCALS",2)~ EXIT
END

IF ~Global("Morand3","LOCALS",2)~ THEN BEGIN 21
  SAY @42
  IF ~~ THEN DO ~SetGlobal("Morand3","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.2
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 23
  IF ~~ THEN REPLY @45 GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 22.1
  SAY @48
  IF ~~ THEN REPLY @49 DO ~AddExperienceParty(25000)~ GOTO 27
  IF ~~ THEN REPLY @50 DO ~AddExperienceParty(25000)~ GOTO 27
END

IF ~~ THEN BEGIN 25 // from:
  SAY @51
  IF ~~ THEN EXIT
END

IF ~Global("Morand3","LOCALS",4)~ THEN BEGIN 26
  SAY @52
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1 24.0
  SAY @53
  IF ~~ THEN DO ~SetGlobal("Mora2","RR3110",1)
EscapeArea()~ EXIT
END
