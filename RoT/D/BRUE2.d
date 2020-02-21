BEGIN ~BRUE2~

IF ~IsValidForPartyDialog("Driz2")
Dead("Shadar")
Dead("MalVamp2")
Dead("MalVamp3")
Dead("FemVamp2")
Dead("FemVamp3")
Global("FTlkBr","LOCALS",0)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN DO ~SetGlobal("Brue2JoinedOnce","GLOBAL",1)~ EXTERN ~DRIZ2J~ 76
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 
  IF ~~ THEN EXTERN ~DRIZ2J~ 77
END

IF ~~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN EXTERN ~DRIZ2J~ 78
END

IF ~~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXTERN ~DRIZ2J~ 79
END

IF ~~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @6
  IF ~~ THEN EXTERN ~DRIZ2J~ 82
END

IF ~~ THEN BEGIN 7 // from:
  SAY @7
  IF ~~ THEN EXTERN ~DRIZ2J~ 83
END

IF ~~ THEN BEGIN 8 // from:
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.0
  SAY @12
  IF ~~ THEN REPLY @13 /* #64966 */ DO ~SetGlobal("FTlkBr","LOCALS",1)
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)
JoinParty()~ EXTERN ~DRIZ2J~ 84
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @15
  IF ~~ THEN DO ~SetGlobal("FTlkBr","LOCALS",1)
SetGlobal("BruKickedOut","LOCALS",1)
SetGlobal("BruenorOut","GLOBAL",1)
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)
EscapeAreaMove("AR0406",1400,1735,0)~ EXTERN ~DRIZ2J~ 84
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY @16
  IF ~~ THEN DO ~SetGlobal("FTlkBr","LOCALS",1)
SetGlobal("BruKickedOut","LOCALS",1)
SetGlobal("BruenorOut","GLOBAL",1)
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)
EscapeAreaMove("AR0406",1400,1735,0)~ EXTERN ~DRIZ2J~ 84
END

IF ~Dead("Shadar")
Dead("MalVamp2")
Dead("MalVamp3")
Dead("FemVamp2")
Dead("FemVamp3")
Global("FTlkBr","LOCALS",0)
!IsValidForPartyDialog("Driz2")~ THEN BEGIN 12
  SAY @17
  IF ~~ THEN EXIT
END

IF ~Global("BruKickedOut","LOCALS",1)~ THEN BEGIN 13
  SAY @18
  IF ~~ THEN REPLY @19 DO ~SetGlobal("BruKickedOut","LOCALS",2)
SetGlobal("BruenorOut","GLOBAL",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @20 EXIT
END
