BEGIN ~ELEANA~

IF ~Global("Eleanquest","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 15
  IF ~~ THEN REPLY @3 GOTO 17
  IF ~~ THEN REPLY @4 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 22.0 21.0 19.0 17.0 15.0 0.0
  SAY @6
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 24.0 23.0 12.0 9.0 7.0 3.0
  SAY @12
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 11.0 4.0
  SAY @13
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",7)
EscapeArea()~ UNSOLVED_JOURNAL @568689 EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 4
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 23.1 7.1 3.2
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("Elepayhun","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @22 GOTO 10
  IF ~~ THEN REPLY @23 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @24
  IF ~CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~SetGlobal("Elepaytwohun","GLOBAL",1)~ GOTO 11
  IF ~CheckStatLT(LastTalkedToBy,17,CHR)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @25
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @26
  IF ~~ THEN REPLY @27 DO ~SetGlobal("Elepayhun","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @28 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1 9.2
  SAY @29
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",6)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.3
  SAY @29
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 2
  IF ~~ THEN REPLY @32 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @33
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 0.2
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 2
  IF ~~ THEN REPLY @36 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @37
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",2)~ EXIT
END

IF ~Global("Eleanquest","GLOBAL",1)~ THEN BEGIN 19
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 2
  IF ~~ THEN REPLY @40 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @41
  IF ~~ THEN DO ~SetGlobal("Eleanquest","GLOBAL",2)~ EXIT
END

IF ~Global("Eleanquest","GLOBAL",2)~ THEN BEGIN 21
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 2
  IF ~~ THEN REPLY @44 EXIT
END

IF ~Global("Eleanquest","GLOBAL",3)~ THEN BEGIN 22
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 2
  IF ~~ THEN REPLY @47 EXIT
END

IF ~Global("Eleanquest","GLOBAL",4)~ THEN BEGIN 23
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 4
  IF ~~ THEN REPLY @50 GOTO 9
  IF ~~ THEN REPLY @51 EXIT
END

IF ~Global("Eleanquest","GLOBAL",6)~ THEN BEGIN 24
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 4
  IF ~~ THEN REPLY @54 EXIT
END
