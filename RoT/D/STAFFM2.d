// creator  : weidu.exe (version 189)
// argument : STAFFM2.DLG
// game     : .
// source   : ./override/STAFFM2.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~STAFFM2~

IF ~~ THEN BEGIN 1 // from: 32.0 21.0 20.0 19.0 18.0 17.0 16.0 15.0 14.0 13.0 12.0 0.0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Startmd","GLOBAL",0)~ THEN BEGIN 8
  SAY @1
  IF ~InParty("Aerie")
LevelGT("Aerie",14)~ THEN REPLY @2 GOTO 9
  IF ~InParty("Edwin")
LevelGT("Edwin",14)~ THEN REPLY @3 GOTO 10
  IF ~Class(Player1,MAGE_ALL)
LevelGT(Player1,14)~ THEN REPLY @4 GOTO 11
  IF ~InParty("Randall")
LevelGT("Randall",14)~ THEN REPLY @5 GOTO 33
  IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @7
  IF ~~ THEN EXTERN ~AERIEJ~ s219
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @8
  IF ~~ THEN EXTERN ~EDWINJ~ s188
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY @9
  IF ~~ THEN DO ~SetGlobal("Startmd","GLOBAL",1)
SetGlobal("FigPla","GLOBAL",1)~ EXIT
END

IF ~Global("Goodbed","GLOBAL",2)~ THEN BEGIN 22
  SAY @10
  IF ~~ THEN EXIT
END

IF ~Global("FigEdw","GLOBAL",16)~ THEN BEGIN 23
  SAY @11
  IF ~~ THEN REPLY @12 EXTERN ~EDWINJ~ s191
  IF ~~ THEN REPLY @13 EXTERN ~EDWINJ~ s190
END

IF ~Global("FigEdw","GLOBAL",17)~ THEN BEGIN 24
  SAY @14
  IF ~~ THEN EXIT
END

IF ~Global("Goodbar","GLOBAL",2)~ THEN BEGIN 25
  SAY @15
  IF ~~ THEN EXIT
END

IF ~Global("FigEdw","GLOBAL",16)~ THEN BEGIN 26
  SAY @16
  IF ~~ THEN REPLY @17 EXTERN ~AERIEJ~ s220
  IF ~~ THEN REPLY @18 EXTERN ~AERIEJ~ s220
  IF ~~ THEN REPLY @19 GOTO 28
END

IF ~Global("FigAer","GLOBAL",17)~ THEN BEGIN 27
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.2
  SAY @21
  IF ~~ THEN EXTERN ~AERIEJ~ s221
END

IF ~Global("FigPla","GLOBAL",16)~ THEN BEGIN 29
  SAY @22
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @23
  IF ~~ THEN DO ~SetGlobal("FigPla","GLOBAL",17)~ EXIT
END

IF ~Global("FigPla","GLOBAL",17)~ THEN BEGIN 31
  SAY @24
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from: 8.3
  SAY @8
  IF ~~ THEN EXTERN ~RANDALLJ~ 32
END

IF ~Global("FigRan","GLOBAL",17)~ THEN BEGIN 34
  SAY @25
  IF ~~ THEN EXIT
END

IF ~Global("FigRan","GLOBAL",16)~ THEN BEGIN 35
  SAY @26
  IF ~~ THEN REPLY @27 EXTERN ~RANDALLJ~ 33
  IF ~~ THEN REPLY @13 EXTERN ~RANDALLJ~ 34
END

IF ~Global("Goodbran","GLOBAL",2)~ THEN BEGIN 36
  SAY @28
  IF ~~ THEN EXIT
END
