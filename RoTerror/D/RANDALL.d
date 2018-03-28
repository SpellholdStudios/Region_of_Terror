BEGIN ~RANDALL~

IF ~Global("RandallJoin","GLOBAL",0)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 23
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 23.0 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~~ THEN REPLY @2 GOTO 21
  IF ~~ THEN REPLY @7 GOTO 12
END

IF ~~ THEN BEGIN 2 // from: 24.0 21.0 12.0 1.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 13
  IF ~~ THEN REPLY @11 GOTO 4
  IF ~~ THEN REPLY @12 GOTO 14
END

IF ~~ THEN BEGIN 3 // from: 26.0 13.0 2.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 4
  IF ~~ THEN REPLY @15 DO ~SetGlobal("RandallJoin","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 26.2 25.0 19.1 19.0 18.1 18.0 16.1 16.0 15.1 15.0 13.1 11.3 3.0 2.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 5
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @19 GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 6
  IF ~~ THEN REPLY @22 GOTO 8
  IF ~~ THEN REPLY @23 DO ~SetGlobal("RandallJoin","GLOBAL",4)
SetGlobal("RandallJoinedOnce","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 10.0 9.0 5.0
  SAY @24
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @25 GOTO 7
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @26 GOTO 7
  IF ~~ THEN REPLY @23 DO ~SetGlobal("RandallJoin","GLOBAL",4)
SetGlobal("RandallJoinedOnce","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.1 8.0 6.1 6.0
  SAY @27
  IF ~~ THEN DO ~SetGlobal("RandallJoin","GLOBAL",4)
SetGlobal("RandallJoinedOnce","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 10.1 9.1 5.1
  SAY @28
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @25 GOTO 7
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @26 GOTO 7
  IF ~~ THEN REPLY @23 DO ~SetGlobal("RandallJoin","GLOBAL",4)
SetGlobal("RandallJoinedOnce","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @29
  IF ~~ THEN REPLY @21 GOTO 6
  IF ~~ THEN REPLY @22 GOTO 8
  IF ~~ THEN REPLY @23 DO ~SetGlobal("RandallJoin","GLOBAL",4)
SetGlobal("RandallJoinedOnce","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @30
  IF ~~ THEN REPLY @21 GOTO 6
  IF ~~ THEN REPLY @22 GOTO 8
  IF ~~ THEN REPLY @23 DO ~SetGlobal("RandallJoin","GLOBAL",4)
SetGlobal("RandallJoinedOnce","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 24.1 21.1 12.1 1.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 15
  IF ~~ THEN REPLY @33 GOTO 15
  IF ~~ THEN REPLY @34 GOTO 19
  IF ~~ THEN REPLY @35 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 21.2 1.3
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 2
  IF ~~ THEN REPLY @38 GOTO 11
  IF ~~ THEN REPLY @39 GOTO 22
END

IF ~~ THEN BEGIN 13 // from: 26.1 2.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 2.3
  SAY @42
  IF ~~ THEN DO ~SetGlobal("RandallJoin","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 11.0
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 4
  IF ~~ THEN REPLY @45 GOTO 4
  IF ~~ THEN REPLY @46 GOTO 16
  IF ~~ THEN REPLY @47 GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.2
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 4
  IF ~~ THEN REPLY @50 GOTO 4
  IF ~~ THEN REPLY @51 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 18.2 16.2
  SAY @52
  IF ~~ THEN DO ~SetGlobal("RandallJoin","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY @53
  IF ~~ THEN REPLY @49 GOTO 4
  IF ~~ THEN REPLY @50 GOTO 4
  IF ~~ THEN REPLY @51 GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 11.2
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 4
  IF ~~ THEN REPLY @56 GOTO 4
  IF ~~ THEN REPLY @57 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.2
  SAY @58
  IF ~~ THEN DO ~SetGlobal("RandallJoin","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 1.2
  SAY @59
  IF ~~ THEN REPLY @37 GOTO 2
  IF ~~ THEN REPLY @60 GOTO 11
  IF ~~ THEN REPLY @7 GOTO 12
END

IF ~~ THEN BEGIN 22 // from: 12.2
  SAY @61
  IF ~~ THEN DO ~SetGlobal("RandallJoin","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 0.1
  SAY @59
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @57 EXIT
END

IF ~Global("RandallJoin","GLOBAL",1)~ THEN BEGIN 24
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 2
  IF ~~ THEN REPLY @64 GOTO 11
  IF ~~ THEN REPLY @65 EXIT
END

IF ~Global("RandallJoin","GLOBAL",2)~ THEN BEGIN 25
  SAY @62
  IF ~~ THEN REPLY @66 GOTO 4
  IF ~~ THEN REPLY @65 EXIT
END

IF ~Global("RandallJoin","GLOBAL",3)~ THEN BEGIN 26
  SAY @67
  IF ~~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 13
  IF ~~ THEN REPLY @11 GOTO 4
  IF ~~ THEN REPLY @65 EXIT
END
