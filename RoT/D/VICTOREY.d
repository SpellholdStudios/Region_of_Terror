BEGIN ~VICTOREY~

IF ~Global("MMHDialog","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 11
  IF ~~ THEN REPLY @3 GOTO 18
  IF ~~ THEN REPLY @4 GOTO 25
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 10.3 7.3 6.3 1.3
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 0
  IF ~~ THEN REPLY @13 EXIT
END

IF ~~ THEN BEGIN 3 // from: 10.0 7.0 6.0 1.0
  SAY @14
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @15
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @16
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @17
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 10.1 7.1 6.1 1.1
  SAY @19
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 10.2 7.2 6.2 1.2
  SAY @20
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @21
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @22
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 0.1
  SAY @23
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @24
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @25
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @26
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @27
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @28
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 0
  IF ~~ THEN REPLY @13 EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.2
  SAY @31
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @32
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @33
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @34
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @35
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @36
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 0
  IF ~~ THEN REPLY @13 EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.3
  SAY @37
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 0
  IF ~~ THEN REPLY @13 EXIT
END
