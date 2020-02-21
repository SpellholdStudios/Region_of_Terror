BEGIN ~MELAN~

IF ~Global("Marscr","RR3451",1)
!Dead("Eranda3")~ THEN BEGIN 0
  SAY @0
  IF ~Global("Marscr","RR3451",1)~ THEN REPLY @1 GOTO 1
  IF ~Global("Marscr","RR3451",1)~ THEN REPLY @2 GOTO 9
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Melan1","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 10.0 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 9.0 1.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 9.1 1.1
  SAY @10
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("3Mela","RR3451",1)
SetGlobal("Marscr","RR3451",2)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @15
  IF ~~ THEN REPLY @16 DO ~SetGlobal("3Mela","RR3451",1)
SetGlobal("Marscr","RR3451",2)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 8
  IF ~~ THEN REPLY @19 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.0
  SAY @20
  IF ~~ THEN DO ~SetGlobal("3Mela","RR3451",1)
SetGlobal("Marscr","RR3451",2)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 10.1 0.1
  SAY @21
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~Global("Marscr","RR3451",1)
Global("Melan1","LOCALS",1)
!Dead("Eranda3")~ THEN BEGIN 10
  SAY @0
  IF ~Global("Marscr","RR3451",1)~ THEN REPLY @1 GOTO 1
  IF ~Global("Marscr","RR3451",1)~ THEN REPLY @2 GOTO 9
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Melan1","LOCALS",1)~ EXIT
END

IF ~Global("3Alen","RR3451",1)
!Dead("Eranda3")~ THEN BEGIN 11
  SAY @0
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 20.0 17.0 11.0
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 16.1 16.0 12.1 12.0
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 14
  IF ~~ THEN REPLY @29 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @30
  IF ~~ THEN REPLY @29 GOTO 15
  IF ~~ THEN REPLY @31 GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.1 14.0 13.1
  SAY @32
  IF ~~ THEN REPLY @33 DO ~SetGlobal("3Alen","RR3451",2)
SetGlobal("Cutatcas","RR3451",1)~ EXIT
  IF ~~ THEN REPLY @34 DO ~SetGlobal("3Alen","RR3451",2)
SetGlobal("Cutatcas","RR3451",1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 20.1 17.1 11.1
  SAY @35
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 13
END

IF ~Global("Fuck","RR3451",1)
!Dead("Eranda3")~ THEN BEGIN 17
  SAY @0
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @36 DO ~SetGlobal("2Mela","LOCALS",1)~ EXIT
END

IF ~Global("4Alenn","RR3451",1)
!Dead("Eranda3")~ THEN BEGIN 18
  SAY @37
  IF ~~ THEN REPLY @38 EXIT
  IF ~Global("4Alenn","RR3451",1)~ THEN REPLY @39 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @40
  IF ~~ THEN DO ~SetGlobal("4Alenn","RR3451",2)
SetGlobal("Cutatcas","RR3451",1)~ EXIT
END

IF ~Global("Fuck","RR3451",1)
!Dead("Eranda3")~ THEN BEGIN 20
  SAY @0
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~Global("AcutMel","RR3451",1)
!Dead("Eranda3")~ THEN BEGIN 21
  SAY @41
  IF ~~ THEN REPLY @42 DO ~GiveItemCreate("MaraScrl",LastTalkedToBy,0,0,0)~ EXTERN ~ALENNA~ 24
  IF ~~ THEN REPLY @43 DO ~GiveItemCreate("MaraScrl",LastTalkedToBy,0,0,0)~ EXTERN ~ALENNA~ 24
END

IF ~Global("AcutMel","RR3451",2)
!Dead("Eranda3")~ THEN BEGIN 22
  SAY @44
  IF ~~ THEN EXIT
END

IF ~Dead("Eranda3")~ THEN BEGIN 23
  SAY @45
  IF ~~ THEN EXIT
END
