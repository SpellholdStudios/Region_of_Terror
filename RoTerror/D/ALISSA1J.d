BEGIN ~ALISSA1J~

IF ~~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXTERN ~CADDERLY~ 35
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXTERN ~CADDERLY~ 36
END

IF ~Global("asdfdf","LOCALS",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN DO ~SetGlobal("asdfdf","LOCALS",2)
SetGlobal("AlissaQuest","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @574338 EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXTERN ~CADDER3~ 32
END

IF ~Global("Justalittle","RA3707",2)~ THEN BEGIN 6
  SAY @2
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @3
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Justalittle","RA3707",3)
SetGlobal("AlissaQuest","GLOBAL",5)
SetGlobal("CQuestActive","GLOBAL",9)
JoinParty()
SaveGame(0)~ UNSOLVED_JOURNAL @574338 EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @6
  IF ~~ THEN EXTERN ~DOGHMA~ s18
END

IF ~~ THEN BEGIN 10 // from:
  SAY @7
  IF ~~ THEN EXTERN ~DOGHMA~ s19
END

IF ~~ THEN BEGIN 11 // from:
  SAY @8
  IF ~~ THEN EXTERN ~DOGHMA~ s20
END

IF ~~ THEN BEGIN 12 // from:
  SAY @9
  IF ~~ THEN EXTERN ~DOGHMA~ s21
END

IF ~~ THEN BEGIN 13 // from:
  SAY @10
  IF ~~ THEN EXTERN ~DOGHMA~ s22
END

IF ~~ THEN BEGIN 14 // from:
  SAY @11
  IF ~~ THEN EXTERN ~DOGHMA~ s23
END

IF ~~ THEN BEGIN 15 // from:
  SAY @12
  IF ~~ THEN EXTERN ~DOGHMA~ s24
END
