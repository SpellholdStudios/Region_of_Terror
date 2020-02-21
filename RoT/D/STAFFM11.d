BEGIN ~STAFFM11~

IF ~Global("FigEdw","GLOBAL",3)
!Global("DedEdw","GLOBAL",2)
!Global("DedEdw","GLOBAL",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("FigEdw","GLOBAL",4)~ EXIT
END

IF ~Global("FigEdw","GLOBAL",4)
!Global("DedEdw","GLOBAL",2)
!Global("DedEdw","GLOBAL",3)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("FigEdw","GLOBAL",5)
!Global("DedEdw","GLOBAL",2)
!Global("DedEdw","GLOBAL",3)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("FigEdw","GLOBAL",6)~ EXIT
END

IF ~Global("DedEdw","GLOBAL",2)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN DO ~SetGlobal("DedEdw","GLOBAL",3)~ EXIT
END

IF ~Global("DedEdw","GLOBAL",3)
Global("Goodbed","GLOBAL",0)~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("Goodbed","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @9 EXIT
END

IF ~Global("FigEdw","GLOBAL",13)~ THEN BEGIN 8
  SAY @10
  IF ~~ THEN EXTERN ~EDWINJ~ s189
END

IF ~~ THEN BEGIN 9 // from:
  SAY @11
  IF ~~ THEN DO ~GiveItemCreate("ChampSc",LastTalkedToBy,0,0,0)~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @12
  IF ~~ THEN DO ~GiveItemCreate("SCRX34",LastTalkedToBy,0,0,0)
GiveItemCreate("Ultima",LastTalkedToBy,0,0,0)
GiveItemCreate("SCRL9P",LastTalkedToBy,0,0,0)
GiveItemCreate("GoldenCl",LastTalkedToBy,0,0,0)~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @13
  IF ~~ THEN DO ~GiveItemCreate("Bracwc",LastTalkedToBy,0,0,0)
GiveItemCreate("STAF12",LastTalkedToBy,0,0,0)~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @14
  IF ~~ THEN DO ~SetGlobal("FigEdw","GLOBAL",14)~ EXIT
END

IF ~Global("FigAer","GLOBAL",3)
!Global("DedAer","GLOBAL",2)
!Global("DedAer","GLOBAL",3)~ THEN BEGIN 13
  SAY @15
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @1
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("FigAer","GLOBAL",4)~ EXIT
END

IF ~Global("FigAer","GLOBAL",4)
!Global("DedAer","GLOBAL",2)
!Global("DedAer","GLOBAL",3)~ THEN BEGIN 16
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("FigAer","GLOBAL",5)
!Global("DedAer","GLOBAL",2)
!Global("DedAer","GLOBAL",3)~ THEN BEGIN 17
  SAY @4
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("FigAer","GLOBAL",6)~ EXIT
END

IF ~Global("DedAr","GLOBAL",2)~ THEN BEGIN 19
  SAY @6
  IF ~~ THEN DO ~SetGlobal("DedAr","GLOBAL",3)~ EXIT
END

IF ~Global("DedAr","GLOBAL",3)
Global("Goodbar","GLOBAL",0)~ THEN BEGIN 20
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("Goodbar","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @9 EXIT
END

IF ~Global("FigAer","GLOBAL",13)~ THEN BEGIN 21
  SAY @10
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @11
  IF ~~ THEN DO ~GiveItemCreate("ChampSc",LastTalkedToBy,0,0,0)~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @12
  IF ~~ THEN DO ~GiveItemCreate("SCRX34",LastTalkedToBy,0,0,0)
GiveItemCreate("Ultima",LastTalkedToBy,0,0,0)
GiveItemCreate("SCRL9P",LastTalkedToBy,0,0,0)
GiveItemCreate("GoldenCl",LastTalkedToBy,0,0,0)~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @13
  IF ~~ THEN DO ~GiveItemCreate("Bracwc",LastTalkedToBy,0,0,0)
GiveItemCreate("STAF12",LastTalkedToBy,0,0,0)~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @14
  IF ~~ THEN DO ~SetGlobal("FigAer","GLOBAL",14)~ EXIT
END

IF ~Global("FigPla","GLOBAL",3)~ THEN BEGIN 26
  SAY @16
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @1
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("FigPla","GLOBAL",4)~ EXIT
END

IF ~Global("FigPla","GLOBAL",4)~ THEN BEGIN 29
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("FigPla","GLOBAL",5)~ THEN BEGIN 30
  SAY @4
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("FigPla","GLOBAL",6)~ EXIT
END

IF ~Global("FigPla","GLOBAL",13)~ THEN BEGIN 32
  SAY @10
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @11
  IF ~~ THEN DO ~GiveItemCreate("ChampSc",LastTalkedToBy,0,0,0)~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @12
  IF ~~ THEN DO ~GiveItemCreate("SCRX34",LastTalkedToBy,0,0,0)
GiveItemCreate("Ultima",LastTalkedToBy,0,0,0)
GiveItemCreate("SCRL9P",LastTalkedToBy,0,0,0)
GiveItemCreate("GoldenCl",LastTalkedToBy,0,0,0)~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @13
  IF ~~ THEN DO ~GiveItemCreate("Bracwc",LastTalkedToBy,0,0,0)
GiveItemCreate("STAF12",LastTalkedToBy,0,0,0)~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @14
  IF ~~ THEN DO ~SetGlobal("FigPla","GLOBAL",14)~ EXIT
END

IF ~Global("FigRan","GLOBAL",3)
!Global("DedRan","GLOBAL",2)
!Global("DedRan","GLOBAL",3)~ THEN BEGIN 37
  SAY @17
  IF ~~ THEN GOTO 44
END

IF ~Global("FigRan","GLOBAL",4)
!Global("DedRan","GLOBAL",2)
!Global("DedRan","GLOBAL",3)~ THEN BEGIN 38
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("FigRan","GLOBAL",5)
!Global("DedRan","GLOBAL",2)
!Global("DedRan","GLOBAL",3)~ THEN BEGIN 39
  SAY @4
  IF ~~ THEN GOTO 46
END

IF ~Global("DedRan","GLOBAL",2)~ THEN BEGIN 40
  SAY @6
  IF ~~ THEN DO ~SetGlobal("DedRan","GLOBAL",3)~ EXIT
END

IF ~Global("DedRan","GLOBAL",3)
Global("Goodbran","GLOBAL",0)~ THEN BEGIN 41
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("Goodbran","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @9 EXIT
END

IF ~Global("FigRan","GLOBAL",13)~ THEN BEGIN 42
  SAY @10
  IF ~~ THEN EXTERN ~RANDALLJ~ 31
END

IF ~~ THEN BEGIN 43 // from:
  SAY @11
  IF ~~ THEN DO ~GiveItemCreate("ChampSc",LastTalkedToBy,0,0,0)~ GOTO 47
END

IF ~~ THEN BEGIN 44 // from: 37.0
  SAY @1
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("FigRan","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 39.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("FigRan","GLOBAL",6)~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 43.0
  SAY @12
  IF ~~ THEN DO ~GiveItemCreate("SCRX34",LastTalkedToBy,0,0,0)
GiveItemCreate("Ultima",LastTalkedToBy,0,0,0)
GiveItemCreate("SCRL9P",LastTalkedToBy,0,0,0)
GiveItemCreate("GoldenCl",LastTalkedToBy,0,0,0)~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @13
  IF ~~ THEN DO ~GiveItemCreate("Bracwc",LastTalkedToBy,0,0,0)
GiveItemCreate("STAF12",LastTalkedToBy,0,0,0)~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @14
  IF ~~ THEN DO ~SetGlobal("FigRan","GLOBAL",14)~ EXIT
END
