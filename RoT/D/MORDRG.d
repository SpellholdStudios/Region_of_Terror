BEGIN ~MORDRG~

IF ~~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 13
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("Mordragonquest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6
  IF ~~ THEN DO ~SetGlobal("Mordragonquest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 14.0 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 DO ~SetGlobal("Mordragonquest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 15.0 3.1 3.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Mordragonquest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 16.0 12.0 4.0
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 6
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_7%)~ THEN REPLY @18 GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 20.0 5.0
  SAY @19
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @20 GOTO 7
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @21 GOTO 7
  IF ~~ THEN REPLY @22 DO ~SetGlobal("Mordragonquest","GLOBAL",1)
SetGlobal("MordrgJoinedOnce","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.1 8.0 6.1 6.0
  SAY @23
  IF ~~ THEN DO ~SetGlobal("Mordragonquest","GLOBAL",1)
SetGlobal("MordrgJoinedOnce","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @24
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @20 GOTO 7
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @21 GOTO 7
  IF ~~ THEN REPLY @22 DO ~SetGlobal("Mordragonquest","GLOBAL",4)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY @25
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_7%)~ THEN REPLY @26 GOTO 10
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @27 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @28
  IF ~~ THEN REPLY @29 DO ~SetGlobal("Mordragonquest","GLOBAL",4)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @30 DO ~SetGlobal("Mordragonquest","GLOBAL",4)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @31
  IF ~~ THEN REPLY @29 DO ~SetGlobal("Mordragonquest","GLOBAL",4)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @32 DO ~SetGlobal("Mordragonquest","GLOBAL",4)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 5
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Mordragonquest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.3
  SAY @35
  IF ~~ THEN DO ~SetGlobal("Mordragonquest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 3
  IF ~~ THEN REPLY @38 EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY @36
  IF ~~ THEN REPLY @39 GOTO 4
  IF ~~ THEN REPLY @38 EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY @40
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @41 EXIT
END

IF ~Global("Mordragonquest","GLOBAL",0)~ THEN BEGIN 17
  SAY @36
  IF ~~ THEN REPLY @42 GOTO 18
  IF ~~ THEN REPLY @43  GOTO 21
  IF ~~ THEN REPLY @44 EXIT
END

IF ~~ THEN BEGIN 18 // from: 21.0 17.0
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 19
  IF ~~ THEN REPLY @47 GOTO 19
  IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1 18.0
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 20
  IF ~~ THEN REPLY @51 EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 6
  IF ~~ THEN REPLY @54 EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY @55
  IF ~~ THEN REPLY @42 GOTO 18
  IF ~~ THEN REPLY @48 EXIT
END
