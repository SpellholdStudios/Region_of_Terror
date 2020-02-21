BEGIN ~OLMAR~

IF ~NumTimesTalkedTo(0)
!Dead("Eranda3")~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 10
  IF ~~ THEN REPLY @9 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY @10
  IF ~~ THEN DO ~SetGlobal("MadOlmar","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 4
  IF ~~ THEN REPLY @15 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY @20
  IF ~~ THEN DO ~SetGlobal("MadOlmar","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY @21
  IF ~~ THEN DO ~SetGlobal("MadOlmar","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @22
  IF ~~ THEN DO ~SetGlobal("MadOlmar","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 31.0 4.0 3.0 1.0 0.2
  SAY @23
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 20
  IF ~~ THEN REPLY @26 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY @27
  IF ~~ THEN DO ~SetGlobal("MadOlmar","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 31.1 4.1 3.1 1.1 0.3
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 22
  IF ~~ THEN REPLY @30 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @31
  IF ~~ THEN DO ~SetGlobal("MadOlmar","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY @32
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @33 GOTO 13
  IF ~~ THEN REPLY @34 GOTO 35
  IF ~~ THEN REPLY @35 GOTO 42
END

IF ~~ THEN BEGIN 13 // from: 38.0 21.0 12.0
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 14
  IF ~~ THEN REPLY @38 GOTO 14
  IF ~~ THEN REPLY @39 GOTO 39
END

IF ~~ THEN BEGIN 14 // from: 36.1 36.0 13.1 13.0
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 15
  IF ~CheckStatGT(LastTalkedToBy,17,CHR)~ THEN REPLY @42 GOTO 16
  IF ~~ THEN REPLY @43 GOTO 17
  IF ~~ THEN REPLY @44 GOTO 18
  IF ~~ THEN REPLY @45 GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @46
  IF ~~ THEN DO ~SetGlobal("Olmr2","RR3401",1)
SetGlobal("GoldOlmar","GLOBAL",1)
SetGlobal("Trvan","GLOBAL",1)
SetGlobal("MadOlmar","LOCALS",0)
GiveItemCreate("OlmKey",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @564219 EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @47
  IF ~~ THEN DO ~SetGlobal("Olmr2","RR3401",1)
GiveGoldForce(5000)
SetGlobal("GoldOlmar","GLOBAL",1)
SetGlobal("Trvan","GLOBAL",1)
SetGlobal("MadOlmar","LOCALS",0)
GiveItemCreate("OlmKey",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @564219 EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Olmr2","RR3401",1)
SetGlobal("EquiOlmar","GLOBAL",1)
SetGlobal("Trvan","GLOBAL",1)
SetGlobal("MadOlmar","LOCALS",0)
GiveItemCreate("OlmKey",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @564219 EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.3
  SAY @49
  IF ~~ THEN DO ~SetGlobal("Olmr2","RR3401",1)
SetGlobal("AbilOlmar","GLOBAL",1)
SetGlobal("Trvan","GLOBAL",1)
SetGlobal("MadOlmar","LOCALS",0)
GiveItemCreate("OlmKey",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @564219 EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.4
  SAY @50
  IF ~~ THEN DO ~SetGlobal("Olmr2","RR3401",1)
AddExperienceParty(15000)
SetGlobal("FreeOlmar","GLOBAL",1)
SetGlobal("Trvan","GLOBAL",1)
SetGlobal("MadOlmar","LOCALS",0)
GiveItemCreate("OlmKey",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @564219 EXIT
END

IF ~~ THEN BEGIN 20 // from: 8.1
  SAY @51
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @52 GOTO 21
  IF ~~ THEN REPLY @53 GOTO 37
  IF ~~ THEN REPLY @54 GOTO 37
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @55
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @33 GOTO 13
  IF ~~ THEN REPLY @34 GOTO 35
  IF ~~ THEN REPLY @35 GOTO 42
END

IF ~~ THEN BEGIN 22 // from: 10.0
  SAY @51
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @52 GOTO 23
  IF ~~ THEN REPLY @53 GOTO 43
  IF ~~ THEN REPLY @54 GOTO 43
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @56
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @33 GOTO 24
  IF ~~ THEN REPLY @34 GOTO 40
  IF ~~ THEN REPLY @35 GOTO 42
END

IF ~~ THEN BEGIN 24 // from: 45.0 23.0
  SAY @36
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @37 GOTO 25
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @39 GOTO 39
END

IF ~~ THEN BEGIN 25 // from: 41.1 41.0 24.1 24.0
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~CheckStatGT(LastTalkedToBy,18,CHR)~ THEN REPLY @42 GOTO 27
  IF ~~ THEN REPLY @43 GOTO 28
  IF ~~ THEN REPLY @44 GOTO 29
  IF ~~ THEN REPLY @45 GOTO 30
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @46
  IF ~~ THEN DO ~SetGlobal("Olmar1","RR3401",1)
SetGlobal("Tlvan","GLOBAL",1)
SetGlobal("MadOlmar","LOCALS",0)
GiveItemCreate("OlmKey",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @564130 EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY @47
  IF ~~ THEN DO ~SetGlobal("Olmar1","RR3401",1)
GiveGoldForce(5000)
SetGlobal("Tlvan","GLOBAL",1)
SetGlobal("MadOlmar","LOCALS",0)
GiveItemCreate("OlmKey",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @564130 EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Olmar1","RR3401",1)
SetGlobal("Tlvan","GLOBAL",1)
SetGlobal("MadOlmar","LOCALS",0)
GiveItemCreate("OlmKey",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @564130 EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.3
  SAY @49
  IF ~~ THEN DO ~SetGlobal("Olmar1","RR3401",1)
SetGlobal("Tlvan","GLOBAL",1)
SetGlobal("MadOlmar","LOCALS",0)
GiveItemCreate("OlmKey",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @564130 EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.4
  SAY @50
  IF ~~ THEN DO ~SetGlobal("Olmar1","RR3401",1)
AddExperienceParty(15000)
SetGlobal("Tlvan","GLOBAL",1)
SetGlobal("MadOlmar","LOCALS",0)
GiveItemCreate("OlmKey",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @564130 EXIT
END

IF ~Global("MadOlmar","LOCALS",1)
!Dead("Eranda3")~ THEN BEGIN 31
  SAY @57 
  IF ~~ THEN REPLY @58 GOTO 8
  IF ~~ THEN REPLY @59 GOTO 10
  IF ~~ THEN REPLY @60 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.2
  SAY @61
  IF ~~ THEN DO ~SetGlobal("MadOlmar","LOCALS",1)~ EXIT
END

IF ~Global("Olmar1","RR3401",1)
!Dead("Eranda3")~ THEN BEGIN 33
  SAY @62 
  IF ~~ THEN EXIT
END

IF ~Global("Olmr2","RR3401",1)
!Dead("Eranda3")~ THEN BEGIN 34
  SAY @62 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 38.1 21.1 12.1
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 36
  IF ~~ THEN REPLY @65 GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.1 35.0
  SAY @66
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @37 GOTO 14
  IF ~~ THEN REPLY @38 GOTO 14
  IF ~~ THEN REPLY @39 GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 20.2 20.1
  SAY @67
  IF ~~ THEN REPLY @68 GOTO 44
  IF ~~ THEN REPLY @69 GOTO 38
  IF ~~ THEN REPLY @70 GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.2 37.1
  SAY @71
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @33 GOTO 13
  IF ~~ THEN REPLY @34 GOTO 35
  IF ~~ THEN REPLY @35 GOTO 42
END

IF ~~ THEN BEGIN 39 // from: 41.2 36.2 24.2 13.2
  SAY @72
  IF ~~ THEN DO ~SetGlobal("MadOlmar","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 45.1 23.1
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 41
  IF ~~ THEN REPLY @65 GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.1 40.0
  SAY @66
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @37 GOTO 25
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @39 GOTO 39
END

IF ~~ THEN BEGIN 42 // from: 45.2 38.2 23.2 21.2 12.2
  SAY @73
  IF ~~ THEN DO ~SetGlobal("MadOlmar","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 22.2 22.1
  SAY @67
  IF ~~ THEN REPLY @68  GOTO 44
  IF ~~ THEN REPLY @69 GOTO 45
  IF ~~ THEN REPLY @70 GOTO 45
END

IF ~~ THEN BEGIN 44 // from: 43.0 37.0
  SAY @74
  IF ~~ THEN DO ~SetGlobal("MadOlmar","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.2 43.1
  SAY @71
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @33 GOTO 24
  IF ~~ THEN REPLY @34 GOTO 40
  IF ~~ THEN REPLY @35 GOTO 42
END

IF ~Dead("Eranda3")~ THEN BEGIN 46
  SAY @75 
  IF ~~ THEN EXIT
END
