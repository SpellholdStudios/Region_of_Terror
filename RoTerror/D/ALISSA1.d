BEGIN ~ALISSA1~

IF ~Global("AlissaQuest","GLOBAL",0)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 10
  IF ~Gender(Player1,MALE)~ THEN REPLY @3 GOTO 13
  IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~~ THEN REPLY @8 GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 16.0 12.0 1.1 1.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @12
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @15 GOTO 5
  IF ~~ THEN REPLY @16 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 17.0 4.1 4.0
  SAY @17
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @18 GOTO 6
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @19 GOTO 7
  IF ~~ THEN REPLY @20 DO ~SetGlobal("AlissaQuest","GLOBAL",4)
SetGlobal("AlissaJoinedOnce","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @574337 EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @21
  IF ~~ THEN REPLY @22 DO ~SetGlobal("AlissaQuest","GLOBAL",4)
SetGlobal("AlissaJoinedOnce","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @574337 EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @23
  IF ~~ THEN DO ~SetGlobal("AlissaQuest","GLOBAL",4)
SetGlobal("AlissaJoinedOnce","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @574337 EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @24
  IF ~~ THEN DO ~SetGlobal("AlissaQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 12.1 1.2
  SAY @25
  IF ~~ THEN DO ~SetGlobal("AlissaQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 11
  IF ~~ THEN REPLY @28 GOTO 12
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @30
  IF ~~ THEN DO ~SetGlobal("AlissaQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 15.0 10.1
  SAY @31
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @32 GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 0.2
  SAY @33
  IF ~~ THEN DO ~SetGlobal("AlissaQuest","GLOBAL",1)~ EXIT
END

IF ~Global("AlissaQuest","GLOBAL",1)~ THEN BEGIN 14
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 15
  IF ~~ THEN REPLY @36 EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 12
  IF ~~ THEN REPLY @39 EXIT
END

IF ~Global("AlissaQuest","GLOBAL",2)~ THEN BEGIN 16
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 2
  IF ~~ THEN REPLY @42 EXIT
END

IF ~Global("AlissaQuest","GLOBAL",3)~ THEN BEGIN 17
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 5
  IF ~~ THEN REPLY @45 EXIT
END
