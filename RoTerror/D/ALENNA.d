BEGIN ~ALENNA~

IF ~Global("Marscr","RR3451",1)
!Dead("Eranda3")~ THEN BEGIN 0
  SAY @0
  IF ~Global("Marscr","RR3451",1)~ THEN REPLY @1 GOTO 1
  IF ~Global("Marscr","RR3451",1)~ THEN REPLY @2 GOTO 12
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Alenn","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 14.0 12.0 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 9.0 1.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 4
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 5
  IF ~~ THEN REPLY @16 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @17
  IF ~~ THEN REPLY @18 DO ~SetGlobal("Alenn","LOCALS",3)
SetGlobal("3Alen","RR3451",1)
SetGlobal("Marscr","RR3451",2)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Alenn","LOCALS",3)
SetGlobal("3Alen","RR3451",1)
SetGlobal("Marscr","RR3451",2)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Alenn","LOCALS",3)
SetGlobal("3Alen","RR3451",1)
SetGlobal("Marscr","RR3451",2)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Alenn","LOCALS",3)
SetGlobal("3Alen","RR3451",1)
SetGlobal("Marscr","RR3451",2)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY @22
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @23 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @24
  IF ~~ THEN DO ~SetGlobal("Alenn","LOCALS",3)
SetGlobal("3Alen","RR3451",1)
SetGlobal("Marscr","RR3451",2)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY @25
  IF ~~ THEN DO ~SetGlobal("Alenn","LOCALS",3)
SetGlobal("3Alen","RR3451",1)
SetGlobal("Marscr","RR3451",2)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 14.1 0.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 1
  IF ~~ THEN REPLY @28 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @29
  IF ~~ THEN DO ~SetGlobal("Alenn","LOCALS",1)~ EXIT
END

IF ~Global("Marscr","RR3451",1)
Global("Alenn","LOCALS",1)
!Dead("Eranda3")~ THEN BEGIN 14
  SAY @0
  IF ~Global("Marscr","RR3451",1)~ THEN REPLY @1 GOTO 1
  IF ~Global("Marscr","RR3451",1)~ THEN REPLY @2 GOTO 12
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Alenn","LOCALS",1)~ EXIT
END

IF ~Global("3Mela","RR3451",1)
!Dead("Eranda3")~ THEN BEGIN 15
  SAY @0
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 17
END

IF ~Global("Fuck","RR3451",1)
!Dead("Eranda3")~ THEN BEGIN 16
  SAY @0
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @3 DO ~SetGlobal("2Alen","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 19.1 19.0 16.1 16.0 15.1 15.0
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @34
  IF ~~ THEN DO ~SetGlobal("4Alenn","RR3451",1)
SetGlobal("Alenn","LOCALS",3)
SetGlobal("3Mela","RR3451",2)~ EXIT
END

IF ~Global("Fuck","RR3451",1)
!Dead("Eranda3")~ THEN BEGIN 19
  SAY @0
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 17
END

IF ~Global("Alenn","LOCALS",3)
!Dead("Eranda3")~ THEN BEGIN 20
  SAY @35
  IF ~Global("Afcudlg","RR3451",1)~ THEN REPLY @36 GOTO 23
  IF ~!Global("Afcudlg","RR3451",1)~ THEN EXIT
END

IF ~Global("Alenn","LOCALS",2)
!Dead("Eranda3")~ THEN BEGIN 21
  SAY @37
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY @38
  IF ~~ THEN REPLY @39 EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.0
  SAY @40
  IF ~~ THEN DO ~SetGlobal("Afcudlg","RR3451",2)
SetGlobal("Thecudlg","RR3451",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: ~MELAN~ 21
  SAY @41
  IF ~~ THEN REPLY @42 DO ~SetGlobal("AcutMel","RR3451",2)
SetGlobal("Alenn","LOCALS",4)~ EXIT        //extra changes by Sandman(SHS)
  IF ~~ THEN REPLY @43 DO ~SetGlobal("AcutMel","RR3451",2)
SetGlobal("Alenn","LOCALS",4)~ EXIT        //extra changes by Sandman(SHS)
END

IF ~Global("AcutMel","RR3451",2)
!Global("Ezmiz","RR3451",1)               //extra changes by Sandman(SHS)
!Dead("Eranda3")~ THEN BEGIN 25
  SAY @44
  IF ~~ THEN EXIT
END

IF ~Global("Ezmiz","RR3451",1)
!Dead("Eranda3")~ THEN BEGIN 26
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 27
  IF ~~ THEN REPLY @47 DO ~SetGlobal("Ezmiz","RR3451",2)~ EXIT     //extra changes by Sandman(SHS)
//  IF ~~ THEN REPLY @47 DO ~SetGlobal("Ezmiz","RR3451",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Ezmiz","RR3451",2)~ EXIT     //extra changes by Sandman(SHS)
//  IF ~~ THEN DO ~SetGlobal("RR3451","LOCALS",1)~ EXIT
END

IF ~Dead("Eranda3")~ THEN BEGIN 28
  SAY @49
  IF ~~ THEN EXIT
END
