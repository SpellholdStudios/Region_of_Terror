BEGIN ~DRIZ2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 45.0 44.0 43.0 42.0 41.0 40.0 39.0 38.0 25.0 24.0 22.0 21.0 19.0 18.0 17.0 16.0 15.0 14.0 13.0 12.0 10.0 2.0 0.0
  SAY @4
  IF ~IsValidForPartyDialog("Wulfg2")~ THEN REPLY @5 EXTERN ~WULFG2J~ 25
  IF ~IsValidForPartyDialog("Wulfg2")~ THEN REPLY @6 EXTERN ~WULFG2J~ 20
  IF ~!IsValidForPartyDialog("Wulfg2")~ THEN REPLY @7 GOTO 20
  IF ~!IsValidForPartyDialog("Wulfg2")~ THEN REPLY @6 GOTO 23
  IF ~!IsValidForPartyDialog("Wulfg2")~ THEN REPLY @8 GOTO 51
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @9
  IF ~!IsValidForPartyDialog("Wulfg2")~ THEN REPLY @10 GOTO 4
  IF ~IsValidForPartyDialog("Wulfg2")~ THEN REPLY @11 EXTERN ~WULFG2J~ 21
  IF ~IsValidForPartyDialog("Wulfg2")~ THEN REPLY @12 EXTERN ~WULFG2J~ 21
  IF ~!IsValidForPartyDialog("Wulfg2")~ THEN REPLY @13 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.3 3.0
  SAY @14
  IF ~IsValidForPartyDialog("Wulfg2")~ THEN REPLY @15 EXTERN ~WULFG2J~ 22
  IF ~!IsValidForPartyDialog("Wulfg2")~ THEN REPLY @16 GOTO 8
  IF ~!IsValidForPartyDialog("Wulfg2")~ THEN REPLY @17 GOTO 11
  IF ~!IsValidForPartyDialog("Wulfg2")~ THEN REPLY @18 GOTO 51
  IF ~IsValidForPartyDialog("Wulfg2")~ THEN REPLY @19 EXTERN ~WULFG2J~ 22
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @20
  IF ~IsValidForPartyDialog("Wulfg2")~ THEN EXTERN ~WULFG2J~ 23
  IF ~!IsValidForPartyDialog("Wulfg2")~ THEN REPLY @21 GOTO 6
  IF ~!IsValidForPartyDialog("Wulfg2")~ THEN REPLY @22 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 11
  IF ~~ THEN REPLY @25 GOTO 11
  IF ~~ THEN REPLY @26 GOTO 51
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 8
  IF ~~ THEN REPLY @29 GOTO 11
  IF ~~ THEN REPLY @26 GOTO 51
END

IF ~~ THEN BEGIN 8 // from: 7.0 4.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 9
  IF ~~ THEN REPLY @32 GOTO 9
  IF ~~ THEN REPLY @33 GOTO 53
END

IF ~~ THEN BEGIN 9 // from: 53.1 53.0 52.1 52.0 23.1 23.0 20.1 20.0 11.1 11.0 8.1 8.0
  SAY @34
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 11 // from: 7.1 6.1 6.0 4.2
  SAY @35
  IF ~~ THEN REPLY @31 GOTO 9
  IF ~~ THEN REPLY @32 GOTO 9
  IF ~~ THEN REPLY @33 GOTO 53
END

IF ~~ THEN BEGIN 20 // from: 1.2
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 9
  IF ~~ THEN REPLY @32 GOTO 9
  IF ~~ THEN REPLY @33 GOTO 53
END

IF ~~ THEN BEGIN 23 // from: 1.3
  SAY @38
  IF ~~ THEN REPLY @37 GOTO 9
  IF ~~ THEN REPLY @32 GOTO 9
  IF ~~ THEN REPLY @33 GOTO 53
END

IF ~~ THEN BEGIN 26 // from:
  SAY @39
  IF ~~ THEN EXTERN ~WULFG2J~ 27
END

IF ~~ THEN BEGIN 27 // from:
  SAY @40
  IF ~~ THEN EXTERN ~WULFG2J~ 28
END

IF ~~ THEN BEGIN 28 // from:
  SAY @41
  IF ~~ THEN REPLY @42 DO ~SetGlobal("Drizztiwdornot","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @566094 EXIT
  IF ~~ THEN REPLY @43 DO ~SetGlobal("Drizztiwdornot","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @566094 EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY @44
  IF ~~ THEN EXTERN ~WULFG2J~ 27
END

IF ~~ THEN BEGIN 30 // from:
  SAY @45
  IF ~~ THEN EXTERN ~WULFG2J~ 29
END

IF ~~ THEN BEGIN 31 // from:
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 32
  IF ~~ THEN REPLY @48 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.1 31.0
  SAY @49
  IF ~~ THEN REPLY @50 DO ~SetGlobal("Drizztiwdornot","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @566094 EXIT
  IF ~~ THEN REPLY @51 DO ~SetGlobal("Drizztiwdornot","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @566094 EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY @52
  IF ~~ THEN EXTERN ~WULFG2J~ 30
END

IF ~~ THEN BEGIN 34 // from:
  SAY @53
  IF ~~ THEN REPLY @54 DO ~SetGlobal("Drizztiwdornot","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @566094 EXIT
  IF ~~ THEN REPLY @55 DO ~SetGlobal("Drizztiwdornot","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @566094 EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY @56
  IF ~~ THEN EXTERN ~WULFG2J~ 31
END

IF ~~ THEN BEGIN 36 // from:
  SAY @57
  IF ~~ THEN EXTERN ~WULFG2J~ 32
END

IF ~~ THEN BEGIN 37 // from:
  SAY @58
  IF ~~ THEN REPLY @59 DO ~SetGlobal("Drizztiwdornot","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @566094 EXIT
  IF ~~ THEN REPLY @60 DO ~SetGlobal("Drizztiwdornot","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @566094 EXIT
END

IF ~~ THEN BEGIN 46 // from: 9.0
  SAY @61
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 48
  IF ~~ THEN REPLY @64 GOTO 48
  IF ~~ THEN REPLY @65 GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 47.1 47.0
  SAY @66
  IF ~~ THEN REPLY @67 DO ~SetGlobal("Drizztiwdornot","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @566094 EXIT
  IF ~~ THEN REPLY @68 DO ~SetGlobal("Drizztiwdornot","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @566094 EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.2
  SAY @69
  IF ~~ THEN REPLY @70 GOTO 50
  IF ~~ THEN REPLY @71 DO ~SetGlobal("Drizztiwdornot","GLOBAL",1)
SetGlobal("DrizztKickedOut","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY @72
  IF ~~ THEN DO ~SetGlobal("Drizztiwdornot","GLOBAL",1)
JoinParty()~ UNSOLVED_JOURNAL @566094 EXIT
END

IF ~~ THEN BEGIN 51 // from: 7.2 6.2 4.3 1.4
  SAY @73
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY @74
  IF ~~ THEN REPLY @31 GOTO 9
  IF ~~ THEN REPLY @32 GOTO 9
  IF ~~ THEN REPLY @33 GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.2 23.2 20.2 11.2 8.2
  SAY @75
  IF ~~ THEN REPLY @76 GOTO 9
  IF ~~ THEN REPLY @77 GOTO 9
END
